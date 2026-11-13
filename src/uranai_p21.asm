; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p21 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9859  (89 bytes)
; ======================================================================


L_9800:
	call L_982B		;9800
	ld a,001h		;9803
	call 09209h		;9805
	ld ix,09b27h		;9808
	call 082cch		;980c
	ld a,002h		;980f
	call 09203h		;9811
	ld a,0ebh		;9814
	call 09206h		;9816
	call 08212h		;9819
	call 0826fh		;981c
	call 08260h		;981f
	call 08251h		;9822
	call L_9853		;9825
	jp L_9846		;9828
L_982B:
	ld a,(0daf0h)		;982b
	ld l,a			;982e
	ld h,000h		;982f
	add hl,hl			;9831
	add hl,hl			;9832
	add hl,hl			;9833
	add hl,hl			;9834
	push hl			;9835
	pop bc			;9836
	add hl,hl			;9837
	add hl,bc			;9838
	ld de,0d700h		;9839
	add hl,de			;983c
	ld de,0d218h		;983d
	ld bc,00008h		;9840
	ldir		;9843
	ret			;9845
L_9846:
	ld hl,09859h		;9846
	ld de,00000h		;9849
	ld c,020h		;984c
	ld a,001h		;984e
	jp 08218h		;9850
L_9853:
	ld hl,09b07h		;9853
	jp 082dbh		;9856

