; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p08 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9841  (65 bytes)
; ======================================================================


L_9800:
	jp L_9806		;9800
L_9803:
	jp L_9BB2		;9803
L_9806:
	call L_9838		;9806
	ld a,002h		;9809
	call 09203h		;980b
	ld a,0f7h		;980e
	call 09206h		;9810
	call 08212h		;9813
	call 0826fh		;9816
	call 08260h		;9819
	call 08251h		;981c
	call 0920fh		;981f
	ld hl,09841h		;9822
	ld de,00000h		;9825
	ld c,020h		;9828
	ld a,001h		;982a
	call 08218h		;982c
	call 08209h		;982f
	call L_9BC0		;9832
	jp 08410h		;9835
L_9838:
	ld de,09a65h		;9838
	ld hl,0fc00h		;983b
	jp 0821bh		;983e

; ----------------------------------------------------------------------
; DATOS casillas_9841: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x982C (548 bytes)
;   0x9841..0x9a65  (548 bytes)
DATA_casillas_9841:
	defb 006h,000h,084h,001h,002h,003h,004h,00ch,000h,08dh,007h,008h,009h,00ah,00bh,00ch	; 9841  ................
	defb 00dh,000h,00fh,000h,010h,000h,006h,003h,000h,083h,011h,012h,013h,005h,000h,084h	; 9851  ................
	defb 0c6h,0c7h,0c8h,0f7h,006h,000h,087h,019h,01ah,01bh,01ch,01dh,01eh,01fh,00eh,000h	; 9861  ................
	defb 085h,024h,0c9h,0cah,0cbh,0cch,018h,000h,08ch,0c6h,0c7h,0c8h,0f7h,0cdh,0ceh,0cfh	; 9871  .$..............
	defb 0d0h,0c6h,0c7h,0c8h,0f7h,007h,000h,08ah,005h,000h,000h,020h,021h,022h,023h,000h	; 9881  ........... !"#.
	defb 000h,005h,003h,000h,08ch,0c9h,0cah,0cbh,0cch,0d1h,0d2h,0d3h,0d4h,0c9h,0cah,0cbh	; 9891  ................
	defb 0cch,00ah,000h,084h,030h,031h,032h,033h,006h,000h,08ch,0cdh,0ceh,0cfh,0d0h,000h	; 98a1  ....0123........
	defb 0d5h,0d6h,000h,0cdh,0ceh,0cfh,0d0h,00ah,000h,087h,040h,041h,000h,043h,000h,000h	; 98b1  ..........@A.C..
	defb 024h,003h,000h,091h,0d1h,0d7h,0d8h,0d9h,0f6h,0d5h,0d6h,0f4h,0dfh,0d7h,0d8h,0d4h	; 98c1  $...............
	defb 000h,024h,000h,000h,080h,004h,000h,085h,034h,000h,015h,000h,053h,005h,000h,08eh	; 98d1  .$......4...S...
	defb 0c6h,0c7h,0c8h,0f7h,0f5h,0dah,0e5h,0e6h,0e0h,0f3h,0c6h,0c7h,0c8h,0f7h,006h,000h	; 98e1  ................
	defb 087h,02eh,000h,02ch,060h,000h,000h,063h,005h,000h,08eh,0c9h,0cah,0cbh,0dbh,0ddh	; 98f1  ...,`..c........
	defb 0e7h,0e8h,0e9h,0eah,0ddh,0e1h,0cah,0cbh,0cch,005h,000h,088h,025h,035h,02bh,000h	; 9901  ............%5+.
	defb 070h,071h,072h,073h,005h,000h,08eh,0cdh,0ceh,0cfh,0dch,0deh,0ebh,0ech,0edh,0f2h	; 9911  pqrs............
	defb 0deh,0e2h,0ceh,0cfh,0d0h,005h,000h,083h,018h,000h,03ch,003h,000h,082h,07dh,07ch	; 9921  ..........<...}|
	defb 005h,000h,08eh,0d1h,0d7h,0d8h,0d4h,0f4h,0eeh,0efh,0f0h,0f1h,0f6h,0d1h,0d7h,0d8h	; 9931  ................
	defb 0d4h,003h,000h,083h,024h,000h,03ch,004h,000h,083h,05ah,05bh,05ch,005h,000h,08dh	; 9941  ....$.<...Z[\...
	defb 024h,0c6h,0c7h,0c8h,0e0h,0f3h,0d5h,0d6h,0f5h,0dah,0c7h,0c8h,0f7h,006h,000h,08ah	; 9951  $...............
	defb 061h,005h,000h,024h,000h,067h,068h,069h,000h,080h,004h,000h,08ch,0c9h,0cah,0cbh	; 9961  a..$.ghi........
	defb 0cch,0c6h,0e3h,0e4h,0f7h,0c9h,0cah,0cbh,0cch,006h,000h,081h,062h,004h,000h,083h	; 9971  ............b...
	defb 04bh,04ch,04dh,004h,000h,08eh,005h,000h,0cdh,0ceh,0cfh,0d0h,0c9h,0cah,0cbh,0cch	; 9981  KLM.............
	defb 0cdh,0ceh,0cfh,0d0h,006h,000h,084h,042h,052h,051h,050h,00ah,000h,08ch,0d1h,0d7h	; 9991  .......BRQP.....
	defb 0d8h,0d4h,0cdh,0ceh,0cfh,0d0h,0d1h,0d7h,0d8h,0d4h,006h,000h,084h,03eh,03fh,000h	; 99a1  .............>?.
	defb 03bh,00eh,000h,086h,0d1h,0d7h,0d8h,0d4h,000h,024h,008h,000h,084h,03dh,00eh,054h	; 99b1  .........$...=.T
	defb 044h,021h,000h,081h,024h,004h,000h,095h,0c4h,082h,082h,083h,084h,085h,086h,087h	; 99c1  D!..$...........
	defb 000h,089h,08ah,08bh,08ch,08dh,08eh,08fh,0c0h,0bdh,088h,081h,024h,00bh,000h,094h	; 99d1  ............$...
	defb 090h,092h,092h,093h,094h,095h,096h,097h,098h,099h,09ah,09bh,09ch,09dh,09eh,09fh	; 99e1  ................
	defb 0c1h,0beh,0b8h,091h,00ch,000h,097h,0a0h,0a2h,0a2h,0a3h,0a4h,0a5h,0a6h,0a7h,0a8h	; 99f1  ................
	defb 0a9h,0aah,0a3h,0ach,0adh,0aeh,0afh,0c2h,0abh,0b9h,0a1h,000h,000h,066h,004h,000h	; 9a01  .............f..
	defb 0a5h,026h,027h,028h,029h,02ah,0b0h,0b1h,0b1h,0b3h,0b4h,0b5h,0b6h,0b7h,0b0h,0b1h	; 9a11  .&'()*..........
	defb 0b1h,0b3h,0bch,0b1h,0b1h,0bfh,0c3h,0bbh,0bah,0b2h,074h,075h,076h,077h,078h,079h	; 9a21  ..........tuvwxy
	defb 000h,036h,037h,038h,039h,03ah,014h,000h,08eh,05fh,07bh,07ah,06fh,06eh,06dh,045h	; 9a31  .6789:..._{zonmE
	defb 046h,047h,000h,049h,04ah,000h,080h,013h,000h,08ah,05dh,05eh,06ch,06bh,06ah,055h	; 9a41  FG.IJ.....]^lkjU
	defb 056h,057h,058h,059h,008h,000h,084h,010h,000h,000h,006h,00ah,000h,085h,064h,065h	; 9a51  VWXY..........de
	defb 04fh,04eh,048h,000h	; 9a61

; ----------------------------------------------------------------------
; DATOS vram_9A65: RLE a la VRAM hasta el 0; lo usa 0x983E (321 bytes)
;   0x9a65..0x9ba6  (321 bytes)
DATA_vram_9A65:
	defb 002h,000h,081h,001h,014h,000h,088h,010h,000h,000h,009h,006h,007h,00ah,002h,00dh	; 9a65  ................
	defb 000h,081h,080h,009h,000h,084h,003h,001h,001h,002h,005h,000h,081h,010h,004h,000h	; 9a75  ................
	defb 002h,080h,084h,0e0h,0c0h,040h,020h,005h,000h,081h,004h,008h,000h,081h,001h,003h	; 9a85  .....@ .........
	defb 000h,081h,010h,004h,000h,092h,008h,000h,001h,000h,000h,008h,000h,040h,020h,019h	; 9a95  .............@ .
	defb 01fh,00fh,00fh,01fh,03fh,000h,000h,001h,004h,000h,088h,020h,040h,0c0h,080h,080h	; 9aa5  ....?...... @...
	defb 0e0h,0fch,0e0h,003h,000h,088h,002h,000h,000h,020h,083h,001h,021h,002h,00ah,000h	; 9ab5  ......... ..!...
	defb 002h,080h,089h,0e0h,0c0h,040h,020h,000h,000h,001h,000h,040h,01dh,000h,086h,002h	; 9ac5  .....@ ....@....
	defb 040h,010h,000h,067h,087h,003h,002h,00bh,000h,086h,020h,000h,020h,001h,000h,001h	; 9ad5  @..g...... . ...
	defb 00ch,000h,084h,080h,0c0h,080h,040h,00ch,000h,084h,008h,01ch,008h,014h,003h,000h	; 9ae5  ......@.........
	defb 081h,011h,00ch,000h,083h,002h,000h,020h,00ch,000h,083h,008h,001h,050h,014h,000h	; 9af5  ....... .....P..
	defb 081h,002h,005h,000h,081h,002h,00ch,000h,088h,008h,000h,000h,012h,00ch,00fh,014h	; 9b05  ................
	defb 004h,005h,000h,081h,010h,011h,000h,081h,001h,011h,000h,002h,008h,084h,03eh,01ch	; 9b15  ..............>.
	defb 014h,022h,004h,000h,081h,001h,003h,000h,081h,040h,003h,000h,081h,001h,005h,000h	; 9b25  .".......@......
	defb 099h,040h,020h,019h,01fh,00fh,00fh,01fh,03fh,010h,000h,000h,048h,030h,03ch,050h	; 9b35  .@ .....?...H0<P
	defb 030h,040h,0c0h,080h,080h,0e0h,0fch,0e0h,000h,020h,003h,000h,084h,008h,000h,020h	; 9b45  0@....... .....
	defb 008h,009h,000h,081h,040h,00bh,000h,081h,002h,005h,000h,002h,010h,084h,07ch,038h	; 9b55  ....@.........|8
	defb 028h,044h,003h,000h,081h,004h,00fh,000h,086h,008h,001h,000h,000h,067h,087h,003h	; 9b65  (D...........g..
	defb 002h,00dh,000h,081h,008h,00dh,000h,088h,001h,000h,000h,005h,002h,005h,001h,040h	; 9b75  ...............@
	defb 008h,000h,081h,020h,004h,000h,081h,080h,003h,000h,081h,004h,006h,000h,084h,002h	; 9b85  ... ............
	defb 007h,002h,005h,004h,000h,082h,004h,020h,00bh,000h,083h,001h,080h,014h,008h,000h	; 9b95  ....... ........
	defb 000h	; 9ba5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ba6..0x9bb2  (12 bytes)
DATA_9BA6:
	defb 008h,010h,010h,012h,0fch,008h,008h,048h,024h,020h,022h,02ch	; 9ba6  .......H$ ",

; ======================================================================
; CODIGO 0x9bb2..0x9bb8  (6 bytes)
; ======================================================================


L_9BB2:
	ld a,(09ba6h)		;9bb2
	call 0822dh		;9bb5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9bb8..0x9bc0  (8 bytes)
DATA_9BB8:
	defb 0f6h,09bh,03fh,09ch,04eh,09ch,060h,09ch	; 9bb8  ..?.N.`.

