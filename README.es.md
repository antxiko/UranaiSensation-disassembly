# Konami's Uranai Sensation - desensamblado

*(Also [in English](README.md).)*

El desensamblado de **Konami's Uranai Sensation** (コナミの占いセンセーション; Konami, 1988) para MSX2: un adivino en
un disco de 720 KB, con arranque propio y sin MSX-DOS.

- **Los 1.440 sectores del disco tienen dueño**: el arranque, el núcleo, 41 partes, el controlador de sonido, los
  datos, la lista de personas y los restos del disco de desarrollo (un AUTOEXEC.BAS y un INIT borrados, un núcleo
  viejo).
- Los **44 módulos** de código se reensamblan byte a byte y con ellos sale **el disco entero** (`make verify`, sha1).
- 59.164 bytes de código y 60.132 de datos en los módulos, **0 sin identificar**. El listado está casi sin comentar
  (0,3 %).
- Las pantallas de la web salen de **ejecutar el disco** (`tools/uranai_run.py`); la principal, cotejada con openMSX:
  0 bytes distintos en los 128 KB de la VRAM.

La web: <https://antxiko.github.io/UranaiSensation-disassembly/es/>
(en inglés: <https://antxiko.github.io/UranaiSensation-disassembly/>).

## Reproducirlo

La imagen del disco no se distribuye. Pon la tuya en la raíz como `uranai.dsk` (sha1 `f9499b97...`) y ejecuta
`make`. El detalle, en [POR DENTRO](docs/es/POR-DENTRO.md).

## Legal

El programa es de Konami y de sus titulares. La licencia de `LICENSE` cubre solo las herramientas, los comentarios,
el análisis y la documentación de aquí.
