#!/usr/bin/env python3
"""Uranai Sensation ejecutado de verdad para pintar: el Z80 y el V9938 de tools/msx2run.py
con la RAM plana de 64 KB que usa el juego y el disco servido desde uranai.dsk.

- El nucleo (sectores 234-241) va en 0x8200 como lo deja el arranque.
- El disco: el nucleo lee por la BDOS (0x8928: `call 0xF37D` con C = 0x1A, la direccion
  de destino en DE, y despues C = 0x2F, H sectores desde el DE); aqui se atrapa 0xF37D y se
  copian los sectores del .dsk.
- El sonido: 0x4000 y 0x4003 son un `ret` (el controlador no pinta nada).
- 0xE0F4: donde el nucleo guarda el H.TIMI de antes (el del controlador de disco, que
  apaga el motor); aqui vuelve sin hacer nada.
- La BIOS, como en msx2run.py.

Uso (como modulo): u = Uranai(); u.parte(0x28); u.llama(0x9A00); u.vdp.pagina(0)
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import disco                              # noqa: E402
from msx2run import Msx, ParadaZ80        # noqa: E402


class Uranai(Msx):
    def __init__(self, dsk=None):
        self.dsk = dsk or disco.lee(os.path.join(AQUI, "..", "uranai.dsk"))
        super().__init__(bytes(0x8000), msx2=True)
        self.mem[0x4000:0xC000] = bytes(0x8000)
        self.mem[0x4000] = self.mem[0x4003] = 0xC9
        n = disco.NUCLEO_SECTOR
        self.mem[0x8200:0x8200 + 8 * disco.SECTOR] = self.dsk[n * disco.SECTOR:(n + 8) * disco.SECTOR]
        self.dta = 0
        self.lecturas = []

    def pon_banco(self, ventana, banco):      # no hay mapper: RAM plana
        pass

    def _escribir(self, d, v):
        self.mem[d & 0xFFFF] = v & 0xFF

    def sectores(self, primero, cuantos, destino):
        t = self.dsk[primero * disco.SECTOR:(primero + cuantos) * disco.SECTOR]
        for i, x in enumerate(t):
            self.mem[(destino + i) & 0xFFFF] = x
        self.lecturas.append((primero, cuantos, destino))

    def parte(self, n):
        """Carga la parte n como 0x8EA0 (por su tabla de 0x906C)."""
        for i, s, k, dst in disco.partes(self.dsk):
            if i == n:
                self.sectores(s, k, dst)
                return dst

    def corre(self, desde, tope=60_000_000, hasta=None):
        centinela = 0xFFFE
        if hasta is None:
            self.sp = (self.sp - 2) & 0xFFFF
            self._escribir16(self.sp, centinela)
        self.pc = desde
        self.pasos = 0
        fin = hasta if hasta is not None else centinela
        while self.pc != fin:
            if self.pc == 0xF37D:                 # BDOS
                if self.c == 0x1A:
                    self.dta = (self.d << 8) | self.e
                elif self.c == 0x2F:
                    self.sectores((self.d << 8) | self.e, self.h, self.dta)
                    self.a = 0
                else:
                    raise ParadaZ80("BDOS 0x%02X sin hacer" % self.c)
                self.pc = self._pop()
                continue
            if self.pc == 0xE0F4:                 # el H.TIMI de antes (el del disco): nada
                self.pc = self._pop()
                continue
            if self.pc < 0x4000:
                self.bios(self.pc)
                self.pc = self._pop()
                continue
            self.pasos += 1
            if self.pasos > tope:
                raise ParadaZ80("mas de %d instrucciones (pc=0x%04X)" % (tope, self.pc))
            self._una()


# Llamadas a la BIOS que msx2run.py no hace y aqui no cambian lo pintado (o se hacen aqui)
SIN_EFECTO = {0x0069: "CLRSPR", 0x00C0: "BEEP", 0x0156: "KILBUF", 0x0090: "GICINI"}


def _bios(self, pc):
    if pc in SIN_EFECTO:
        self.bios_rara.append(pc)
        return
    Msx.bios(self, pc)


Uranai.bios = _bios


def _arranca(self):
    """Del arranque (0x8200) hasta el `jr $` del nucleo (0x84F9): lo demas va en la interrupcion."""
    self.sp = 0xF000
    self.corre(0x8200, hasta=0x84F9)


def _cuadro(self, n=1):
    """n interrupciones: H.TIMI (0x8504), como la BIOS cada 1/60 s."""
    for _ in range(n):
        sp = self.sp
        self.corre(0x8504, tope=20_000_000)
        self.sp = sp


Uranai.arranca = _arranca
Uranai.cuadro = _cuadro
