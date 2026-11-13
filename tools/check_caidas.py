#!/usr/bin/env python3
"""Ningun tramo de codigo puede acabar 'cayendo' en datos, ni saltar a ellos.

1. Si la ultima instruccion de un tramo trazado no es un salto incondicional, un ret o
   una llamada que no vuelve (call 0x822D: el despachador saca la vuelta de la pila), el
   procesador seguiria leyendo lo que hay detras como instrucciones. Si detras hay datos,
   o la entrada que llevo hasta ahi es falsa, o lo que se declaro datos es codigo.
2. Ningun salto o llamada con destino fijo dentro del modulo puede ir a un sitio donde no
   empieza una instruccion trazada (datos, o la mitad de una instruccion).

Las excepciones explicadas van en src/caidas.txt: "<modulo> 0xDIRECCION  por que".

Uso: check_caidas.py <listado.asm> ...      (exit 1 si hay alguna sin explicar)
"""
import os
import re
import sys

LINEA = re.compile(r"^\t(\w+)\s*([^;\t]*?)\s*;([0-9a-f]{4})\b")
ORG = re.compile(r"^\torg 0x0*([0-9a-fA-F]+)")
NO_VUELVE = {"call 0822dh", "jp 0822dh", "call L_853B", "jp L_853B"}   # 0x822D = jp 0x853B


def termina(mn, ops):
    ops = ops.replace(" ", "")
    if mn in ("ret", "reti", "retn") and not ops:
        return True
    if mn in ("jp", "jr") and "," not in ops:
        return True
    return (mn + " " + ops) in NO_VUELVE


def destino(ops):
    ops = ops.replace(" ", "").split(",")[-1]
    m = re.fullmatch(r"(?:L_([0-9A-F]{4})|l([0-9a-f]{4})h|0?([0-9a-f]{4})h)", ops)
    if not m:
        return None
    return int(m.group(1) or m.group(2) or m.group(3), 16)


def excepciones(paths):
    ex = set()
    for d in {os.path.dirname(p) for p in paths}:
        f = os.path.join(d, "caidas.txt")
        if os.path.exists(f):
            for l in open(f, encoding="utf-8"):
                t = l.split()
                if len(t) >= 2 and not l.startswith("#"):
                    ex.add((t[0], int(t[1], 16)))
    return ex


def main(paths):
    ex = excepciones(paths)
    malas = 0
    for p in paths:
        mod = os.path.basename(p)[len("uranai_"):-len(".asm")]
        ins = []
        org = None
        for l in open(p, encoding="utf-8"):
            m = ORG.match(l)
            if m and org is None:
                org = int(m.group(1), 16)
            m = LINEA.match(l.rstrip("\n"))
            if m:
                ins.append((int(m.group(3), 16), m.group(1), m.group(2)))
        b = os.path.join(os.path.dirname(os.path.abspath(p)), "..", "work", mod + ".bin")
        fin = org + os.path.getsize(b) if org is not None and os.path.exists(b) else None
        empiezan = {a for a, _, _ in ins}
        for k, (a, mn, ops) in enumerate(ins):
            sig = ins[k + 1][0] if k + 1 < len(ins) else None
            if (sig is None or not 0 < sig - a <= 4) and not termina(mn, ops) and (mod, a) not in ex:
                print("%s: 0x%04X  %s %s  -> cae en lo que hay detras" % (p, a, mn, ops))
                malas += 1
            if mn in ("jp", "jr", "call", "djnz") and fin is not None:
                t = destino(ops)
                if t is not None and org <= t < fin and t not in empiezan and (mod, a) not in ex:
                    print("%s: 0x%04X  %s %s  -> va a 0x%04X, donde no empieza ninguna instruccion"
                          % (p, a, mn, ops, t))
                    malas += 1
    if malas:
        print("FALLO: %d sitios donde el codigo cae en datos o salta a ellos" % malas)
        return 1
    print("OK: ningun tramo de codigo cae en datos ni salta a ellos")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
