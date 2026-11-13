#!/usr/bin/env python3
"""Rehace el disco entero: los sectores de codigo salen de los listados reensamblados
(work/<modulo>.out.bin) y el resto (datos, lista de personas, sectores vacios y los
que aun no tienen dueno) del disco original, sector a sector segun disco.mapa().
El resultado tiene que dar el mismo sha1 que el original.

Uso: rehace_dsk.py <dsk> <work> <sha1>
"""
import hashlib
import os
import sys

import disco


def main(dsk_path, work, sha1):
    dsk = disco.lee(dsk_path)
    out = bytearray(disco.TAM_DISCO)
    hecho = [False] * disco.N_SECTORES
    for nombre, s, k, _ in disco.modulos(dsk):
        p = os.path.join(work, nombre + ".out.bin")
        if not os.path.exists(p):
            print("FALLO: falta %s (ensambla antes los listados)" % p)
            return 1
        b = open(p, "rb").read()
        if len(b) != k * disco.SECTOR:
            print("FALLO: %s tiene %d bytes, no %d" % (p, len(b), k * disco.SECTOR))
            return 1
        out[s * disco.SECTOR:(s + k) * disco.SECTOR] = b
        for i in range(s, s + k):
            hecho[i] = True
    for i, e in enumerate(disco.mapa(dsk)):
        if not hecho[i]:
            out[i * disco.SECTOR:(i + 1) * disco.SECTOR] = dsk[i * disco.SECTOR:(i + 1) * disco.SECTOR]
    os.makedirs(work, exist_ok=True)
    with open(os.path.join(work, "reensamblado.dsk"), "wb") as f:
        f.write(out)
    h = hashlib.sha1(out).hexdigest()
    n = sum(hecho)
    print("  sectores de los listados: %d de %d; el resto, del original" % (n, disco.N_SECTORES))
    print("  rehecho  : %s" % h)
    print("  esperado : %s" % sha1)
    if h != sha1:
        print("DIFIERE")
        return 1
    print("OK: el disco entero sale byte a byte")
    return 0


if __name__ == "__main__":
    sys.exit(main(*sys.argv[1:4]))
