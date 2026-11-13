#!/usr/bin/env python3
"""Las pantallas de la web, EJECUTANDO el disco (tools/uranai_run.py): nada de capturas.

Cada camino sale del arranque y pulsa las teclas de su receta (tecla*cuadros: la tecla
se pulsa 4 cuadros y luego se esperan los cuadros dichos; `nada*N` solo espera). Tras
cada paso se guarda la foto en work/fotos/<camino>_<paso>.png; las que van a la web son
las de ELEGIDAS, copiadas a docs/imagenes/<nombre>.png.

Las recetas salen del codigo (las teclas: nucleo 0x8841; el cursor de las letras: p04
0xB175, de 1 a 8 filas y de 1 a 10 columnas, con おわり en la columna 9 de la fila 8; las
lineas de la mano: p24 0x9C62, izquierda/derecha cambian la variante y la ultima opcion
pasa a la linea siguiente, p1F 0x9378).

omikuji_K (K = 0..7): la omikuji FORZADA: antes de parar la caja, la suerte general (0x9223, la
del dibujo grande) y los 16 palillos de la caja (0x9213-0x9222, p1A, los textos de los temas) se
ponen todos al nivel K; asi sale cada uno de los ocho.

Uso: pantallas.py <docs/imagenes> [camino ...]      (sin caminos: todos)
     pantallas.py <docs/imagenes> copia             solo copia las ELEGIDAS de work/fotos
"""
import copy
import os
import shutil
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from uranai_run import Uranai, ESPACIO      # noqa: E402

TECLA = {'esp': (8, 0), 'arr': (8, 5), 'aba': (8, 6), 'izq': (8, 4), 'der': (8, 7), 'ret': (7, 7), 'esc': (7, 2)}
FOTOS = os.path.join(AQUI, '..', 'work', 'fotos')

# la ficha de la segunda persona por INPUT: hueco 2, nombre あい, y lo demas como viene
NOMBRE = ['esp*60', 'der*30', 'esp*60'] + ['aba*30'] * 7 + ['der*30'] * 7 + ['esp*900', 'esp*900']
LINEA = ['esp*300', 'izq*120', 'esp*900']        # elegir la variante y pasar a la siguiente linea

# camino: (de donde sale, pasos)
CAMINOS = {
    'omikuji': ('menu', ['der*60', 'esp*1500', 'esp*3000', 'esp*600', 'esp*900', 'nada*1500',
                         'esp*900', 'nada*600', 'esp*1500', 'esp*900', 'nada*3500', 'esp*1500']),
    'manos': ('menu', ['aba*60', 'der*60', 'esp*1500', 'esp*1500', 'esp*3000', 'esp*600', 'esp*600',
                       'esp*1500', 'esp*1500', 'der*120', 'esp*300', 'izq*120', 'izq*120', 'esp*600']
              + LINEA * 6 + ['esp*1500', 'esp*1500', 'esp*1500']),
    'horoscopo': ('menu', ['aba*60', 'esp*1500', 'esp*1500', 'esp*3000', 'esp*1500', 'esp*1500', 'esp*1500']),
    'input': ('principal', ['der*200', 'esp*1500', 'aba*120', 'esp*900'] + NOMBRE + ['esp*900'] * 18),
    'sangre': ('input', ['izq*200', 'esp*1200', 'esp*1500', 'esp*1500', 'aba*60', 'esp*1500', 'esp*1500',
                         'esp*3000']),
}
# los palillos se fuerzan tras este paso del camino omikuji (la caja agitada, antes de すとっぷ)
OMIKUJI_FUERZA = 8

# nombre en la web: la foto de work/fotos (mirada una a una)
ELEGIDAS = {
    'titulo': 'titulo', 'principal': 'principal', 'menu': 'menu',
    'omikuji_templo': 'omikuji_4', 'omikuji_caja': 'omikuji_8', 'omikuji_resultado': 'omikuji_11',
    'manos_adivino': 'manos_5', 'manos_mano': 'manos_7', 'manos_linea': 'manos_8', 'manos_resumen': 'manos_31',
    'manos_temas': 'manos_33', 'manos_resultado': 'manos_34',
    'input_numero': 'input_1', 'input_letras': 'input_6', 'input_fecha': 'input_25', 'input_lugar': 'input_28',
    'input_sexo': 'input_36', 'input_sangre': 'input_39', 'principal_dos': 'input_40',
    'sangre_globos': 'sangre_6', 'sangre_porcentaje': 'sangre_7',
    'horoscopo_ascendente': 'horoscopo_3', 'horoscopo_temas': 'horoscopo_4', 'horoscopo_resultado': 'horoscopo_6',
}


