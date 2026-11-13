#!/usr/bin/env python3
"""Por modulo: bytes trazados como codigo, declarados como datos (D en .notes / .nocode) y sin explicar.

Uso: cobertura.py <src> <work>
"""
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(__file__))
import disco


def rangos_datos(src, m, org, n):
    d = set()
    for f in (m + ".notes", m + ".nocode"):
        p = os.path.join(src, f)
        if not os.path.exists(p):
            continue
        for l in open(p, encoding="utf-8"):
            t = l.split("#")[0].split() if f.endswith(".nocode") else l.split()
            if f.endswith(".notes"):
                if len(t) >= 3 and t[0] == "D":
                    d.update(range(int(t[1], 16), int(t[2], 16)))
            elif len(t) >= 2:
                d.update(range(int(t[0], 16), int(t[1], 16)))
    return {a for a in d if org <= a < org + n}


def main(src, work):
    dsk = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
    tot = [0, 0, 0]
    for nombre, s, k, org in disco.modulos(dsk):
        n = k * disco.SECTOR
        c = set()
        for kind, a, e in json.load(open(os.path.join(work, nombre + ".trace.json")))["blocks"]:
            if kind == "c":
                c.update(range(a, e))
        d = rangos_datos(src, nombre, org, n) - c
        r = n - len(c) - len(d)
        tot[0] += len(c); tot[1] += len(d); tot[2] += r
        print("%-9s %6d  codigo %5d (%3d %%)  datos %5d  sin explicar %5d" % (nombre, n, len(c), 100 * len(c) // n, len(d), r))
    print("TOTAL     codigo %d  datos %d  sin explicar %d" % tuple(tot))
    # de los datos, los que solo tienen la explicacion de primera pasada de explica.py
    pp = {}
    for nombre, s, k, org in disco.modulos(dsk):
        for l in open(os.path.join(src, nombre + ".notes"), encoding="utf-8"):
            t = l.split()
            if len(t) >= 4 and t[0] == "D" and t[3].split("_")[0] in ("leido", "suelto", "resto", "relleno"):
                k2 = t[3].split("_")[0]
                pp[k2] = pp.get(k2, 0) + int(t[2], 16) - int(t[1], 16)
    if pp:
        print("  de los datos, solo con la primera pasada (explica.py): %s" %
              ", ".join("%s %d" % kv for kv in sorted(pp.items())))


if __name__ == "__main__":
    main(*sys.argv[1:3])
