; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p14 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9812  (18 bytes)
; ======================================================================


L_9800:
	jp L_9814		;9800
L_9803:
	jp L_9A9D		;9803
L_9806:
	jp L_9AAE		;9806
L_9809:
	jp L_9A3F		;9809
L_980C:
	jp L_9A5A		;980c
L_980F:
	jp L_9BCA		;980f

; ----------------------------------------------------------------------
; DATOS leido_9812: lo usa el codigo: 0x9A4B ld (09812h),a; 0x9A66 ld
;   hl,09812h; 0x9A50 ld (09813h),a (en +1); 0x9A5A ld hl,09813h (en +1) (2
;   bytes)
;   0x9812..0x9814  (2 bytes)
DATA_leido_9812:
	defb 07eh,023h	; 9812

; ======================================================================
; CODIGO 0x9814..0x98a2  (142 bytes)
; ======================================================================


L_9814:
	call L_9899		;9814
	xor a			;9817
	call 09209h		;9818
	ld a,003h		;981b
	call 09209h		;981d
	ld a,003h		;9820
	call 09203h		;9822
	ld a,0f2h		;9825
	call 09206h		;9827
	call 08212h		;982a
	call 0826fh		;982d
	call 08260h		;9830
	call 08251h		;9833
	call L_987C		;9836
	call L_9893		;9839
	ld a,(09225h)		;983c
	add a,004h		;983f
	call 09203h		;9841
	ld a,0f0h		;9844
	call 09206h		;9846
	call L_9889		;9849
	ld a,003h		;984c
	call 09203h		;984e
	ld a,0f2h		;9851
	call 09206h		;9853
	call L_9A83		;9856
	call L_986E		;9859
	xor a			;985c
	ld (09229h),a		;985d
	ld hl,09a37h		;9860
	ld de,0d2d0h		;9863
	ld bc,00008h		;9866
	ldir		;9869
	jp 08209h		;986b
L_986E:
	ld a,(09234h)		;986e
	or a			;9871
	jp z,083edh		;9872
	xor a			;9875
	ld (09234h),a		;9876
	jp 0844ch		;9879
L_987C:
	ld hl,098a6h		;987c
	ld de,00000h		;987f
	ld c,020h		;9882
L_9884:
	ld a,001h		;9884
	jp 08218h		;9886
L_9889:
	ld hl,098a2h		;9889
	ld de,03038h		;988c
	ld c,014h		;988f
	jr L_9884		;9891
L_9893:
	ld hl,099f4h		;9893
	jp 082dbh		;9896
L_9899:
	ld de,09a14h		;9899
	ld hl,0fc00h		;989c
	call 0821bh		;989f

; ----------------------------------------------------------------------
; DATOS casillas_98A2: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9886 (4 bytes)
;   0x98a2..0x98a6  (4 bytes)
DATA_casillas_98A2:
	defb 080h,0f0h,001h,000h	; 98a2

