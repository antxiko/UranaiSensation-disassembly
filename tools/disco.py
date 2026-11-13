#!/usr/bin/env python3
"""El disco de Konami's Uranai Sensation partido en modulos, y el mapa de sus 1440 sectores.

El disco NO es de MSX-DOS: no tiene FAT ni directorio. El sector 0 trae un arranque
propio (la BIOS del disco lo carga en 0xC000 y entra por 0xC01E) que engancha
H.STKE y, cuando el BASIC termina de arrancar, lee 8 sectores desde el 234 en
0x8200 y salta alli: el nucleo. El nucleo tiene en 0x906C una tabla de PARTES de
6 bytes cada una (primer sector, destino, cuantos sectores en el byte alto) y la
rutina 0x8EA0 (entrada 0x8248 de su tabla de saltos) carga la parte A. Lo que
este fichero dice de cada parte lo LEE de esa tabla, no lo copia.

Medido en openMSX (tools/omsx_cargas.tcl, 2026-11-12):
  - el nucleo carga la parte 0x28 (sectores 242-250 en 0x9A00) antes que nada;
  - el sonido son los sectores 25-56, leidos de 8 en 8 en 0x9200 y copiados a la
    RAM de la pagina 1 (0x4000-0x7FFF), que el nucleo busca slot a slot;
  - la lista de las 20 personas guardadas son los sectores 1438-1439 (en 0xD300).

Uso:
    disco.py lista                  nombre primer_sector sectores org
    disco.py org <nombre>           el org de un modulo
    disco.py corta <dsk> <dir>      escribe <dir>/<nombre>.bin de cada modulo
    disco.py mapa <dsk>             que es cada sector; los que no tienen dueno
"""
import os
import sys

SECTOR = 512
N_SECTORES = 1440
TAM_DISCO = SECTOR * N_SECTORES

NUCLEO_SECTOR, NUCLEO_N, NUCLEO_ORG = 234, 8, 0x8200
TABLA_PARTES = 0x906C
N_PARTES = 0x29          # 0x00-0x28; la entrada 0x29 es toda ceros: fin


def partes(dsk):
    """[(numero, sector, cuantos, destino)] leidos de la tabla del nucleo."""
    nucleo = dsk[NUCLEO_SECTOR * SECTOR:(NUCLEO_SECTOR + NUCLEO_N) * SECTOR]
    o = TABLA_PARTES - NUCLEO_ORG
    out = []
    for i in range(N_PARTES):
        e = nucleo[o + 6 * i:o + 6 * i + 6]
        out.append((i, e[0] | e[1] << 8, e[5], e[2] | e[3] << 8))
    fin = nucleo[o + 6 * N_PARTES:o + 6 * N_PARTES + 6]
    assert fin == bytes(6), "la tabla de partes no acaba donde se esperaba"
    return out


def modulos(dsk):
    """[(nombre, primer_sector, sectores, org)] de todo lo que es codigo."""
    m = [("arranque", 0, 1, 0xC000),
         ("nucleo", NUCLEO_SECTOR, NUCLEO_N, NUCLEO_ORG),
         ("sonido", 25, 32, 0x4000)]
    for n, s, k, dst in partes(dsk):
        m.append(("p%02X" % n, s, k, dst))
    return m


def mapa(dsk):
    """Lista de 1440 etiquetas: el modulo de cada sector, o 'datos', 'personas', 'vacio', '?'."""
    et = ["?"] * N_SECTORES
    for nombre, s, k, _ in modulos(dsk):
        for i in range(s, s + k):
            assert et[i] == "?", "el sector %d es de dos modulos: %s y %s" % (i, et[i], nombre)
            et[i] = nombre
    for i in range(N_SECTORES):
        if et[i] != "?":
            continue
        t = dsk[i * SECTOR:(i + 1) * SECTOR]
        if not t.strip(b"\x00") or not t.strip(b"\xe5"):
            et[i] = "vacio"
    for i in (1438, 1439):
        et[i] = "personas"
    return et


def rachas(et, cual):
    r = []
    for i, e in enumerate(et):
        if e != cual:
            continue
        if r and r[-1][1] == i - 1:
            r[-1][1] = i
        else:
            r.append([i, i])
    return r


def seccion(path, ini, fin, lineas):
    """Sustituye en path lo que hay entre las marcas ini y fin (ambas incluidas) por lineas;
    si no estaba, lo pone al final. No toca nada mas del fichero."""
    txt = open(path, encoding="utf-8").read() if os.path.exists(path) else ""
    nl = "\n"
    nuevo = (ini + nl + nl.join(lineas) + nl + fin + nl) if lineas else ""
    if ini in txt:
        a = txt.index(ini)
        b = txt.index(fin, a) + len(fin)
        if b < len(txt) and txt[b] == nl:
            b += 1
        txt = txt[:a] + nuevo + txt[b:]
    else:
        txt = (txt.rstrip(nl) + nl if txt else "") + nuevo
    open(path, "w", encoding="utf-8", newline=nl).write(txt)


def lee(path):
    with open(path, "rb") as f:
        d = f.read()
    assert len(d) == TAM_DISCO, "%s: %d bytes, no %d" % (path, len(d), TAM_DISCO)
    return d


def main(argv):
    if len(argv) < 2:
        print(__doc__)
        return 2
    dsk = lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk")) if argv[1] in ("lista", "org") \
        else lee(argv[2])
    if argv[1] == "lista":
        for nombre, s, k, org in modulos(dsk):
            print("%-9s %4d %3d 0x%04X" % (nombre, s, k, org))
    elif argv[1] == "org":
        print("0x%04X" % {m[0]: m[3] for m in modulos(dsk)}[argv[2]])
    elif argv[1] == "corta":
        os.makedirs(argv[3], exist_ok=True)
        for nombre, s, k, _ in modulos(dsk):
            with open(os.path.join(argv[3], nombre + ".bin"), "wb") as f:
                f.write(dsk[s * SECTOR:(s + k) * SECTOR])
    elif argv[1] == "mapa":
        et = mapa(dsk)
        cod = {m[0] for m in modulos(dsk)}
        for cual in sorted(set(et)):
            if cual in cod:
                continue
            print("%-9s %4d sectores  %s" % (cual, et.count(cual), rachas(et, cual)))
        cod = {m[0] for m in modulos(dsk)}
        print("codigo    %4d sectores" % sum(1 for e in et if e in cod))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
