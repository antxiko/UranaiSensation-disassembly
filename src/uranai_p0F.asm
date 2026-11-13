; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p0F (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x988f  (143 bytes)
; ======================================================================


L_9800:
	ld a,004h		;9800
	call 09209h		;9802
	ld hl,0b206h		;9805
	ld de,0b200h		;9808
	ld bc,00006h		;980b
	ldir		;980e
	ld ix,0b200h		;9810
	call 082cch		;9814
	ld a,002h		;9817
	call 09203h		;9819
	ld ix,0988fh		;981c
	call 0920fh		;9820
	call 08212h		;9823
	xor a			;9826
	call L_987D		;9827
	call 0826fh		;982a
	call 08260h		;982d
	call 08251h		;9830
	call L_9861		;9833
	call L_9867		;9836
	ld a,003h		;9839
	call 09203h		;983b
	ld a,0a8h		;983e
	call 09206h		;9840
	call L_9874		;9843
	ld a,(0daf6h)		;9846
	ld l,a			;9849
	ld h,000h		;984a
	add hl,hl			;984c
	add hl,hl			;984d
	add hl,hl			;984e
	add hl,hl			;984f
	push hl			;9850
	pop bc			;9851
	add hl,hl			;9852
	add hl,bc			;9853
	ld de,0d700h		;9854
	add hl,de			;9857
	ld de,0d218h		;9858
	ld bc,00008h		;985b
	ldir		;985e
	ret			;9860
L_9861:
	ld hl,0989ch		;9861
	jp 082dbh		;9864
L_9867:
	ld hl,098bch		;9867
	ld de,00000h		;986a
	ld c,020h		;986d
	ld a,001h		;986f
	jp 08218h		;9871
L_9874:
	ld de,09ad5h		;9874
	ld hl,0fc00h		;9877
	jp 0821bh		;987a
L_987D:
	ld b,a			;987d
	call 0828ah		;987e
	ld a,(00007h)		;9881
	inc a			;9884
	ld c,a			;9885
	di			;9886
	out (c),b		;9887
	ld a,092h		;9889
	out (c),a		;988b
	ei			;988d
	ret			;988e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x988f..0x989c  (13 bytes)
DATA_988F:
	defb 020h,07fh,004h,0a0h,000h,0b0h,040h,07fh,000h,0b0h,000h,0b0h,080h	; 988f   .....@......

; ----------------------------------------------------------------------
; DATOS paleta_989C: paleta: 16 colores de 2 bytes; lo usa 0x9864 (32 bytes)
;   0x989c..0x98bc  (32 bytes)
DATA_paleta_989C:
	defb 000h,000h,005h,000h,033h,007h,007h,000h,047h,004h,075h,006h,000h,004h,000h,000h	; 989c  ....3...G.u.....
	defb 070h,000h,040h,003h,000h,007h,070h,006h,055h,005h,070h,007h,077h,007h,000h,000h	; 98ac  p.@...p.U.p.w...

; ----------------------------------------------------------------------
; DATOS casillas_98BC: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9871 (537 bytes)
;   0x98bc..0x9ad5  (537 bytes)
DATA_casillas_98BC:
	defb 081h,078h,080h,00fh,001h,099h,08eh,08dh,08ch,08bh,08ah,089h,088h,087h,086h,085h	; 98bc  .x..............
	defb 084h,083h,082h,081h,080h,0f7h,015h,016h,017h,016h,017h,016h,017h,016h,018h,00eh	; 98cc  ................
	defb 000h,089h,097h,095h,096h,095h,096h,095h,096h,095h,094h,008h,038h,081h,028h,00eh	; 98dc  ............8.(.
	defb 000h,081h,0a7h,008h,0b7h,006h,030h,083h,036h,038h,028h,00eh,000h,083h,0a7h,0b7h	; 98ec  ......0.68(.....
	defb 0b5h,006h,0afh,006h,040h,002h,038h,081h,028h,00eh,000h,083h,0a7h,0b7h,0b7h,006h	; 98fc  ....@.8.(.......
	defb 0bfh,006h,040h,002h,038h,081h,028h,00eh,000h,083h,0a7h,0b7h,0b7h,006h,0bfh,006h	; 990c  ..@.8.(.........
	defb 060h,002h,038h,081h,028h,00eh,000h,083h,0a7h,0b7h,0b7h,006h,0dfh,006h,070h,083h	; 991c  `.8.(.........p.
	defb 037h,038h,028h,00eh,000h,083h,0a7h,0b7h,0b6h,006h,0efh,083h,05ch,05dh,04fh,003h	; 992c  78(.........\]O.
	defb 072h,094h,047h,048h,039h,000h,06eh,03ah,03bh,03ch,03dh,02eh,0adh,0bch,0bbh,0bah	; 993c  r.GH9.n:.<=.....
	defb 0b9h,0edh,000h,0b8h,0c7h,0c6h,003h,0f1h,087h,0ceh,0dch,0dbh,06ch,06dh,053h,046h	; 994c  ............lmSF
	defb 004h,038h,090h,028h,000h,020h,04ah,04bh,04bh,04dh,03eh,0bdh,0cch,0cbh,0cah,0c9h	; 995c  .8.(. JKKM>.....
	defb 09fh,000h,0a7h,004h,0b7h,088h,0c5h,0d2h,0ech,0ebh,064h,041h,042h,061h,004h,038h	; 996c  ..........dABa.8
	defb 083h,028h,022h,022h,004h,03fh,082h,04eh,0cdh,004h,0beh,002h,0a1h,081h,0a7h,004h	; 997c  .("".?.N........
	defb 0b7h,088h,0e0h,0c1h,0c0h,0e3h,074h,051h,052h,071h,004h,038h,083h,028h,011h,011h	; 998c  ......tQRq.8.(..
	defb 004h,063h,082h,05eh,0ddh,004h,0e2h,002h,090h,081h,0a7h,004h,0b7h,08fh,0f0h,0d1h	; 999c  .c.^............
	defb 0d0h,0f3h,06dh,065h,041h,057h,058h,059h,038h,038h,028h,011h,011h,004h,063h,082h	; 99ac  ..meAWXY88(...c.
	defb 05eh,0ddh,004h,0e2h,002h,090h,08eh,0a7h,0b7h,0b7h,0d8h,0d7h,0d6h,0c0h,0e4h,0ech	; 99bc  ^...............
	defb 075h,041h,056h,057h,068h,003h,069h,081h,034h,006h,011h,082h,02fh,0aeh,006h,090h	; 99cc  uAVWh.i.4.../...
	defb 081h,0b3h,003h,0e8h,08bh,0e7h,0d6h,0d5h,0c0h,0f4h,050h,052h,066h,067h,05ah,05bh	; 99dc  ..........PRfgZ[
	defb 00ah,06bh,003h,0eah,007h,06bh,08bh,0dah,0d9h,0e6h,0e5h,0d1h,0cfh,044h,045h,06fh	; 99ec  .k...k.......DEo
	defb 05fh,06ah,00bh,06bh,00bh,0eah,08ah,0e9h,0deh,0eeh,0c4h,0c3h,054h,055h,076h,079h	; 99fc  _j.k........TUvy
	defb 07ah,00bh,06bh,00bh,0eah,08ah,0f9h,0f8h,0f5h,0d4h,0d3h,062h,077h,000h,05fh,07bh	; 9a0c  z.k........bw._{
	defb 00bh,06bh,00bh,0eah,089h,0fah,0deh,000h,0f6h,0e1h,026h,000h,000h,05fh,00ch,06bh	; 9a1c  .k........&.._.k
	defb 00ch,0eah,0ffh,0deh,000h,000h,0a5h,024h,025h,025h,043h,031h,032h,023h,02ch,01bh	; 9a2c  .......$%%C12#,.
	defb 01eh,01dh,01eh,07ch,014h,02ch,01fh,09eh,0abh,093h,0fbh,09dh,09ch,09dh,09ah,0abh	; 9a3c  ...|.,..........
	defb 0a2h,0b1h,0b0h,0c2h,0a4h,0a4h,0a3h,033h,035h,025h,021h,023h,013h,02ch,02ch,02dh	; 9a4c  .......35%!#.,,-
	defb 02ch,02dh,019h,07dh,014h,02ch,01fh,09eh,0abh,093h,0fch,098h,0ach,0abh,0ach,0abh	; 9a5c  ,-.}.,..........
	defb 0abh,092h,0a2h,0a0h,0a4h,0b4h,0b2h,073h,025h,043h,031h,032h,023h,02ch,02ch,02ah	; 9a6c  .......s%C12#,,*
	defb 014h,02ah,029h,07eh,02ch,01fh,01fh,09eh,09eh,0abh,0fdh,0a8h,0a9h,093h,0a9h,0abh	; 9a7c  .*)~,...........
	defb 0abh,0a2h,0b1h,0b0h,0c2h,0a4h,0f2h,025h,025h,021h,023h,013h,014h,02ch,01dh,01eh	; 9a8c  .......%%!#..,..
	defb 01dh,01ch,019h,07fh,014h,02ch,01fh,09eh,0abh,093h,0feh,098h,09bh,09ch,09dh,09ch	; 9a9c  .....,..........
	defb 0abh,093h,0a5h,092h,0a2h,0a0h,0a4h,0a4h,025h,043h,031h,032h,023h,02ch,02ch,02dh	; 9aac  ........%C12#,,-
	defb 014h,02bh,02ch,029h,01ah,014h,02ch,01fh,09eh,0abh,093h,099h,0a8h,0abh,0aah,093h	; 9abc  .+,)..,.........
	defb 0ach,0abh,0abh,0a2h,0b1h,0b0h,0c2h,0a4h,000h	; 9acc  .........

; ----------------------------------------------------------------------
; DATOS vram_9AD5: RLE a la VRAM hasta el 0; lo usa 0x987A (275 bytes)
;   0x9ad5..0x9be8  (275 bytes)
DATA_vram_9AD5:
	defb 007h,000h,083h,001h,003h,001h,00ch,000h,083h,080h,0c0h,080h,00dh,000h,084h,001h	; 9ad5  ................
	defb 003h,003h,001h,00ch,000h,084h,080h,0c0h,0c0h,080h,007h,000h,0e6h,001h,000h,001h	; 9ae5  ................
	defb 001h,005h,003h,02fh,02fh,003h,005h,001h,001h,000h,001h,000h,000h,080h,000h,080h	; 9af5  ...//...........
	defb 080h,0a0h,0c0h,0f4h,0f4h,0c0h,0a0h,080h,080h,000h,080h,000h,01bh,013h,03fh,05fh	; 9b05  ..............?_
	defb 04fh,09fh,0bfh,0bfh,08fh,05fh,03eh,0ffh,047h,023h,010h,00fh,0e0h,098h,0e4h,0f2h	; 9b15  O...._>.G#......
	defb 0f3h,0f2h,0e6h,0cdh,03bh,0cdh,07dh,0fah,0f2h,0b4h,018h,0e0h,017h,01eh,02ch,060h	; 9b25  ......}.......,`
	defb 070h,0e0h,0c0h,0c0h,0f0h,0bfh,0c1h,0ffh,078h,03ch,01fh,00fh,0e0h,078h,01ch,00eh	; 9b35  p.......x<...x..
	defb 00fh,00dh,01dh,03bh,0f7h,03fh,0f3h,086h,03eh,07ch,0f8h,0e0h,007h,01fh,03fh,070h	; 9b45  .....?..>|....?p
	defb 0ffh,07eh,0ffh,004h,07fh,09ch,05fh,02ch,013h,00eh,001h,0f0h,0cch,0f4h,03ah,0dah	; 9b55  .~...._,......:.
	defb 03dh,0cdh,0f5h,0cbh,0b5h,07ah,07ah,0f4h,0ech,008h,0e0h,007h,018h,020h,05fh,0e0h	; 9b65  =....zz...... _.
	defb 01fh,0a1h,004h,040h,09fh,060h,033h,01fh,00fh,001h,0f0h,03ch,00ch,0c6h,026h,0cbh	; 9b75  ...@.`3....<..&.
	defb 0f7h,03bh,03fh,07fh,0f7h,0f6h,0cch,09ch,0e8h,0e0h,000h,000h,008h,010h,020h,020h	; 9b85  ..?...........
	defb 040h,042h,002h,003h,007h,000h,08dh,030h,058h,088h,088h,050h,020h,000h,000h,020h	; 9b95  @B.....0X..P ..
	defb 010h,000h,004h,078h,004h,000h,089h,004h,00ch,018h,051h,033h,031h,021h,000h,003h	; 9ba5  ...x......Q31!..
	defb 006h,000h,0afh,048h,0a4h,044h,044h,02ch,018h,080h,080h,090h,000h,002h,040h,004h	; 9bb5  ...H.DD,......@.
	defb 078h,000h,00ch,01fh,033h,063h,0c7h,08eh,08ch,08ch,0dch,07ch,01ch,007h,003h,001h	; 9bc5  x...3c.....|....
	defb 001h,000h,0feh,087h,003h,033h,033h,083h,0c6h,07ch,078h,04eh,0efh,0fdh,0bbh,082h	; 9bd5  .....33..|xN....
	defb 086h,0fch,000h	; 9be5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9be8..0x9c00  (24 bytes)
DATA_9BE8:
	defb 054h,0c0h,0c1h,0c2h,0c3h,0c4h,0c5h,0c6h,0b6h,0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh	; 9be8  T...............
	defb 0cfh,015h,019h,01ah,017h,016h,017h,016h	; 9bf8  ........
