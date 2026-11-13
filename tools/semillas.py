#!/usr/bin/env python3
"""Primeras semillas de cada parte: su tabla de saltos de cabecera, o el org si no la tiene.

Una parte que empieza por una ristra de `jp nn` (0xC3) la usa como puerta: el
nucleo y las otras partes llaman a org+3k. Algunos destinos caen FUERA de la
parte (p03 reexporta rutinas de la p02, que convive con ella en 0x9600): el jp
es igual de codigo, y el trazador apunta el destino como externo.
Si no empieza asi, se entra por el org (lo que hace el nucleo con 0x9200,
0x9600, 0x9800, 0x9A00 y 0x9C00 al cargarla).

No pisa un .entries que ya exista (a partir de ahi se edita a mano), salvo con
--cabecera: entonces solo reescribe las lineas "tabla de saltos" de la cabecera,
saltandose las direcciones de una linea "# no es cabecera: 0xNNNN ..." del .entries
(bytes que parecen un jp y no lo son: variables, o una cabecera copiada de otra parte).
Uso: semillas.py <dsk> <src> [--cabecera]
"""
import os
import sys

import disco


def cabecera(b, org):
    out = []
    i = 0
    while i + 2 < len(b) and b[i] == 0xC3:
        dst = b[i + 1] | b[i + 2] << 8
        if not 0x8200 <= dst < 0xC000:      # fuera del nucleo y las partes: ya no es la cabecera
            break
        out.append((org + i, dst))
        i += 3
    return out


def main(dsk_path, src, *opc):
    rehace_cabecera = "--cabecera" in opc
    dsk = disco.lee(dsk_path)
    for nombre, s, k, org in disco.modulos(dsk):
        if not nombre.startswith("p"):
            continue
        ent = os.path.join(src, nombre + ".entries")
        b = dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]
        cab = cabecera(b, org)
        if os.path.exists(ent):
            if rehace_cabecera and cab:
                L = open(ent).read().split(chr(10))
                fuera = set()
                for l in L:
                    if l.startswith("# no es cabecera:"):
                        fuera |= {int(x, 16) for x in l.split(":", 1)[1].split() if x.startswith("0x")}
                cab = [(a, d) for a, d in cab if a not in fuera]
                i = [j for j, l in enumerate(L) if "# tabla de saltos: jp" in l]
                if i and len(i) != len(cab):
                    nuevas = ["0x%04X   # tabla de saltos: jp 0x%04X%s" % (a, d, "" if org <= d < org + len(b) else " (fuera de la parte)")
                              for a, d in cab]
                    L = L[:i[0]] + nuevas + L[i[-1] + 1:]
                    open(ent, "w").write(chr(10).join(L))
                    print("%s: cabecera de %d a %d jp" % (nombre, len(i), len(cab)))
            continue
        L = ["# Puntos de entrada de la parte %s (sectores %d-%d, en 0x%04X)." % (nombre[1:], s, s + k - 1, org), "#"]
        if cab:
            L.append("# Su tabla de saltos de cabecera: se entra por org+3k.")
            L += ["0x%04X   # tabla de saltos: jp 0x%04X" % (a, d) for a, d in cab]
        else:
            L.append("0x%04X   # sin tabla de saltos: se entra por el principio" % org)
        with open(ent, "w") as f:
            f.write("\n".join(L) + "\n")
        noc = os.path.join(src, nombre + ".nocode")
        if not os.path.exists(noc):
            with open(noc, "w") as f:
                f.write("# Zonas que el trazador NO puede entrar a desensamblar como codigo.\n")


if __name__ == "__main__":
    main(*sys.argv[1:])
