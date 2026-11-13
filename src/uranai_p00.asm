; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p00 (se ejecuta en 0x9200)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09200


; ======================================================================
; CODIGO 0x9200..0x9209  (9 bytes)
; ======================================================================



; ----------------------------------------------------------------------
; ===== la presentacion: dibujos de 1 bit (0x82AE), casillas propias (0x92F0) y 30 dibujos de color (0x9538) =====
; ----------------------------------------------------------------------
L_9200:
	jp L_920D		;9200
L_9203:
	jp L_928E		;9203
L_9206:
	jp L_92AF		;9206

; ----------------------------------------------------------------------
; DATOS cuentas: las cuentas de 0x928E: 0x9209 y 0x920A bajan cada cuadro,
;   0x920C dice en que fase va (4 bytes)
;   0x9209..0x920d  (4 bytes)
DATA_cuentas:
	defb 01eh,031h,000h,000h	; 9209

; ======================================================================
; CODIGO 0x920d..0x9310  (259 bytes)
; ======================================================================


L_920D:
	call 08212h		;920d
	ld hl,00000h		;9210
	ld bc,000d0h		;9213
	xor a			;9216
	ld d,001h		;9217
	call 0829fh		;9219
	call 082d2h		;921c
	ld hl,09518h		;921f
	call 082dbh		;9222
	ld b,00eh		;9225
	ld c,007h		;9227
	call 00047h		;9229   ; BIOS WRTVDP - Writes data in the VDP-register
	ld ix,094f1h		;922c
	call L_9538		;9230
	ld hl,080b8h		;9233
	ld de,000b0h		;9236
	ld bc,08008h		;9239
	ld a,050h		;923c
	call 0820ch		;923e
	ld hl,02840h		;9241
	ld bc,0a848h		;9244
	xor a			;9247
	ld d,001h		;9248
	call 0829fh		;924a
	ld hl,09310h		;924d
	ld de,00800h		;9250
	ld bc,00d01h		;9253
	call 082aeh		;9256
	ld hl,09378h		;9259
	ld de,07000h		;925c
	ld bc,00d02h		;925f
	call 082aeh		;9262
	ld hl,093e0h		;9265
	ld de,0d800h		;9268
	ld bc,01a03h		;926b
	call 082aeh		;926e
	ld de,04040h		;9271
	ld hl,094b0h		;9274
	call L_92F0		;9277
	call 08209h		;927a
	call 0826fh		;927d
	ld hl,0d283h		;9280
	ld b,020h		;9283
L_9285:
	ld (hl),00fh		;9285
	ld de,00004h		;9287
	add hl,de			;928a
	djnz L_9285		;928b
	ret			;928d
L_928E:
	ld a,(0920ch)		;928e
	or a			;9291
	jr nz,L_92A8		;9292
	ld hl,09209h		;9294
	dec (hl)			;9297
	inc hl			;9298
	dec (hl)			;9299
	jr nz,L_92CA		;929a
	ld a,090h		;929c
	ld (09209h),a		;929e
	ld hl,0920ch		;92a1
	inc (hl)			;92a4
	or 0ffh		;92a5
	ret			;92a7
L_92A8:
	ld hl,09209h		;92a8
	dec (hl)			;92ab
	ret nz			;92ac
	xor a			;92ad
	ret			;92ae
L_92AF:
	call 08212h		;92af
	call 08290h		;92b2
	call 0826fh		;92b5
	call 08260h		;92b8
	ld bc,00007h		;92bb
	call 00047h		;92be   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,094f8h		;92c1
	call 082dbh		;92c4
	jp 08209h		;92c7
L_92CA:
	ld a,031h		;92ca
	sub (hl)			;92cc
	ld c,a			;92cd
	ld b,0a8h		;92ce
	ld hl,02840h		;92d0
	ld de,02840h		;92d3
	ld a,001h		;92d6
	call 08284h		;92d8
	or 00fh		;92db
	ret			;92dd
L_92DE:
	push bc			;92de
	push hl			;92df
	push de			;92e0
	call 08281h		;92e1
	ld bc,00808h		;92e4
	ld a,005h		;92e7
	call 08284h		;92e9
	pop de			;92ec
	pop hl			;92ed
	pop bc			;92ee
	ret			;92ef
