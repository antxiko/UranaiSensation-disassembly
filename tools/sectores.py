#!/usr/bin/env python3
"""Quien lee cada sector de datos del disco: las lecturas de las partes, sacadas de su codigo.

Todas las lecturas pasan por el nucleo (0x8215: BC = primer sector, H = cuantos, DE =
destino; o 0x82C9 + 0x82C3 con un registro de 6 bytes). De donde sale el sector:

  tabla4   registros de 4 bytes (sector, 0, cuantos): `ld hl,T ; call 0x8221` y detras
           `ld c,(hl) ; inc hl ; ld b,(hl) ; inc hl ; ld a,(hl) ; inc hl ; ld h,(hl)`
  palabras una palabra por lectura y los sectores fijos en `ld hl,0xNN00`
  tabla3   registros de 3 bytes (sector, numero de entrada): se leen 2 sectores y el
           tercer byte dice que entrada de las que van dentro
  fija     `ld bc,S` con los sectores en `ld hl,0xNN00`
  musica   p07, p0D, p10 y p1F: el primer sector sale de la tabla de palabras de 0x97C4
           (por 0xD1D6) y se mete en el `ld bc` de 0x9734 (automodificado); 11 sectores

Las tablas se LEEN del disco; aqui solo va donde estan y como se leen (medido en los
listados). Cuantos registros tiene cada tabla: los que se leen seguidos con valores de
lectura validos, o lo que diga N cuando el codigo lo fija.

Uso: sectores.py            el mapa de 251-1439: rachas sin dueno y cuantas lecturas
     sectores.py --lista    cada lectura
"""
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))
import disco   # noqa: E402

PRIMERO, ULTIMO = 251, 1440      # los sectores de datos (y la lista de personas)

# (modulo, quien la lee, forma, tabla o sector, cuantos registros (None = los validos seguidos), sectores por lectura, destino)
LECTURAS = [
    ("p02", 0x961E, "tabla4", 0x9AC7, 4, None, 0xB000),
    ("p02", 0x9A1E, "tabla4", 0x9AD7, 5, None, 0xB200),
    ("p06", 0x92A2, "tabla4", 0x92DB, None, None, 0xB000),
    ("p06", 0x93D5, "fija", 57, 1, 1, 0x9C00),
    ("p06", 0x9593, "fija", 1438, 1, 2, 0xD300),
    # p07, p0D, p10 y p1F: dos tablas seguidas, la de 0xB200 (las mismas 5 lecturas que
    # p02 0x9AD7) y detras la de 0xB000 (0xAA00 en la p10)
    ("p07", 0x95CA, "tabla4", 0x96EE, 5, None, 0xB200),
    ("p07", 0x9537, "tabla4", 0x9702, None, None, 0xB000),
    ("p0D", 0x9592, "tabla4", 0x96B6, 5, None, 0xB200),
    ("p0D", 0x954F, "tabla4", 0x96CA, None, None, 0xB000),
    ("p10", 0x959E, "tabla4", 0x96C2, 5, None, 0xB200),
    ("p10", 0x955B, "tabla4", 0x96D6, None, None, 0xAA00),
    ("p1F", 0x95E5, "tabla4", 0x9709, 5, None, 0xB200),
    ("p1F", 0x95A2, "tabla4", 0x971D, None, None, 0xB000),
    ("p07", 0x9734, "musica", 0x97C4, 4, 11, 0x9800),
    ("p07", 0x974D, "fija", 0x49B, 1, 5, 0x9800),
    ("p07", 0x9766, "fija", 0x493, 1, 8, 0x9800),
    ("p07", 0x977F, "fija", 0x48B, 1, 8, 0x9800),
    ("p09", 0x9D22, "palabras", 0x9D22, None, 3, 0xCA00),
    ("p0A", 0x9CE7, "palabras", 0x9EC6, None, 7, 0xC200),
    ("p0C", 0x9AD7, "palabras", 0x9BF8, None, 5, None),
    ("p0C", 0x9993, "tabla3", 0x99D4, None, 2, 0xD300),
    ("p19", 0x98B5, "tabla3", 0x98F6, None, 2, 0xD300),
    ("p25", 0x98FD, "tabla3", 0x993E, None, 2, 0xD300),
    ("p19", 0x9A05, "palabras", 0x9B26, None, 5, None),
    ("p25", 0x9A05, "palabras", 0x9B26, None, 5, None),
    ("p1A", 0x9CA1, "palabras", 0x9CC2, 7, 5, 0xC435),
    ("p1B", 0x9D03, "palabras", 0xA2F8, 8, 6, 0xB400),
    # p1A: 0x9CD7 pone 949 en 0x9CD2 y lee 2 veces 6 sectores (0x9D07), sumando 6 cada vez;
    # 0x9818 (jp 0x9CE9) sigue desde donde se quedo: otras 2 veces
    ("p1A", 0x9CD7, "fija", 949, 1, 12, 0xB000),
    ("p1A", 0x9CE9, "fija", 961, 1, 12, 0xB000),
    ("p1C", 0xA325, "tabla4", 0xA32C, None, None, 0xB000),
    ("p28", 0xA8F8, "tabla4", 0xA8FF, None, None, 0xB000),
]


