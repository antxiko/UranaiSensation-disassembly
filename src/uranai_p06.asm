; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p06 (se ejecuta en 0x9200)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09200


; ======================================================================
; CODIGO 0x9200..0x9282  (130 bytes)
; ======================================================================


L_9200:
	jp L_921B		;9200
L_9203:
	jp L_983E		;9203
L_9206:
	jp L_94E8		;9206
L_9209:
	jp L_94F6		;9209
L_920C:
	jp L_9511		;920c
L_920F:
	jp L_94A0		;920f
L_9212:
	jp L_94C6		;9212
L_9215:
	jp L_93CB		;9215
L_9218:
	jp L_9A00		;9218
L_921B:
	call L_9247		;921b
	call 08209h		;921e
L_9221:
	ld a,002h		;9221
	call L_92A2		;9223
	ld hl,0c004h		;9226
	ld (092d6h),hl		;9229
	ld a,03ah		;922c
	call L_92CA		;922e
	ld a,001h		;9231
	call L_92A2		;9233
	ld hl,0a004h		;9236
	ld (092d6h),hl		;9239
	ld a,0ffh		;923c
	call L_92CA		;923e
	call L_93D5		;9241
	jp 08251h		;9244
L_9247:
	call L_96C9		;9247
	call 08212h		;924a
	call 08251h		;924d
	call L_927C		;9250
	xor a			;9253
	call L_92A2		;9254
	ld a,0e9h		;9257
	call L_92CA		;9259
	ld hl,092ebh		;925c
	ld de,00000h		;925f
	call L_9275		;9262
	ld a,003h		;9265
	call L_92A2		;9267
	ld a,0cfh		;926a
	call L_92CA		;926c
	ld hl,09399h		;926f
	ld de,00080h		;9272
L_9275:
	ld a,001h		;9275
	ld c,020h		;9277
	jp 08218h		;9279
L_927C:
	ld hl,09282h		;927c
	jp 082dbh		;927f

; ----------------------------------------------------------------------
; DATOS paleta_9282: paleta: 16 colores de 2 bytes; lo usa 0x927F (32 bytes)
;   0x9282..0x92a2  (32 bytes)
DATA_paleta_9282:
	defb 000h,000h,046h,003h,050h,000h,034h,002h,023h,001h,000h,000h,044h,004h,074h,003h	; 9282  ..F.P.4.#...D.t.
	defb 070h,000h,000h,000h,000h,000h,000h,000h,055h,005h,000h,000h,077h,007h,000h,000h	; 9292  p.......U...w...

; ======================================================================
; CODIGO 0x92a2..0x92d4  (50 bytes)
; ======================================================================


L_92A2:
	ld (0d1e4h),a		;92a2
L_92A5:
	ld a,(0d1e4h)		;92a5
	call L_92B9		;92a8
	ld de,0b000h		;92ab
	call 08215h		;92ae
	jr c,L_92A5		;92b1
	ld a,0ffh		;92b3
	ld (0e0fdh),a		;92b5
	ret			;92b8
L_92B9:
	add a,a			;92b9
	add a,a			;92ba
	ld hl,092dbh		;92bb
	call 08221h		;92be
	ld c,(hl)			;92c1
	inc hl			;92c2
	ld b,(hl)			;92c3
	inc hl			;92c4
	ld a,(hl)			;92c5
	inc hl			;92c6
	ld h,(hl)			;92c7
	ld l,a			;92c8
	ret			;92c9
L_92CA:
	ld (092d5h),a		;92ca
	ld ix,092d4h		;92cd
	jp L_95C9		;92d1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92d4..0x92eb  (23 bytes)
