; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p15 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9894  (148 bytes)
; ======================================================================


L_9800:
	ld a,007h		;9800
	call 09203h		;9802
	ld b,0ceh		;9805
	ld a,(0d217h)		;9807
	or a			;980a
	call z,L_986B		;980b
	ld a,b			;980e
	call 09206h		;980f
	call 08212h		;9812
	call 0826fh		;9815
	call 08260h		;9818
	call L_988E		;981b
	ld hl,098b4h		;981e
	ld de,00000h		;9821
	ld c,020h		;9824
	call L_9889		;9826
	ld hl,09b4bh		;9829
	ld a,(0d217h)		;982c
	or a			;982f
	jr nz,L_9835		;9830
	ld hl,09a8ch		;9832
L_9835:
	ld de,04808h		;9835
	ld c,00eh		;9838
	call L_9889		;983a
	ld a,012h		;983d
	call 09203h		;983f
	ld a,0f5h		;9842
	call 09206h		;9844
	ld hl,09960h		;9847
	ld de,00050h		;984a
	ld c,009h		;984d
	call L_9889		;984f
	ld hl,099e0h		;9852
	ld de,0b850h		;9855
	ld c,009h		;9858
	call L_9889		;985a
	ld hl,09a60h		;985d
	ld de,048a8h		;9860
	ld c,00eh		;9863
	call L_9889		;9865
	jp 08209h		;9868
L_986B:
	ld hl,(09232h)		;986b
	ld de,0b980h		;986e
	call L_9885		;9871
	ld a,008h		;9874
	call 09203h		;9876
	ld hl,(09232h)		;9879
	ld de,0aa00h		;987c
	call L_9885		;987f
	ld b,0ffh		;9882
	ret			;9884
L_9885:
	ld (hl),e			;9885
	inc hl			;9886
	ld (hl),d			;9887
	ret			;9888
L_9889:
	ld a,001h		;9889
	jp 08218h		;988b
L_988E:
	ld hl,09894h		;988e
	jp 082dbh		;9891

; ----------------------------------------------------------------------
; DATOS paleta_9894: paleta: 16 colores de 2 bytes; lo usa 0x9891 (32 bytes)
;   0x9894..0x98b4  (32 bytes)
DATA_paleta_9894:
	defb 000h,000h,047h,003h,040h,002h,005h,000h,027h,002h,000h,006h,000h,007h,073h,002h	; 9894  ..G.@...'.....s.
	defb 070h,000h,070h,005h,070h,007h,060h,003h,055h,005h,076h,007h,077h,007h,000h,000h	; 98a4  p.p.p.`.U.v.w...

; ----------------------------------------------------------------------
; DATOS casillas_98B4: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988B (172 bytes)
;   0x98b4..0x9960  (172 bytes)
DATA_casillas_98B4:
	defb 080h,00bh,001h,080h,003h,00bh,004h,00eh,084h,00fh,010h,00bh,00bh,080h,007h,011h	; 98b4  ................
	defb 082h,002h,003h,080h,006h,018h,001h,00eh,080h,003h,01eh,00eh,000h,092h,021h,022h	; 98c4  ..............!"
	defb 023h,00eh,024h,025h,01ah,01bh,026h,003h,018h,001h,002h,027h,028h,00eh,00eh,029h	; 98d4  #.$%..&....'(..)
	defb 00eh,000h,08fh,02ah,00eh,00eh,02bh,02ch,003h,018h,001h,002h,01bh,026h,019h,01ah	; 98e4  ...*..+,.....&..
	defb 02dh,02eh,003h,00eh,00eh,000h,003h,00eh,08fh,02fh,030h,01bh,026h,019h,01ah,001h	; 98f4  -......../0.&...
	defb 002h,003h,018h,031h,032h,033h,00eh,034h,00eh,000h,08bh,035h,00eh,036h,037h,038h	; 9904  ...123.4...5.678
	defb 001h,002h,003h,018h,019h,01ah,080h,007h,039h,00eh,000h,080h,007h,040h,087h,01bh	; 9914  ........9....@..
	defb 026h,003h,018h,047h,048h,00bh,080h,004h,049h,00eh,000h,080h,004h,04dh,087h,00bh	; 9924  &..GH...I....M..
	defb 051h,052h,001h,018h,01bh,026h,080h,007h,053h,00eh,000h,080h,007h,05ah,084h,019h	; 9934  QR...&..S....Z..
	defb 01ah,001h,002h,080h,007h,061h,00eh,000h,080h,007h,068h,084h,003h,018h,019h,01ah	; 9944  .....a....h.....
	defb 080h,007h,06fh,00eh,000h,080h,007h,076h,082h,01bh,026h,000h	; 9954  ..o....v..&.

; ----------------------------------------------------------------------
; DATOS casillas_9960: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988B (128 bytes)
;   0x9960..0x99e0  (128 bytes)
DATA_casillas_9960:
	defb 0feh,021h,022h,023h,024h,025h,026h,027h,028h,029h,02ah,02bh,02ch,02dh,02eh,02fh	; 9960  .!"#$%&'()*+,-./
	defb 030h,031h,032h,033h,034h,035h,036h,037h,038h,039h,03ah,03bh,03ch,03dh,03eh,03fh	; 9970  0123456789:.<=>?
	defb 040h,041h,042h,043h,044h,00eh,002h,045h,046h,047h,048h,049h,04ah,04bh,00fh,04ch	; 9980  @ABCD..EFGHIJK.L
	defb 04dh,04eh,04fh,050h,051h,052h,053h,004h,054h,055h,056h,057h,058h,059h,05ah,05bh	; 9990  MNOPQRS.TUVWXYZ[
	defb 005h,05ch,05dh,05eh,05fh,060h,061h,062h,063h,006h,064h,065h,066h,067h,068h,069h	; 99a0  .\]^_`abc.defghi
	defb 06ah,06bh,003h,008h,06ch,06dh,06eh,06fh,070h,071h,072h,016h,00ah,073h,074h,075h	; 99b0  jk..lmnopqr..stu
	defb 076h,077h,078h,079h,00bh,00ch,07ah,07bh,07ch,07dh,07eh,07fh,080h,019h,01ah,01bh	; 99c0  vwxy..z{|}~.....
	defb 01ch,019h,01ah,01bh,01ch,019h,01dh,01eh,01fh,020h,01dh,01eh,01fh,020h,01dh,000h	; 99d0  ......... ... ..

