# Curiosidades

## Restos del disco de desarrollo

El disco no usa MSX-DOS: su sector 0 carga el núcleo directamente. Pero por debajo hay un disco de MSX-DOS de
720 KB que nadie lee (comprobado sector a sector en `tests/test_disco.py`):

- **La FAT** (sectores 1 y 4, la copia) está vacía: solo `F9 FF FF`.
- **El directorio** (sector 7) tiene tres ficheros, los tres **borrados** (el primer byte del nombre cambiado por
  0xE5): `MSXDOS.SYS`, `AUTOEXEC.BAS` e `INIT`.
- **AUTOEXEC.BAS** sigue entero en el sector 16, en BASIC tokenizado (63 bytes):

  ```
  0 ON STOP GOSUB 10000:STOP ON
  5 SCREEN 1:COLOR 15,15,15:CLS
  10 BLOAD"INIT",R
  10000 RETURN
  ```

  Desactiva CTRL+STOP, deja la pantalla en blanco sobre blanco y carga INIT.
- **INIT** está en el sector 18: un fichero de BLOAD (cabecera `FE`, de 0xA000 a 0xA027, entra en 0xA000) que lee
  por la BDOS los 8 sectores del núcleo (del 234 en adelante) a 0x8200 y salta allí; si el primer byte leído es
  0xE5 (un sector sin grabar) se queda parado.

Es decir: durante el desarrollo el programa se arrancaba **desde Disk BASIC**, con AUTOEXEC.BAS e INIT. El disco de
la tienda hace lo mismo con su sector de arranque propio, y los ficheros se borraron sin borrar sus sectores.

## Un núcleo viejo

Los sectores 58-63 tienen **una versión anterior del núcleo**: el mismo código con las direcciones corridas (en el
63, la rutina de 0x9014 llama a 0x8F2A donde la buena llama a 0x8F69). Ningún código los lee; el 57, justo antes,
sí: lo carga el título en 0x9C00.

## La persona que ya viene apuntada

El hueco 1 de la lista (sector 1438) ya trae una ficha: «ああああ». Con ella, sin apuntar a nadie, ya se pueden
probar todas las adivinaciones menos la del grupo sanguíneo, que pide dos personas.

## La impresora de mano

Nueve partes (p0B, p18, p1B, p1D, p1E, p24, p26, p27 y p28) sacan las suertes por una **impresora de mano**
(はんでぃ ぷりんたー), de las que se mueven con la mano sobre el papel: «mueve la impresora», «ponla donde quieras
imprimir». La mano y el horóscopo preguntan al final «¿por dónde lo saco?»: la tele o la impresora. Sus textos están en
[Los textos](LOS-TEXTOS.html).

## La omikuji no tira dados

La suerte de la omikuji (la que sale en grande) no sale de parar la caja: está decidida **antes**, y con ella el
reparto de los 16 palillos (0x9213-0x9222) que dan el texto de cada tema (ver [Las adivinaciones](LAS-ADIVINACIONES.html)).
Para decidirla, la parte p1A mezcla el registro R, el contador de 0xD1C3 y el registro IY y con eso lee **un byte del
controlador de sonido** (de 0x4000 en adelante): el código del sonido hace de tabla de números al azar.

## Lo que el listado aún no tiene claro

- **p02 0x9A63**: una carga de la lista de personas que no se ejecuta en ningún recorrido.
- **p0E**: su cabecera es una copia de la de p0C.
- **p14 0x989F**: un `call` que rebota en datos.
- El listado está casi sin comentar (el 0,3 % de las 28.484 instrucciones): todo está **identificado** (código,
  datos y quién los lee), pero no explicado línea a línea.

## Preguntas abiertas

- **El horóscopo**: cómo saca el ascendente (上昇宮) de la ficha. Solo se ha recorrido el camino de
  la persona del hueco 1.
- **Los resultados de la mano**: qué combinación de las siete líneas lleva a cada texto.
- **DISPLAY y DELETE** de la pantalla principal no se han recorrido.
- **La impresora de mano**: qué modelo es. Las partes que imprimen no se han ejecutado con una impresora.
- Las pantallas que no son la principal no están cotejadas con openMSX.