def paso(u, p):
    t, _, n = p.partition('*')
    n = int(n or 60)
    if t == 'nada':
        u.cuadro(n)
    else:
        u.pulsa(*TECLA[t], cuadros=4, despues=n)


def foto(u, nombre):
    os.makedirs(FOTOS, exist_ok=True)
    u.foto(os.path.join(FOTOS, nombre + '.png'))


def corre(camino, u, estados):
    _, pasos = CAMINOS[camino]
    for k, p in enumerate(pasos):
        paso(u, p)
        foto(u, '%s_%d' % (camino, k))
        if camino == 'omikuji' and k == OMIKUJI_FUERZA:
            estados['omikuji_caja'] = copy.deepcopy(u)
        print('  %s %d %s' % (camino, k, p), flush=True)
    estados[camino] = u


def omikuji_forzada(estados, nivel):
    u = copy.deepcopy(estados['omikuji_caja'])
    u.mem[0x9223] = nivel                   # la suerte general: el dibujo grande (p1A 0x9CA1)
    for a in range(0x9213, 0x9223):         # y los 16 palillos: el texto de cada tema
        u.mem[a] = nivel
    for k, p in enumerate(CAMINOS['omikuji'][1][OMIKUJI_FUERZA + 1:]):
        paso(u, p)
        foto(u, 'omikuji%d_%d' % (nivel, k))
    print('  omikuji forzada al nivel %d' % nivel, flush=True)


def main(argv):
    if len(argv) < 2:
        print(__doc__)
        return 2
    salida = argv[1]
    pedidos = argv[2:] or list(CAMINOS) + ['niveles']
    if pedidos != ['copia']:
        ejecuta(pedidos)
    for nombre, origen in ELEGIDAS.items():
        de = os.path.join(FOTOS, origen + '.png')
        if os.path.exists(de):
            shutil.copy(de, os.path.join(salida, nombre + '.png'))
        else:
            print('  FALTA %s (%s)' % (nombre, origen))
    niveles(salida)
    return 0


def niveles(salida):
    """omikuji_niveles.png: las ocho omikuji forzadas (la ultima foto de cada una), en dos filas de cuatro."""
    from PIL import Image
    ultimo = len(CAMINOS['omikuji'][1]) - OMIKUJI_FUERZA - 2
    fotos = [os.path.join(FOTOS, 'omikuji%d_%d.png' % (n, ultimo)) for n in range(8)]
    if not all(os.path.exists(f) for f in fotos):
        print('  FALTAN las omikuji forzadas')
        return
    o = Image.new('RGB', (256 * 4, 212 * 2))
    for n, f in enumerate(fotos):
        o.paste(Image.open(f).resize((256, 212)), ((n % 4) * 256, (n // 4) * 212))
    o.save(os.path.join(salida, 'omikuji_niveles.png'))


def ejecuta(pedidos):
    estados = {}
    u = Uranai()
    u.arranca()
    u.cuadro(900)
    foto(u, 'titulo')
    u.pulsa(*ESPACIO, cuadros=8, despues=600)
    foto(u, 'principal')
    estados['principal'] = copy.deepcopy(u)
    u.pulsa(*ESPACIO, cuadros=4, despues=1200)
    foto(u, 'menu')
    estados['menu'] = u
    for camino in CAMINOS:
        necesita = camino in pedidos or (camino == 'input' and 'sangre' in pedidos) or \
            (camino == 'omikuji' and 'niveles' in pedidos)
        if necesita:
            corre(camino, copy.deepcopy(estados[CAMINOS[camino][0]]), estados)
    if 'niveles' in pedidos:
        for nivel in range(8):
            omikuji_forzada(estados, nivel)



if __name__ == '__main__':
    sys.exit(main(sys.argv))