; ----------------------------------------------------------------------
; DATOS casillas_99E0: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988B (128 bytes)
;   0x99e0..0x9a60  (128 bytes)
DATA_casillas_99E0:
	defb 0feh,090h,08fh,08eh,08dh,08ch,08bh,08ah,089h,088h,0f4h,098h,097h,096h,095h,094h	; 99e0  ................
	defb 093h,092h,091h,0efh,0a1h,0a0h,09fh,09eh,09dh,09ch,09bh,09ah,0f3h,0aah,0a9h,0a8h	; 99f0  ................
	defb 0a7h,0a6h,0a5h,0a4h,0a3h,0b2h,0b1h,0b0h,0afh,0aeh,0adh,0ach,00dh,00eh,0bah,0b9h	; 9a00  ................
	defb 0b8h,0b7h,0b6h,0b5h,0b4h,0b3h,00fh,0f5h,0c1h,0c0h,0bfh,0beh,0bdh,0bch,0bbh,010h	; 9a10  ................
	defb 0f3h,0cah,0c8h,0c7h,0c6h,0c5h,0c4h,0c3h,011h,0f3h,0d2h,0d0h,0cfh,0ceh,0cdh,0cch	; 9a20  ................
	defb 0cbh,012h,0f3h,0d9h,0d7h,0d6h,0d5h,0d4h,0d3h,013h,014h,0f0h,0e0h,0deh,0ddh,0dch	; 9a30  ................
	defb 0dbh,0dah,015h,016h,0e7h,0e6h,0e5h,0e4h,0e3h,0e2h,0e1h,017h,018h,01ch,019h,01ah	; 9a40  ................
	defb 01bh,01ch,019h,01ah,01bh,01ch,020h,01dh,01eh,01fh,020h,01dh,01eh,01fh,020h,000h	; 9a50  ...... ... ... .

; ----------------------------------------------------------------------
; DATOS casillas_9A60: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988B (44 bytes)
;   0x9a60..0x9a8c  (44 bytes)
DATA_casillas_9A60:
	defb 0aah,081h,082h,083h,084h,085h,086h,087h,0eeh,0edh,0ech,0ebh,0eah,0e9h,0e8h,01ah	; 9a60  ................
	defb 01bh,01ch,019h,01ah,01bh,01ch,019h,01ah,01bh,01ch,019h,01ah,01bh,01eh,01fh,020h	; 9a70  ...............
	defb 01dh,01eh,01fh,020h,01dh,01eh,01fh,020h,01dh,01eh,01fh,000h	; 9a80  ... ... ....

