#!/usr/bin/env python3
"""Las letras de Uranai Sensation: que es cada codigo de texto, y el texto entero en japones.

La fuente esta en la pagina 1 de la VRAM (SCREEN 5): el codigo A es el cuadro de 8x8 en
x = (A & 0x1F) * 8, y = (A >> 5) * 8 (nucleo 0x8D7A). Las letras de abajo se han leido
del volcado de la VRAM con la pantalla principal (work/fuente.vram, tools/omsx_cargas.tcl
con CARGAS_VRAM): las marcadas con '?' no estan seguras.

Lo que no esta en la fuente lo hace el nucleo al pintar (0x8B52), y aqui se hace igual:
  0xBE-0xD6  la letra de la tabla 0x919F con ゛ (0x43) o ゜ (0x44) en la fila de encima
             (が ... ど, ば ... ぼ, ぱ ... ぽ)
  0xD7-0xFA  dos letras de la tabla 0x91B8 (きゃ ... りょ), las 15 ultimas con ゛ o ゜
  0xFD       cambia 0xD1FF: con 0xD1FF distinto de 0, los codigos se pintan tal cual
  0xFE x y   sigue en otra posicion
  0xFF       fin
"""
import os
import sys

FILA0 = " あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほま"
FILA1 = "みむめもやゆよらりるれろわをんゃゅょっぁぃぅ0123456789"
LETRAS = {i: c for i, c in enumerate(FILA0)}
LETRAS.update({0x20 + i: c for i, c in enumerate(FILA1)})
LETRAS.update({
    0x40: "A", 0x41: "B", 0x42: "O", 0x43: "゛", 0x44: "゜", 0x45: "、", 0x46: "。", 0x47: "「",
    0x48: " ", 0x49: "」", 0x4A: "?", 0x4B: "ー", 0x4C: "～", 0x4D: "部", 0x4E: "?", 0x4F: "♥",
    0x50: "↵", 0x51: "?", 0x52: "!", 0x53: "No.", 0x54: ".", 0x55: "日", 0x56: "昭", 0x57: "和",
    0x58: "分", 0x59: "出", 0x5A: "時", 0x5B: "間", 0x5C: "男", 0x5D: "女", 0x5E: "年", 0x5F: "月",
    0x60: "生", 0x61: "血", 0x62: "液", 0x63: "型", 0x64: "性", 0x65: "向", 0x66: "査?", 0x67: "人",
    0x68: "登", 0x69: "録", 0x6A: "相", 0x6B: "占", 0x6C: "西", 0x6D: "洋", 0x6E: "星", 0x6F: "術",
    0x70: "手", 0x71: "?", 0x72: "別", 0x73: "名", 0x74: "前", 0x75: "下", 0x76: "処",
})
DUDOSAS = {0x35, 0x4A, 0x4B, 0x4C, 0x4E, 0x51, 0x54, 0x66, 0x71}

TABLA_919F = 0x919F
TABLA_91B8 = 0x91B8


def tablas(nucleo):
    o1 = TABLA_919F - 0x8200
    o2 = TABLA_91B8 - 0x8200
    return nucleo[o1:o1 + 25], nucleo[o2:o2 + 72]


def letra(c):
    return LETRAS.get(c, "{%02X}" % c)


def descifra(b, o, nucleo, con_pos=True):
    """(texto, longitud) desde b[o]: como 0x8B42 (con x, y delante) o 0x8B52 (sin)."""
    t919f, t91b8 = tablas(nucleo)
    marca = {0x43: "゙", 0x44: "゚"}        # ゛ ゜ combinables
    out = []
    i = o
    if con_pos:
        out.append("[%d,%d]" % (b[i], b[i + 1]))
        i += 2
    crudo = False
    while True:
        c = b[i]
        i += 1
        if c == 0xFF:
            break
        if c == 0xFE:
            out.append("\n[%d,%d]" % (b[i], b[i + 1]))
            i += 2
            continue
        if c == 0xFD:
            crudo = not crudo
            continue
        a = (c + 0x42) & 0xFF
        if crudo or a >= 0x3D:
            out.append(letra(c))
        elif a < 0x19:
            m = 0x43 if a < 0x14 else 0x44
            out.append(letra(t919f[a]) + marca[m])
        else:
            a -= 0x19
            s = letra(t91b8[2 * a])
            if a >= 0x15:
                s += marca[0x43 if a < 0x21 else 0x44]
            out.append(s + letra(t91b8[2 * a + 1]))
    import unicodedata
    return unicodedata.normalize("NFC", "".join(out)), i - o


def todos(src="src", work="work"):
    """[(modulo, desde, hasta, texto)] de todas las lineas D de texto de las notas."""
    raiz = os.path.join(os.path.dirname(__file__), "..")
    sys.path.insert(0, os.path.dirname(__file__))
    import disco
    nucleo = open(os.path.join(raiz, work, "nucleo.bin"), "rb").read()
    dsk = disco.lee(os.path.join(raiz, "uranai.dsk"))
    out = []
    for n, s, k, org in disco.modulos(dsk):
        b = dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]
        for l in open(os.path.join(raiz, src, n + ".notes"), encoding="utf-8"):
            t = l.split()
            if len(t) >= 4 and t[0] == "D" and t[3].startswith("texto"):
                a, e = int(t[1], 16), int(t[2], 16)
                txt, lon = descifra(b, a - org, nucleo, not t[3].startswith("texto_sin_pos"))
                assert lon == e - a, (n, hex(a), lon, e - a)
                out.append((n, a, e, txt))
    return out


if __name__ == "__main__" and sys.argv[1:2] == ["--todos"]:
    for n, a, e, t in todos():
        print("%s 0x%04X %s" % (n, a, t.replace(chr(10), " / ")))
    sys.exit(0)

if __name__ == "__main__":
    raiz = os.path.join(os.path.dirname(__file__), "..")
    nucleo = open(os.path.join(raiz, "work", "nucleo.bin"), "rb").read()
    mod, dire = sys.argv[1], int(sys.argv[2], 16)
    sys.path.insert(0, os.path.dirname(__file__))
    import disco
    dsk = disco.lee(os.path.join(raiz, "uranai.dsk"))
    for n, s, k, org in disco.modulos(dsk):
        if n == mod:
            b = dsk[s * disco.SECTOR:(s + k) * disco.SECTOR]
            print(descifra(b, dire - org, nucleo)[0])
