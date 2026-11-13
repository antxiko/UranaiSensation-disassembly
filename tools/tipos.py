#!/usr/bin/env python3
"""Los datos que cada modulo pasa a los servicios del nucleo, medidos con el formato de ese servicio.

En cada `call`/`jp` a un servicio de la tabla de 0x8200 que recibe un puntero, busca hacia
atras, dentro del mismo tramo recto del listado (sin etiquetas ni saltos por medio), la
ultima carga constante del registro que lleva el puntero. Si el puntero cae dentro del
modulo, mide el dato leyendolo como lo lee el servicio:

  0x8275 / 0x827B  texto (HL): x, y; luego letras; 0xFE x y = otra posicion; 0xFD = cambia
                   de silabario; 0xFF = fin                                 (nucleo 0x8B42)
  0x8278           texto sin posicion (HL): letras hasta 0xFF               (nucleo 0x8B52)
  0x821B           RLE a la VRAM (DE; HL = direccion de VRAM): 0 = fin; 0x80 = nueva
                   direccion (palabra); 0x81-0xFF = (n & 0x7F) bytes tal cual;
                   0x01-0x7F = el byte siguiente n veces                     (nucleo 0x8AFF)
  0x82CC           lista de dibujos (IX): registros de 5 bytes (marca, puntero, posicion,
                   color) hasta una marca 0; cada puntero, un dibujo en el RLE de 0x9014:
                   0 = fin; n con el bit 7 = (n & 0x7F) bytes tal cual; si no, el byte
                   siguiente n veces                                         (nucleo 0x8FC6)
  0x82DB           paleta (HL): 16 colores de 2 bytes                       (nucleo 0x88BD)
  0x8218           casillas (HL; DE = posicion, C = ancho): 0 = fin; 0x01-0x7F = la
                   casilla siguiente n veces; 0x81-0xFF = (n & 0x7F) casillas tal
                   cual; 0x80 n v = n casillas seguidas desde la v      (nucleo 0x8EC7)

Escribe una seccion propia (entre marcas) al final de cada src/<modulo>.notes con lineas
D, y la misma en el .nocode para que el trazador no entre; lo que se solapa con otra D
escrita a mano se cuenta y NO se escribe.

Uso: tipos.py <src> <work> [--escribe] [modulo ...]
"""
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(__file__))
import disco

MARCA_I = "# --- tipos.py: datos medidos por el servicio que los lee (no editar a mano) ---"
MARCA_F = "# --- fin de tipos.py ---"

LINEA = re.compile(r"^\t(\w+)\s*([^;\t]*?)\s*;([0-9a-f]{4})\b")
ETIQ = re.compile(r"^(\w+):")


def texto(b, o, con_pos=True):
    i = o
    if con_pos:
        i += 2
    while True:
        a = b[i]
        i += 1
        if a == 0xFF:
            return i - o
        if a == 0xFE:
            i += 2


def vram_rle(b, o):
    i = o
    while True:
        a = b[i]
        i += 1
        if a == 0:
            return i - o
        if a == 0x80:
            i += 2
        elif a & 0x80:
            i += a & 0x7F
        else:
            i += 1


def casillas(b, o):
    i = o
    while True:
        a = b[i]
        i += 1
        if a == 0:
            return i - o
        if a == 0x80:
            i += 2
        elif a & 0x80:
            i += a & 0x7F
        else:
            i += 1


def dibujo(b, o):
    i = o
    while True:
        a = b[i]
        i += 1
        if a == 0:
            return i - o
        i += (a & 0x7F) if a & 0x80 else 1


SERVICIOS = {
    0x8275: ("hl", "texto", lambda b, o: texto(b, o)),
    0x827B: ("hl", "texto", lambda b, o: texto(b, o)),
    0x8278: ("hl", "texto", lambda b, o: texto(b, o, False)),
    0x821B: ("de", "vram", vram_rle),
    0x82CC: ("ix", "dibujos", None),
    0x82DB: ("hl", "paleta", lambda b, o: 32),
    0x8218: ("hl", "casillas", casillas),
}


