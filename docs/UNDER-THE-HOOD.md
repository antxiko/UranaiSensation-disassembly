# Under the hood

## Rebuilding the disk

The disk is not distributed: put your own in the root as `uranai.dsk` (737,280 bytes, sha1
`f9499b9797c3bfe57623d5f82b578eb04787b364`). With Python 3, pasmo and make:

    make comprueba     # the sha1 of the disk
    make listado       # the 44 listings in src/, from tracing the code
    make verify        # every module reassembles to its sectors, and with them comes out the WHOLE disk
    make sanity        # no data comes out as code and no entry point falls in data
    make test          # the tests (tests/)
    make web           # this web, with Jekyll, and the links checked

`make verify` is the proof that the disassembly holds: it reassembles the 44 modules, puts them in their sectors and
compares the sha1 of the rebuilt disk with the original's.

## The 1,440 sectors

The disk is 720 KB (1,440 sectors of 512 bytes) and does not use MSX-DOS. Every sector has an owner
(`tools/disco.py mapa`, and a test that fails if any is left unexplained):

| sectors | what is there | who reads it |
|---|---|---|
| 0 | the boot | the disk BIOS |
| 1, 4 | an empty FAT and its copy | nobody (left from development) |
| 7 | a directory with three deleted files | nobody (left from development) |
| 16, 18 | AUTOEXEC.BAS and INIT | nobody (left from development) |
| 2-3, 5-6, 8, 14 | empty | nobody |
| 9-250 | **the code**: the 41 parts, the sound driver (25-56) and the kernel (234-241), 233 sectors | the boot and the kernel |
| 57 | title data | the title, at 0x9C00 |
| 58-63 | an old version of the kernel | nobody |
| 251-1437 | **the data**: drawings, music and the texts of the fortunes (1,187 sectors) | the parts, through their sector tables |
| 1438-1439 | the list of the twenty people | the main screen; written when a person is entered and by palm reading |

The leftovers of development are in [Curiosities](CURIOSITIES.html). `tools/sectores.py` tells which part reads each
data sector and from which table.

## The boot and the kernel

Sector 0 is a boot of its own: it hooks H.STKE and reads the 8 sectors of the kernel (234-241) to **0x8200**.

The kernel starts with a **jump table** (0x8200-0x82E3) that all the parts use. The most used services:

| entry | what it does |
|---|---|
| 0x8215 | read sectors (BC = first, H = how many, DE = destination), through the BDOS (0xF37D, functions 0x1A and 0x2F) |
| 0x8248 | load part A, through the table at 0x906C (6 bytes per part: sector, destination and how many) |
| 0x822D | dispatch: jumps to entry A of the table that follows the `call` |
| 0x8275, 0x827B, 0x8278 | paint a text (x, y and the letters up to 0xFF; 0xFE x y moves elsewhere) |
| 0x821B | decompress to the VRAM (RLE) |
| 0x8218 | put tiles |
| 0x82AE | paint 8x8 patterns |
| 0x82CC | a list of drawings (5-byte records: mark, pointer, position and colour) |
| 0x82DB | set a palette of 16 colours |

The main loop is the interrupt: the kernel hooks H.TIMI (0x8504), reads the keyboard (0x8841) and calls the part in
charge; outside the interrupt it sits on a `jr $` (0x84F9).

## The 41 parts

Parts 0x00-0x28 are loaded through the table at 0x906C into three places: **0x9200** (the fortune or the screen in
charge), **0x9800** and **0x9C00** (what it asks for as it goes), plus 0x9600 and 0x9A00 for a few. Nearly all start
with their own jump table. By what each run loads:

| parts | what they do |
|---|---|
| p00-p03, p06, p28 | the title and the main screen (loaded at power-on; p06 reads sector 57, the title's) |
| p04 | entering a person (INPUT): name, date, place, time, sex and blood type |
| p10, p11, p13-p16 | blood type (p13 works out the percentage) |
| p0D, p0E, p0F, p12, p1A, p1B | the omikuji (p1A fills the box) |
| p07-p0C | the horoscope |
| p1F, p20-p25 | palm reading (p24, the seven lines) |
| p0B, p18, p1B, p1D, p1E, p24, p26, p27, p28 | the messages of the handy printer |

They are the ones loaded on each run of `tools/pantallas.py` (the list of reads of `tools/uranai_run.py`).

The **sound driver** (sectors 25-56) goes in the RAM at 0x4000-0x7FFF, page 1, which the kernel looks for among the
slots. `tools/musica_lee.py` runs it: 64 sounds, none unexplained.

## The tools

| tool | what it does |
|---|---|
| `tools/disco.py` | cuts the disk into modules (reading the kernel's table of parts) and makes the map |
| `tools/z80trace.py`, `tools/mkasm.py` | trace the code from its entry points and write the listings |
| `tools/despachos.py`, `tools/tipos.py` | resolve the dispatcher tables and measure the data each service reads |
| `tools/explica.py` | tells, for each unnamed stretch, who reads it, and whether it is padding or a leftover |
| `tools/sectores.py` | who reads each data sector |
| `tools/uranai_run.py` | **runs the disk**: a Z80 and a V9938 (`tools/msx2run.py`) with the BDOS trapped (reads and writes sectors) |
| `tools/pantallas.py` | the screens of this web: each path with the keys its code asks for |
| `tools/fuente.py` | the font of VRAM page 1 and the kernel's syllable tables |

The emulator is checked against openMSX on the main screen: **0 bytes different** in the 128 KB of VRAM and the same
palette. To reach every screen it needed the VDP's POINT command (INPUT uses it), sector writing in the BDOS and the
R register (the omikuji uses it for chance: with R at zero it kept looking for a free slot forever).

## Numbers

- 59,164 bytes of code and 60,132 of data in the 44 modules; **0 unidentified**.
- 28,484 instructions; **the listing is barely commented** (0.3%): every byte is identified, but not explained line
  by line.