def palabra(b, o):
    return b[o] | b[o + 1] << 8


def registros(dsk, mods, l):
    """[(primer sector, cuantos, texto)] de una lectura."""
    mod, quien, forma, t, n, cada, dst = l
    org, b = mods[mod]
    out = []
    i = 0
    while n is None or i < n:
        if forma == "tabla4":
            o = t - org + 4 * i
            s, c = palabra(b, o), b[o + 3]
            if n is None and not (b[o + 2] == 0 and PRIMERO <= s < ULTIMO and 1 <= c <= 32):
                break
        elif forma in ("palabras", "musica"):
            o = t - org + 2 * i
            s, c = palabra(b, o), cada
            if n is None and not PRIMERO <= s < ULTIMO:
                break
        elif forma == "tabla3":
            o = t - org + 3 * i
            s, c = palabra(b, o), cada
            if n is None and not PRIMERO <= s < ULTIMO:
                break
        elif forma == "fija":
            s, c = t, cada
        out.append((s, c, "%s 0x%04X (%s 0x%04X, registro %d)" % (mod, quien, forma, t, i)))
        i += 1
    return out


def mapa(dsk=None):
    if dsk is None:
        dsk = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
    mods = {n: (org, dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]) for n, s, k, org in disco.modulos(dsk)}
    duenos = {}
    for l in LECTURAS:
        for s, c, txt in registros(dsk, mods, l):
            for x in range(s, s + c):
                duenos.setdefault(x, []).append(txt)
    return dsk, duenos


def main(argv):
    dsk, duenos = mapa()
    if "--lista" in argv:
        dsk2 = disco.lee(os.path.join(os.path.dirname(__file__), "..", "uranai.dsk"))
        mods = {n: (org, dsk2[s * disco.SECTOR:(s + k) * disco.SECTOR]) for n, s, k, org in disco.modulos(dsk2)}
        for l in LECTURAS:
            r = registros(dsk2, mods, l)
            print("%s 0x%04X %-8s 0x%04X: %d lecturas: %s" % (l[0], l[1], l[2], l[3], len(r),
                  " ".join("%d+%d" % (s, c) for s, c, _ in r[:12]) + (" ..." if len(r) > 12 else "")))
    falta = [x for x in range(PRIMERO, ULTIMO) if x not in duenos]
    r = []
    for x in falta:
        if r and r[-1][1] == x - 1:
            r[-1][1] = x
        else:
            r.append([x, x])
    print("sectores %d-%d con lector: %d; sin lector: %d %s" % (PRIMERO, ULTIMO - 1, ULTIMO - PRIMERO - len(falta),
                                                            len(falta), r))


if __name__ == "__main__":
    main(sys.argv[1:])
