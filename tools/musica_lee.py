#!/usr/bin/env python3
"""Que bytes del controlador de sonido son la musica de cada sonido: EJECUTANDO el controlador.

El controlador (sectores 25-56, en 0x4000) se carga tal cual en un Z80 (tools/z80run.py),
con su RAM (0xD000-0xD1FF) a cero. Para cada sonido N de la tabla de 0x4EA3 (los 64, del
1 al 64) se hace lo mismo que el nucleo: `call 0x4000` con A = N (la peticion, 0x8561) y
despues `call 0x4003` una vez por cuadro (lo que hace la interrupcion, 0x8514). La BIOS
WRTPSG (0x0093) se atrapa: el registro y el dato se apuntan y se vuelve.

Se apuntan las direcciones que el controlador LEE como datos a partir de DESDE (por
debajo esta su codigo). Un sonido se da por acabado cuando lleva PARADO cuadros sin leer
ningun byte nuevo (o se repite en bucle, o se ha callado).

Con --notas <src> escribe en src/sonido.notes (y .nocode) una seccion propia con las
cabeceras y, bloque a bloque, de que sonido es cada tramo de musica (desde un --json ya
hecho: --de work/musica_lee.json).

Uso: musica_lee.py <sonido.bin> [--cuadros N] [--json salida.json]
     musica_lee.py <sonido.bin> --de work/musica_lee.json --notas src
"""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))
from z80run import Z80   # noqa: E402

ORG = 0x4000
TABLA = 0x4EA3
DESDE = 0x4C82
N_SONIDOS = 64
PARADO = 900


class Sonido(Z80):
    def __init__(self, cod):
        super().__init__()
        self.carga(cod, ORG)
        self.leidos = set()
        self.psg = []
        self.apunta = False

    def _leer(self, d):
        d &= 0xFFFF
        if self.apunta and DESDE <= d < ORG + 0x4000 and d != self.pc:
            self.leidos.add(d)
        return self.mem[d]

    def _una(self):
        if self.pc == 0x0093:              # WRTPSG: A = registro, E = dato
            self.psg.append((self.a, self.e))
            self.pc = self._pop()
            return
        super()._una()


def uno(cod, n, cuadros):
    z = Sonido(cod)
    z.sp = 0xF000
    z.a = n
    z.apunta = True
    z.corre(0x4000)
    ultimo_nuevo, vistos = 0, 0
    for c in range(cuadros):
        z.corre(0x4003)
        if len(z.leidos) != vistos:
            vistos = len(z.leidos)
            ultimo_nuevo = c
        elif c - ultimo_nuevo >= PARADO:
            break
    return z.leidos, c + 1, len(z.psg)


def tramos(s):
    out = []
    for a in sorted(s):
        if out and out[-1][1] == a:
            out[-1][1] = a + 1
        else:
            out.append([a, a + 1])
    return out


MARCA_I = "# --- musica_lee.py: la musica, medida ejecutando el controlador (no editar a mano) ---"
MARCA_F = "# --- fin de musica_lee.py ---"
CAB = 0x4F25          # las cabeceras, detras de la tabla de 0x4EA3
FIN = 0x7F23          # detras de la ultima musica, el relleno del sector


def notas(cod, res, src):
    import disco
    w = lambda a: cod[a - ORG] | cod[a - ORG + 1] << 8
    cab = {}
    for n in range(1, N_SONIDOS + 1):
        h = w(TABLA + 2 * n)
        k = bin(cod[h - ORG] >> 3).count("1")
        cab[n] = (h, h + 2 + 2 * k)
    hs = sorted(cab.values())
    assert hs[0][0] == CAB and all(hs[i][1] == hs[i + 1][0] for i in range(len(hs) - 1))
    fin_cab = hs[-1][1]
    dueno = {}
    for n, tr in res.items():
        for a, e in tr:
            for x in range(max(a, fin_cab), e):
                dueno.setdefault(x, set()).add(int(n))
    bl = []
    for x in range(fin_cab, FIN):
        s = frozenset(dueno.get(x, ()))
        assert s, "0x%04X: ningun sonido lee este byte" % x
        if bl and bl[-1][2] == s and bl[-1][1] == x:
            bl[-1][1] = x + 1
        else:
            bl.append([x, x + 1, s])
    L = ["D 0x%04X 0x%04X cabeceras  las cabeceras de los 64 sonidos, una detras de otra: canales (bits 7-3 = A, B, C y dos mas), prioridad y un puntero por canal; las copia 0x4048 (%d bytes)" % (CAB, fin_cab, fin_cab - CAB)]
    for a, e, s in bl:
        ns = sorted(s)
        if len(ns) == 1:
            txt = "musica del sonido %d" % ns[0]
        else:
            txt = "musica que comparten los sonidos %s" % " y ".join(str(n) for n in ns)
        L.append("D 0x%04X 0x%04X musica_%04X  %s (medido ejecutando el controlador: tools/musica_lee.py) (%d bytes)" % (a, e, a, txt, e - a))
    disco.seccion(os.path.join(src, "sonido.notes"), MARCA_I, MARCA_F, L)
    noc = ["0x%04X 0x%04X   # %s" % (CAB, FIN, "las cabeceras y la musica de los 64 sonidos")]
    disco.seccion(os.path.join(src, "sonido.nocode"), MARCA_I, MARCA_F, noc)
    print("%d lineas D en %s/sonido.notes" % (len(L), src))


def main(argv):
    cod = open(argv[0], "rb").read()
    if "--notas" in argv:
        res = json.load(open(argv[argv.index("--de") + 1]))["sonidos"]
        notas(cod, res, argv[argv.index("--notas") + 1])
        return
    cuadros = 20000
    if "--cuadros" in argv:
        cuadros = int(argv[argv.index("--cuadros") + 1])
    res = {}
    todo = set()
    for n in range(1, N_SONIDOS + 1):
        leidos, c, npsg = uno(cod, n, cuadros)
        todo |= leidos
        t = tramos(leidos)
        res[n] = t
        print("sonido %2d: %5d bytes en %2d tramos, %5d cuadros, %5d escrituras al PSG  %s"
              % (n, len(leidos), len(t), c, npsg, " ".join("%04X-%04X" % (a, b) for a, b in t[:4])))
    print("TODOS: %d bytes leidos; tramos: %s" % (len(todo), " ".join("%04X-%04X" % (a, b) for a, b in tramos(todo))))
    if "--json" in argv:
        json.dump({"sonidos": res, "todos": tramos(todo)}, open(argv[argv.index("--json") + 1], "w"))


if __name__ == "__main__":
    main(sys.argv[1:])