; ======================================================================
; CODIGO 0x9bc0..0x9bef  (47 bytes)
; ======================================================================


L_9BC0:
	call L_9BC9		;9bc0
	ld a,0b0h		;9bc3
	ld (09ba8h),a		;9bc5
	ret			;9bc8
L_9BC9:
	xor a			;9bc9
	ld b,00ch		;9bca
	ld hl,09ba6h		;9bcc
L_9BCF:
	ld (hl),a			;9bcf
	inc hl			;9bd0
	djnz L_9BCF		;9bd1
	ld a,080h		;9bd3
	ld hl,0d292h		;9bd5
	ld b,009h		;9bd8
L_9BDA:
	ld (hl),a			;9bda
	ld de,00004h		;9bdb
	add hl,de			;9bde
	add a,004h		;9bdf
	djnz L_9BDA		;9be1
	ld hl,09befh		;9be3
	ld de,09baah		;9be6
	ld bc,00007h		;9be9
	ldir		;9bec
	ret			;9bee

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9bef..0x9bf6  (7 bytes)
DATA_9BEF:
	defb 000h,000h,000h,000h,080h,0d0h,00eh	; 9bef

; ======================================================================
; CODIGO 0x9bf6..0x9c2b  (53 bytes)
; ======================================================================


L_9BF6:
	call L_9C60		;9bf6
	ret nc			;9bf9
	ld a,(09ba7h)		;9bfa
	and a			;9bfd
	call z,L_9C1E		;9bfe
	sla a		;9c01
	ld hl,09c2bh		;9c03
	call 08221h		;9c06
	ld a,(hl)			;9c09
	cp 0ffh		;9c0a
	jr z,L_9C23		;9c0c
	ld d,a			;9c0e
	inc hl			;9c0f
	ld e,(hl)			;9c10
	ld a,00bh		;9c11
	call 08245h		;9c13
	ld a,00ah		;9c16
	ld (09ba8h),a		;9c18
	jp L_9C76		;9c1b
