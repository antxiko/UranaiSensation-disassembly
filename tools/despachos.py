#!/usr/bin/env python3
"""Las tablas del despachador del nucleo pegadas detras de su llamada, en cada modulo.

`call 0x822D` (o `jp 0x822D`) va a 0x853B: `pop hl` saca la direccion de vuelta,
que es el principio de una tabla de destinos, y salta al de numero A. La llamada
NO vuelve, y lo que hay detras no es codigo: si nadie lo dice, el trazador se
come la tabla como instrucciones y sigue desde ahi.

Donde acaba la tabla: se leen palabras mientras el destino caiga dentro del
modulo y la tabla no haya llegado aun al destino mas bajo visto (el codigo de
los destinos que van detras de la tabla: una tabla no puede pisar su propio
codigo; los de delante no acotan nada).

Itera: traza, busca llamadas alcanzadas, apunta tablas y destinos, vuelve a
trazar, hasta que no sale nada nuevo. Escribe una seccion propia al final del
.entries y del .nocode (entre marcas), sin tocar lo escrito a mano.

Uso: despachos.py <dsk> <src> <work> [modulo ...]
"""
import json
import os
import re
import subprocess
import sys

import disco

MARCA_I = "# --- despachos.py: tablas de 0x822D (no editar a mano) ---"
MARCA_F = "# --- fin de despachos.py ---"
LLAMADA = re.compile(b"[\xcd\xc3]\x2d\x82")


def codigo(trace):
    c = set()
    for k, a, e in json.load(open(trace))["blocks"]:
        if k == "c":
            c.update(range(a, e))
    return c


def tabla(b, org, o):
    """Destinos de la tabla que empieza en el desplazamiento o."""
    ws = []
    tope = org + len(b)
    while o + 1 < len(b) and org + o < tope:
        w = b[o] | b[o + 1] << 8
        if not org <= w < org + len(b):
            break
        ws.append(w)
        if w >= org + o:          # solo los destinos de detras acotan la tabla
            tope = min(tope, w)
        o += 2
        if org + o > tope:
            ws.pop()
            break
    return ws


def tabla_hl(b, org, c, e9):
    """`ld hl,T ... add a,a ... jp (hl)` (con ex de,hl en medio): (direccion de T, tope) o None.

    Busca hacia atras desde el jp (hl), dentro del codigo trazado, el `ld hl,T` con T
    dentro del modulo; si antes hay un `and M` (M = 2^k - 1), la tabla tiene M+1
    entradas como mucho."""
    for back in range(3, 20):
        o = e9 - back
        if o < 0 or org + o not in c:
            break
        if b[o] == 0x21:
            t = b[o + 1] | b[o + 2] << 8
            if not org <= t < org + len(b):
                return None
            if 0x87 not in b[o:e9]:          # add a,a: indice por palabras
                return None
            tope = None
            for k in range(1, 6):
                if o - k >= 0 and b[o - k] == 0xE6 and org + o - k in c and ((b[o - k + 1] + 1) & b[o - k + 1]) == 0:
                    tope = b[o - k + 1] + 1
            return t, tope
    return None


def escribe_seccion(path, lineas):
    disco.seccion(path, MARCA_I, MARCA_F, lineas)


def traza(nombre, org, src, work):
    subprocess.run([sys.executable, os.path.join(os.path.dirname(__file__), "z80trace.py"),
                    os.path.join(work, nombre + ".bin"), "0x%04X" % org,
                    os.path.join(src, nombre + ".entries"), os.path.join(work, nombre),
                    os.path.join(src, nombre + ".nocode")], check=True, capture_output=True)


def uno(nombre, s, k, org, dsk, src, work):
    b = dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]
    vistas = {}
    hl = {}
    while True:
        traza(nombre, org, src, work)
        c = codigo(os.path.join(work, nombre + ".trace.json"))
        nuevas = {}
        for m in LLAMADA.finditer(b):
            a = org + m.start()
            if a in c and a not in vistas:
                nuevas[a] = tabla(b, org, m.start() + 3)
        for o, x in enumerate(b):
            a = org + o
            if x != 0xE9 or a not in c or a in vistas or a in hl:
                continue
            r = tabla_hl(b, org, c, o)
            if r is None:
                continue
            t, tope = r
            ws = tabla(b, org, t - org)
            if tope is not None:
                ws = ws[:tope]
            hl[a] = (t, ws)
            nuevas[a] = None
        if not nuevas:
            break
        for a in list(nuevas):
            if nuevas[a] is None:
                del nuevas[a]
        vistas.update(nuevas)
        ent, noc = [], []
        for a in sorted(hl):
            t, ws = hl[a]
            if ws:
                noc.append("0x%04X 0x%04X   # %d destinos de la tabla del jp (hl) de 0x%04X" % (t, t + 2 * len(ws), len(ws), a))
                for w in sorted(set(ws)):
                    ent.append("0x%04X   # tabla del jp (hl) de 0x%04X" % (w, a))
        for a in sorted(vistas):
            ws = vistas[a]
            if not ws:
                noc.append("# 0x%04X: llamada al despachador sin tabla legible detras" % a)
                continue
            noc.append("0x%04X 0x%04X   # %d destinos del despachador (call 0x822D en 0x%04X)"
                       % (a + 3, a + 2 + 2 * len(ws), len(ws), a))
            for w in sorted(set(ws)):
                ent.append("0x%04X   # tabla del despachador de 0x%04X" % (w, a))
        escribe_seccion(os.path.join(src, nombre + ".entries"), ent)
        escribe_seccion(os.path.join(src, nombre + ".nocode"), noc)
        notas = []
        for l in noc:
            if l.startswith("#"):
                continue
            a, e = int(l.split()[0], 16), int(l.split()[1], 16)
            que = l.split("#", 1)[1].strip()
            notas.append("D 0x%04X 0x%04X saltos_%04X  %s (%d bytes)" % (a, e, a, que, e - a))
            notas.append("F 0x%04X w8" % a)
        escribe_seccion(os.path.join(src, nombre + ".notes"), notas)
    return vistas, hl


def main(dsk_path, src, work, *solo):
    dsk = disco.lee(dsk_path)
    for nombre, s, k, org in disco.modulos(dsk):
        if solo and nombre not in solo:
            continue
        if not os.path.exists(os.path.join(src, nombre + ".entries")):
            continue
        v, hl = uno(nombre, s, k, org, dsk, src, work)
        if v or hl:
            print("%-8s %d tablas: %s" % (nombre, len(v) + len(hl),
                  " ".join(["%04X/%d" % (a, len(w)) for a, w in sorted(v.items())]
                           + ["hl%04X/%d" % (t, len(w)) for a, (t, w) in sorted(hl.items())])))


if __name__ == "__main__":
    main(*sys.argv[1:])