def instrucciones(asm):
    """[(addr, mnem, ops, empieza_tramo)] del listado."""
    out = []
    nueva = True
    for l in open(asm, encoding="utf-8"):
        if ETIQ.match(l):
            nueva = True
            continue
        m = LINEA.match(l.rstrip("\n"))
        if not m:
            continue
        out.append((int(m.group(3), 16), m.group(1), m.group(2).replace(" ", ""), nueva))
        nueva = False
    return out


def valor(ops):
    m = re.fullmatch(r"(?:L_|DATA_\w*?_?|l)([0-9a-fA-F]{4})h?", ops)
    if m:
        return int(m.group(1), 16)
    v = ops.rstrip("h")
    try:
        return int(v, 16)
    except ValueError:
        return None


def predecesores(ins):
    """{k: [k de los jr/jp/djnz/call que van a la instruccion k]}"""
    pos = {a: k for k, (a, _, _, _) in enumerate(ins)}
    p = {}
    for k, (a, mn, ops, _) in enumerate(ins):
        if mn in ("jr", "jp", "djnz", "call"):
            v = valor(ops.split(",")[-1])
            if v in pos:
                p.setdefault(pos[v], []).append(k)
    return p


def termina(mn, ops):
    return (mn in ("ret", "reti", "retn") and not ops) or (mn in ("jp", "jr") and "," not in ops)


def _paso(i, reg):
    """Lo que hace la instruccion con reg: {constante}, None (lo cambia sin saber a que) o 'sigue'."""
    a, mn, ops, _ = i
    if mn in ("jr", "jp", "djnz") or (mn == "call" and i is not None and False):
        return "sigue"
    if mn == "ld" and ops.startswith(reg + ",") and "(" not in ops:
        v = valor(ops.split(",", 1)[1])
        return {v} if v is not None else None
    dst = ops.split(",")[0]
    if mn in ("call", "ret", "reti", "rst") or dst == reg             or (mn == "ex" and reg in ("hl", "de") and ops == "de,hl")             or (mn in ("pop", "inc", "dec", "add", "adc", "sbc") and dst == reg)             or (reg in ("hl", "de") and mn == "ld" and dst in (reg[0], reg[1]))             or (reg in ("hl", "de", "bc") and mn in ("ldir", "lddr", "ldi", "ldd", "cpir", "cpdr", "otir", "inir", "outi", "ini")):
        return None
    return "sigue"


def puntero(ins, k, reg, pred, vistos=None):
    """Las constantes que puede llevar reg al entrar en la instruccion k (un conjunto), o
    None si algun camino no la fija. Los caminos: caer desde la anterior y los saltos y
    llamadas que llegan. Una etiqueta sin ningun salto conocido (entrada desde fuera,
    tabla) es un camino desconocido: None."""
    if vistos is None:
        vistos = set()
    if k in vistos:
        return set()
    vistos.add(k)
    fuentes = list(pred.get(k, []))
    if ins[k][3] and not fuentes and k > 0 and valor_etiqueta_externa(ins, k):
        return None
    if k > 0 and not termina(ins[k - 1][1], ins[k - 1][2]):
        fuentes.append(k - 1)
    if not fuentes:
        return None
    out = set()
    for q in fuentes:
        if ins[q][1] == "call" and q != k - 1:
            r = puntero(ins, q, reg, pred, vistos)       # llamada: lo que llevaba al llamar
        else:
            r = _paso(ins[q], reg)
            if r == "sigue":
                r = puntero(ins, q, reg, pred, vistos)
        if r is None:
            return None
        out |= r
    return out


def valor_etiqueta_externa(ins, k):
    """La instruccion k lleva etiqueta y ningun salto del listado va alli: se entra desde fuera."""
    return True


def mide(b, org, nombre, ins, c):
    """[(desde, hasta, tipo, quien)]"""
    out = []
    pred = predecesores(ins)
    for k, (a, mn, ops, _) in enumerate(ins):
        if mn not in ("call", "jp") or "," in ops:
            continue
        dst = valor(ops)
        if dst not in SERVICIOS:
            continue
        reg, tipo, f = SERVICIOS[dst]
        ps = puntero(ins, k, reg, pred)
        if ps is not None and None in ps:
            ps = None
        if not ps:
            continue
        for p in sorted(ps):
            if p is None or not org <= p < org + len(b):
                continue
            out += _mide_uno(b, org, nombre, tipo, f, p, a)
    return out


