"""La web, comprobada contra los listados y el disco: las cifras de la portada, los nombres de otros
programas de la serie, las imagenes y los pares de paginas."""

import os
import re
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.abspath(__file__)) + "/.."
RAIZ = os.path.normpath(RAIZ)
sys.path.insert(0, os.path.join(RAIZ, "tools"))

DOCS = os.path.join(RAIZ, "docs")
SRC = os.path.join(RAIZ, "src")

# Los demas juegos de la serie. Que el nombre de otro salga en una pagina de
# este es casi siempre un copia y pega.
OTROS_JUEGOS = (
    "Tennis", "Pitfall", "Temptations", "Stardust", "Ale Hop", "Colt 36",
    "Antarctic", "Athletic Land", "Monkey Academy", "F-1 Spirit", "Pippols",
    "Time Pilot", "Frogger", "Super Cobra", "Billiards", "Mahjong",
    "Hyper Rally", "Nemesis", "Demonia", "Cabbage", "Hole in One",
    "Casio World Open", "3D Golf", "Konami's Baseball", "Yie Ar Kung-Fu",
    "King's Valley", "Sky Jaguar", "Mopi Ranger", "Descubrimiento",
    "War in Middle Earth", "Ping Pong", "Soccer", "Football", "Road Fighter",
    "Hyper Sports", "Hyper Olympic", "Goonies", "Knightmare", "Twin Bee",
    "Penguin", "Bomber", "Circus Charlie", "Comic Bakery", "Magical Tree",
    "King Kong", "Vampire Killer", "Q*bert", "Qbert", "Quarth", "Metal Gear",
    "Space Manbow", "Salamander", "Parodius", "Contra", "Usas", "Galious",
    "Goemon", "Hinotori", "Shalom", "Rastan", "Dunk Shot", "Pennant",
    "Game Master", "Synthesizer", "Majutsushi", "Sparkie", "Juno First",
    "Crazy Train", "Pooyan", "Ski Command", "Exciting Baseball", "Exciting Jockey",
    "Pachinko", "Car Fighter", "Ice World", "Shindobaddo", "Sindbad", "Simbad",
    "Eagle Fighter", "Exoide", "Iga Ninpouchou", "Ninpouchou", "Mangetsu", "Koneko", "Moai", "Kenja",
    "Stone of Wisdom", "Seal of Hades", "Hadesu", "Youkai", "Issun", "Game Land", "Snatcher",
)

PARES = [("THE-PROGRAM.md", "EL-PROGRAMA.md"), ("THE-FORTUNES.md", "LAS-ADIVINACIONES.md"),
         ("THE-TEXTS.md", "LOS-TEXTOS.md"), ("CURIOSITIES.md", "CURIOSIDADES.md"),
         ("UNDER-THE-HOOD.md", "POR-DENTRO.md")]


def lee_texto(ruta):
    with open(ruta, encoding="utf-8") as f:
        return f.read()


def sale(*orden):
    return subprocess.run([sys.executable] + list(orden), capture_output=True, text=True, check=True,
                          cwd=RAIZ).stdout


