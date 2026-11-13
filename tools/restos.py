#!/usr/bin/env python3
"""Donde mas aparece un tramo de un modulo: en que otro modulo (y a que direccion) o sector.

Para los finales de parte que nadie lee: si los mismos bytes estan en OTRA parte que se
carga en la misma direccion, el tramo es lo que habia en la memoria cuando se grabo el
disco (un resto), no un dato de esta parte.

Uso: restos.py <modulo> <desde> <hasta> [--min N]
"""
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))
import disco


def busca(dsk, mods, t, nombre):
    out = []
    for n, s, k, org in mods:
        b = dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]
        i = b.find(t)
        while i >= 0:
            if n != nombre:
                out.append((n, org + i))
            i = b.find(t, i + 1)
    if not out:
        i = dsk.find(t)
        while i >= 0:
            out.append(("sector %d" % (i // disco.SECTOR), i % disco.SECTOR))
            i = dsk.find(t, i + 1)
    return out


def main(argv):
    dsk = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
    mods = disco.modulos(dsk)
    nombre, a, e = argv[0], int(argv[1], 16), int(argv[2], 16)
    org = {m[0]: m for m in mods}[nombre]
    b = dsk[org[1] * disco.SECTOR:(org[1] + org[2]) * disco.SECTOR]
    t = b[a - org[3]:e - org[3]]
    r = busca(dsk, mods, t, nombre)
    print("%s 0x%04X-0x%04X (%d bytes): %s" % (nombre, a, e, e - a,
          ", ".join("%s en 0x%04X" % x if isinstance(x[1], int) and not x[0].startswith("sector") else "%s +0x%03X" % x for x in r) or "en ningun otro sitio"))
    if not r:   # el trozo mas largo del principio que si aparece
        lo, hi = 8, len(t)
        while lo < hi:
            m = (lo + hi + 1) // 2
            if busca(dsk, mods, t[:m], nombre):
                lo = m
            else:
                hi = m - 1
        if lo > 8:
            print("  los primeros %d bytes: %s" % (lo, busca(dsk, mods, t[:lo], nombre)))


if __name__ == "__main__" and not (len(sys.argv) > 1 and sys.argv[1] == "--todos"):
    main(sys.argv[1:])


def todos(src, work, minimo=16):
    """Para cada hueco sin explicar: que parte del hueco coincide, byte a byte y en la MISMA
    direccion, con otro modulo que se carga en la misma zona."""
    import json
    from cobertura import rangos_datos
    dsk = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
    mods = disco.modulos(dsk)
    imagen = {n: (org, dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]) for n, s, k, org in mods}
    for n, s, k, org in mods:
        b = imagen[n][1]
        c = set()
        for kind, x, e in json.load(open(os.path.join(work, n + ".trace.json")))["blocks"]:
            if kind == "c":
                c.update(range(x, e))
        d = rangos_datos(src, n, org, len(b))
        a = org
        while a < org + len(b):
            if a in c or a in d:
                a += 1
                continue
            e = a
            while e < org + len(b) and e not in c and e not in d:
                e += 1
            if e - a >= minimo:
                # por cada byte, que otros modulos tienen el mismo valor en esa direccion
                iguales = {}
                for m, (o2, b2) in imagen.items():
                    if m == n:
                        continue
                    lo, hi = max(a, o2), min(e, o2 + len(b2))
                    if hi - lo < minimo:
                        continue
                    run = 0
                    for x in range(lo, hi):
                        if b2[x - o2] == b[x - org] and b[x - org] not in (0x00, 0xFF):
                            run += 1
                        else:
                            if run >= minimo:
                                iguales.setdefault(m, []).append((x - run, x))
                            run = 0
                    if run >= minimo:
                        iguales.setdefault(m, []).append((hi - run, hi))
                rel = len(set(b[a - org:e - org])) == 1
                txt = " ".join("%s[%s]" % (m, ",".join("%04X-%04X" % t for t in r)) for m, r in sorted(iguales.items()))
                print("%-8s %04X-%04X %5d %s %s" % (n, a, e, e - a, "RELLENO %02X" % b[a - org] if rel else "", txt))
            a = e


if __name__ == "__main__" and len(sys.argv) > 1 and sys.argv[1] == "--todos":
    todos("src", "work")
    sys.exit(0)