L_9C1E:
	call 0832ah		;9c1e
	xor a			;9c21
	ret			;9c22
L_9C23:
	ld hl,09baah		;9c23
	inc (hl)			;9c26
	ld a,030h		;9c27
	jr $+65		;9c29

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c2b..0x9c3f  (20 bytes)
DATA_9C2B:
	defb 000h,000h,011h,001h,012h,002h,023h,003h,024h,004h,035h,005h,036h,006h,046h,007h	; 9c2b  ......#.$.5.6.F.
	defb 046h,007h,0ffh,0ffh	; 9c3b

; ======================================================================
; CODIGO 0x9c3f..0x9ccf  (144 bytes)
; ======================================================================


L_9C3F:
	call L_9C60		;9c3f
	ret nc			;9c42
	call L_9C7C		;9c43
	ret nc			;9c46
	call 0842eh		;9c47
	ld a,020h		;9c4a
	jr L_9C6A		;9c4c
L_9C4E:
	call L_9C60		;9c4e
	ret nc			;9c51
	ld a,(0d1c3h)		;9c52
	and 003h		;9c55
	ret nz			;9c57
	call L_9D68		;9c58
	ret nc			;9c5b
	ld a,068h		;9c5c
	jr L_9C6A		;9c5e
L_9C60:
	ld hl,09ba8h		;9c60
	ld a,(hl)			;9c63
	sub 001h		;9c64
	jr c,L_9C69		;9c66
	ld (hl),a			;9c68