L_92F0:
	push de			;92f0
L_92F1:
	ld a,(hl)			;92f1
	inc hl			;92f2
	ld c,a			;92f3
	inc a			;92f4
	jr z,L_930E		;92f5
	inc a			;92f7
	jr nz,L_9305		;92f8
	pop de			;92fa
	ld a,(hl)			;92fb
	inc hl			;92fc
	add a,d			;92fd
	ld d,a			;92fe
	ld a,008h		;92ff
	add a,e			;9301
	ld e,a			;9302
	jr L_92F0		;9303
L_9305:
	ld a,c			;9305
	call L_92DE		;9306
	call 082a8h		;9309
	jr L_92F1		;930c
L_930E:
	pop de			;930e
	ret			;930f

; ----------------------------------------------------------------------
; DATOS patrones_9310: dibujos de 8x8 a un bit, 8 bytes cada uno (B de BC dice
;   cuantos), que 0x8DA0 (nucleo) pinta con el color C; lo usa 0x9256 (104
;   bytes)
;   0x9310..0x9378  (104 bytes)
DATA_patrones_9310:
	defb 007h,007h,00fh,00fh,00fh,01fh,01fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9310  .......?........
	defb 0f8h,0f8h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h,000h,000h,000h,000h,001h,003h,00fh,07fh	; 9320  ................
	defb 03fh,07fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch,0f0h,0c0h	; 9330  ?...............
	defb 0c0h,0c0h,080h,080h,000h,000h,000h,000h,000h,000h,000h,001h,003h,007h,00fh,00fh	; 9340  ................
	defb 00fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fch,0f8h,0f8h,0f0h	; 9350  .?..............
	defb 0f8h,0c0h,000h,000h,000h,000h,000h,000h,01fh,01fh,01fh,03fh,03fh,03fh,07fh,07fh	; 9360  ...........???..
	defb 0f0h,0e0h,0e0h,0c0h,0c0h,0c0h,080h,080h	; 9370  ........

; ----------------------------------------------------------------------
; DATOS patrones_9378: dibujos de 8x8 a un bit, 8 bytes cada uno (B de BC dice
;   cuantos), que 0x8DA0 (nucleo) pinta con el color C; lo usa 0x9262 (104
;   bytes)
;   0x9378..0x93e0  (104 bytes)
DATA_patrones_9378:
	defb 000h,000h,000h,000h,000h,001h,001h,003h,07fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9378  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fch,080h,080h,000h,000h,000h,000h,000h,000h	; 9388  ................
	defb 000h,000h,000h,000h,000h,000h,000h,007h,003h,007h,007h,00fh,01fh,03fh,0ffh,0ffh	; 9398  .............?..
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f8h,0fch,0f8h,0f8h,0f0h,0e0h,0c0h,000h,000h	; 93a8  ................
	defb 000h,003h,00fh,01fh,03fh,07fh,0ffh,0ffh,0ffh,0fch,0f0h,0e0h,0c0h,080h,080h,000h	; 93b8  ....?...........
	defb 001h,001h,001h,003h,003h,003h,007h,007h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 93c8  ................
	defb 0ffh,0feh,0feh,0fch,0fch,0fch,0f8h,0f8h	; 93d8  ........

