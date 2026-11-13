#!/usr/bin/env python3
"""EL CONTENIDO de la web de este disco: lo unico que es de este programa.

jekyll.py y make_web.py son la maquinaria y no llevan dentro el nombre de
ningun programa: lo leen de aqui.

Las cifras estan medidas sobre este disco con las herramientas de tools/:
CODIGO y DATOS los da tools/cobertura.py (la linea TOTAL), SECTORES y MODULOS
tools/disco.py, INSTRUCCIONES, COMENTARIOS y RUTINAS tools/densidad.py sobre
los 44 listados (make densidad: "de N" rutinas, "N instrucciones, M
comentarios"). tests/test_web.py las vuelve a medir.
"""

NOMBRE = "Konami's Uranai Sensation"
EDITOR = "Konami"
ANIO = 1988
REPOSITORIO = "https://github.com/antxiko/UranaiSensation-disassembly"
SHA1 = "f9499b9797c3bfe57623d5f82b578eb04787b364"

SECTORES = 1440
MODULOS = 44
CODIGO = 59164
DATOS = 60132
RUTINAS = 4234
INSTRUCCIONES = 28484
COMENTARIOS = 90


def mil(n, idioma):
    return f"{n:,}".replace(",", "." if idioma == "es" else ",")


def densidad(idioma):
    """El porcentaje comentado, con la coma o el punto de cada idioma."""
    d = "%.1f" % (100.0 * COMENTARIOS / INSTRUCCIONES)
    return d.replace(".", ",") if idioma == "es" else d


# (como se nombra el soporte en el titulo de las cifras, y en "la imagen de ...")
SOPORTE = {"es": ("El disco", "del disco"), "en": ("The disk", "disk")}

CIFRAS = {
    "es": [(mil(SECTORES, "es"), "sectores, cada uno con su due&ntilde;o"),
           (str(MODULOS), "m&oacute;dulos de c&oacute;digo, reensamblados byte a byte"),
           (mil(CODIGO, "es"), "bytes de c&oacute;digo"),
           (mil(DATOS, "es"), "bytes de datos en los m&oacute;dulos"),
           ("0", "bytes sin identificar"),
           (densidad("es") + " %", "del listado comentado")],
    "en": [(mil(SECTORES, "en"), "sectors, each with its owner"),
           (str(MODULOS), "code modules, reassembled byte for byte"),
           (mil(CODIGO, "en"), "bytes of code"),
           (mil(DATOS, "en"), "bytes of data in the modules"),
           ("0", "bytes unidentified"),
           (densidad("en") + "%", "of the listing commented")],
}

PIE_LEGAL = {
    "es": "<em>Konami's Uranai Sensation</em> (コナミの占いセンセーション, \"la sensaci&oacute;n de la "
          "adivinaci&oacute;n de Konami\") es un programa de Konami para MSX2, de 1988, en un disco de 720 KB. "
          "Todos los derechos siguen siendo de sus titulares. Este trabajo es de preservaci&oacute;n, estudio y "
          "documentaci&oacute;n, y la imagen del disco no se distribuye.",
    "en": "<em>Konami's Uranai Sensation</em> (コナミの占いセンセーション, \"Konami's fortune-telling "
          "sensation\") is a 1988 Konami program for the MSX2, on a 720 KB disk. All rights remain with their "
          "holders. This is preservation, study and documentation work, and the disk image is not distributed.",
}

PORTADA = {
    "es": dict(
        titulo="Konami's Uranai Sensation - desensamblado comentado",
        claim="No es un juego: es un adivino. Se apuntan hasta veinte personas con su nombre, su fecha, hora y "
              "lugar de nacimiento, su sexo y su grupo sangu&iacute;neo, y un ping&uuml;ino les echa cinco "
              "suertes: la compatibilidad de dos por el grupo sangu&iacute;neo, la omikuji de un templo, el "
              "hor&oacute;scopo, la lectura de la mano y la lista de personas. El primer disco de Konami de la "
              "serie: un arranque propio, un n&uacute;cleo y 41 partes que se cargan por sectores. Las pantallas "
              "salen de <b>ejecutar el disco</b>; la principal, cotejada con openMSX: 0 bytes distintos en los "
              "128 KB de la VRAM.",
        ficha=["Konami - <b>(c) 1988</b>",
               "Disco de <b>720 KB</b> (arranque propio, sin MSX-DOS)",
               "<b>MSX2</b>", "Volcado <b>f9499b97...</b>"],
        aviso="<b>Aqu&iacute; no hay capturas.</b> Cada pantalla sale de <b>ejecutar el disco</b> en un Z80 y un "
              "V9938 escritos para esto (tools/uranai_run.py), pulsando las teclas que pide su c&oacute;digo, y "
              "<b>c&oacute;digo nuestro las pinta</b> desde la VRAM.",
    ),
    "en": dict(
        titulo="Konami's Uranai Sensation - commented disassembly",
        claim="It is not a game: it is a fortune-teller. Up to twenty people are entered with their name, their "
              "date, time and place of birth, their sex and their blood type, and a penguin tells them five "
              "fortunes: the match of two people by blood type, a temple omikuji, the horoscope, palm reading "
              "and the list of people. The first Konami disk in the series: its own boot, a kernel and 41 parts "
              "loaded by sectors. The screens come from <b>running the disk</b>; the main one, checked against "
              "openMSX: 0 bytes different in the 128 KB of VRAM.",
        ficha=["Konami - <b>(c) 1988</b>",
               "<b>720 KB</b> disk (its own boot, no MSX-DOS)",
               "<b>MSX2</b>", "Dump <b>f9499b97...</b>"],
        aviso="<b>There are no screenshots here.</b> Every screen comes from <b>running the disk</b> on a Z80 and a "
              "V9938 written for this (tools/uranai_run.py), pressing the keys its code asks for, and <b>our own "
              "code paints them</b> from the VRAM.",
    ),
}

PAGINAS = [
    [("THE-PROGRAM.html", "EL-PROGRAMA.html", "The program", "El programa",
      "the title, the list of twenty people, entering a person and the menu of fortunes",
      "el t&iacute;tulo, la lista de veinte personas, apuntar a una persona y el men&uacute; de suertes"),
     ("THE-FORTUNES.html", "LAS-ADIVINACIONES.html", "The fortunes", "Las adivinaciones",
      "the five fortunes, screen by screen, and how each result comes out of the code",
      "las cinco adivinaciones, pantalla a pantalla, y c&oacute;mo sale cada resultado en el c&oacute;digo"),
     ("THE-TEXTS.html", "LOS-TEXTOS.html", "The texts", "Los textos",
      "the texts of the screens, with their translation", "los textos de las pantallas, con su traducci&oacute;n")],
    [("CURIOSITIES.html", "CURIOSIDADES.html", "Curiosities", "Curiosidades",
      "leftovers of the development disk, an old kernel, the handy printer and what is still not known",
      "restos del disco de desarrollo, un n&uacute;cleo viejo, la impresora de mano y lo que a&uacute;n no se "
      "sabe")],
    [("UNDER-THE-HOOD.html", "POR-DENTRO.html", "Under the hood", "Por dentro",
      "rebuilding the disk, the map of its 1,440 sectors, the boot, the kernel, the parts and the tools",
      "rehacer el disco, el mapa de sus 1.440 sectores, el arranque, el n&uacute;cleo, las partes y las "
      "herramientas")],
]

# Repositorio nuevo: no hay paginas viejas que redirigir.
VIEJAS = {}

LOGOTIPO = "titulo.png"