L_9C69:
	ret			;9c69
L_9C6A:
	ld (09ba8h),a		;9c6a
	ld hl,09ba6h		;9c6d
	inc (hl)			;9c70
	ld a,0ffh		;9c71
	ld (09ba7h),a		;9c73
L_9C76:
	ld hl,09ba7h		;9c76
	inc (hl)			;9c79
	or a			;9c7a
	ret			;9c7b
L_9C7C:
	ld ix,09baah		;9c7c
	ld a,(ix+000h)		;9c80
	and a			;9c83
	ret z			;9c84
	cp 001h		;9c85
	jr z,L_9C9B		;9c87
	call L_9CA2		;9c89
	jr c,L_9C96		;9c8c
	call L_9CD2		;9c8e
	call L_9CF4		;9c91
	or a			;9c94
	ret			;9c95
L_9C96:
	call L_9D5A		;9c96
	scf			;9c99
	ret			;9c9a
L_9C9B:
	ld hl,09baah		;9c9b
	inc (hl)			;9c9e
	jp 0832fh		;9c9f
L_9CA2:
	ld a,(ix+002h)		;9ca2
	and a			;9ca5
	jr z,L_9CAD		;9ca6
	dec a			;9ca8
	ld (ix+002h),a		;9ca9
	ret			;9cac
L_9CAD:
	ld a,(0d1c3h)		;9cad
	and 001h		;9cb0
	ret z			;9cb2
	ld hl,09ccfh		;9cb3
	ld a,(ix+001h)		;9cb6
	add a,a			;9cb9
	call 08221h		;9cba
	ld a,(hl)			;9cbd
	or a			;9cbe
	jr z,L_9CCD		;9cbf
	ld (ix+002h),a		;9cc1
	inc hl			;9cc4
	ld a,(hl)			;9cc5
	ld (ix+003h),a		;9cc6
	inc (ix+001h)		;9cc9
	ret			;9ccc
L_9CCD:
	scf			;9ccd
	ret			;9cce

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ccf..0x9cd2  (3 bytes)
DATA_9CCF:
	defb 045h,030h,000h	; 9ccf

; ======================================================================
; CODIGO 0x9cd2..0x9d8e  (188 bytes)
; ======================================================================


L_9CD2:
	ld a,(ix+003h)		;9cd2
	ld hl,09baeh		;9cd5
	ld b,a			;9cd8
	and 00fh		;9cd9
	ld e,a			;9cdb
	ld a,b			;9cdc
	srl a		;9cdd
	srl a		;9cdf
	srl a		;9ce1
	srl a		;9ce3
	neg		;9ce5
	ld d,a			;9ce7
	ld a,(hl)			;9ce8
	add a,e			;9ce9
	ld e,a			;9cea
	inc hl			;9ceb
	ld a,(hl)			;9cec
	add a,d			;9ced
	ld d,a			;9cee
	ld (09baeh),de		;9cef
	ret			;9cf3