DATA_92D4:
	defb 020h,0c4h,004h,0a0h,000h,0b0h,080h,07bh,004h,000h,010h,05bh,004h,000h,010h,057h	; 92d4   ......{...[...W
	defb 004h,000h,005h,06bh,004h,000h,010h	; 92e4

; ----------------------------------------------------------------------
; DATOS casillas_92EB: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9279 (174 bytes)
;   0x92eb..0x9399  (174 bytes)
DATA_casillas_92EB:
	defb 04bh,001h,082h,080h,081h,006h,001h,082h,002h,003h,011h,001h,087h,004h,080h,081h	; 92eb  K...............
	defb 001h,005h,091h,092h,006h,001h,086h,006h,007h,001h,001h,002h,003h,00dh,001h,083h	; 92fb  ................
	defb 00ah,091h,092h,080h,007h,00bh,080h,007h,011h,083h,006h,007h,018h,00ch,001h,080h	; 930b  ................
	defb 00ah,019h,080h,00ah,022h,00ah,001h,080h,009h,02ch,006h,001h,080h,009h,035h,006h	; 931b  ...."....,....5.
	defb 001h,082h,080h,081h,080h,008h,03eh,008h,001h,080h,008h,046h,082h,002h,003h,004h	; 932b  ......>....F....
	defb 001h,082h,091h,092h,080h,007h,04eh,00ah,001h,080h,007h,055h,082h,006h,007h,004h	; 933b  ......N....U....
	defb 001h,080h,009h,05ch,00ah,001h,080h,009h,065h,004h,001h,080h,009h,06eh,00ah,001h	; 934b  ...\....e....n..
	defb 080h,009h,077h,002h,001h,080h,00ah,080h,081h,076h,00ah,001h,082h,077h,078h,080h	; 935b  ..w......v...wx.
	defb 007h,08ah,082h,002h,003h,080h,00bh,091h,00ah,001h,080h,009h,09ch,083h,006h,007h	; 936b  ................
	defb 001h,080h,00ah,0a5h,00ah,001h,080h,00ah,0afh,081h,001h,080h,00ch,0b9h,008h,001h	; 937b  ................
	defb 080h,019h,0c5h,006h,001h,080h,005h,0deh,081h,0d8h,080h,007h,0e3h,000h	; 938b  ..............

; ----------------------------------------------------------------------
; DATOS casillas_9399: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9279 (32 bytes)
;   0x9399..0x93b9  (32 bytes)
DATA_casillas_9399:
	defb 080h,00fh,001h,002h,001h,080h,00eh,012h,002h,001h,080h,01eh,020h,009h,001h,080h	; 9399  ............ ...
	defb 006h,03eh,004h,001h,080h,003h,044h,080h,003h,046h,028h,001h,080h,080h,050h,000h	; 93a9  .>....D..F(...P.

; ----------------------------------------------------------------------
; DATOS sin identificar  0x93b9..0x93bc  (3 bytes)
DATA_93B9:
	defb 0cdh,03eh,098h	; 93b9

; ======================================================================
; CODIGO 0x93bc..0x93e4  (40 bytes)
; ======================================================================


L_93BC:
	call L_93CB		;93bc
	ld hl,093e4h		;93bf
	call 08275h		;93c2
	ld hl,093f3h		;93c5
	jp 08275h		;93c8
L_93CB:
	call L_9542		;93cb
	ld ix,09404h		;93ce
	jp 082cch		;93d2
L_93D5:
	ld bc,00039h		;93d5
	ld de,09c00h		;93d8
	ld hl,00100h		;93db
	call 08215h		;93de
	jr c,L_93D5		;93e1
	ret			;93e3

; ----------------------------------------------------------------------
; DATOS texto_93E4: texto: x, y y las letras hasta 0xFF; lo usa 0x93C2 (15
;   bytes)
;   0x93e4..0x93f3  (15 bytes)
DATA_texto_93E4:
	defb 050h,008h,001h,002h,003h,004h,005h,006h,007h,000h,008h,009h,00ah,00ah,0ffh	; 93e4  P..............

; ----------------------------------------------------------------------
; DATOS texto_93F3: texto: x, y y las letras hasta 0xFF; lo usa 0x93C8 (17
;   bytes)
;   0x93f3..0x9404  (17 bytes)
DATA_texto_93F3:
	defb 048h,0c8h,00bh,00ch,00dh,00eh,000h,00dh,00bh,005h,00fh,010h,000h,002h,010h,011h	; 93f3  H...............
	defb 0ffh	; 9403

; ----------------------------------------------------------------------
; DATOS lista_dibujos_9404: lista de dibujos, 5 bytes cada uno (marca,
;   puntero, posicion, color), hasta la marca 0; lo usa 0x93D2 (6 bytes)
;   0x9404..0x940a  (6 bytes)
DATA_lista_dibujos_9404:
	defb 080h,00ah,094h,000h,00eh,000h	; 9404

; ----------------------------------------------------------------------
; DATOS dibujo_940A: dibujo en el RLE de 0x9014 (nucleo), hasta el 0; lo usa
;   0x93D2 (150 bytes)
;   0x940a..0x94a0  (150 bytes)
DATA_dibujo_940A:
	defb 008h,000h,092h,03ch,042h,099h,0a1h,0a1h,099h,042h,03ch,000h,063h,066h,06ch,078h	; 940a  ...<B....B<.cflx
	defb 07ch,06eh,067h,000h,03eh,005h,063h,09bh,03eh,000h,063h,073h,07bh,07fh,06fh,067h	; 941a  |ng.>.c.>.cs{.og
	defb 063h,000h,01ch,036h,063h,063h,07fh,063h,063h,000h,063h,077h,07fh,07fh,06bh,063h	; 942a  c..6cc.cc.cw..kc
	defb 063h,000h,03ch,005h,018h,084h,03ch,000h,018h,038h,004h,018h,093h,07eh,000h,03eh	; 943a  c.<...<..8...~.>
	defb 063h,063h,03fh,003h,063h,03eh,000h,03eh,063h,063h,03eh,063h,063h,03eh,000h,07eh	; 944a  cc?.c>.>cc>cc>.~
	defb 003h,063h,084h,07eh,060h,060h,000h,006h,063h,08ah,03eh,000h,03eh,063h,060h,03eh	; 945a  .c.~``..c.>.>c`>
	defb 003h,063h,03eh,000h,003h,063h,081h,07fh,003h,063h,083h,000h,03eh,063h,003h,060h	; 946a  .c>..c...c..>c.`
	defb 08fh,063h,03eh,000h,07fh,060h,060h,07eh,060h,060h,07fh,000h,066h,066h,07eh,03ch	; 947a  .c>..``~``..ff~<
	defb 003h,018h,081h,000h,006h,060h,083h,07fh,000h,07eh,006h,018h,088h,000h,07eh,063h	; 948a  .....`...~....~c
	defb 063h,062h,07ch,066h,063h,000h	; 949a

; ======================================================================
; CODIGO 0x94a0..0x94e0  (64 bytes)
; ======================================================================


L_94A0:
	call 08290h		;94a0
	call L_9247		;94a3
	call L_9221		;94a6
	ld hl,00840h		;94a9
	ld de,01838h		;94ac
	ld bc,0d050h		;94af
	ld a,001h		;94b2
	call 08284h		;94b4
	call L_93BC		;94b7
	call 0826fh		;94ba
	call 08260h		;94bd
	call L_9542		;94c0
	jp 08209h		;94c3
L_94C6:
	ld a,(0d1c4h)		;94c6
	dec a			;94c9
	jr z,L_94D7		;94ca
	inc a			;94cc
	and 004h		;94cd
	jr z,L_94D7		;94cf
	ld hl,094e0h		;94d1
	jp 08275h		;94d4
L_94D7:
	ld hl,048c8h		;94d7
	ld bc,07008h		;94da
	jp 082b7h		;94dd

; ----------------------------------------------------------------------
; DATOS texto_94E0: texto: x, y y las letras hasta 0xFF; lo usa 0x94D4 (8
;   bytes)
;   0x94e0..0x94e8  (8 bytes)
DATA_texto_94E0:
	defb 068h,0c8h,00dh,013h,005h,014h,013h,0ffh	; 94e0  h.......

; ======================================================================
; CODIGO 0x94e8..0x9548  (96 bytes)
; ======================================================================


L_94E8:
	xor a			;94e8
	ld (0d26fh),a		;94e9
	call L_9565		;94ec
	ret nc			;94ef
	ld a,001h		;94f0
	ld (0d26fh),a		;94f2
	ret			;94f5
L_94F6:
	ld hl,0d200h		;94f6
	ld bc,00e20h		;94f9
	ld d,h			;94fc
	ld e,l			;94fd
	inc e			;94fe
	ld (hl),000h		;94ff
	ldir		;9501
	ld hl,0daf0h		;9503
	ld de,0daf1h		;9506
	ld bc,0000dh		;9509
	ld (hl),0ffh		;950c
	ldir		;950e
	ret			;9510
L_9511:
	ld hl,0db00h		;9511
	ld de,0db01h		;9514
	ld bc,001ffh		;9517
	ld (hl),000h		;951a
	ldir		;951c
	xor a			;951e
	ld (0d1d6h),a		;951f
	ld (0d1ceh),a		;9522
	ld (0d1d7h),a		;9525
	ld (0d1d8h),a		;9528
	ld (0d20bh),a		;952b
	ld (0d1dah),a		;952e
	call 0826fh		;9531
	ld hl,0d283h		;9534
	ld b,020h		;9537
L_9539:
	ld (hl),00fh		;9539
	ld de,00004h		;953b
	add hl,de			;953e
	djnz L_9539		;953f
	ret			;9541
L_9542:
	ld hl,09900h		;9542
	jp L_9A9C		;9545

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9548..0x9565  (29 bytes)
DATA_9548:
	defb 03eh,001h,032h,0efh,0d1h,0edh,073h,0f1h,0e0h,021h,000h,0d7h,011h,0ffh,0dah,0cdh	; 9548  >.2...s..!......
	defb 09fh,095h,011h,000h,0d7h,0cdh,08ah,095h,0afh,032h,0efh,0d1h,0c9h	; 9558  .........2...

; ======================================================================
; CODIGO 0x9565..0x958a  (37 bytes)
; ======================================================================


L_9565:
	ld a,001h		;9565
	ld (0d1efh),a		;9567
	ld (0e0f1h),sp		;956a
	call L_9593		;956e
	ld de,0d6ffh		;9571
	call L_95B0		;9574
	jp nz,082deh		;9577
	xor a			;957a
	ld (0d1efh),a		;957b
	ld de,0d700h		;957e
	ld hl,0d300h		;9581
	ld bc,00400h		;9584
	ldir		;9587
	ret			;9589

; ----------------------------------------------------------------------
; DATOS sin identificar  0x958a..0x9593  (9 bytes)
DATA_958A:
	defb 021h,000h,002h,001h,09eh,005h,0c3h,04bh,082h	; 958a  !......K.

; ======================================================================
; CODIGO 0x9593..0x959f  (12 bytes)
; ======================================================================


L_9593:
	ld de,0d300h		;9593
	ld hl,00200h		;9596
	ld bc,0059eh		;9599
	jp 08215h		;959c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x959f..0x95b0  (17 bytes)
DATA_959F:
	defb 0afh,001h,0ffh,003h,008h,008h,086h,023h,008h,00bh,079h,0b0h,020h,0f7h,008h,012h	; 959f  .......#..y. ...
	defb 0c9h	; 95af

; ======================================================================
; CODIGO 0x95b0..0x96c5  (277 bytes)
; ======================================================================


L_95B0:
	ld hl,0d300h		;95b0
	xor a			;95b3
	ld bc,003ffh		;95b4
	call L_95BD		;95b7
	ex de,hl			;95ba
	cp (hl)			;95bb
	ret			;95bc
L_95BD:
	ex af,af'			;95bd
L_95BE:
	ex af,af'			;95be
	add a,(hl)			;95bf
	inc hl			;95c0
	ex af,af'			;95c1
	dec bc			;95c2
	ld a,c			;95c3
	or b			;95c4
	jr nz,L_95BE		;95c5
	ex af,af'			;95c7
	ret			;95c8
L_95C9:
	ld a,(ix+000h)		;95c9
	rla			;95cc
	ret c			;95cd
	call L_95D8		;95ce
	ld de,00006h		;95d1
	add ix,de		;95d4
	jr L_95C9		;95d6
L_95D8:
	push bc			;95d8
	bit 6,(ix+000h)		;95d9
	jr nz,L_95FE		;95dd
	bit 4,(ix+000h)		;95df
	jr nz,L_9606		;95e3
	call L_95ED		;95e5
	call L_960E		;95e8
	pop bc			;95eb
	ret			;95ec
L_95ED:
	ld b,(ix+001h)		;95ed
	ld l,(ix+002h)		;95f0
	ld h,(ix+003h)		;95f3
	ld e,(ix+004h)		;95f6
	ld d,(ix+005h)		;95f9
	ex de,hl			;95fc
	ret			;95fd
L_95FE:
	call L_95ED		;95fe
	call L_9618		;9601
	pop bc			;9604
	ret			;9605
L_9606:
	call L_95ED		;9606
	call L_9622		;9609
	pop bc			;960c
	ret			;960d
L_960E:
	push bc			;960e
	ld b,001h		;960f
	call L_9641		;9611
	pop bc			;9614
	djnz L_960E		;9615
	ret			;9617
L_9618:
	push bc			;9618
	ld b,001h		;9619
	call L_9656		;961b
	pop bc			;961e
	djnz L_9618		;961f
	ret			;9621
L_9622:
	push bc			;9622
	ld b,001h		;9623
	call L_968B		;9625
	pop bc			;9628
	djnz L_9622		;9629
	ret			;962b
L_962C:
	push de			;962c
	ld b,008h		;962d
L_962F:
	push bc			;962f
	ld bc,00004h		;9630
	call 08224h		;9633
	ex de,hl			;9636
	ld bc,00080h		;9637
	add hl,bc			;963a
	ex de,hl			;963b
	pop bc			;963c
	djnz L_962F		;963d
	pop de			;963f
	ret			;9640
L_9641:
	push bc			;9641
	call L_962C		;9642
	ld a,004h		;9645
	add a,e			;9647
	cp 080h		;9648
	jr nz,L_9651		;964a
	ld a,004h		;964c
	add a,d			;964e
	ld d,a			;964f
	xor a			;9650
L_9651:
	ld e,a			;9651
	pop bc			;9652
	djnz L_9641		;9653
	ret			;9655
L_9656:
	push bc			;9656
	push de			;9657
	ld de,0d303h		;9658
	ld c,008h		;965b
L_965D:
	ld b,004h		;965d
L_965F:
	ld a,(hl)			;965f
	rrca			;9660
	rrca			;9661
	rrca			;9662
	rrca			;9663
	ld (de),a			;9664
	dec de			;9665
	inc hl			;9666
	djnz L_965F		;9667
	ld a,008h		;9669
	call 08206h		;966b
	dec c			;966e
	jr nz,L_965D		;966f
	pop de			;9671
	push hl			;9672
	ld hl,0d300h		;9673
	call L_962C		;9676
	pop hl			;9679
	ld a,004h		;967a
	add a,e			;967c
	cp 080h		;967d
	jr nz,L_9686		;967f
	ld a,004h		;9681
	add a,d			;9683
	ld d,a			;9684
	xor a			;9685
L_9686:
	ld e,a			;9686
	pop bc			;9687
	djnz L_9656		;9688
	ret			;968a
L_968B:
	push bc			;968b
	push de			;968c
	ld de,0d31ch		;968d
	ld c,008h		;9690
L_9692:
	ld b,004h		;9692
L_9694:
	ld a,(hl)			;9694
	ld (de),a			;9695
	inc de			;9696
	inc hl			;9697
	djnz L_9694		;9698
	call L_96BA		;969a
	dec c			;969d
	jr nz,L_9692		;969e
	pop de			;96a0
	push hl			;96a1
	ld hl,0d300h		;96a2
	call L_962C		;96a5
	pop hl			;96a8
	ld a,004h		;96a9
	add a,e			;96ab
	cp 080h		;96ac
	jr nz,L_96B5		;96ae
	ld a,004h		;96b0
	add a,d			;96b2
	ld d,a			;96b3
	xor a			;96b4
L_96B5:
	ld e,a			;96b5
	pop bc			;96b6
	djnz L_968B		;96b7
	ret			;96b9
L_96BA:
	push hl			;96ba
	ld hl,00008h		;96bb
	ex de,hl			;96be
	or a			;96bf
	sbc hl,de		;96c0
	ex de,hl			;96c2
	pop hl			;96c3
	ret			;96c4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x96c5..0x96c9  (4 bytes)
DATA_96C5:
	defb 082h,02ah,002h,0d2h	; 96c5

; ======================================================================
; CODIGO 0x96c9..0x96d9  (16 bytes)
; ======================================================================


L_96C9:
	call L_981B		;96c9
	xor a			;96cc
	ld (096c7h),a		;96cd
	ld de,096d9h		;96d0
	ld hl,0fc00h		;96d3
	jp 0821bh		;96d6

; ----------------------------------------------------------------------
; DATOS vram_96D9: RLE a la VRAM hasta el 0; lo usa 0x96D6 (322 bytes)
;   0x96d9..0x981b  (322 bytes)
DATA_vram_96D9:
	defb 007h,000h,002h,001h,00eh,000h,002h,080h,00dh,000h,085h,001h,007h,003h,001h,001h	; 96d9  ................
	defb 00ah,000h,002h,080h,083h,0c0h,0e0h,080h,00ah,000h,082h,008h,006h,003h,003h,083h	; 96e9  ................
	defb 007h,004h,008h,008h,000h,083h,010h,020h,0e0h,003h,0c0h,082h,060h,010h,007h,000h	; 96f9  ....... ....`...
	defb 089h,001h,009h,005h,003h,0ffh,01fh,003h,005h,009h,004h,001h,004h,080h,089h,090h	; 9709  ................
	defb 0a0h,0c0h,0f8h,0ffh,0c0h,0a0h,090h,080h,021h,000h,082h,002h,001h,00eh,000h,082h	; 9719  ........!.......
	defb 040h,0e8h,020h,000h,082h,017h,002h,00eh,000h,082h,080h,040h,037h,000h,087h,020h	; 9729  @. ........@7..
	defb 000h,008h,004h,006h,003h,09fh,00ch,000h,084h,010h,000h,040h,080h,020h,000h,084h	; 9739  ...........@. ..
	defb 001h,002h,000h,008h,00ch,000h,087h,0f9h,0c0h,060h,020h,010h,000h,004h,028h,000h	; 9749  .........` ...(.
	defb 081h,005h,006h,000h,082h,001h,000h,004h,001h,084h,009h,005h,003h,0ffh,00ah,000h	; 9759  ................
	defb 002h,080h,084h,090h,0a0h,0c0h,0fch,020h,000h,086h,03fh,003h,005h,009h,001h,001h	; 9769  ....... ..?.....
	defb 00ah,000h,084h,0ffh,0c0h,0a0h,090h,004h,080h,082h,000h,080h,006h,000h,081h,0a0h	; 9779  ................
	defb 01eh,000h,081h,06fh,008h,000h,082h,001h,000h,003h,001h,083h,005h,003h,0ffh,009h	; 9789  ...o............
	defb 000h,087h,002h,004h,098h,0b8h,0f0h,0e0h,0ffh,007h,000h,081h,080h,007h,000h,082h	; 9799  ................
	defb 0a0h,002h,007h,000h,081h,001h,007h,000h,087h,0ffh,007h,00fh,01dh,018h,020h,040h	; 97a9  .............. @
	defb 009h,000h,083h,0ffh,0c0h,0a0h,003h,080h,082h,000h,080h,008h,000h,081h,0f6h,01eh	; 97b9  ................
	defb 000h,081h,03bh,005h,000h,083h,001h,000h,000h,003h,001h,085h,011h,00dh,00fh,007h	; 97c9  ................
	defb 0ffh,009h,000h,087h,080h,004h,088h,0b0h,0f0h,0e0h,0feh,00fh,000h,081h,080h,010h	; 97d9  ................
	defb 000h,086h,0bfh,007h,00fh,00dh,011h,020h,00ah,000h,08ah,0ffh,0e0h,0f0h,0b0h,008h	; 97e9  ....... ........
	defb 080h,080h,000h,000h,080h,006h,000h,081h,0ech,02dh,000h,082h,002h,02fh,00dh,000h	; 97f9  .........-.../..
	defb 083h,020h,040h,0c0h,020h,000h,083h,003h,002h,004h,00dh,000h,082h,0f4h,040h,01eh	; 9809  . @. .........@.
	defb 000h,000h	; 9819

; ======================================================================
; CODIGO 0x981b..0x9847  (44 bytes)
; ======================================================================


L_981B:
	ld a,0ffh		;981b
	ld (096c5h),a		;981d
L_9820:
	ld hl,096c5h		;9820
	inc (hl)			;9823
	ld a,0ffh		;9824
	ld (096c6h),a		;9826
L_9829:
	ld hl,096c6h		;9829
	inc (hl)			;982c
	or a			;982d
	ret			;982e
L_982F:
	ld (096c7h),a		;982f
L_9832:
	or a			;9832
	ret			;9833
L_9834:
	ld hl,096c7h		;9834
	dec (hl)			;9837
	ret			;9838
L_9839:
	ld a,(096c6h)		;9839
	or a			;983c
	ret			;983d
L_983E:
	call 08260h		;983e
	ld a,(096c5h)		;9841
	call 0822dh		;9844

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9847..0x9851  (10 bytes)
DATA_9847:
	defb 051h,098h,058h,098h,010h,099h,073h,099h,0ddh,099h	; 9847  Q.X...s...

; ======================================================================
; CODIGO 0x9851..0x9880  (47 bytes)
; ======================================================================


L_9851:
	ld a,010h		;9851
	call L_982F		;9853
	jr $-54		;9856
L_9858:
	call L_9834		;9858
	jr nz,$-41		;985b
	call L_9839		;985d
	push af			;9860
	call z,083cah		;9861
	pop af			;9864
	cp 008h		;9865
	jr z,L_9879		;9867
	ld hl,09880h		;9869
	call 0826ch		;986c
	call L_9A9C		;986f
	ld a,00dh		;9872
	call L_982F		;9874
	jr $-78		;9877
L_9879:
	ld a,020h		;9879
	call L_982F		;987b
	jr $-94		;987e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9880..0x9910  (144 bytes)
DATA_9880:
	defb 090h,098h,0a0h,098h,0b0h,098h,0c0h,098h,0d0h,098h,0e0h,098h,0f0h,098h,000h,099h	; 9880  ................
	defb 005h,000h,000h,009h,000h,000h,00ah,000h,000h,00bh,000h,000h,00dh,000h,000h,0ffh	; 9890  ................
	defb 005h,011h,001h,009h,011h,001h,00ah,011h,001h,00bh,011h,001h,00dh,011h,001h,0ffh	; 98a0  ................
	defb 005h,022h,002h,009h,022h,002h,00ah,022h,002h,00bh,022h,002h,00dh,012h,002h,0ffh	; 98b0  ."..".."..".....
	defb 005h,023h,002h,009h,033h,003h,00ah,033h,003h,00bh,033h,003h,00dh,023h,003h,0ffh	; 98c0  .#..3..3..3..#..
	defb 005h,024h,002h,009h,044h,004h,00ah,043h,004h,00bh,044h,004h,00dh,024h,004h,0ffh	; 98d0  .$..D..C..D..$..
	defb 005h,025h,002h,009h,055h,005h,00ah,053h,004h,00bh,055h,005h,00dh,035h,005h,0ffh	; 98e0  .%..U..S..U..5..
	defb 005h,026h,002h,009h,066h,005h,00ah,063h,004h,00bh,065h,006h,00dh,036h,006h,0ffh	; 98f0  .&..f..c..e..6..
	defb 005h,027h,002h,009h,067h,005h,00ah,073h,004h,00bh,075h,006h,00dh,037h,007h,0ffh	; 9900  .'..g..s..u..7..

; ======================================================================
; CODIGO 0x9910..0x99ac  (156 bytes)
; ======================================================================


L_9910:
	call L_9834		;9910
	jp nz,L_9832		;9913
	call L_9839		;9916
	call z,083cfh		;9919
	xor a			;991c
	ld (096c8h),a		;991d
	ld a,(096c6h)		;9920
	ld b,a			;9923
	ld hl,00840h		;9924
	call 08221h		;9927
	ld a,b			;992a
	ld de,01838h		;992b
	call 08206h		;992e
	ld bc,0d001h		;9931
L_9934:
	ld a,040h		;9934
	push hl			;9936
	push de			;9937
	push bc			;9938
	call 0820ch		;9939
	pop bc			;993c
	pop de			;993d
	pop hl			;993e
	ld a,008h		;993f
	call 08206h		;9941
	ld a,008h		;9944
	call 08221h		;9946
	ld a,(096c8h)		;9949
	inc a			;994c
	ld (096c8h),a		;994d
	cp 00ah		;9950
	jp z,L_9958		;9952
	jp L_9934		;9955
L_9958:
	ld a,(096c6h)		;9958
	cp 007h		;995b
	jp z,L_9968		;995d
	ld a,002h		;9960
	call L_982F		;9962
	jp L_9829		;9965
L_9968:
	call L_93BC		;9968
	ld a,060h		;996b
	call L_982F		;996d
	jp L_9820		;9970
L_9973:
	call L_9834		;9973
	jp nz,L_9832		;9976
	call L_9839		;9979
	call z,083c5h		;997c
	ld a,(096c6h)		;997f
	ld hl,099ach		;9982
	call 08221h		;9985
	ld a,(hl)			;9988
	cp 0ffh		;9989
	jp z,L_99A6		;998b
	push af			;998e
	ld a,00eh		;998f
	ld (0d26ch),a		;9991
	pop af			;9994
	ld de,01040h		;9995
	ld hl,0d2f0h		;9998
	call L_99B4		;999b
	ld a,00ah		;999e
	call L_982F		;99a0
	jp L_9829		;99a3
L_99A6:
	call 0826fh		;99a6
	jp L_9820		;99a9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99ac..0x99b4  (8 bytes)
DATA_99AC:
	defb 090h,0a0h,0b0h,0c0h,0d0h,0e0h,0ffh,0ffh	; 99ac  ........

; ======================================================================
; CODIGO 0x99b4..0x99df  (43 bytes)
; ======================================================================


L_99B4:
	push af			;99b4
	ld a,010h		;99b5
	add a,d			;99b7
	ld b,a			;99b8
	ld a,010h		;99b9
	add a,e			;99bb
	ld c,a			;99bc
	pop af			;99bd
	push bc			;99be
	push de			;99bf
	call L_99CD		;99c0
	ld d,b			;99c3
	call L_99CD		;99c4
	pop de			;99c7
	ld e,c			;99c8
	call L_99CD		;99c9
	pop de			;99cc
L_99CD:
	ld (hl),e			;99cd
	inc hl			;99ce
	ld (hl),d			;99cf
	inc hl			;99d0
	ld (hl),a			;99d1
	inc hl			;99d2
	push af			;99d3
	ld a,(0d26ch)		;99d4
	ld (hl),a			;99d7
	pop af			;99d8
	inc hl			;99d9
	add a,004h		;99da
	ret			;99dc
L_99DD:
	scf			;99dd
	ret			;99de

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99df..0x99e7  (8 bytes)
DATA_99DF:
	defb 000h,000h,000h,03eh,0ffh,032h,0dfh,099h	; 99df  ...>.2..

; ======================================================================
; CODIGO 0x99e7..0x9a06  (31 bytes)
; ======================================================================


L_99E7:
	ld hl,099dfh		;99e7
	inc (hl)			;99ea
	ld a,0ffh		;99eb
	ld (099e0h),a		;99ed
L_99F0:
	ld hl,099e0h		;99f0
	inc (hl)			;99f3
	or a			;99f4
	ret			;99f5
L_99F6:
	ld (099e1h),a		;99f6
	or a			;99f9
	ret			;99fa
L_99FB:
	ld hl,099e1h		;99fb
	dec (hl)			;99fe
	ret			;99ff
L_9A00:
	ld a,(099dfh)		;9a00
	call 0822dh		;9a03

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a06..0x9a10  (10 bytes)
DATA_9A06:
	defb 010h,09ah,018h,09ah,022h,09ah,02ah,09ah,08dh,09ah	; 9a06  ....".*...

; ======================================================================
; CODIGO 0x9a10..0x9a4f  (63 bytes)
; ======================================================================


L_9A10:
	ld a,024h		;9a10
	call L_99F6		;9a12
	jp L_99E7		;9a15
L_9A18:
	call L_99FB		;9a18
	ret nz			;9a1b
	call 0841fh		;9a1c
	jp L_99E7		;9a1f
L_9A22:
	ld a,001h		;9a22
	call L_99F6		;9a24
	jp L_99E7		;9a27
L_9A2A:
	call L_99FB		;9a2a
	ret nz			;9a2d
	ld a,(099e0h)		;9a2e
	cp 00ah		;9a31
	jp z,L_9A47		;9a33
	ld hl,09a4fh		;9a36
	call 0826ch		;9a39
	call L_9A9C		;9a3c
	ld a,010h		;9a3f
	call L_99F6		;9a41
	jp L_99F0		;9a44
L_9A47:
	ld a,008h		;9a47
	call L_99F6		;9a49
	jp L_99E7		;9a4c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a4f..0x9a8d  (62 bytes)
DATA_9A4F:
	defb 063h,09ah,06ah,09ah,071h,09ah,078h,09ah,07fh,09ah,086h,09ah,07fh,09ah,078h,09ah	; 9a4f  c.j.q.x.......x.
	defb 071h,09ah,06ah,09ah,005h,027h,002h,00dh,037h,007h,0ffh,005h,037h,003h,00dh,037h	; 9a5f  q.j..'..7...7..7
	defb 006h,0ffh,005h,037h,004h,00dh,037h,005h,0ffh,005h,037h,005h,00dh,037h,004h,0ffh	; 9a6f  ...7..7...7..7..
	defb 005h,037h,006h,00dh,037h,003h,0ffh,005h,037h,007h,00dh,037h,002h,0ffh	; 9a7f  .7..7...7..7..

; ======================================================================
; CODIGO 0x9a8d..0x9aaa  (29 bytes)
; ======================================================================


L_9A8D:
	call L_99FB		;9a8d
	ret nz			;9a90
	ld a,008h		;9a91
	call L_99FB		;9a93
	ld a,002h		;9a96
	ld (099dfh),a		;9a98
	ret			;9a9b
L_9A9C:
	ld a,(hl)			;9a9c
	inc hl			;9a9d
	inc a			;9a9e
	ret z			;9a9f
	dec a			;9aa0
	ld d,(hl)			;9aa1
	inc hl			;9aa2
	ld e,(hl)			;9aa3
	inc hl			;9aa4
	call 08245h		;9aa5
	jr L_9A9C		;9aa8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9aaa..0x9c00  (342 bytes)
DATA_9AAA:
	defb 0f7h,008h,012h,0c9h,021h,000h,0d3h,0afh,001h,0ffh,003h,0cdh,0bbh,09ah,0ebh,0beh	; 9aaa  ....!...........
	defb 0c9h,008h,008h,086h,023h,008h,00bh,079h,0b0h,020h,0f7h,008h,0c9h,04bh,004h,000h	; 9aba  ....#..y. ...K..
	defb 00ch,023h,004h,000h,006h,039h,004h,000h,010h,029h,004h,000h,010h,049h,004h,000h	; 9aca  .#...9...)...I..
	defb 002h,04dh,001h,000h,003h,097h,001h,000h,003h,05dh,003h,000h,003h,0f0h,003h,000h	; 9ada  .M.......]......
	defb 003h,008h,008h,008h,008h,008h,008h,002h,00ch,001h,006h,000h,000h,01eh,021h,020h	; 9aea  ..............!
	defb 040h,040h,040h,040h,040h,040h,040h,020h,000h,000h,000h,000h,000h,010h,020h,020h	; 9afa  @@@@@@@ ......
	defb 020h,020h,020h,026h,038h,0d0h,011h,016h,008h,001h,006h,000h,000h,000h,01ch,022h	; 9b0a     &8.........."
	defb 022h,041h,041h,041h,041h,042h,003h,004h,000h,000h,000h,000h,000h,000h,000h,0feh	; 9b1a  "AAAAB..........
	defb 000h,000h,000h,000h,008h,030h,000h,004h,018h,000h,000h,000h,000h,000h,000h,01fh	; 9b2a  .....0..........
	defb 020h,020h,040h,040h,040h,020h,020h,010h,00ch,003h,000h,000h,008h,010h,010h,010h	; 9b3a    @@@  .........
	defb 090h,050h,050h,092h,0fch,010h,011h,016h,010h,009h,00ah,000h,000h,000h,000h,000h	; 9b4a  .PP.............
	defb 003h,044h,024h,012h,00fh,000h,000h,000h,000h,000h,000h,000h,020h,040h,040h,044h	; 9b5a  .D$......... @@D
	defb 0f8h,020h,020h,020h,020h,024h,0f9h,026h,020h,011h,006h,000h,000h,000h,000h,000h	; 9b6a  .    $.& .......
	defb 01fh,020h,020h,041h,042h,046h,043h,040h,040h,000h,000h,000h,080h,000h,002h,084h	; 9b7a  .  ABFC@@.......
	defb 0c4h,0a4h,0a2h,092h,08ah,086h,040h,044h,058h,042h,00ch,000h,000h,001h,001h,000h	; 9b8a  ......@DXB......
	defb 000h,038h,046h,041h,080h,080h,080h,000h,000h,000h,000h,000h,008h,010h,010h,012h	; 9b9a  .8FA............
	defb 0fch,008h,008h,048h,024h,020h,022h,02ch,041h,006h,000h,000h,000h,060h,018h,007h	; 9baa  ...H$ ",A....`..
	defb 000h,000h,00ch,010h,010h,020h,020h,020h,020h,000h,000h,000h,000h,008h,010h,092h	; 9bba  .....    .......
	defb 07ch,010h,010h,090h,090h,088h,089h,006h,000h,001h,006h,000h,000h,000h,00ch,003h	; 9bca  |...............
	defb 002h,041h,041h,040h,040h,020h,020h,011h,00eh,000h,000h,000h,000h,010h,020h,020h	; 9bda  .AA@@  .......
	defb 010h,010h,008h,008h,008h,008h,011h,016h,020h,0c1h,006h,000h,000h,000h,000h,000h	; 9bea  ........ .......
	defb 000h,020h,020h,020h,020h,010h	; 9bfa
