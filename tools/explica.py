#!/usr/bin/env python3
"""Primera explicacion, medida, de cada tramo que aun no es codigo ni dato con nombre.

No adivina que es: dice lo que se puede comprobar de el, por este orden:

  leido_XXXX     el codigo trazado lo usa: que instrucciones cargan su direccion (o la de
                 dentro) y, si detras va una llamada, a que servicio
  resto_XXXX     los mismos bytes, en la misma direccion, en otra parte: lo que habia en
                 la memoria cuando se grabo el disco
  relleno_XXXX   un solo byte repetido
  suelto_XXXX    nadie lo lee ni lo apunta

Escribe su seccion (entre marcas) en cada src/<modulo>.notes. Lo escrito a mano en las
notas, y lo de tipos.py, despachos.py y musica_lee.py, va antes y manda: aqui solo entra
lo que queda.

Uso: explica.py <src> <work> [--escribe] [modulo ...]
"""
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(__file__))
import disco                       # noqa: E402
from cobertura import rangos_datos  # noqa: E402

MARCA_I = "# --- explica.py: lo que se sabe medido de cada tramo sin nombre (no editar a mano) ---"
MARCA_F = "# --- fin de explica.py ---"

SERVICIOS = {
    0x8221: "0x8221 (tabla de bytes: HL + A)", 0x826C: "0x826C (tabla de palabras: la de A)",
    0x8206: "0x8206 (DE + A)", 0x821E: "0x821E (HL + 2A)", 0x8275: "0x8275 (texto)",
    0x8218: "0x8218 (casillas)", 0x821B: "0x821B (RLE a la VRAM)", 0x82DB: "0x82DB (paleta)",
    0x82CC: "0x82CC (lista de dibujos)", 0x82AE: "0x82AE (dibujos de 1 bit)",
    0x8224: "0x8224 (copia a la VRAM)", 0x8266: "0x8266 (copia de la VRAM)",
    0x9609: "0x9609 (el menu de la p02)", 0x9603: "0x9603 (p02)", 0x9600: "0x9600 (p02)",
    0x8215: "0x8215 (leer sectores)", 0x824B: "0x824B (grabar sectores)",
}
LINEA = re.compile(r"^\t(\w+)\s*([^;\t]*?)\s*;([0-9a-f]{4})\b")


def instrucciones(asm):
    ins = []
    for l in open(asm, encoding="utf-8"):
        m = LINEA.match(l)
        if m:
            ins.append((int(m.group(3), 16), m.group(1), re.sub(r"\s+", "", m.group(2))))
    return ins


def valor(ops):
    m = re.search(r"(?:^|,)\(?(?:L_|l|DATA_\w*?_?)?0?([0-9a-fA-F]{4})h?\)?$", ops)
    return int(m.group(1), 16) if m else None


def refs(ins):
    """{direccion: [instrucciones que la llevan como operando de 16 bits]} del listado."""
    r = {}
    for a, mn, ops in ins:
        for parte in ops.split(","):
            m = re.fullmatch(r"\(?(?:L_([0-9A-F]{4})|l([0-9a-f]{4})h|DATA_\w*?([0-9A-F]{4})|0?([0-9a-f]{4,5})h)(?:\+(\d+))?\)?", parte)
            if not m:
                continue
            v = int(next(g for g in m.groups()[:4] if g), 16) + int(m.group(5) or 0)
            if parte.startswith("(") or mn in ("ld", "jp", "call") and v > 0xFF:
                r.setdefault(v, []).append(a)
    return r


def como_lo_usa(ins, pos, a):
    """'ld hl,0xA624 -> jp 0x9609 (el menu de la p02)' para la instruccion de a."""
    k = pos.get(a)
    if k is None:
        return "0x%04X" % a
    _, mn, ops = ins[k]
    txt = "0x%04X %s %s" % (a, mn, ops)
    for j in range(k + 1, min(k + 5, len(ins))):
        _, mn2, ops2 = ins[j]
        if mn2 in ("call", "jp") and "," not in ops2:
            v = valor(ops2)
            if v in SERVICIOS:
                return txt + " -> " + SERVICIOS[v]
        if mn2 in ("ret", "jp", "jr", "call"):
            break
    return txt


