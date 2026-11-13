"""El disco partido en modulos: que cada sector tiene un solo dueno, que el Makefile dice lo
mismo que la tabla del nucleo, y que los listados rehacen el disco entero.

Los que necesitan uranai.dsk solo existen si esta (no se distribuye)."""
import glob
import hashlib
import os
import re
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import disco          # noqa: E402
import check_caidas   # noqa: E402

DSK = os.path.join(RAIZ, "uranai.dsk")
SHA1 = "f9499b9797c3bfe57623d5f82b578eb04787b364"
HAY_DSK = os.path.exists(DSK)


def makefile():
    return open(os.path.join(RAIZ, "Makefile"), encoding="utf-8").read()


class Disco(unittest.TestCase if HAY_DSK else object):
    def setUp(self):
        self.dsk = disco.lee(DSK)

    def test_sha1(self):
        self.assertEqual(hashlib.sha1(self.dsk).hexdigest(), SHA1)

    def test_41_partes_en_la_tabla_del_nucleo(self):
        p = disco.partes(self.dsk)
        self.assertEqual(len(p), 41)
        self.assertEqual([n for n, _, _, _ in p], list(range(41)))

    def test_ningun_sector_de_dos_modulos(self):
        disco.mapa(self.dsk)          # tiene su propio assert

    def test_org_del_makefile_igual_que_la_tabla(self):
        mk = dict(re.findall(r"^ORG_(\w+)\s*=\s*(0x[0-9A-Fa-f]+)", makefile(), re.M))
        for nombre, _, _, org in disco.modulos(self.dsk):
            self.assertIn(nombre, mk, nombre)
            self.assertEqual(int(mk[nombre], 16), org, nombre)

    def test_modulos_del_makefile(self):
        mk = makefile()
        partes = re.search(r"^PARTES\s*=\s*(.*?)(?<!\\)$", mk, re.M | re.S).group(1)
        partes = partes.replace("\\\n", " ").split()
        self.assertEqual(["p" + x for x in partes],
                         [n for n, _, _, _ in disco.modulos(self.dsk) if n.startswith("p")])

    def test_mapa_sin_sectores_de_codigo_vacios(self):
        et = disco.mapa(self.dsk)
        cod = {m[0] for m in disco.modulos(self.dsk)}
        self.assertEqual(sum(1 for e in et if e in cod), 233)
        self.assertEqual(et[1438:1440], ["personas", "personas"])

    def test_ningun_sector_sin_explicar(self):
        et = disco.mapa(self.dsk)
        self.assertNotIn("?", et, [i for i, e in enumerate(et) if e == "?"])

    def test_cada_sector_de_datos_tiene_lector(self):
        import sectores
        _, duenos = sectores.mapa(self.dsk)
        for i in list(range(251, 1438)) + [57]:
            self.assertIn(i, duenos, "el sector %d no lo lee nadie" % i)

    def test_restos_de_desarrollo(self):
        d = self.dsk
        self.assertEqual(d[512:515], bytes.fromhex("f9ffff"))
        self.assertFalse(any(d[515:1024]))
        self.assertEqual(d[4 * 512:4 * 512 + 3], bytes.fromhex("f9ffff"))
        nombres = [d[7 * 512 + i + 1:7 * 512 + i + 11] for i in range(0, 96, 32)]
        self.assertEqual(nombres, [b"SXDOS     ", b"UTOEXECBAS", b"NIT       "])
        self.assertTrue(all(d[7 * 512 + i] == 0xE5 for i in range(0, 96, 32)))
        self.assertEqual(d[16 * 512], 0xFF)
        self.assertEqual(d[18 * 512:18 * 512 + 7], bytes.fromhex("fe00a027a000a0"))

    def test_disco_rehecho(self):
        """Lo que deja `make verify`: el .dsk rehecho con los listados reensamblados."""
        r = os.path.join(RAIZ, "work", "reensamblado.dsk")
        self.assertTrue(os.path.exists(r), "falta work/reensamblado.dsk: make verify")
        self.assertEqual(hashlib.sha1(open(r, "rb").read()).hexdigest(), SHA1)


class Listados(unittest.TestCase):
    def listados(self):
        return sorted(glob.glob(os.path.join(RAIZ, "src", "uranai_*.asm")))

    def test_44_listados(self):
        self.assertEqual(len(self.listados()), 44)

    def test_ninguna_caida_en_datos(self):
        self.assertEqual(check_caidas.main(self.listados()), 0)

    def test_excepciones_de_caidas_explicadas(self):
        for l in open(os.path.join(RAIZ, "src", "caidas.txt"), encoding="utf-8"):
            if l.startswith("#") or not l.strip():
                continue
            t = l.split(None, 2)
            self.assertEqual(len(t), 3, l)
            self.assertGreater(len(t[2]), 40, "excepcion sin explicar: " + l)

    def test_cada_modulo_con_sus_ficheros(self):
        for m in ["arranque", "nucleo", "sonido"] + ["p%02X" % i for i in range(41)]:
            for ext in ("entries", "nocode", "notes"):
                self.assertTrue(os.path.exists(os.path.join(RAIZ, "src", "%s.%s" % (m, ext))), m + "." + ext)


if __name__ == "__main__":
    unittest.main()