; ----------------------------------------------------------------------
; DATOS casillas_9A8C: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988B (191 bytes)
;   0x9a8c..0x9b4b  (191 bytes)
DATA_casillas_9A8C:
	defb 0bdh,07dh,07eh,07fh,080h,081h,082h,083h,084h,085h,086h,087h,088h,089h,08ah,08bh	; 9a8c  .}~.............
	defb 08ch,08dh,08eh,08fh,090h,091h,092h,093h,094h,095h,096h,097h,098h,099h,09ah,09bh	; 9a9c  ................
	defb 09ch,09dh,09eh,09fh,0a0h,0a1h,0a2h,0a3h,0a4h,0a5h,0a6h,0a7h,0a8h,0a9h,0aah,0abh	; 9aac  ................
	defb 0ach,0adh,0aeh,0afh,0b0h,0b1h,0b2h,0b3h,0b4h,0b5h,0b6h,0b7h,0b8h,0b9h,004h,0bah	; 9abc  ................
	defb 088h,0bbh,0bch,0bdh,0beh,0bfh,0c0h,0c1h,0c2h,008h,0bah,085h,0c3h,0c4h,0c5h,0c6h	; 9acc  ................
	defb 0c7h,00ah,0bah,083h,0c8h,0c9h,0cah,00ch,0bah,082h,0cbh,0cch,00ch,0bah,085h,0cdh	; 9adc  ................
	defb 0bah,0ceh,0cfh,0d0h,007h,0bah,092h,0d4h,0d5h,0d6h,0d7h,0d8h,0d9h,0dah,0dbh,0dch	; 9aec  ................
	defb 0ddh,0ddh,0deh,0dfh,0e0h,0e1h,0e2h,0e3h,0e9h,00dh,0e5h,082h,0fch,0edh,00bh,0f1h	; 9afc  ................
	defb 086h,0efh,0fdh,0eeh,0f2h,0f2h,0f3h,008h,0f2h,082h,0f0h,0e7h,003h,0ech,081h,0f4h	; 9b0c  ................
	defb 006h,0ech,084h,0f6h,0f7h,0ech,0e7h,003h,0ech,081h,0f4h,006h,0ech,084h,0f8h,0f9h	; 9b1c  ................
	defb 0ech,0e7h,003h,0ech,081h,0f4h,006h,0ech,088h,0fah,0fbh,0ech,0e7h,0edh,0f1h,0f1h	; 9b2c  ................
	defb 0f5h,008h,0f1h,083h,0efh,0e7h,0eeh,00bh,0f2h,082h,0f0h,0e8h,00dh,0e5h,000h	; 9b3c  ...............

; ----------------------------------------------------------------------
; DATOS casillas_9B4B: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988B (151 bytes)
;   0x9b4b..0x9be2  (151 bytes)
DATA_casillas_9B4B:
	defb 09fh,07dh,07eh,07fh,080h,081h,082h,083h,084h,085h,086h,087h,088h,089h,08ah,08bh	; 9b4b  .}~.............
	defb 08ch,08dh,08eh,08eh,090h,091h,092h,093h,094h,095h,096h,097h,098h,099h,09ah,09bh	; 9b5b  ................
	defb 008h,09ch,086h,09dh,09eh,09fh,0a0h,0a1h,0a2h,008h,0ceh,086h,0a3h,0a4h,0a5h,0a6h	; 9b6b  ................
	defb 0a7h,0a2h,008h,0ceh,086h,0a3h,0a8h,0a9h,0aah,0abh,0a2h,008h,0ceh,086h,0a3h,0ach	; 9b7b  ................
	defb 0adh,0aeh,0afh,0a2h,008h,0ceh,086h,0a3h,0b0h,0b1h,0b2h,0b3h,0a2h,008h,0ceh,086h	; 9b8b  ................
	defb 0a3h,0b4h,0b5h,0b6h,0b7h,0a2h,008h,0ceh,086h,0a3h,0b8h,0b9h,0bah,0bbh,0a2h,008h	; 9b9b  ................
	defb 0ceh,086h,0a3h,0bch,0bdh,0beh,0bfh,0a2h,008h,0ceh,086h,0a3h,0c0h,0c1h,0c2h,09ch	; 9bab  ................
	defb 0c3h,008h,09ch,084h,0c4h,09ch,09ch,0c6h,00dh,0ceh,081h,0c8h,00dh,0ceh,081h,0a2h	; 9bbb  ................
	defb 00dh,0ceh,081h,0a2h,00dh,0ceh,081h,0a2h,00dh,0ceh,081h,0a2h,00dh,0ceh,081h,0a2h	; 9bcb  ................
	defb 00dh,0ceh,081h,0cch,00dh,09ch,000h	; 9bdb

; ----------------------------------------------------------------------
; DATOS resto_9BE2: nadie lo lee; son los mismos bytes que p14, p16 en esta
;   misma direccion: lo que habia en la memoria al grabar (30 bytes)
;   0x9be2..0x9c00  (30 bytes)
DATA_resto_9BE2:
	defb 02ch,092h,047h,0afh,0cdh,00ch,082h,021h,02eh,092h,035h,0cah,011h,09ch,03ah,029h	; 9be2  ,.G....!..5...:)
	defb 092h,03dh,0c2h,004h,09ch,021h,02ah,092h,07eh,0c6h,018h,077h,023h,07eh	; 9bf2  .=...!*.~..w#~
