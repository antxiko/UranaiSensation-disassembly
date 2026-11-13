; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p23 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x98cd  (205 bytes)
; ======================================================================


L_9800:
	call L_9899		;9800
	ld de,09ba9h		;9803
	ld hl,0fa00h		;9806
	call 0821bh		;9809
	ld ix,09c16h		;980c
	call L_9C44		;9810
	ld hl,0d266h		;9813
	ld de,0d267h		;9816
	ld (hl),000h		;9819
	ld bc,00008h		;981b
	ldir		;981e
	call L_9862		;9820
	ld a,003h		;9823
	call 09203h		;9825
	ld a,0a7h		;9828
	call 09206h		;982a
	call 08212h		;982d
	call L_9891		;9830
	call L_986E		;9833
	ld bc,04858h		;9836
	ld hl,00808h		;9839
	ld de,0b800h		;983c
	ld a,030h		;983f
	call 0820ch		;9841
	ld a,004h		;9844
	call 09203h		;9846
	ld a,040h		;9849
	call 09206h		;984b
	ld ix,09afah		;984e
	call 09212h		;9852
	call L_987B		;9855
	ld a,005h		;9858
	call 09203h		;985a
	ld a,06ah		;985d
	jp 09206h		;985f
L_9862:
	ld a,001h		;9862
	call 09209h		;9864
	ld ix,09c1eh		;9867
	jp 082cch		;986b
L_986E:
	ld hl,098cdh		;986e
	ld de,00000h		;9871
	ld c,020h		;9874
	ld a,001h		;9876
	jp 08218h		;9878
L_987B:
	ld hl,09b01h		;987b
	ld a,(09218h)		;987e
	or a			;9881
	jr nz,L_9887		;9882
	ld hl,09b42h		;9884
L_9887:
	ld de,09020h		;9887
	ld c,00ah		;988a
	ld a,001h		;988c
	jp 08218h		;988e
L_9891:
	ld a,007h		;9891
	ld de,07506h		;9893
	jp 08245h		;9896
L_9899:
	ld hl,070b7h		;9899
	ld bc,00808h		;989c
	ld a,024h		;989f
	ld (0d226h),a		;98a1
	call 08287h		;98a4
	out (c),h		;98a7
	xor a			;98a9
	out (c),a		;98aa
	out (c),l		;98ac
	ld a,001h		;98ae
	out (c),a		;98b0
	ld hl,(0d227h)		;98b2
	out (c),h		;98b5
	xor a			;98b7
	cp h			;98b8
	jr nz,L_98BC		;98b9
	inc a			;98bb
L_98BC:
	out (c),a		;98bc
	xor a			;98be
	out (c),a		;98bf
	out (c),a		;98c1
	out (c),l		;98c3
	out (c),a		;98c5
	ld a,070h		;98c7
	out (c),a		;98c9
	ei			;98cb
	ret			;98cc