def _mide_uno(b, org, nombre, tipo, f, p, a):
    out = []
    if True:
        o = p - org
        try:
            if tipo == "dibujos":
                i = o
                while b[i]:
                    q = b[i + 1] | b[i + 2] << 8
                    if org <= q < org + len(b):
                        out.append((q, q + dibujo(b, q - org), "dibujo", a))
                    i += 5
                out.append((p, org + i + 1, "lista_dibujos", a))
            else:
                out.append((p, p + f(b, o), tipo, a))
        except IndexError:
            print("  %s: el %s de 0x%04X (desde 0x%04X) se sale del modulo" % (nombre, tipo, p, a))
    return out


def escribe(path, lineas):
    disco.seccion(path, MARCA_I, MARCA_F, lineas)


DESC = {
    "texto": "texto: x, y y las letras hasta 0xFF",
    "vram": "RLE a la VRAM hasta el 0",
    "dibujo": "dibujo en el RLE de 0x9014 (nucleo), hasta el 0",
    "lista_dibujos": "lista de dibujos, 5 bytes cada uno (marca, puntero, posicion, color), hasta la marca 0",
    "paleta": "paleta: 16 colores de 2 bytes",
    "casillas": "casillas en el RLE de 0x8EC7 (nucleo), hasta el 0",
}


def main(argv):
    src, work = argv[0], argv[1]
    resto = argv[2:]
    esc = "--escribe" in resto
    resto = [r for r in resto if r != "--escribe"]
    dsk = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
    total = 0
    for nombre, s, k, org in disco.modulos(dsk):
        if resto and nombre not in resto:
            continue
        b = dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]
        asm = os.path.join(src, "uranai_%s.asm" % nombre)
        c = set()
        for kind, x, e in json.load(open(os.path.join(work, nombre + ".trace.json")))["blocks"]:
            if kind == "c":
                c.update(range(x, e))
        notas = os.path.join(src, nombre + ".notes")
        txt = open(notas, encoding="utf-8").read()
        if MARCA_I in txt:
            a = txt.index(MARCA_I)
            txt = txt[:a] + txt[txt.index(MARCA_F, a) + len(MARCA_F):]
        ocupado = set()       # el codigo trazado NO cuenta: el dato medido por su lector manda
        for l in txt.splitlines():
            t = l.split()
            if len(t) >= 3 and t[0] == "D":
                ocupado.update(range(int(t[1], 16), int(t[2], 16)))
        datos = {}
        for x, e, tipo, quien in mide(b, org, nombre, instrucciones(asm), c):
            datos.setdefault((x, e, tipo), []).append(quien)
        lineas, malos = [], 0
        for (x, e, tipo), q in sorted(datos.items()):
            if any(i in ocupado for i in range(x, e)):
                malos += 1
                continue
            ocupado.update(range(x, e))
            lineas.append("D 0x%04X 0x%04X %s_%04X  %s; lo usa %s (%d bytes)" % (
                x, e, tipo, x, DESC[tipo], ", ".join("0x%04X" % w for w in sorted(set(q))), e - x))
            total += e - x
        if lineas or malos:
            print("%-8s %3d datos, %5d bytes%s" % (nombre, len(lineas), sum(int(l.split()[2], 16) - int(l.split()[1], 16) for l in lineas),
                                                 "  (%d solapados, sin escribir)" % malos if malos else ""))
        if esc:
            escribe(notas, lineas)
            noc = ["0x%04X 0x%04X   # %s" % (int(l.split()[1], 16), int(l.split()[2], 16), l.split()[3]) for l in lineas]
            escribe(os.path.join(src, nombre + ".nocode"), noc)
            pisa = sorted({int(l.split()[1], 16) for l in lineas if any(i in c for i in range(int(l.split()[1], 16), int(l.split()[2], 16)))})
            if pisa:
                print("         el trazado anterior los tenia como codigo: %s" % " ".join("0x%04X" % x for x in pisa))
    print("TOTAL %d bytes" % total)


if __name__ == "__main__":
    main(sys.argv[1:])
