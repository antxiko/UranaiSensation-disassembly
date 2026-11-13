# Por dentro

## Rehacer el disco

El disco no se distribuye: hay que poner el propio en la raíz como `uranai.dsk` (737.280 bytes, sha1
`f9499b9797c3bfe57623d5f82b578eb04787b364`). Con Python 3, pasmo y make:

    make comprueba     # el sha1 del disco
    make listado       # los 44 listados de src/, desde el trazado del código
    make verify        # cada módulo reensambla a sus sectores, y con ellos sale el disco ENTERO
    make sanity        # ningún dato sale como código ni ninguna entrada cae en datos
    make test          # los tests (tests/)
    make web           # esta web, con Jekyll, y los enlaces comprobados

`make verify` es la prueba de que el desensamblado vale: reensambla los 44 módulos, los pone en sus sectores y
compara el sha1 del disco rehecho con el del original.

## Los 1.440 sectores

El disco es de 720 KB (1.440 sectores de 512 bytes) y no usa MSX-DOS. Cada sector tiene dueño
(`tools/disco.py mapa`, y un test que falla si queda alguno sin explicar):

| sectores | qué hay | quién lo lee |
|---|---|---|
| 0 | el arranque | la BIOS del disco |
| 1, 4 | una FAT vacía y su copia | nadie (resto del desarrollo) |
| 7 | un directorio con tres ficheros borrados | nadie (resto del desarrollo) |
| 16, 18 | AUTOEXEC.BAS e INIT | nadie (resto del desarrollo) |
| 2-3, 5-6, 8, 14 | vacíos | nadie |
| 9-250 | **el código**: las 41 partes, el controlador de sonido (25-56) y el núcleo (234-241), 233 sectores | el arranque y el núcleo |
| 57 | datos del título | el título, a 0x9C00 |
| 58-63 | una versión vieja del núcleo | nadie |
| 251-1437 | **los datos**: dibujos, músicas y textos de las suertes (1.187 sectores) | las partes, por sus tablas de sectores |
| 1438-1439 | la lista de las veinte personas | la pantalla principal; se graba al apuntar y en la mano |

Los restos del desarrollo están contados en [Curiosidades](CURIOSIDADES.html). `tools/sectores.py` dice qué parte
lee cada sector de datos y de qué tabla sale.

## El arranque y el núcleo

El sector 0 es un arranque propio: engancha H.STKE y lee los 8 sectores del núcleo (234-241) a **0x8200**.

El núcleo empieza con una **tabla de saltos** (0x8200-0x82E3) que usan todas las partes. Los servicios más usados:

| entrada | qué hace |
|---|---|
| 0x8215 | leer sectores (BC = primero, H = cuántos, DE = destino), por la BDOS (0xF37D, funciones 0x1A y 0x2F) |
| 0x8248 | cargar la parte A, por la tabla de 0x906C (6 bytes por parte: sector, destino y cuántos) |
| 0x822D | despachar: salta a la entrada A de la tabla que va detrás del `call` |
| 0x8275, 0x827B, 0x8278 | pintar un texto (x, y y las letras hasta 0xFF; 0xFE x y cambia de sitio) |
| 0x821B | descomprimir a la VRAM (RLE) |
| 0x8218 | poner casillas |
| 0x82AE | pintar patrones de 8x8 |
| 0x82CC | una lista de dibujos (registros de 5 bytes: marca, puntero, posición y color) |
| 0x82DB | poner una paleta de 16 colores |

El bucle principal es la interrupción: el núcleo engancha H.TIMI (0x8504), lee el teclado (0x8841) y llama a la
parte que toca; fuera de la interrupción se queda en un `jr $` (0x84F9).

## Las 41 partes

Las partes 0x00-0x28 se cargan por la tabla de 0x906C en tres sitios: **0x9200** (la adivinación o la pantalla
que manda), **0x9800** y **0x9C00** (lo que va pidiendo), más 0x9600 y 0x9A00 para alguna. Casi todas empiezan con su
propia tabla de saltos. Por lo que carga cada recorrido:

| partes | qué hace |
|---|---|
| p00-p03, p06, p28 | el título y la pantalla principal (se cargan al encender; p06 lee el sector 57, el del título) |
| p04 | apuntar a una persona (INPUT): nombre, fecha, lugar, hora, sexo y grupo |
| p10, p11, p13-p16 | el grupo sanguíneo (p13 calcula el porcentaje) |
| p0D, p0E, p0F, p12, p1A, p1B | la omikuji (p1A llena la caja) |
| p07-p0C | el horóscopo |
| p1F, p20-p25 | la mano (p24, las siete líneas) |
| p0B, p18, p1B, p1D, p1E, p24, p26, p27, p28 | los avisos de la impresora de mano |

Son las que se cargan en cada recorrido de `tools/pantallas.py` (la lista de lecturas de `tools/uranai_run.py`).

El **controlador de sonido** (sectores 25-56) va en la RAM de 0x4000-0x7FFF, la página 1, que el núcleo busca entre
los slots. `tools/musica_lee.py` lo ejecuta: 64 sonidos, ninguno sin explicar.

## Las herramientas

| herramienta | qué hace |
|---|---|
| `tools/disco.py` | corta el disco en módulos (leyendo la tabla de partes del núcleo) y hace el mapa |
| `tools/z80trace.py`, `tools/mkasm.py` | trazan el código desde sus entradas y escriben los listados |
| `tools/despachos.py`, `tools/tipos.py` | resuelven las tablas del despachador y miden los datos que cada servicio lee |
| `tools/explica.py` | dice de cada tramo sin nombre quién lo lee, y si es relleno o resto |
| `tools/sectores.py` | quién lee cada sector de datos |
| `tools/uranai_run.py` | **ejecuta el disco**: un Z80 y un V9938 (`tools/msx2run.py`) con la BDOS atrapada (lee y graba sectores) |
| `tools/pantallas.py` | las pantallas de esta web: cada camino con las teclas que pide el código |
| `tools/fuente.py` | la fuente de la página 1 de la VRAM y las tablas de sílabas del núcleo |

El emulador está cotejado con openMSX en la pantalla principal: **0 bytes distintos** en los 128 KB de la VRAM y la
paleta igual. Para llegar a todas las pantallas le hicieron falta la orden POINT del VDP (la usa INPUT), la
escritura de sectores de la BDOS y el registro R (la omikuji lo usa para el azar: con R a cero se quedaba buscando un hueco
libre para siempre).

## Cifras

- 59.164 bytes de código y 60.132 de datos en los 44 módulos; **0 sin identificar**.
- 28.484 instrucciones; **el listado está casi sin comentar** (0,3 %): cada byte está identificado, pero no explicado
  línea a línea.