; ----------------------------------------------------------------------
; DATOS casillas_98CD: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9878 (557 bytes)
;   0x98cd..0x9afa  (557 bytes)
DATA_casillas_98CD:
	defb 0ffh,07fh,080h,083h,084h,085h,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh	; 98cd  ................
	defb 080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,083h,084h,085h	; 98dd  ................
	defb 080h,081h,082h,083h,084h,086h,082h,081h,082h,081h,082h,081h,082h,081h,082h,081h	; 98ed  ................
	defb 082h,081h,082h,081h,001h,002h,003h,004h,005h,006h,007h,008h,082h,083h,084h,086h	; 98fd  ................
	defb 082h,087h,088h,087h,088h,087h,088h,087h,088h,087h,088h,087h,088h,087h,088h,087h	; 990d  ................
	defb 088h,087h,009h,00ah,00bh,00ch,00dh,00eh,00fh,010h,011h,012h,013h,014h,090h,087h	; 991d  ................
	defb 088h,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h	; 992d  ................
	defb 08ah,0a0h,015h,016h,017h,018h,019h,0a7h,0a7h,01ah,01bh,01ch,01dh,01eh,01fh,089h	; 993d  ................
	defb 086h,08ah,08bh,08bh,083h,084h,08ch,00bh,08bh,083h,020h,021h,022h,008h,0a7h,08ah	; 994d  .......... !"...
	defb 023h,024h,025h,08ch,08bh,08dh,08dh,083h,084h,08eh,00ah,08dh,083h,026h,027h,028h	; 995d  #$%..........&'(
	defb 00ah,0a7h,083h,029h,02ah,02bh,003h,08dh,083h,083h,084h,08eh,00ah,08dh,083h,02ch	; 996d  ...)*+.........,
	defb 02dh,02eh,00ah,0a7h,083h,02fh,0a1h,0a2h,003h,08dh,083h,083h,084h,08eh,00ah,08dh	; 997d  -..../..........
	defb 083h,0a4h,0a5h,0a6h,00bh,0a7h,082h,030h,031h,003h,08dh,083h,08fh,090h,08eh,00ah	; 998d  .......01.......
	defb 08dh,082h,032h,033h,00ch,0a7h,082h,034h,035h,003h,08dh,083h,091h,092h,08eh,00ah	; 999d  ..23...45.......
	defb 08dh,082h,036h,037h,00ch,0a7h,082h,038h,039h,003h,08dh,083h,093h,094h,08eh,00ah	; 99ad  ..67...89.......
	defb 08dh,083h,03ah,03bh,03ch,00ah,0a7h,083h,03dh,03eh,03fh,003h,08dh,083h,095h,096h	; 99bd  ..:.<...=>?.....
	defb 08eh,00ah,08dh,083h,040h,041h,042h,00ah,0a7h,083h,043h,044h,045h,003h,08dh,083h	; 99cd  ....@AB...CDE...
	defb 097h,098h,08eh,00ah,08dh,083h,046h,047h,048h,00ah,0a7h,083h,049h,04ah,04bh,003h	; 99dd  ......FGH...IJK.
	defb 08dh,083h,099h,09ah,08eh,00bh,08dh,083h,04ch,04dh,04eh,008h,0a7h,084h,04fh,050h	; 99ed  ........LMN...OP
	defb 051h,08eh,003h,08dh,083h,083h,084h,08eh,00bh,08dh,08fh,052h,053h,054h,055h,056h	; 99fd  Q..........RSTUV
	defb 057h,0a7h,0a7h,058h,059h,05ah,05bh,05ch,05dh,08eh,003h,08dh,083h,083h,084h,08eh	; 9a0d  W..XYZ[\].......
	defb 00ch,08dh,08eh,05eh,05fh,060h,061h,062h,063h,064h,065h,066h,067h,068h,069h,09ah	; 9a1d  ...^_`abcdefghi.
	defb 08eh,003h,08dh,083h,08fh,090h,08eh,00eh,08dh,08ch,06ah,06bh,06ch,06dh,06eh,06fh	; 9a2d  ..........jklmno
	defb 070h,071h,08dh,083h,084h,08eh,003h,08dh,083h,091h,092h,08eh,011h,08dh,082h,072h	; 9a3d  pq.............r
	defb 073h,004h,08dh,083h,083h,084h,08eh,003h,08dh,083h,093h,094h,08eh,011h,08dh,082h	; 9a4d  s...............
	defb 074h,075h,004h,08dh,083h,083h,084h,08eh,003h,08dh,083h,095h,096h,08eh,010h,08dh	; 9a5d  tu..............
	defb 083h,076h,077h,078h,004h,08dh,0ffh,083h,084h,08eh,08dh,087h,088h,097h,098h,087h	; 9a6d  .vwx............
	defb 088h,087h,088h,087h,088h,087h,088h,087h,088h,087h,088h,087h,088h,087h,088h,087h	; 9a7d  ................
	defb 079h,07ah,07bh,087h,088h,087h,088h,087h,088h,087h,088h,089h,08ah,099h,09ah,089h	; 9a8d  yz{.............
	defb 08ah,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h,08ah,089h	; 9a9d  ................
	defb 07ch,07dh,07eh,089h,08ah,089h,08ah,089h,08ah,089h,08ah,09bh,09ch,083h,084h,09bh	; 9aad  |}~.............
	defb 09ch,09bh,09ch,09bh,09ch,09bh,09ch,09bh,09ch,09bh,09ch,09bh,09ch,09bh,09ch,09bh	; 9abd  ................
	defb 09ch,09bh,09ch,09bh,09ch,09bh,09ch,083h,09dh,09eh,09ch,081h,082h,083h,084h,086h	; 9acd  ................
	defb 082h,081h,082h,081h,082h,081h,082h,081h,082h,081h,082h,081h,082h,081h,082h,081h	; 9add  ................
	defb 082h,081h,082h,081h,082h,081h,085h,082h,083h,09dh,086h,082h,000h	; 9aed  .............

; ----------------------------------------------------------------------
; DATOS leido_9AFA: lo usa el codigo: 0x984E ld ix,09afah (7 bytes)
;   0x9afa..0x9b01  (7 bytes)
DATA_leido_9AFA:
	defb 040h,03ch,004h,0a8h,000h,0b0h,080h	; 9afa

; ----------------------------------------------------------------------
; DATOS casillas_9B01: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988E (65 bytes)
;   0x9b01..0x9b42  (65 bytes)
DATA_casillas_9B01:
	defb 001h,03dh,003h,000h,082h,001h,002h,003h,000h,001h,03eh,002h,000h,080h,006h,003h	; 9b01  .=........>.....
	defb 004h,000h,080h,007h,009h,004h,000h,080h,006h,010h,004h,000h,080h,006h,016h,001h	; 9b11  ................
	defb 000h,080h,008h,01ch,002h,000h,080h,008h,024h,003h,000h,080h,007h,02ch,004h,000h	; 9b21  ........$....,..
	defb 080h,006h,033h,002h,000h,001h,03fh,002h,000h,080h,004h,039h,002h,000h,001h,040h	; 9b31  ..3...?....9...@
	defb 000h	; 9b41

; ----------------------------------------------------------------------
; DATOS casillas_9B42: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988E (103 bytes)
;   0x9b42..0x9ba9  (103 bytes)
DATA_casillas_9B42:
	defb 001h,03dh,003h,000h,082h,042h,041h,003h,000h,001h,03eh,002h,000h,086h,048h,047h	; 9b42  .=...BA...>...HG
	defb 046h,045h,044h,043h,003h,000h,087h,04fh,04eh,04dh,04ch,04bh,04ah,049h,003h,000h	; 9b52  FEDC...ONMLKJI..
	defb 086h,055h,054h,053h,052h,051h,050h,004h,000h,086h,05bh,05ah,059h,058h,057h,056h	; 9b62  .UTSRQP...[ZYXWV
	defb 005h,000h,09bh,063h,062h,061h,060h,05fh,05eh,05dh,05ch,000h,000h,06bh,06ah,069h	; 9b72  ...cba`_^]\..kji
	defb 068h,067h,066h,065h,064h,000h,000h,072h,071h,070h,06fh,06eh,06dh,06ch,003h,000h	; 9b82  hgfed..rqponml..
	defb 086h,078h,077h,076h,075h,074h,073h,002h,000h,001h,03fh,002h,000h,084h,07ch,07bh	; 9b92  .xwvuts...?...|{
	defb 07ah,079h,002h,000h,001h,040h,000h	; 9ba2

; ----------------------------------------------------------------------
; DATOS vram_9BA9: RLE a la VRAM hasta el 0; lo usa 0x9809 (109 bytes)
;   0x9ba9..0x9c16  (109 bytes)
DATA_vram_9BA9:
	defb 08ah,000h,007h,00fh,00fh,01fh,011h,000h,018h,0ffh,07fh,004h,03fh,09bh,01fh,007h	; 9ba9  ............?...
	defb 000h,0e0h,0f0h,0f8h,0f8h,0fch,0bch,07ch,0feh,0ffh,0ffh,0fdh,0fch,0fch,0e0h,0c0h	; 9bb9  .......|........
	defb 000h,000h,006h,00fh,00bh,00fh,01fh,007h,00fh,004h,01fh,08ch,00fh,067h,0f8h,000h	; 9bc9  .............g..
	defb 000h,0e0h,0e0h,030h,0f0h,0e0h,080h,0c0h,005h,0e0h,089h,09ch,03eh,000h,00fh,01fh	; 9bd9  ...0........>...
	defb 01fh,03fh,03fh,07fh,004h,0ffh,002h,07fh,086h,03fh,00dh,000h,000h,0f0h,0f8h,003h	; 9be9  .??......?......
	defb 0fch,002h,0ffh,005h,0fch,089h,0f8h,0f0h,0e0h,000h,00eh,074h,038h,030h,030h,004h	; 9bf9  ...........t800.
	defb 000h,003h,040h,083h,020h,012h,03fh,00eh,000h,082h,008h,018h,000h	; 9c09  ..@. .?......

; ----------------------------------------------------------------------
; DATOS leido_9C16: lo usa el codigo: 0x980C ld ix,09c16h (8 bytes)
;   0x9c16..0x9c1e  (8 bytes)
DATA_leido_9C16:
	defb 002h,004h,040h,050h,000h,000h,000h,000h	; 9c16  ..@P....

; ----------------------------------------------------------------------
; DATOS lista_dibujos_9C1E: lista de dibujos, 5 bytes cada uno (marca,
;   puntero, posicion, color), hasta la marca 0; lo usa 0x986B (6 bytes)
;   0x9c1e..0x9c24  (6 bytes)
DATA_lista_dibujos_9C1E:
	defb 080h,024h,09ch,0c1h,00eh,000h	; 9c1e

; ----------------------------------------------------------------------
; DATOS dibujo_9C24: dibujo en el RLE de 0x9014 (nucleo), hasta el 0; lo usa
;   0x986B (26 bytes)
;   0x9c24..0x9c3e  (26 bytes)
DATA_dibujo_9C24:
	defb 098h,008h,014h,03eh,049h,03eh,008h,008h,07fh,014h,014h,03fh,064h,04eh,035h,03fh	; 9c24  ...>I>.....?dN5?
	defb 035h,000h,063h,066h,06ch,078h,07ch,066h,063h,000h	; 9c34  5.cflx|fc.

; ----------------------------------------------------------------------
; DATOS leido_9C3E: lo usa el codigo: 0x9C83 ld (09c3eh),a; 0x9CDE ld
;   hl,09c3eh; 0x9C92 ld (09c40h),hl (en +2); 0x9CA2 ld hl,(09c40h) -> 0x8266
;   (copia de la VRAM) (en +2) (6 bytes)
;   0x9c3e..0x9c44  (6 bytes)
DATA_leido_9C3E:
	defb 000h,0ddh,07dh,0c6h,008h,06fh	; 9c3e

; ======================================================================
; CODIGO 0x9c44..0x9d0d  (201 bytes)
; ======================================================================


L_9C44:
	ld a,(ix+000h)		;9c44
	dec a			;9c47
	ret m			;9c48
	push af			;9c49
	call z,L_9C58		;9c4a
	pop af			;9c4d
	call nz,L_9CCD		;9c4e
	ld bc,00004h		;9c51
	add ix,bc		;9c54
	jr L_9C44		;9c56
L_9C58:
	ld a,(ix+001h)		;9c58
	or a			;9c5b
	ret z			;9c5c
	call L_9C83		;9c5d
	call L_9CA2		;9c60
	call L_9C69		;9c63
	call L_9CAE		;9c66
L_9C69:
	ld hl,0d300h		;9c69
	ld de,0d32fh		;9c6c
	ld b,010h		;9c6f
	call L_9C7C		;9c71
	ld hl,0d310h		;9c74
	ld de,0d33fh		;9c77
	ld b,010h		;9c7a
L_9C7C:
	ld a,(hl)			;9c7c
	ld (de),a			;9c7d
	inc hl			;9c7e
	dec de			;9c7f
	djnz L_9C7C		;9c80
	ret			;9c82
L_9C83:
	ld (09c3eh),a		;9c83
	ld l,(ix+002h)		;9c86
	ld h,000h		;9c89
	add hl,hl			;9c8b
	add hl,hl			;9c8c
	add hl,hl			;9c8d
	ld bc,0f800h		;9c8e
	add hl,bc			;9c91
	ld (09c40h),hl		;9c92
	ld l,(ix+003h)		;9c95
	ld h,000h		;9c98
	add hl,hl			;9c9a
	add hl,hl			;9c9b
	add hl,hl			;9c9c
	add hl,bc			;9c9d
	ld (09c42h),hl		;9c9e
	ret			;9ca1
L_9CA2:
	ld hl,(09c40h)		;9ca2
	ld de,0d300h		;9ca5
	ld bc,00020h		;9ca8
	jp 08266h		;9cab
L_9CAE:
	ld de,(09c42h)		;9cae
	ld hl,0d320h		;9cb2
	ld bc,00020h		;9cb5
	call 08224h		;9cb8
	ld bc,00020h		;9cbb
	ld hl,(09c40h)		;9cbe
	add hl,bc			;9cc1
	ld (09c40h),hl		;9cc2
	ld hl,(09c42h)		;9cc5
	add hl,bc			;9cc8
	ld (09c42h),hl		;9cc9
	ret			;9ccc
L_9CCD:
	ld a,(ix+001h)		;9ccd
	or a			;9cd0
	ret z			;9cd1
	call L_9C83		;9cd2
L_9CD5:
	call L_9CA2		;9cd5
	call L_9CE5		;9cd8
	call L_9CAE		;9cdb
	ld hl,09c3eh		;9cde
	dec (hl)			;9ce1
	jr nz,L_9CD5		;9ce2
	ret			;9ce4
L_9CE5:
	ld hl,0d300h		;9ce5
	ld de,0d330h		;9ce8
	ld b,010h		;9ceb
	call L_9CF8		;9ced
	ld hl,0d310h		;9cf0
	ld de,0d320h		;9cf3
	ld b,010h		;9cf6
L_9CF8:
	ld a,(hl)			;9cf8
	call L_9D02		;9cf9
	ld (de),a			;9cfc
	inc hl			;9cfd
	inc de			;9cfe
	djnz L_9CF8		;9cff
	ret			;9d01
L_9D02:
	push bc			;9d02
	ld c,a			;9d03
	ld b,008h		;9d04
L_9D06:
	rr c		;9d06
	rla			;9d08
	djnz L_9D06		;9d09
	pop bc			;9d0b
	ret			;9d0c

; ----------------------------------------------------------------------
; DATOS resto_9D0D: nadie lo lee; son los mismos bytes que p22 en esta misma
;   direccion: lo que habia en la memoria al grabar (243 bytes)
;   0x9d0d..0x9e00  (243 bytes)
DATA_resto_9D0D:
	defb 0edh,079h,0fbh,0c9h,03eh,024h,032h,026h,0d2h,0cdh,087h,082h,0edh,061h,0afh,0edh	; 9d0d  .y..>$2&.....a..
	defb 079h,0edh,069h,0edh,079h,02ah,027h,0d2h,0edh,061h,0afh,0bch,020h,001h,03ch,0edh	; 9d1d  y.i.y*'..a.. .<.
	defb 079h,0afh,0edh,079h,0edh,079h,0edh,069h,03ch,0edh,079h,03eh,070h,0edh,079h,0fbh	; 9d2d  y..y.y.i<.y>p.y.
	defb 0c9h,0c5h,0e5h,0d5h,0cdh,081h,082h,07dh,0c6h,080h,06fh,001h,008h,008h,03eh,048h	; 9d3d  .......}..o...>H
	defb 0cdh,00ch,082h,0d1h,0e1h,0c1h,0c9h,002h,000h,084h,002h,003h,001h,0cbh,038h,0ebh	; 9d4d  ..............8.
	defb 0e5h,0cdh,0cch,09dh,0d1h,0edh,043h,054h,09dh,022h,056h,09dh,0edh,053h,058h,09dh	; 9d5d  ......CT."V..SX.
	defb 0c5h,02ah,056h,09dh,011h,000h,0d3h,03ah,055h,09dh,04fh,006h,000h,0cdh,066h,082h	; 9d6d  .*V....:U.O...f.
	defb 0cdh,0a0h,09dh,0edh,05bh,056h,09dh,021h,000h,0d3h,03ah,055h,09dh,04fh,006h,000h	; 9d7d  ....[V.!..:U.O..
	defb 0cdh,024h,082h,02ah,056h,09dh,03eh,080h,0cdh,021h,082h,022h,056h,09dh,0c1h,00dh	; 9d8d  .$.*V.>..!."V...
	defb 020h,0ceh,0c9h,021h,000h,0d3h,0edh,05bh,058h,09dh,03ah,055h,09dh,047h,07eh,01fh	; 9d9d   ..!...[X.:U.G~.
	defb 01fh,01fh,01fh,0e6h,00fh,0bah,020h,001h,07bh,017h,017h,017h,017h,0e6h,0f0h,04fh	; 9dad  ...... .{......O
	defb 07eh,0e6h,00fh,0bah,020h,001h,07bh,0e6h,00fh,0b1h,077h,023h,010h,0e0h,0c9h,0cbh	; 9dbd  ~... .{...w#....
	defb 03bh,0cbh,01ah,063h,06ah,0edh,05bh,023h,0d2h,019h,0c9h,082h,0c7h,00fh,008h,000h	; 9dcd  ...cj.[#........
	defb 081h,060h,007h,0e0h,08ah,008h,010h,020h,040h,000h,000h,008h,010h,028h,070h,006h	; 9ddd  .`..... @....(p.
	defb 000h,094h,070h,030h,000h,010h,001h,051h,030h,050h,030h,050h,031h,051h,030h,050h	; 9ded  ..p0...Q0P0P1Q0P
	defb 030h,050h,007h	; 9dfd