L_9CF4:
	call L_9CFD		;9cf4
	call L_9D1B		;9cf7
	jp L_9D33		;9cfa
L_9CFD:
	ld a,(09bafh)		;9cfd
	ld hl,0d291h		;9d00
	ld b,003h		;9d03
L_9D05:
	push bc			;9d05
	push hl			;9d06
	ld b,003h		;9d07
L_9D09:
	ld (hl),a			;9d09
	ld de,0000ch		;9d0a
	add hl,de			;9d0d
	djnz L_9D09		;9d0e
	pop hl			;9d10
	pop bc			;9d11
	ld de,00004h		;9d12
	add hl,de			;9d15
	add a,010h		;9d16
	djnz L_9D05		;9d18
	ret			;9d1a
L_9D1B:
	ld a,(09baeh)		;9d1b
	ld hl,0d290h		;9d1e
	ld b,003h		;9d21
L_9D23:
	push bc			;9d23
	ld b,003h		;9d24
L_9D26:
	ld (hl),a			;9d26
	ld de,00004h		;9d27
	add hl,de			;9d2a
	djnz L_9D26		;9d2b
	pop bc			;9d2d
	add a,010h		;9d2e
	djnz L_9D23		;9d30
	ret			;9d32
L_9D33:
	ld a,(09bach)		;9d33
	bit 2,a		;9d36
	ld a,080h		;9d38
	jr z,L_9D3E		;9d3a
	ld a,0a4h		;9d3c
L_9D3E:
	ld hl,0d292h		;9d3e
	ld b,009h		;9d41
L_9D43:
	ld (hl),a			;9d43
	ld de,00004h		;9d44
	add hl,de			;9d47
	add a,004h		;9d48
	djnz L_9D43		;9d4a
	ld hl,0d293h		;9d4c
	ld b,009h		;9d4f
L_9D51:
	ld (hl),00eh		;9d51
	ld de,00004h		;9d53
	add hl,de			;9d56
	djnz L_9D51		;9d57
	ret			;9d59
L_9D5A:
	ld hl,0d290h		;9d5a
	ld b,009h		;9d5d
L_9D5F:
	ld (hl),0e0h		;9d5f
	ld de,00004h		;9d61
	add hl,de			;9d64
	djnz L_9D5F		;9d65
	ret			;9d67
L_9D68:
	and 007h		;9d68
	ret nz			;9d6a
	ld hl,09ba9h		;9d6b
	ld a,(hl)			;9d6e
	or a			;9d6f
	call z,L_9D84		;9d70
	inc (hl)			;9d73
	ld hl,09d8eh		;9d74
	call 0826ch		;9d77
	ex de,hl			;9d7a
	ld a,e			;9d7b
	add a,001h		;9d7c
	ret c			;9d7e
	ld a,002h		;9d7f
	jp 08245h		;9d81
L_9D84:
	push hl			;9d84
	call 08429h		;9d85
	call 08366h		;9d88
	xor a			;9d8b
	pop hl			;9d8c
	ret			;9d8d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d8e..0x9e00  (114 bytes)
DATA_9D8E:
	defb 000h,000h,001h,011h,002h,022h,003h,033h,004h,044h,005h,055h,006h,066h,007h,077h	; 9d8e  .....".3.D.U.f.w
	defb 006h,076h,005h,075h,004h,075h,003h,074h,002h,074h,001h,073h,000h,073h,0ffh,0ffh	; 9d9e  .v.u.u.t.t.s.s..
	defb 03eh,024h,032h,026h,0d2h,0cdh,087h,082h,0edh,061h,0afh,0edh,079h,0edh,069h,03eh	; 9dae  >$2&.....a..y.i>
	defb 001h,0edh,079h,02ah,027h,0d2h,0edh,061h,0afh,0bch,020h,001h,03ch,0edh,079h,0afh	; 9dbe  ..y*'..a.. .<.y.
	defb 0edh,079h,0edh,079h,0edh,069h,0edh,079h,03eh,070h,0edh,079h,0fbh,0c9h,0cdh,014h	; 9dce  .y.y.i.y>p.y....
	defb 09eh,021h,04ah,060h,001h,005h,010h,0cdh,0aeh,09dh,03eh,05ah,011h,040h,070h,0cdh	; 9dde  .!J`......>Z.@p.
	defb 00ah,09dh,021h,04ah,078h,001h,005h,010h,0cdh,0aeh,09dh,03eh,058h,011h,040h,088h	; 9dee  ..!Jx......>X.@.
	defb 0cdh,00ah	; 9dfe