; ----------------------------------------------------------------------
; DATOS casillas_98A6: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9886 (334 bytes)
;   0x98a6..0x99f4  (334 bytes)
DATA_casillas_98A6:
	defb 0c0h,08ah,08bh,08ch,08dh,08ah,08bh,08ch,08dh,08ah,08bh,08ch,08dh,08ah,08bh,08ch	; 98a6  ................
	defb 08dh,08ah,08bh,08ch,08dh,08ah,08bh,08ch,08dh,08ah,08bh,08ch,08dh,08ah,08bh,08ch	; 98b6  ................
	defb 08dh,087h,089h,08eh,08fh,087h,089h,08eh,08fh,087h,089h,08eh,08fh,087h,089h,08eh	; 98c6  ................
	defb 08fh,087h,089h,08eh,08fh,087h,089h,08eh,08fh,087h,089h,08eh,08fh,087h,089h,08eh	; 98d6  ................
	defb 08fh,01fh,088h,081h,088h,01fh,088h,082h,088h,0d6h,01eh,088h,081h,088h,01fh,088h	; 98e6  ................
	defb 081h,088h,026h,088h,014h,000h,00ch,088h,014h,000h,00ch,088h,014h,000h,085h,088h	; 98f6  ..&.............
	defb 06ah,06bh,06ch,06dh,007h,088h,014h,000h,086h,06eh,06fh,070h,071h,072h,073h,003h	; 9906  jklm.....nopqrs.
	defb 046h,083h,047h,048h,049h,014h,000h,081h,074h,005h,075h,002h,04ah,084h,04bh,04ch	; 9916  F.GHI...t.u.J.KL
	defb 04dh,04eh,014h,000h,081h,076h,005h,075h,086h,04fh,050h,051h,052h,053h,054h,014h	; 9926  MN...v.u.OPQRST.
	defb 000h,08ch,05fh,05ch,05ch,05bh,075h,05ch,055h,056h,057h,058h,059h,05ah,014h,000h	; 9936  .._\\[u\UVWXYZ..
	defb 08ch,077h,078h,079h,07bh,05ch,07ah,05bh,05ch,05fh,05ch,05ch,05bh,014h,000h,08ch	; 9946  .wxy{\z[\_\\[...
	defb 07bh,05dh,05eh,07eh,07fh,080h,05fh,078h,07ch,079h,079h,069h,014h,000h,083h,066h	; 9956  {]^~.._x|yyi...f
	defb 067h,068h,003h,069h,086h,07ch,077h,077h,07ch,07ch,07dh,014h,000h,006h,069h,086h	; 9966  gh.i.|ww||}...i.
	defb 077h,061h,062h,063h,064h,065h,014h,000h,006h,069h,083h,066h,067h,068h,004h,069h	; 9976  wabcde...i.fgh.i
	defb 084h,002h,003h,004h,005h,00ah,006h,084h,013h,016h,01bh,00dh,00ch,069h,096h,010h	; 9986  .............i..
	defb 011h,012h,028h,014h,015h,019h,017h,018h,01ch,01ah,018h,01ch,018h,01eh,015h,018h	; 9996  ..(.............
	defb 019h,01dh,00eh,00ch,00bh,00bh,069h,094h,021h,022h,028h,014h,025h,019h,027h,028h	; 99a6  ......i.!"(.%.'(
	defb 029h,02ah,02bh,02ch,028h,019h,025h,028h,019h,01dh,00fh,00ah,00bh,069h,096h,030h	; 99b6  )*+,(.%(.....i.0
	defb 031h,032h,033h,034h,035h,036h,037h,038h,039h,03ah,03bh,03ch,03dh,03eh,03fh,02eh	; 99c6  123456789:.<=>?.
	defb 02dh,023h,020h,009h,044h,00ah,069h,085h,040h,041h,069h,043h,044h,003h,069h,082h	; 99d6  -# .D.i.@AiCD.i.
	defb 045h,042h,006h,069h,086h,02fh,026h,024h,069h,007h,001h,005h,069h,000h	; 99e6  EB.i./&$i...i.

; ----------------------------------------------------------------------
; DATOS paleta_99F4: paleta: 16 colores de 2 bytes; lo usa 0x9896 (32 bytes)
;   0x99f4..0x9a14  (32 bytes)
DATA_paleta_99F4:
	defb 000h,000h,022h,007h,040h,002h,005h,000h,027h,002h,000h,004h,000h,007h,075h,002h	; 99f4  ..".@...'.....u.
	defb 070h,000h,070h,005h,070h,007h,060h,003h,055h,005h,075h,005h,077h,007h,000h,000h	; 9a04  p.p.p.`.U.u.w...

; ----------------------------------------------------------------------
; DATOS vram_9A14: RLE a la VRAM hasta el 0; lo usa 0x989F (35 bytes)
;   0x9a14..0x9a37  (35 bytes)
DATA_vram_9A14:
	defb 002h,000h,002h,001h,007h,003h,087h,002h,000h,00ch,00ch,000h,000h,0f0h,003h,0f8h	; 9a14  ................
	defb 084h,0f0h,0e0h,0c0h,080h,00fh,000h,088h,002h,007h,00eh,09ch,0f8h,0f0h,0f0h,0f8h	; 9a24  ................
	defb 010h,000h,000h	; 9a34

; ----------------------------------------------------------------------
; DATOS leido_9A37: lo usa el codigo: 0x9860 ld hl,09a37h (8 bytes)
;   0x9a37..0x9a3f  (8 bytes)
DATA_leido_9A37:
	defb 0feh,000h,000h,000h,003h,08dh,084h,008h	; 9a37  ........

; ======================================================================
; CODIGO 0x9a3f..0x9a56  (23 bytes)
; ======================================================================


L_9A3F:
	ld hl,09a56h		;9a3f
	ld de,0d2c0h		;9a42
	ld bc,00004h		;9a45
	ldir		;9a48
	xor a			;9a4a
	ld (09812h),a		;9a4b
	ld a,060h		;9a4e
	ld (09813h),a		;9a50
	jp L_9A6A		;9a53

; ----------------------------------------------------------------------
; DATOS leido_9A56: lo usa el codigo: 0x9A3F ld hl,09a56h (4 bytes)
;   0x9a56..0x9a5a  (4 bytes)
DATA_leido_9A56:
	defb 000h,078h,080h,008h	; 9a56

; ======================================================================
; CODIGO 0x9a5a..0x9b12  (184 bytes)
; ======================================================================


L_9A5A:
	ld hl,09813h		;9a5a
	dec (hl)			;9a5d
	jr z,L_9A74		;9a5e
	ld a,(0d1c3h)		;9a60
	and 003h		;9a63
	ret z			;9a65
	ld hl,09812h		;9a66
	inc (hl)			;9a69
L_9A6A:
	ld a,(09812h)		;9a6a
	and 00fh		;9a6d
	ld (0d2c3h),a		;9a6f
	or a			;9a72
	ret			;9a73
L_9A74:
	call L_9A3F		;9a74
	scf			;9a77
	ret			;9a78
L_9A79:
	ld a,0d8h		;9a79
	jr L_9A7F		;9a7b
L_9A7D:
	ld a,0feh		;9a7d
L_9A7F:
	ld (0d2d0h),a		;9a7f
	ret			;9a82
L_9A83:
	ld hl,0d217h		;9a83
	ld a,(hl)			;9a86
	dec a			;9a87
	call L_9AE4		;9a88
	ld (hl),a			;9a8b
	call L_9ACA		;9a8c
	ld hl,09229h		;9a8f
	ld de,0922ah		;9a92
	ld bc,00008h		;9a95
	ld (hl),000h		;9a98
	ldir		;9a9a
	ret			;9a9c
L_9A9D:
	ld hl,0d217h		;9a9d
	ld a,(hl)			;9aa0
	dec a			;9aa1
	call L_9AE4		;9aa2
	ld (hl),a			;9aa5
	ld a,002h		;9aa6
	call L_9ABF		;9aa8
	jp L_9C5D		;9aab
L_9AAE:
	ld hl,0d217h		;9aae
	ld a,(hl)			;9ab1
	inc a			;9ab2
	call L_9AE4		;9ab3
	ld (hl),a			;9ab6
	ld a,001h		;9ab7
	call L_9ABF		;9ab9
	jp L_9C6B		;9abc
L_9ABF:
	ld (09229h),a		;9abf
	ld a,009h		;9ac2
	ld (0922dh),a		;9ac4
	jp L_9C8C		;9ac7
L_9ACA:
	ld a,(0d217h)		;9aca
	ld c,000h		;9acd
	ld b,003h		;9acf
L_9AD1:
	push bc			;9ad1
	push af			;9ad2
	call L_9AE4		;9ad3
	call L_9AF1		;9ad6
	pop af			;9ad9
	pop bc			;9ada
	inc a			;9adb
	inc c			;9adc
	djnz L_9AD1		;9add
	call L_9AE4		;9adf
	jr L_9B05		;9ae2
L_9AE4:
	bit 7,a		;9ae4
	jr nz,L_9AEE		;9ae6
	cp 006h		;9ae8
	ret c			;9aea
	sub 006h		;9aeb
	ret			;9aed
L_9AEE:
	add a,006h		;9aee
	ret			;9af0
L_9AF1:
	ld hl,09b18h		;9af1
	call 0826ch		;9af4
	push hl			;9af7
	ld a,c			;9af8
	ld hl,09b12h		;9af9
	call 0826ch		;9afc
	ex de,hl			;9aff
	pop hl			;9b00
	ld c,006h		;9b01
	jr L_9B0D		;9b03
L_9B05:
	ld hl,09bc0h		;9b05
	ld de,00010h		;9b08
	ld c,002h		;9b0b
L_9B0D:
	ld a,001h		;9b0d
	jp 08218h		;9b0f

; ----------------------------------------------------------------------
; DATOS leido_9B12: lo usa el codigo: 0x9AF9 ld hl,09b12h -> 0x826C (tabla de
;   palabras: la de A); 0x9AF1 ld hl,09b18h -> 0x826C (tabla de palabras: la
;   de A) (en +6); 0x9D03 ld hl,09b18h -> 0x8221 (tabla de bytes: HL + A) (en
;   +6); 0x9B05 ld hl,09bc0h -> 0x8218 (casillas) (en +174) (184 bytes)
;   0x9b12..0x9bca  (184 bytes)
DATA_leido_9B12:
	defb 010h,028h,010h,070h,010h,0b8h,072h,09bh,024h,09bh,03eh,09bh,058h,09bh,08ch,09bh	; 9b12  .(.p..r.$.>.X...
	defb 0a6h,09bh,098h,090h,091h,092h,093h,088h,088h,094h,095h,096h,097h,088h,088h,098h	; 9b22  ................
	defb 099h,09ah,09bh,09ch,09dh,09eh,09fh,0a0h,0a1h,0a2h,088h,000h,098h,0a3h,0a4h,0a5h	; 9b32  ................
	defb 0a6h,088h,088h,0a7h,0a8h,0a9h,0aah,088h,088h,0abh,0ach,0adh,0aeh,09ch,09dh,0afh	; 9b42  ................
	defb 0b0h,0b1h,0b2h,0a2h,088h,000h,098h,0b3h,0b4h,0b5h,0b6h,088h,088h,0b7h,0b8h,0b9h	; 9b52  ................
	defb 0bah,088h,088h,0bbh,0bch,0bdh,0beh,09ch,09dh,0bfh,0c0h,0c1h,0c2h,0a2h,088h,000h	; 9b62  ................
	defb 098h,0c3h,0c4h,0c5h,0c6h,088h,088h,0c7h,0c8h,0c9h,0cah,088h,088h,0cbh,0cch,0cdh	; 9b72  ................
	defb 0ceh,09ch,09dh,0cfh,0d0h,0d1h,0d2h,0a2h,088h,000h,098h,0d3h,0d4h,0d5h,0d6h,088h	; 9b82  ................
	defb 088h,0d7h,0d8h,0d9h,0dah,088h,088h,0dbh,0dch,0ddh,0deh,09ch,09dh,0dfh,0e0h,0e1h	; 9b92  ................
	defb 0e2h,0a2h,088h,000h,098h,0e3h,0e4h,0e5h,0e6h,088h,088h,0e7h,0e8h,0e9h,0eah,088h	; 9ba2  ................
	defb 088h,0ebh,0ech,0edh,0eeh,09ch,09dh,0efh,0f0h,0f1h,0f2h,0a2h,088h,000h,088h,088h	; 9bb2  ................
	defb 088h,088h,088h,09ch,09dh,0a2h,088h,000h	; 9bc2  ........

; ======================================================================
; CODIGO 0x9bca..0x9c84  (186 bytes)
; ======================================================================


L_9BCA:
	call L_9A79		;9bca
	ld a,(0922fh)		;9bcd
	ld (0d225h),a		;9bd0
	ld l,010h		;9bd3
	ld a,(0922ah)		;9bd5
	ld h,a			;9bd8
	ld e,010h		;9bd9
	ld a,(0922bh)		;9bdb
	ld d,a			;9bde
	ld c,020h		;9bdf
	ld a,(0922ch)		;9be1
	ld b,a			;9be4
	xor a			;9be5
	call 0820ch		;9be6
	ld hl,0922eh		;9be9
	dec (hl)			;9bec
	jp z,L_9C11		;9bed
L_9BF0:
	ld a,(09229h)		;9bf0
	dec a			;9bf3
	jp nz,L_9C04		;9bf4
	ld hl,0922ah		;9bf7
	ld a,(hl)			;9bfa
	add a,018h		;9bfb
	ld (hl),a			;9bfd
	inc hl			;9bfe
	ld a,(hl)			;9bff
	add a,018h		;9c00
	jr L_9C0F		;9c02
L_9C04:
	ld hl,0922ah		;9c04
	ld a,(hl)			;9c07
	sub 018h		;9c08
	ld (hl),a			;9c0a
	inc hl			;9c0b
	ld a,(hl)			;9c0c
	sub 018h		;9c0d
L_9C0F:
	ld (hl),a			;9c0f
	ret			;9c10
L_9C11:
	call L_9BF0		;9c11
	ld a,(0922fh)		;9c14
	ld (0d225h),a		;9c17
	ld l,010h		;9c1a
	ld a,(0922ah)		;9c1c
	ld h,a			;9c1f
	ld e,010h		;9c20
	ld a,(0922bh)		;9c22
	ld d,a			;9c25
	ld c,020h		;9c26
	ld b,008h		;9c28
	xor a			;9c2a
	call 0820ch		;9c2b
	call L_9CB7		;9c2e
	ld a,(09229h)		;9c31
	dec a			;9c34
	call nz,L_9C5D		;9c35
	ld a,(09229h)		;9c38
	dec a			;9c3b
	call z,L_9C6B		;9c3c
	ld hl,0922eh		;9c3f
	ld a,00ah		;9c42
	ld (hl),a			;9c44
	dec hl			;9c45
	dec (hl)			;9c46
	ret nz			;9c47
	ld hl,09229h		;9c48
	ld a,(hl)			;9c4b
	ld b,a			;9c4c
	xor a			;9c4d
	ld (hl),a			;9c4e
	ld a,(0922fh)		;9c4f
	and 0fbh		;9c52
	ld (0922fh),a		;9c54
	call L_9B05		;9c57
	jp L_9A7D		;9c5a
L_9C5D:
	ld a,(0922fh)		;9c5d
	or 004h		;9c60
	ld (0922fh),a		;9c62
	ld hl,09c84h		;9c65
	jp L_9C76		;9c68
L_9C6B:
	ld a,(0922fh)		;9c6b
	and 0fbh		;9c6e
	ld (0922fh),a		;9c70
	ld hl,09c88h		;9c73
L_9C76:
	ld de,09229h		;9c76
	ld bc,00004h		;9c79
	ldir		;9c7c
	ld a,00ah		;9c7e
	ld (0922eh),a		;9c80
	ret			;9c83

; ----------------------------------------------------------------------
; DATOS leido_9C84: lo usa el codigo: 0x9C65 ld hl,09c84h; 0x9C73 ld hl,09c88h
;   (en +4) (8 bytes)
;   0x9c84..0x9c8c  (8 bytes)
DATA_leido_9C84:
	defb 002h,0f7h,0ffh,018h,001h,008h,000h,018h	; 9c84  ........

; ======================================================================
; CODIGO 0x9c8c..0x9d55  (201 bytes)
; ======================================================================


L_9C8C:
	ld hl,09231h		;9c8c
	ld a,(0d217h)		;9c8f
	ld b,a			;9c92
	call L_9AE4		;9c93
	sla a		;9c96
	sla a		;9c98
	sla a		;9c9a
	sla a		;9c9c
	ld (hl),a			;9c9e
	ld a,b			;9c9f
	add a,002h		;9ca0
	call L_9AE4		;9ca2
	or (hl)			;9ca5
	ld (hl),a			;9ca6
	dec hl			;9ca7
	ld b,006h		;9ca8
	ld a,(09229h)		;9caa
	cp 001h		;9cad
	jp z,L_9CB4		;9caf
	ld b,004h		;9cb2
L_9CB4:
	ld a,b			;9cb4
	ld (hl),a			;9cb5
	ret			;9cb6
L_9CB7:
	ld a,(09230h)		;9cb7
	and a			;9cba
	jp z,L_9D54		;9cbb
	and 0f0h		;9cbe
	jp nz,L_9D23		;9cc0
	ld a,(09229h)		;9cc3
	dec a			;9cc6
	jp z,L_9CDE		;9cc7
	ld de,00010h		;9cca
	ld a,(09231h)		;9ccd
	and 0f0h		;9cd0
	rrca			;9cd2
	rrca			;9cd3
	rrca			;9cd4
	call L_9D02		;9cd5
	ld a,(09230h)		;9cd8
	dec a			;9cdb
	jr L_9CF2		;9cdc
L_9CDE:
	ld de,0f810h		;9cde
	ld a,(09231h)		;9ce1
	and 00fh		;9ce4
	sla a		;9ce6
	call L_9D02		;9ce8
	ld a,(09230h)		;9ceb
	ld b,a			;9cee
	ld a,006h		;9cef
	sub b			;9cf1
L_9CF2:
	ld b,004h		;9cf2
L_9CF4:
	call L_9D10		;9cf4
	djnz L_9CF4		;9cf7
	ld hl,09230h		;9cf9
	dec (hl)			;9cfc
	ret nz			;9cfd
	ld a,013h		;9cfe
	ld (hl),a			;9d00
	ret			;9d01
L_9D02:
	push de			;9d02
	ld hl,09b18h		;9d03
	call 08221h		;9d06
	ld e,(hl)			;9d09
	inc hl			;9d0a
	ld d,(hl)			;9d0b
	ex de,hl			;9d0c
	inc hl			;9d0d
	pop de			;9d0e
	ret			;9d0f
L_9D10:
	call 08221h		;9d10
	ld a,001h		;9d13
	ld (0d1cch),a		;9d15
	ld a,(hl)			;9d18
	call 082cfh		;9d19
	ld a,e			;9d1c
	add a,008h		;9d1d
	ld e,a			;9d1f
	ld a,006h		;9d20
	ret			;9d22
L_9D23:
	ld a,(09229h)		;9d23
	dec a			;9d26
	jp z,L_9D2F		;9d27
	ld de,00010h		;9d2a
	jr L_9D32		;9d2d
L_9D2F:
	ld de,0f810h		;9d2f
L_9D32:
	ld b,004h		;9d32
L_9D34:
	ld a,001h		;9d34
	ld (0d1cch),a		;9d36
	ld a,088h		;9d39
	call L_9D4C		;9d3b
	djnz L_9D34		;9d3e
	ld hl,09230h		;9d40
	ld a,(hl)			;9d43
	dec a			;9d44
	ld (hl),a			;9d45
	and 00fh		;9d46
	ret nz			;9d48
	xor a			;9d49
	ld (hl),a			;9d4a
	ret			;9d4b
L_9D4C:
	call 082cfh		;9d4c
	ld a,e			;9d4f
	add a,008h		;9d50
	ld e,a			;9d52
	ret			;9d53
L_9D54:
	ret			;9d54

; ----------------------------------------------------------------------
; DATOS resto_9D55: nadie lo lee; son los mismos bytes que p12 en esta misma
;   direccion: lo que habia en la memoria al grabar (171 bytes)
;   0x9d55..0x9e00  (171 bytes)
DATA_resto_9D55:
	defb 036h,036h,038h,000h,094h,05fh,048h,03bh,034h,037h,042h,043h,03dh,05eh,066h,053h	; 9d55  668.._H.47BC=^fS
	defb 068h,061h,062h,063h,064h,035h,036h,036h,038h,000h,094h,031h,032h,03bh,040h,04dh	; 9d65  habcd5668..12.@M
	defb 066h,04fh,050h,059h,066h,053h,060h,061h,062h,063h,064h,035h,036h,036h,038h,000h	; 9d75  fOPYfS`abcd5668.
	defb 094h,031h,032h,03fh,034h,041h,042h,043h,044h,051h,052h,053h,054h,061h,062h,063h	; 9d85  .12?4ABCDQRSTabc
	defb 064h,035h,036h,036h,038h,000h,094h,074h,075h,076h,077h,078h,079h,07ah,07bh,07ch	; 9d95  d5668..tuvwxyz{|
	defb 066h,053h,07dh,07eh,07fh,080h,081h,092h,035h,036h,036h,000h,094h,093h,093h,094h	; 9da5  fS}~....566.....
	defb 095h,082h,083h,084h,085h,086h,087h,088h,089h,08ah,08bh,08ch,08dh,08eh,08fh,090h	; 9db5  ................
	defb 091h,000h,04bh,078h,080h,00dh,046h,079h,080h,00dh,03eh,07ah,080h,00dh,038h,07ah	; 9dc5  ..Kx..Fy..>z..8z
	defb 084h,00dh,034h,07bh,084h,00dh,031h,07ch,084h,00dh,02dh,07dh,084h,00dh,02ah,07eh	; 9dd5  ..4{..1|..-}..*~
	defb 080h,00dh,027h,07fh,080h,00dh,024h,081h,080h,00dh,024h,083h,088h,00dh,026h,085h	; 9de5  ..'...$...$...&.
	defb 080h,00dh,029h,087h,080h,00dh,02eh,088h,084h,00dh,036h	; 9df5  ..).......6