; ----------------------------------------------------------------------
; DATOS casillas_9859: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9850 (686 bytes)
;   0x9859..0x9b07  (686 bytes)
DATA_casillas_9859:
	defb 0efh,001h,002h,002h,003h,004h,003h,004h,003h,004h,003h,004h,003h,004h,003h,004h	; 9859  ................
	defb 003h,004h,003h,004h,003h,004h,003h,004h,003h,004h,003h,004h,003h,004h,007h,007h	; 9869  ................
	defb 001h,001h,002h,002h,005h,006h,005h,006h,005h,006h,005h,006h,005h,006h,005h,006h	; 9879  ................
	defb 005h,006h,005h,006h,005h,006h,005h,006h,005h,006h,005h,006h,005h,006h,007h,007h	; 9889  ................
	defb 001h,001h,002h,002h,0b3h,008h,0b3h,008h,0b3h,008h,0b3h,00bh,00eh,00fh,010h,011h	; 9899  ................
	defb 012h,012h,011h,013h,014h,015h,00ch,008h,0b3h,008h,0b3h,008h,0b3h,008h,007h,007h	; 98a9  ................
	defb 001h,001h,002h,002h,009h,00ah,009h,00ah,009h,00ah,009h,00ah,016h,017h,018h,019h	; 98b9  ................
	defb 003h,01ah,096h,01bh,01ch,01dh,009h,00ah,009h,00ah,009h,00ah,009h,00ah,007h,007h	; 98c9  ................
	defb 001h,001h,002h,002h,07ch,07ch,008h,0b3h,076h,003h,07ch,08ah,01eh,01fh,020h,021h	; 98d9  ....||..v.|... !
	defb 022h,023h,024h,020h,01fh,025h,004h,07ch,08fh,008h,0b3h,076h,07ch,007h,007h,001h	; 98e9  "#$ .%.|...v|...
	defb 001h,002h,002h,07ch,07ch,00ah,009h,076h,003h,07ch,08ah,026h,01fh,027h,028h,029h	; 98f9  ...||..v.|.&.'()
	defb 02ah,02bh,02ch,01fh,02dh,004h,07ch,08fh,00ah,009h,076h,07ch,007h,007h,001h,001h	; 9909  *+,.-.|...v|....
	defb 002h,002h,07ch,07ch,008h,0b3h,076h,003h,07ch,08ah,02eh,01fh,02fh,030h,031h,032h	; 9919  ..||..v.|.../012
	defb 033h,034h,01fh,02dh,004h,07ch,086h,008h,0b3h,076h,07ch,007h,007h,003h,001h,086h	; 9929  34.-.|...v|.....
	defb 002h,07ch,07ch,00ah,009h,076h,003h,07ch,08ah,01eh,035h,036h,037h,038h,039h,03ah	; 9939  .||..v.|..56789:
	defb 03bh,01fh,02dh,004h,07ch,085h,00ah,009h,076h,07ch,007h,003h,001h,002h,002h,002h	; 9949  ..-.|...v|......
	defb 07ch,083h,008h,0b3h,076h,003h,07ch,08ah,01eh,01fh,03ch,03dh,03eh,03fh,040h,041h	; 9959  |...v.|...<=>?@A
	defb 01fh,02dh,004h,07ch,086h,008h,0b3h,076h,07ch,007h,007h,003h,001h,086h,067h,07ch	; 9969  .-.|...v|.....g|
	defb 07ch,00ah,009h,076h,003h,07ch,08ah,026h,01fh,043h,044h,045h,046h,047h,048h,01fh	; 9979  |..v.|.&.CDEFGH.
	defb 02dh,004h,07ch,085h,00ah,009h,076h,07ch,06eh,003h,001h,087h,068h,069h,07ch,07ch	; 9989  -.|...v|n...hi||
	defb 008h,0b3h,076h,003h,07ch,08ah,026h,01fh,049h,0b6h,0b7h,0b8h,0b9h,04eh,01fh,02dh	; 9999  ..v.|.&.I....N.-
	defb 004h,07ch,086h,008h,0b3h,076h,07ch,06fh,070h,003h,001h,086h,06ah,07ch,07ch,00ah	; 99a9  .|...v|op...j||.
	defb 009h,076h,003h,07ch,08ah,04fh,01fh,0bah,0bbh,0bch,0bdh,0beh,0bfh,01fh,02dh,004h	; 99b9  .v.|.O........-.
	defb 07ch,085h,00ah,009h,076h,07ch,071h,004h,001h,086h,06bh,07ch,07ch,008h,0b3h,076h	; 99c9  |...v|q...k||..v
	defb 003h,07ch,08ah,055h,056h,0c2h,0c3h,0c4h,0c5h,0c6h,0c7h,05ch,05dh,004h,07ch,085h	; 99d9  .|.UV......\].|.
	defb 008h,0b3h,076h,07ch,072h,003h,001h,081h,06ch,003h,07ch,083h,00ah,009h,076h,003h	; 99e9  ..v|r...l.|...v.
	defb 07ch,08ah,05eh,05fh,0cah,0cbh,0cch,0cdh,0ceh,0cfh,065h,066h,004h,07ch,088h,00ah	; 99f9  |.^_......ef.|..
	defb 009h,076h,07ch,07ch,073h,001h,06dh,004h,07ch,083h,008h,0b3h,076h,004h,07ch,088h	; 9a09  .v||s.m.|...v.|.
	defb 0d2h,0d3h,0d4h,020h,020h,0d5h,0d6h,0d7h,005h,07ch,083h,008h,0b3h,076h,003h,07ch	; 9a19  ...  ....|...v.|
	defb 082h,06dh,002h,004h,07ch,08bh,00ah,009h,076h,07ch,07ch,083h,084h,085h,086h,087h	; 9a29  .m..|...v||.....
	defb 088h,003h,001h,083h,089h,08ah,08bh,003h,07ch,083h,00ah,009h,076h,003h,07ch,090h	; 9a39  ........|...v.|.
	defb 007h,002h,003h,004h,003h,07ch,008h,0b3h,076h,004h,003h,08ch,001h,091h,001h,08eh	; 9a49  .....|..v.......
	defb 005h,001h,09dh,08fh,001h,004h,003h,07ch,008h,0b3h,076h,004h,003h,004h,007h,002h	; 9a59  .......|..v.....
	defb 005h,006h,005h,07ch,00ah,075h,076h,006h,005h,090h,001h,091h,001h,092h,001h,093h	; 9a69  ...|.uv.........
	defb 003h,001h,0f2h,094h,001h,006h,005h,07ch,07dh,009h,076h,006h,005h,006h,007h,002h	; 9a79  .......|}.v.....
	defb 003h,004h,003h,07ch,008h,077h,076h,004h,095h,096h,001h,097h,001h,098h,001h,099h	; 9a89  ...|.wv.........
	defb 092h,001h,001h,09ah,001h,004h,003h,07ch,07eh,0b3h,076h,004h,003h,004h,007h,002h	; 9a99  .......|~.v.....
	defb 005h,006h,005h,07ch,00ah,078h,076h,006h,09bh,09ch,001h,09dh,09eh,09fh,001h,0a0h	; 9aa9  ...|.xv.........
	defb 0a1h,001h,001h,0a2h,0a3h,006h,005h,07ch,07fh,009h,076h,006h,005h,006h,007h,002h	; 9ab9  .......|..v.....
	defb 003h,004h,003h,07ch,008h,079h,076h,004h,0a5h,0a6h,0a7h,0a8h,0a9h,0aah,0abh,0ach	; 9ac9  ...|.yv.........
	defb 0adh,001h,001h,0aeh,0afh,004h,003h,07ch,080h,0b3h,076h,004h,003h,004h,007h,002h	; 9ad9  .......|..v.....
	defb 005h,006h,005h,07ch,07ah,014h,0b4h,087h,081h,076h,006h,005h,006h,007h,002h,004h	; 9ae9  ...|z....v......
	defb 0b1h,081h,07bh,014h,0b5h,081h,082h,004h,0b1h,081h,007h,020h,0b2h,000h	; 9af9  ..{........ ..

; ----------------------------------------------------------------------
; DATOS paleta_9B07: paleta: 16 colores de 2 bytes; lo usa 0x9856 (32 bytes)
;   0x9b07..0x9b27  (32 bytes)
DATA_paleta_9B07:
	defb 000h,000h,044h,004h,042h,003h,005h,001h,027h,002h,020h,000h,030h,000h,053h,006h	; 9b07  ..D.B...'. .0.S.
	defb 070h,000h,070h,005h,060h,007h,073h,005h,055h,005h,011h,003h,077h,007h,000h,000h	; 9b17  p.p.`.s.U...w...

; ----------------------------------------------------------------------
; DATOS lista_dibujos_9B27: lista de dibujos, 5 bytes cada uno (marca,
;   puntero, posicion, color), hasta la marca 0; lo usa 0x980C (6 bytes)
;   0x9b27..0x9b2d  (6 bytes)
DATA_lista_dibujos_9B27:
	defb 080h,02dh,09bh,0beh,00eh,000h	; 9b27

; ----------------------------------------------------------------------
; DATOS dibujo_9B2D: dibujo en el RLE de 0x9014 (nucleo), hasta el 0; lo usa
;   0x980C (26 bytes)
;   0x9b2d..0x9b47  (26 bytes)
DATA_dibujo_9B2D:
	defb 098h,008h,00fh,008h,008h,03fh,021h,021h,03fh,010h,07fh,010h,010h,01fh,031h,051h	; 9b2d  .....?!!?.....1Q
	defb 01fh,010h,010h,07fh,010h,02eh,024h,044h,05fh,000h	; 9b3d  ......$D_.

; ----------------------------------------------------------------------
; DATOS resto_9B47: nadie lo lee; son los mismos bytes que p20 en esta misma
;   direccion: lo que habia en la memoria al grabar (185 bytes)
;   0x9b47..0x9c00  (185 bytes)
DATA_resto_9B47:
	defb 034h,006h,01eh,083h,051h,052h,0f3h,080h,00bh,053h,006h,01eh,086h,03eh,01eh,03fh	; 9b47  4...QR...S...>.?
	defb 033h,01eh,034h,006h,01eh,080h,007h,05eh,081h,01eh,080h,006h,065h,08eh,028h,029h	; 9b57  3.4....^....e.()
	defb 06bh,06ch,02ch,01eh,03eh,01eh,03fh,033h,01eh,034h,01eh,028h,080h,003h,0a2h,081h	; 9b67  kl,.>.?3.4.(....
	defb 02ch,080h,00eh,06dh,006h,01eh,086h,03eh,01eh,03fh,033h,01eh,034h,006h,01eh,081h	; 9b77  ,..m...>.?3.4...
	defb 036h,080h,00dh,07eh,081h,027h,080h,003h,02ah,088h,01eh,01eh,03eh,01eh,03fh,033h	; 9b87  6..~.'..*...>.?3
	defb 01eh,034h,007h,01eh,080h,004h,08bh,081h,01eh,080h,007h,08fh,007h,01eh,086h,03eh	; 9b97  .4.............>
	defb 01eh,03fh,033h,01eh,034h,007h,01eh,080h,00ch,096h,084h,027h,0b1h,0b2h,02ch,003h	; 9ba7  .?3.4......'..,.
	defb 01eh,086h,03eh,01eh,03fh,033h,01eh,034h,003h,01eh,084h,0bdh,06ch,02ch,027h,080h	; 9bb7  ..>.?3.4....l,'.
	defb 00ch,0a5h,007h,01eh,086h,03eh,01eh,03fh,033h,01eh,034h,008h,01eh,083h,0b3h,0b4h	; 9bc7  .....>.?3.4.....
	defb 01eh,080h,005h,0b5h,084h,0bbh,0bah,0bch,027h,080h,003h,027h,089h,0bdh,06ch,02ch	; 9bd7  ........'..'..l,
	defb 03eh,01eh,03fh,033h,01eh,034h,009h,01eh,082h,0beh,027h,080h,005h,0bfh,083h,0f2h	; 9be7  >.?3.4....'.....
	defb 0c4h,0c5h,007h,01eh,086h,03eh,01eh,03fh,033h	; 9bf7  .....>.?3
