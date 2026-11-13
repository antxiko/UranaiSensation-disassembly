# Konami's Uranai Sensation - disassembly

*(También [en castellano](README.es.md).)*

The disassembly of **Konami's Uranai Sensation** (コナミの占いセンセーション; Konami, 1988) for the MSX2: a
fortune-teller on a 720 KB disk, with its own boot and no MSX-DOS.

- **Every one of the 1,440 sectors of the disk has an owner**: the boot, the kernel, 41 parts, the sound driver, the
  data, the list of people and the leftovers of the development disk (a deleted AUTOEXEC.BAS and INIT, an old
  kernel).
- The **44 code modules** reassemble byte for byte and give back **the whole disk** (`make verify`, sha1).
- 59,164 bytes of code and 60,132 of data in the modules, **0 unidentified**. The listing is barely commented
  (0.3%).
- The screens on the web come from **running the disk** (`tools/uranai_run.py`); the main one, checked against
  openMSX: 0 bytes different in the 128 KB of VRAM.

The web: <https://antxiko.github.io/UranaiSensation-disassembly/>
(in Spanish: <https://antxiko.github.io/UranaiSensation-disassembly/es/>).

## Reproducing it

The disk image is not distributed. Put yours in the root as `uranai.dsk` (sha1 `f9499b97...`) and run `make`. The
details, in [UNDER THE HOOD](docs/UNDER-THE-HOOD.md).

## Legal

The program belongs to Konami and its rights holders. The licence in `LICENSE` only covers the tools, the comments,
the analysis and the documentation here.
