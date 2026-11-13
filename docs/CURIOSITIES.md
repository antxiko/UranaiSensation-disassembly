# Curiosities

## Leftovers of the development disk

The disk does not use MSX-DOS: its sector 0 loads the kernel directly. But underneath there is a 720 KB MSX-DOS disk
that nobody reads (checked sector by sector in `tests/test_disco.py`):

- **The FAT** (sectors 1 and 4, the copy) is empty: just `F9 FF FF`.
- **The directory** (sector 7) has three files, all three **deleted** (the first byte of the name changed to 0xE5):
  `MSXDOS.SYS`, `AUTOEXEC.BAS` and `INIT`.
- **AUTOEXEC.BAS** is still whole in sector 16, in tokenised BASIC (63 bytes):

  ```
  0 ON STOP GOSUB 10000:STOP ON
  5 SCREEN 1:COLOR 15,15,15:CLS
  10 BLOAD"INIT",R
  10000 RETURN
  ```

  It disables CTRL+STOP, leaves the screen white on white and loads INIT.
- **INIT** is in sector 18: a BLOAD file (header `FE`, from 0xA000 to 0xA027, starting at 0xA000) that reads the 8
  sectors of the kernel (from 234 on) to 0x8200 through the BDOS and jumps there; if the first byte read is 0xE5 (a
  sector never written) it stops.

That is: during development the program was started **from Disk BASIC**, with AUTOEXEC.BAS and INIT. The shop disk
does the same with its own boot sector, and the files were deleted without wiping their sectors.

## An old kernel

Sectors 58-63 hold **an earlier version of the kernel**: the same code with the addresses shifted (in sector 63, the
routine at 0x9014 calls 0x8F2A where the real one calls 0x8F69). No code reads them; sector 57, just before, is read:
the title loads it at 0x9C00.

## The person already on the list

Slot 1 of the list (sector 1438) already has a record: «ああああ». With it, without entering anybody, every fortune can
be tried except the blood type, which needs two people.

## The handy printer

Nine parts (p0B, p18, p1B, p1D, p1E, p24, p26, p27 and p28) print the fortunes on a **handheld printer**
(はんでぃ ぷりんたー), the kind that is moved by hand over the paper: «move the printer», «put it where you want to
print». Palm reading and the horoscope ask at the end «where do I output it?»: the TV or the printer. Its texts are in
[The texts](THE-TEXTS.html).

## The omikuji does not roll dice

The omikuji fortune (the one shown big) does not come from stopping the box: it is decided **before**, and with it
how the 16 sticks (0x9213-0x9222) that give the text of each topic are handed out (see [The fortunes](THE-FORTUNES.html)).
To decide it, part p1A mixes the R register, the counter at 0xD1C3 and the IY register and with that reads **a byte of
the sound driver** (from 0x4000 on): the sound code works as a table of random numbers.

## What the listing does not have clear yet

- **p02 0x9A63**: a load of the list of people that is not run on any of the paths.
- **p0E**: its header is a copy of p0C's.
- **p14 0x989F**: a `call` that bounces into data.
- The listing is barely commented (0.3% of the 28,484 instructions): everything is **identified** (code, data and who
  reads them), but not explained line by line.

## Open questions

- **The horoscope**: how it gets the ascendant (上昇宮) from the record. Only the path of the person in slot 1 has been
  run.
- **The results of the hand**: which combination of the seven lines leads to each text.
- **DISPLAY and DELETE** on the main screen have not been run.
- **The handy printer**: which model it is. The parts that print have not been run with a printer.
- The screens other than the main one are not checked against openMSX.
