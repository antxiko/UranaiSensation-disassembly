#!/usr/bin/env python3
"""Los tramos de cada modulo que ni son codigo trazado ni datos declarados, y que pinta tienen.

Para cada tramo: longitud, si es relleno (un solo byte repetido), cuantas referencias le
llegan desde el codigo trazado (operandos de 16 bits que caen dentro: ld rr,nn / ld a,(nn) /
call / jp) y los primeros bytes.

Uso: huecos.py <src> <work> [modulo ...] [--min N]
"""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))
import disco
from cobertura import rangos_datos

OPS16 = {0x01, 0x11, 0x21, 0x31, 0x2A, 0x3A, 0x22, 0x32, 0xC3, 0xCD, 0xC2, 0xCA, 0xD2, 0xDA,
         0xE2, 0xEA, 0xF2, 0xFA, 0xC4, 0xCC, 0xD4, 0xDC, 0xE4, 0xEC, 0xF4, 0xFC}


def refs(b, org, c):
    """{direccion: [desde]} de los operandos de 16 bits del codigo trazado (aprox.: opcode + 2)."""
    r = {}
    for o in range(len(b) - 2):
        a = org + o
        if a not in c or a + 1 not in c or a + 2 not in c:
            continue
        op = b[o]
        if op in OPS16 or (op in (0xDD, 0xFD) and o + 3 < len(b) and b[o + 1] == 0x21):
            k = o + 1 if op in OPS16 else o + 2
            w = b[k] | b[k + 1] << 8
            r.setdefault(w, []).append(a)
        if op == 0xED and b[o + 1] in (0x4B, 0x5B, 0x6B, 0x7B, 0x43, 0x53, 0x63, 0x73):
            w = b[o + 2] | b[o + 3] << 8
            r.setdefault(w, []).append(a)
    return r


def main(argv):
    src, work = argv[0], argv[1]
    resto = argv[2:]
    minimo = 1
    if "--min" in resto:
        i = resto.index("--min")
        minimo = int(resto[i + 1])
        resto = resto[:i] + resto[i + 2:]
    dsk = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
    for nombre, s, k, org in disco.modulos(dsk):
        if resto and nombre not in resto:
            continue
        b = dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]
        c = set()
        for kind, a, e in json.load(open(os.path.join(work, nombre + ".trace.json")))["blocks"]:
            if kind == "c":
                c.update(range(a, e))
        d = rangos_datos(src, nombre, org, len(b))
        R = refs(b, org, c)
        a = org
        while a < org + len(b):
            if a in c or a in d:
                a += 1
                continue
            e = a
            while e < org + len(b) and e not in c and e not in d:
                e += 1
            t = b[a - org:e - org]
            if len(t) >= minimo:
                rel = "RELLENO %02X" % t[0] if len(set(t)) == 1 else ""
                dentro = sorted(w for w in R if a <= w < e)
                rr = " ".join("%04X<-%s" % (w, ",".join("%04X" % x for x in R[w][:3])) for w in dentro[:6])
                print("%-8s %04X-%04X %5d %-10s refs:%d %s | %s" % (nombre, a, e, e - a, rel, len(dentro), rr, t[:16].hex()))
            a = e
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