; ----------------------------------------------------------------------
; DATOS patrones_93E0: dibujos de 8x8 a un bit, 8 bytes cada uno (B de BC dice
;   cuantos), que 0x8DA0 (nucleo) pinta con el color C; lo usa 0x926E (208
;   bytes)
;   0x93e0..0x94b0  (208 bytes)
DATA_patrones_93E0:
	defb 03ch,03ch,078h,078h,079h,0f3h,0f7h,0ffh,01fh,03eh,07ch,0f9h,0f3h,0e3h,0c3h,087h	; 93e0  <<xxy....>|.....
	defb 01fh,07fh,0f8h,0f0h,0e0h,0e0h,0c0h,0c0h,0c0h,0f0h,0f8h,078h,078h,079h,079h,079h	; 93f0  ...........xxyyy
	defb 07fh,07fh,0ffh,0f7h,0f7h,0e7h,0e7h,0e7h,00fh,00fh,01eh,01eh,01eh,03ch,03ch,03ch	; 9400  .............<<<
	defb 003h,007h,00fh,00eh,01eh,03ch,038h,078h,0e0h,0e0h,0e0h,0e0h,0e0h,0e1h,0e1h,0e1h	; 9410  .....<8x........
	defb 07eh,07eh,0feh,0f6h,0f6h,0eeh,0eeh,0eeh,00fh,00fh,01fh,01dh,03dh,03bh,07bh,073h	; 9420  ~~..........=.{s
	defb 0f1h,0f1h,0e3h,0e3h,0e3h,0c7h,0c7h,0c7h,0e0h,0e0h,0c0h,0c0h,0c0h,080h,080h,080h	; 9430  ................
	defb 001h,001h,001h,003h,003h,003h,007h,007h,0efh,0e7h,0e7h,0c7h,0c7h,0c3h,083h,083h	; 9440  ................
	defb 087h,087h,087h,0c7h,0c7h,0c7h,0e3h,0e0h,080h,080h,081h,081h,083h,0c7h,0ffh,0feh	; 9450  ................
	defb 0fbh,0f3h,0f3h,0f7h,0e7h,0c7h,08fh,00fh,0c7h,0c7h,0c7h,087h,087h,087h,007h,007h	; 9460  ................
	defb 078h,078h,079h,0f1h,0f3h,0f7h,0e7h,0efh,070h,0f0h,0ffh,0ffh,0ffh,080h,080h,000h	; 9470  xxy.....p.......
	defb 0e3h,0e3h,0e3h,0e7h,0e7h,0e7h,0efh,0efh,0ceh,0ceh,0cfh,08fh,08fh,08fh,00fh,00fh	; 9480  ................
	defb 0f7h,0e7h,0c7h,0cfh,08fh,08fh,01eh,01eh,08fh,08fh,08fh,01eh,01eh,01eh,03ch,03ch	; 9490  ..............<<
	defb 007h,008h,017h,014h,017h,014h,008h,007h,080h,040h,020h,0a0h,020h,0a0h,040h,080h	; 94a0  .........@ . .@.

; ----------------------------------------------------------------------
; DATOS casillas_94B0: las casillas que pinta 0x92F0 desde 0x9274: un numero
;   por casilla, 0xFE y un desplazamiento = siguiente fila, 0xFF = fin (65
;   bytes)
;   0x94b0..0x94f1  (65 bytes)
DATA_casillas_94B0:
	defb 001h,002h,003h,0feh,0f8h,004h,005h,006h,007h,0feh,0f0h,008h,009h,00ah,00bh,00eh	; 94b0  ................
	defb 00fh,010h,011h,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h,025h,026h,0feh	; 94c0  ........ !"#$%&.
	defb 000h,00ch,002h,00dh,012h,013h,014h,015h,027h,028h,029h,02ah,02bh,02ch,02dh,02eh	; 94d0  ........'()*+,-.
	defb 02fh,030h,031h,032h,033h,034h,0feh,010h,016h,019h,017h,0feh,0f8h,018h,019h,01ah	; 94e0  /01234..........
	defb 0ffh	; 94f0

; ----------------------------------------------------------------------
; DATOS lista_94F1: la lista de 0x9538 (desde 0x922C): un registro de 6 bytes
;   (marca 0x20, 30 dibujos, VRAM 0xDC00, origen 0x9634) y el 0x80 que la
;   acaba (7 bytes)
;   0x94f1..0x94f8  (7 bytes)
DATA_lista_94F1:
	defb 020h,01eh,000h,0dch,034h,096h,080h	; 94f1

; ----------------------------------------------------------------------
; DATOS paleta_94F8: paleta: 16 colores de 2 bytes; lo usa 0x92C4 (32 bytes)
;   0x94f8..0x9518  (32 bytes)
DATA_paleta_94F8:
	defb 000h,000h,073h,005h,001h,002h,004h,001h,015h,001h,022h,003h,061h,007h,074h,002h	; 94f8  ..s.......".a.t.
	defb 070h,000h,035h,005h,071h,007h,073h,007h,055h,005h,020h,000h,077h,007h,000h,000h	; 9508  p.5.q.s.U. .w...

; ----------------------------------------------------------------------
; DATOS paleta_9518: paleta: 16 colores de 2 bytes; lo usa 0x9222 (32 bytes)
;   0x9518..0x9538  (32 bytes)
DATA_paleta_9518:
	defb 000h,000h,070h,003h,060h,001h,044h,004h,015h,001h,022h,003h,061h,007h,074h,002h	; 9518  ..p.`.D...".a.t.
	defb 070h,000h,035h,005h,071h,007h,073h,007h,055h,005h,020h,000h,077h,007h,000h,000h	; 9528  p.5.q.s.U. .w...

; ======================================================================
; CODIGO 0x9538..0x9634  (252 bytes)
; ======================================================================


L_9538:
	ld a,(ix+000h)		;9538
	rla			;953b
	ret c			;953c
	call L_9547		;953d
	ld de,00006h		;9540
	add ix,de		;9543
	jr L_9538		;9545
L_9547:
	push bc			;9547
	bit 6,(ix+000h)		;9548
	jr nz,L_956D		;954c
	bit 4,(ix+000h)		;954e
	jr nz,L_9575		;9552
	call L_955C		;9554
	call L_957D		;9557
	pop bc			;955a
	ret			;955b
L_955C:
	ld b,(ix+001h)		;955c
	ld l,(ix+002h)		;955f
	ld h,(ix+003h)		;9562
	ld e,(ix+004h)		;9565
	ld d,(ix+005h)		;9568
	ex de,hl			;956b
	ret			;956c
L_956D:
	call L_955C		;956d
	call L_9587		;9570
	pop bc			;9573
	ret			;9574
L_9575:
	call L_955C		;9575
	call L_9591		;9578
	pop bc			;957b
	ret			;957c
L_957D:
	push bc			;957d
	ld b,001h		;957e
	call L_95B0		;9580
	pop bc			;9583
	djnz L_957D		;9584
	ret			;9586
L_9587:
	push bc			;9587
	ld b,001h		;9588
	call L_95C5		;958a
	pop bc			;958d
	djnz L_9587		;958e
	ret			;9590
L_9591:
	push bc			;9591
	ld b,001h		;9592
	call L_95FA		;9594
	pop bc			;9597
	djnz L_9591		;9598
	ret			;959a
L_959B:
	push de			;959b
	ld b,008h		;959c
L_959E:
	push bc			;959e
	ld bc,00004h		;959f
	call 08224h		;95a2
	ex de,hl			;95a5
	ld bc,00080h		;95a6
	add hl,bc			;95a9
	ex de,hl			;95aa
	pop bc			;95ab
	djnz L_959E		;95ac
	pop de			;95ae
	ret			;95af
L_95B0:
	push bc			;95b0
	call L_959B		;95b1
	ld a,004h		;95b4
	add a,e			;95b6
	cp 080h		;95b7
	jr nz,L_95C0		;95b9
	ld a,004h		;95bb
	add a,d			;95bd
	ld d,a			;95be
	xor a			;95bf
L_95C0:
	ld e,a			;95c0
	pop bc			;95c1
	djnz L_95B0		;95c2
	ret			;95c4
L_95C5:
	push bc			;95c5
	push de			;95c6
	ld de,0d303h		;95c7
	ld c,008h		;95ca
L_95CC:
	ld b,004h		;95cc
L_95CE:
	ld a,(hl)			;95ce
	rrca			;95cf
	rrca			;95d0
	rrca			;95d1
	rrca			;95d2
	ld (de),a			;95d3
	dec de			;95d4
	inc hl			;95d5
	djnz L_95CE		;95d6
	ld a,008h		;95d8
	call 08206h		;95da
	dec c			;95dd
	jr nz,L_95CC		;95de
	pop de			;95e0
	push hl			;95e1
	ld hl,0d300h		;95e2
	call L_959B		;95e5
	pop hl			;95e8
	ld a,004h		;95e9
	add a,e			;95eb
	cp 080h		;95ec
	jr nz,L_95F5		;95ee
	ld a,004h		;95f0
	add a,d			;95f2
	ld d,a			;95f3
	xor a			;95f4
L_95F5:
	ld e,a			;95f5
	pop bc			;95f6
	djnz L_95C5		;95f7
	ret			;95f9
L_95FA:
	push bc			;95fa
	push de			;95fb
	ld de,0d31ch		;95fc
	ld c,008h		;95ff
L_9601:
	ld b,004h		;9601
L_9603:
	ld a,(hl)			;9603
	ld (de),a			;9604
	inc de			;9605
	inc hl			;9606
	djnz L_9603		;9607
	call L_9629		;9609
	dec c			;960c
	jr nz,L_9601		;960d
	pop de			;960f
	push hl			;9610
	ld hl,0d300h		;9611
	call L_959B		;9614
	pop hl			;9617
	ld a,004h		;9618
	add a,e			;961a
	cp 080h		;961b
	jr nz,L_9624		;961d
	ld a,004h		;961f
	add a,d			;9621
	ld d,a			;9622
	xor a			;9623
L_9624:
	ld e,a			;9624
	pop bc			;9625
	djnz L_95FA		;9626
	ret			;9628
L_9629:
	push hl			;9629
	ld hl,00008h		;962a
	ex de,hl			;962d
	or a			;962e
	sbc hl,de		;962f
	ex de,hl			;9631
	pop hl			;9632
	ret			;9633

; ----------------------------------------------------------------------
; DATOS dibujos_9634: 30 dibujos de 8x8 a 4 bits por punto (32 bytes cada uno)
;   que 0x9538 copia a la VRAM 0xDC00 (960 bytes)
;   0x9634..0x99f4  (960 bytes)
DATA_dibujos_9634:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9634  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9644  ................
	defb 000h,000h,000h,000h,000h,0eeh,0eeh,0eeh,00eh,0cch,0cch,0cch,00eh,0cfh,0ffh,0fch	; 9654  ................
	defb 00eh,0cfh,088h,0fch,00eh,0cfh,088h,0fch,00eh,0cfh,088h,0fch,00eh,0cfh,088h,0fch	; 9664  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,0eeh,0cch,0cch,0cch,0cch,0cch,0ffh,0ffh,0fch	; 9674  ................
	defb 0cfh,0f8h,088h,0ffh,0cfh,088h,088h,08fh,0cfh,088h,0f8h,08fh,0cfh,088h,0f8h,08fh	; 9684  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,0eeh,0cch,0cch,0cch,0cch,0cfh,0ffh,0fch,0ffh	; 9694  ................
	defb 0ffh,088h,0ffh,0f8h,0f8h,088h,08fh,0f8h,088h,088h,088h,0f8h,088h,0ffh,088h,0f8h	; 96a4  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,000h,0cch,0cch,0cch,0e0h,0ffh,0ffh,0cch,0e0h	; 96b4  ................
	defb 088h,08fh,0fch,0e0h,088h,088h,0fch,0e0h,08fh,088h,0fch,0e0h,08fh,088h,0fch,0e0h	; 96c4  ................
	defb 00eh,0cfh,088h,0fch,00eh,0cfh,088h,0ffh,00eh,0cfh,088h,088h,00eh,0cfh,088h,088h	; 96d4  ................
	defb 00eh,0cfh,0ffh,0ffh,00eh,0cch,0cch,0cch,000h,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 96e4  ................
	defb 0cfh,088h,0f8h,08fh,0ffh,088h,0f8h,08fh,08fh,088h,088h,08fh,08fh,0f8h,088h,0ffh	; 96f4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0cch,0cch,0cch,0cch,0eeh,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 9704  ................
	defb 088h,0ffh,088h,0f8h,088h,088h,088h,0f8h,088h,088h,088h,0f8h,088h,0ffh,088h,0f8h	; 9714  ................
	defb 0ffh,0ffh,0ffh,0ffh,0cch,0cch,0cch,0cch,0eeh,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 9724  ................
	defb 08fh,088h,0fch,0e0h,08fh,088h,0fch,0e0h,088h,088h,0fch,0e0h,088h,08fh,0fch,0e0h	; 9734  ................
	defb 0ffh,0ffh,0cch,0e0h,0cch,0cch,0cch,0e0h,0eeh,0eeh,0eeh,000h,000h,000h,000h,000h	; 9744  ................
	defb 000h,000h,000h,000h,000h,0eeh,0eeh,0eeh,00eh,0cch,0cch,0cch,00eh,0cfh,0ffh,0ffh	; 9754  ................
	defb 00eh,0ffh,0aah,0afh,00eh,0fah,0aah,0afh,00eh,0fah,0afh,0ffh,00eh,0fah,0aah,0afh	; 9764  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,0eeh,0cch,0cch,0cch,0cch,0ffh,0ffh,0fch,0cfh	; 9774  ................
	defb 0aah,0aah,0ffh,0ffh,0aah,0aah,0afh,0fah,0aah,0fah,0afh,0fah,0aah,0aah,0afh,0aah	; 9784  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,0eeh,0cch,0cch,0cch,0cch,0ffh,0cch,0ffh,0ffh	; 9794  ................
	defb 0afh,0ffh,0fah,0aah,0aah,0ffh,0aah,0aah,0aah,0ffh,0aah,0ffh,0fah,0afh,0aah,0fch	; 97a4  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,000h,0cch,0cch,0cch,0e0h,0ffh,0ffh,0ffh,0e0h	; 97b4  ................
	defb 0fah,0aah,0afh,0e0h,0fah,0aah,0afh,0e0h,0fah,0afh,0ffh,0e0h,0fah,0aah,0fch,0e0h	; 97c4  ................
	defb 00eh,0fah,0aah,0afh,00eh,0ffh,0fah,0afh,00eh,0fah,0aah,0afh,00eh,0fah,0aah,0ffh	; 97d4  ................
	defb 00eh,0ffh,0ffh,0cfh,00eh,0cch,0cch,0cch,000h,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 97e4  ................
	defb 0aah,0aah,0ffh,0aah,0aah,0ffh,0ffh,0aah,0aah,0fch,0cfh,0aah,0aah,0fch,0cfh,0afh	; 97f4  ................
	defb 0ffh,0fch,0cfh,0ffh,0cch,0cch,0cch,0cch,0eeh,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 9804  ................
	defb 0fah,0afh,0aah,0fch,0aah,0afh,0aah,0ffh,0aah,0afh,0aah,0aah,0ffh,0afh,0fah,0aah	; 9814  ................
	defb 0cfh,0ffh,0ffh,0ffh,0cch,0cch,0cch,0cch,0eeh,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 9824  ................
	defb 0fah,0aah,0fch,0e0h,0fah,0afh,0ffh,0e0h,0fah,0aah,0afh,0e0h,0fah,0aah,0afh,0e0h	; 9834  ................
	defb 0ffh,0ffh,0ffh,0e0h,0cch,0cch,0cch,0e0h,0eeh,0eeh,0eeh,000h,000h,000h,000h,000h	; 9844  ................
	defb 000h,000h,000h,000h,000h,0eeh,0eeh,0eeh,00eh,0cch,0cch,0cch,00eh,0ffh,0ffh,0ffh	; 9854  ................
	defb 00eh,0feh,0eeh,0eeh,00eh,0feh,0eeh,0eeh,00eh,0feh,0efh,0ffh,00eh,0feh,0eeh,0efh	; 9864  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,0eeh,0cch,0cch,0cch,0cch,0fch,0cch,0cch,0cch	; 9874  ................
	defb 0fch,0cch,0cch,0cch,0ffh,0ffh,0cfh,0ffh,0feh,0efh,0ffh,0eeh,0feh,0eeh,0efh,0eeh	; 9884  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,0eeh,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch	; 9894  ................
	defb 0cch,0cch,0cch,0cch,0fch,0cfh,0ffh,0ffh,0ffh,0ffh,0eeh,0efh,0eeh,0feh,0eeh,0eeh	; 98a4  ................
	defb 000h,000h,000h,000h,0eeh,0eeh,0eeh,000h,0cch,0cch,0cch,0e0h,0cch,0cch,0cch,0e0h	; 98b4  ................
	defb 0cch,0cch,0cch,0e0h,0ffh,0ffh,0cch,0e0h,0feh,0efh,0ffh,0e0h,0feh,0eeh,0efh,0e0h	; 98c4  ................
	defb 00eh,0feh,0eeh,0efh,00eh,0feh,0efh,0ffh,00eh,0feh,0eeh,0eeh,00eh,0feh,0eeh,0eeh	; 98d4  ................
	defb 00eh,0ffh,0ffh,0ffh,00eh,0cch,0cch,0cch,000h,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 98e4  ................
	defb 0feh,0eeh,0efh,0eeh,0feh,0efh,0ffh,0eeh,0feh,0efh,0cfh,0eeh,0feh,0efh,0cfh,0eeh	; 98f4  ................
	defb 0ffh,0ffh,0cfh,0ffh,0cch,0cch,0cch,0cch,0eeh,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 9904  ................
	defb 0eeh,0feh,0efh,0eeh,0ffh,0feh,0efh,0eeh,0fch,0feh,0eeh,0eeh,0fch,0ffh,0eeh,0efh	; 9914  ................
	defb 0fch,0cfh,0ffh,0ffh,0cch,0cch,0cch,0cch,0eeh,0eeh,0eeh,0eeh,000h,000h,000h,000h	; 9924  ................
	defb 0feh,0eeh,0efh,0e0h,0feh,0efh,0ffh,0e0h,0feh,0efh,0cch,0e0h,0feh,0efh,0cch,0e0h	; 9934  ................
	defb 0ffh,0ffh,0cch,0e0h,0cch,0cch,0cch,0e0h,0eeh,0eeh,0eeh,000h,000h,000h,000h,000h	; 9944  ................
	defb 000h,000h,00eh,0eeh,000h,00eh,0efh,0ffh,000h,0efh,0ffh,0ffh,00eh,0ffh,0ffh,0ffh	; 9954  ................
	defb 00eh,0ffh,0ffh,0ffh,0efh,0ffh,0ffh,0ffh,0efh,0ffh,0ffh,0ffh,0efh,0ffh,0ffh,0ffh	; 9964  ................
	defb 0eeh,0e0h,000h,000h,0ffh,0feh,0e0h,000h,0ffh,0ffh,0feh,000h,0ffh,0ffh,0ffh,0e0h	; 9974  ................
	defb 0ffh,0ffh,0ffh,0e0h,0ffh,0ffh,0ffh,0feh,0ffh,0ffh,0ffh,0feh,0ffh,0ffh,0ffh,0feh	; 9984  ................
	defb 0efh,0ffh,0ffh,0ffh,0efh,0ffh,0ffh,0ffh,0efh,0ffh,0ffh,0ffh,00eh,0ffh,0ffh,0ffh	; 9994  ................
	defb 00eh,0ffh,0ffh,0ffh,000h,0efh,0ffh,0ffh,000h,00eh,0efh,0ffh,000h,000h,00eh,0eeh	; 99a4  ................
	defb 0ffh,0ffh,0ffh,0feh,0ffh,0ffh,0ffh,0feh,0ffh,0ffh,0ffh,0feh,0ffh,0ffh,0ffh,0e0h	; 99b4  ................
	defb 0ffh,0ffh,0ffh,0e0h,0ffh,0ffh,0feh,000h,0ffh,0feh,0e0h,000h,0eeh,0e0h,000h,000h	; 99c4  ................
	defb 000h,000h,080h,000h,000h,000h,088h,000h,000h,000h,088h,080h,088h,088h,088h,088h	; 99d4  ................
	defb 088h,088h,088h,088h,000h,000h,088h,080h,000h,000h,088h,000h,000h,000h,080h,000h	; 99e4  ................

; ----------------------------------------------------------------------
; DATOS resto: detras de los 30 dibujos; nadie lo lee (12 bytes)
;   0x99f4..0x9a00  (12 bytes)
DATA_resto:
	defb 070h,000h,000h,000h,000h,001h,003h,007h,00fh,03fh,03fh,00fh	; 99f4  p........??.