class LasCifrasDeLaPortada(unittest.TestCase):
    def setUp(self):
        import contenido_web
        self.w = contenido_web

    def test_codigo_y_datos_son_los_de_cobertura(self):
        m = re.search(r"TOTAL\s+codigo (\d+)\s+datos (\d+)\s+sin explicar (\d+)",
                      sale("tools/cobertura.py", "src", "work"))
        self.assertEqual((self.w.CODIGO, self.w.DATOS, 0), tuple(int(x) for x in m.groups()))

    def test_la_densidad_y_las_rutinas_son_las_de_los_44_listados(self):
        ins = com = rut = 0
        listados = sorted(f for f in os.listdir(SRC) if f.startswith("uranai_") and f.endswith(".asm"))
        self.assertEqual(len(listados), self.w.MODULOS)
        for f in listados:
            s = sale("tools/densidad.py", os.path.join("src", f))
            m = re.search(r"(\d+) instrucciones, (\d+) comentarios", s)
            ins += int(m.group(1))
            com += int(m.group(2))
            rut += int(re.search(r"por debajo del 10 %, de (\d+)", s).group(1))
        self.assertEqual((self.w.INSTRUCCIONES, self.w.COMENTARIOS, self.w.RUTINAS), (ins, com, rut))

    def test_los_sectores(self):
        import disco
        d = disco.lee(os.path.join(RAIZ, "uranai.dsk"))
        self.assertEqual(len(d) // disco.SECTOR, self.w.SECTORES)

    def test_las_paginas_dicen_las_mismas_cifras(self):
        es = lee_texto(os.path.join(DOCS, "es", "POR-DENTRO.md"))
        en = lee_texto(os.path.join(DOCS, "UNDER-THE-HOOD.md"))
        mil = lambda n, s: f"{n:,}".replace(",", s)   # noqa: E731
        for n in (self.w.CODIGO, self.w.DATOS, self.w.INSTRUCCIONES):
            self.assertIn(mil(n, "."), es)
            self.assertIn(mil(n, ","), en)
        self.assertIn(self.w.densidad("es") + " %", es)
        self.assertIn(self.w.densidad("en") + "%", en)

    def test_la_ficha_dice_el_volcado(self):
        for idioma in ("es", "en"):
            ficha = " ".join(self.w.PORTADA[idioma]["ficha"])
            self.assertIn(self.w.SHA1[:8], ficha)


class SinNombresDeOtroJuego(unittest.TestCase):
    def _revisa(self, ruta):
        texto = lee_texto(ruta)
        for juego in OTROS_JUEGOS:
            self.assertNotIn(juego, texto, "%s nombra a %s" % (ruta, juego))

    def test_la_licencia_y_los_readme_son_de_este(self):
        for fn in ("LICENSE", "README.md", "README.es.md"):
            self._revisa(os.path.join(RAIZ, fn))
            self.assertIn("Uranai Sensation", lee_texto(os.path.join(RAIZ, fn)))

    def test_las_herramientas_no_apuntan_a_otro(self):
        for fn in os.listdir(os.path.join(RAIZ, "tools")):
            if fn.endswith((".py", ".sh", ".tcl", ".ps1")):
                self._revisa(os.path.join(RAIZ, "tools", fn))

    def test_la_web_no_nombra_otro(self):
        for raiz, _, ficheros in os.walk(DOCS):
            for fn in ficheros:
                if fn.endswith((".md", ".html")):
                    self._revisa(os.path.join(raiz, fn))


class LasPaginas(unittest.TestCase):
    def test_estan_las_de_contenido_web_en_los_dos_idiomas(self):
        import contenido_web
        for bloque in contenido_web.PAGINAS:
            for p in bloque:
                self.assertTrue(os.path.exists(os.path.join(DOCS, p[0][:-5] + ".md")), p[0])
                self.assertTrue(os.path.exists(os.path.join(DOCS, "es", p[1][:-5] + ".md")), p[1])

    def test_estan_todas_las_imagenes_que_se_nombran(self):
        for raiz, _, ficheros in os.walk(DOCS):
            for fn in ficheros:
                if not fn.endswith(".md"):
                    continue
                texto = lee_texto(os.path.join(raiz, fn))
                for img in re.findall(r"\]\(((?:\.\./)?imagenes/[^)]+)\)", texto):
                    self.assertTrue(os.path.exists(os.path.normpath(os.path.join(raiz, img))),
                                    "%s: falta %s" % (fn, img))

    def test_los_dos_idiomas_tienen_las_mismas_imagenes(self):
        for en, es in PARES:
            ie = re.findall(r"imagenes/([^)]+)\)", lee_texto(os.path.join(DOCS, en)))
            ia = re.findall(r"imagenes/([^)]+)\)", lee_texto(os.path.join(DOCS, "es", es)))
            self.assertEqual(ie, ia, en)

    def test_cada_imagen_se_usa(self):
        usadas = set()
        for raiz, _, ficheros in os.walk(DOCS):
            for fn in ficheros:
                if fn.endswith(".md"):
                    usadas |= set(re.findall(r"imagenes/([^)]+)\)", lee_texto(os.path.join(raiz, fn))))
        import contenido_web
        usadas.add(contenido_web.LOGOTIPO)
        hay = set(os.listdir(os.path.join(DOCS, "imagenes")))
        self.assertEqual(hay - usadas, set())

    def test_las_elegidas_de_pantallas_py_estan_en_la_web(self):
        import pantallas
        for nombre in pantallas.ELEGIDAS:
            self.assertTrue(os.path.exists(os.path.join(DOCS, "imagenes", nombre + ".png")), nombre)


if __name__ == "__main__":
    unittest.main()