def tramos_sin_explicar(b, org, c, d):
    out = []
    a = org
    while a < org + len(b):
        if a in c or a in d:
            a += 1
            continue
        e = a
        while e < org + len(b) and e not in c and e not in d:
            e += 1
        out.append((a, e))
        a = e
    return out


def main(argv):
    src, work = argv[0], argv[1]
    resto = argv[2:]
    esc = "--escribe" in resto
    resto = [r for r in resto if r != "--escribe"]
    dsk = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
    mods = disco.modulos(dsk)
    imagen = {n: (org, dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]) for n, s, k, org in mods}
    cuenta = {}
    for nombre, s, k, org in mods:
        if resto and nombre not in resto:
            continue
        b = imagen[nombre][1]
        c = set()
        for kind, x, e in json.load(open(os.path.join(work, nombre + ".trace.json")))["blocks"]:
            if kind == "c":
                c.update(range(x, e))
        notas = os.path.join(src, nombre + ".notes")
        txt = open(notas, encoding="utf-8").read()
        if MARCA_I in txt:          # lo nuestro no cuenta como ya explicado
            i = txt.index(MARCA_I)
            txt2 = txt[:i] + txt[txt.index(MARCA_F, i) + len(MARCA_F):]
            open(notas + ".tmp", "w", encoding="utf-8").write(txt2)
            d = rangos_datos(src, nombre, org, len(b)) - set()
            os.replace(notas, notas + ".bak")
            os.replace(notas + ".tmp", notas)
            d = rangos_datos(src, nombre, org, len(b))
            os.replace(notas + ".bak", notas)
        else:
            d = rangos_datos(src, nombre, org, len(b))
        ins = instrucciones(os.path.join(src, "uranai_%s.asm" % nombre))
        pos = {a: k for k, (a, _, _) in enumerate(ins)}
        R = refs(ins)
        # palabras de los datos ya explicados que apuntan dentro del modulo
        P = {}
        for x in sorted(d):
            if x + 1 in d and x - org + 1 < len(b):
                w = b[x - org] | b[x - org + 1] << 8
                if org <= w < org + len(b):
                    P.setdefault(w, []).append(x)
        lineas = []
        for a, e in tramos_sin_explicar(b, org, c, d):
            t = b[a - org:e - org]
            dentro = sorted(w for w in R if a <= w < e)
            if dentro:
                usos = []
                for w in dentro:
                    for q in R[w][:2]:
                        usos.append(como_lo_usa(ins, pos, q) if w == a else "%s (en +%d)" % (como_lo_usa(ins, pos, q), w - a))
                    if len(usos) >= 4:
                        break
                tipo, que = "leido", "lo usa el codigo: " + "; ".join(usos[:4])
            elif len(set(t)) == 1:
                tipo, que = "relleno", "0x%02X repetido; nadie lo lee" % t[0]
            elif set(t) <= {0x00, 0xFF, 0xE5} and len(t) >= 16:
                tipo, que = "relleno", "solo 0x00/0xFF (%s); nadie lo lee" % ", ".join(
                    "%d x 0x%02X" % (len(list(g)), k) for k, g in __import__("itertools").groupby(t))
            else:
                iguales = []
                for m, (o2, b2) in imagen.items():
                    if m == nombre or not (o2 <= a and e <= o2 + len(b2)):
                        continue
                    if b2[a - o2:e - o2] == t:
                        iguales.append(m)
                if iguales:
                    tipo, que = "resto", "nadie lo lee; son los mismos bytes que %s en esta misma direccion: lo que habia en la memoria al grabar" % ", ".join(iguales)
                else:
                    tipo, que = "suelto", "nadie lo lee ni lo apunta"
            cuenta[tipo] = cuenta.get(tipo, 0) + e - a
            lineas.append("D 0x%04X 0x%04X %s_%04X  %s (%d bytes)" % (a, e, tipo, a, que, e - a))
        if esc:
            disco.seccion(notas, MARCA_I, MARCA_F, lineas)
        if lineas and not esc:
            for l in lineas:
                print(nombre, l[:220])
    print("por tipo:", ", ".join("%s %d" % kv for kv in sorted(cuenta.items())))


if __name__ == "__main__":
    main(sys.argv[1:])
