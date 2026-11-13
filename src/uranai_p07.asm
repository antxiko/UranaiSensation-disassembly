; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p07 (se ejecuta en 0x9200)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09200


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l9425h:	equ 0x09425

; ======================================================================
; CODIGO 0x9200..0x921b  (27 bytes)
; ======================================================================


L_9200:
	jp L_92B8		;9200
L_9203:
	jp L_9537		;9203
L_9206:
	jp L_955F		;9206
L_9209:
	jp L_95C0		;9209
L_920C:
	jp L_95CA		;920c
L_920F:
	jp L_9511		;920f
L_9212:
	jp L_95F2		;9212
L_9215:
	jp L_9570		;9215
L_9218:
	jp 09a00h		;9218

; ----------------------------------------------------------------------
; DATOS sin identificar  0x921b..0x92b8  (157 bytes)
DATA_921B:
	defb 0cdh,047h,092h,0cdh,009h,082h,03eh,002h,0cdh,0a2h,092h,021h,004h,0c0h,022h,0d6h	; 921b  .G....>....!..".
	defb 092h,03eh,03ah,0cdh,0cah,092h,03eh,001h,0cdh,0a2h,092h,021h,004h,0a0h,022h,0d6h	; 922b  .>:...>....!..".
	defb 092h,03eh,0ffh,0cdh,0cah,092h,0cdh,0d5h,093h,0c3h,051h,082h,0cdh,0c9h,096h,0cdh	; 923b  .>........Q.....
	defb 012h,082h,0cdh,051h,082h,0cdh,07ch,092h,0afh,0cdh,0a2h,092h,03eh,0e9h,0cdh,0cah	; 924b  ...Q..|.....>...
	defb 092h,021h,0ebh,092h,011h,000h,000h,0cdh,075h,092h,03eh,003h,0cdh,0a2h,092h,03eh	; 925b  .!......u.>....>
	defb 0cfh,0cdh,0cah,092h,021h,099h,093h,011h,080h,000h,03eh,001h,00eh,020h,0c3h,018h	; 926b  ....!.....>.. ..
	defb 082h,021h,082h,092h,0c3h,0dbh,082h,000h,000h,046h,003h,050h,000h,034h,002h,023h	; 927b  .!.......F.P.4.#
	defb 001h,000h,000h,044h,004h,074h,003h,070h,000h,000h,000h,000h,000h,000h,000h,055h	; 928b  ...D.t.p.......U
	defb 005h,000h,000h,077h,007h,000h,000h,032h,0e4h,0d1h,03ah,0e4h,0d1h,0cdh,0b9h,092h	; 929b  ...w...2..:.....
	defb 011h,000h,0b0h,0cdh,015h,082h,038h,0f2h,03eh,0ffh,032h,0fdh,0e0h	; 92ab  ......8.>.2..

; ======================================================================
; CODIGO 0x92b8..0x92cd  (21 bytes)
; ======================================================================


L_92B8:
	call 0823ch		;92b8
	ret z			;92bb
	ld a,(0d1d7h)		;92bc
	or a			;92bf
	jr z,L_92C7		;92c0
	cp 002h		;92c2
	call nz,L_94F8		;92c4
L_92C7:
	ld a,(0d1d7h)		;92c7
	call 0822dh		;92ca

; ----------------------------------------------------------------------
; DATOS saltos_92CD: 13 destinos del despachador (call 0x822D en 0x92CA) (25
;   bytes)
;   0x92cd..0x92e6  (25 bytes)
DATA_saltos_92CD:
	defw 092e7h,09312h,09322h,09349h,09366h,0936fh,09378h,09396h	; 92cd
	defw 0947fh,09489h,0949dh,094cdh	; 92dd  -> L_947F L_9489 L_949D L_94CD
	defb 0deh	; 92e5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92e6..0x92e7  (1 bytes)
DATA_92E6:
	defb 094h	; 92e6

; ======================================================================
; CODIGO 0x92e7..0x939c  (181 bytes)
; ======================================================================


L_92E7:
	xor a			;92e7
	ld (09218h),a		;92e8
	ld (09219h),a		;92eb
	ld (0d1dch),a		;92ee
	ld (0d1ffh),a		;92f1
	ld hl,09286h		;92f4
	ld de,09287h		;92f7
	ld bc,0002fh		;92fa
	ld (hl),000h		;92fd
	ldir		;92ff
	ld a,008h		;9301
	call 08248h		;9303
	call 09800h		;9306
L_9309:
	ld hl,0d1d7h		;9309
	inc (hl)			;930c
L_930D:
	xor a			;930d
	ld (0d1d8h),a		;930e
	ret			;9311
L_9312:
	ld a,(0d1c8h)		;9312
	cp 010h		;9315
	jr z,L_931D		;9317
	call 09803h		;9319
	ret nc			;931c
L_931D:
	call 0842eh		;931d
	jr L_9309		;9320
L_9322:
	call 0825ah		;9322
	ret nz			;9325
	ld hl,0d290h		;9326
	ld de,00004h		;9329
	ld b,009h		;932c
L_932E:
	ld (hl),0e0h		;932e
	add hl,de			;9330
	djnz L_932E		;9331
	ld a,009h		;9333
	call 08248h		;9335
	call 09800h		;9338
	ld a,00ah		;933b
	call 08248h		;933d
	xor a			;9340
	ld (0d1e5h),a		;9341
	call 09800h		;9344
L_9347:
	jr L_9309		;9347
L_9349:
	ld a,00bh		;9349
	ld de,07007h		;934b
	call 08245h		;934e
	call 09803h		;9351
	ld a,(0d1e5h)		;9354
	or a			;9357
	ret nz			;9358
	call 0981eh		;9359
	ld a,00bh		;935c
	call 08248h		;935e
	call 09800h		;9361
	jr L_9347		;9364
L_9366:
	call 09803h		;9366
	ret nc			;9369
	call 08203h		;936a
L_936D:
	jr L_9347		;936d
L_936F:
	call 08257h		;936f
	ret nz			;9372
	call 08251h		;9373
	jr L_936D		;9376
L_9378:
	call 09806h		;9378
	ret c			;937b
	call 09812h		;937c
	xor a			;937f
	ld (0d217h),a		;9380
	ld (0d1deh),a		;9383
L_9386:
	ld a,0cdh		;9386
	ld (09425h),a		;9388
	ld hl,L_930D		;938b
	ld (09426h),hl		;938e
	call 09809h		;9391
	jr L_936D		;9394
L_9396:
	ld a,(0d1d8h)		;9396
	call 0822dh		;9399

; ----------------------------------------------------------------------
; DATOS saltos_939C: 8 destinos del despachador (call 0x822D en 0x9399) (15
;   bytes)
;   0x939c..0x93ab  (15 bytes)
DATA_saltos_939C:
	defw 093ach,093c6h,093e1h,093e6h,0940eh,09421h,0942ah	; 939c
	defb 055h	; 93aa

; ----------------------------------------------------------------------
; DATOS sin identificar  0x93ab..0x93ac  (1 bytes)
DATA_93AB:
	defb 094h	; 93ab

; ======================================================================
; CODIGO 0x93ac..0x9517  (363 bytes)
; ======================================================================


L_93AC:
	call 0980ch		;93ac
	jp nc,0982dh		;93af
	ld a,(0d217h)		;93b2
	cp 004h		;93b5
	jp z,L_9466		;93b7
	xor a			;93ba
	ld (0d1dch),a		;93bb
L_93BE:
	call 09815h		;93be
L_93C1:
	ld hl,0d1d8h		;93c1
	inc (hl)			;93c4
	ret			;93c5
L_93C6:
	call 0980ch		;93c6
	ret nc			;93c9
	ld a,(0d1dch)		;93ca
	cp 002h		;93cd
	jp z,L_93FC		;93cf
	or a			;93d2
	jp nz,L_946C		;93d3
	call 09818h		;93d6
	ld a,(0d217h)		;93d9
	call 0980fh		;93dc
L_93DF:
	jr $-114		;93df
L_93E1:
	call 0981eh		;93e1
	jr L_93C1		;93e4
L_93E6:
	call 0980ch		;93e6
	ret nc			;93e9
	ld a,(0d1eeh)		;93ea
	cp 005h		;93ed
	jr z,L_93F6		;93ef
	call 09824h		;93f1
	jr L_93C1		;93f4
L_93F6:
	call 09821h		;93f6
	jp L_94F0		;93f9
L_93FC:
	call 09830h		;93fc
	jp L_94F0		;93ff
L_9402:
	ld a,002h		;9402
	ld (0d1d8h),a		;9404
	ld a,001h		;9407
	ld (0d1deh),a		;9409
	jr L_93E1		;940c
L_940E:
	call 0980ch		;940e
	jp nc,09827h		;9411
	call 08242h		;9414
	jr nz,L_9402		;9417
	call 0842eh		;9419
	call L_93C1		;941c
	jr L_93C1		;941f
L_9421:
	call 0825dh		;9421
	ret nz			;9424
L_9425:
	call L_930D		;9425
	jr L_93BE		;9428
L_942A:
	call 0825ah		;942a
	ret nz			;942d
	ld a,(0d217h)		;942e
	call 0980fh		;9431
	call L_970E		;9434
	ld a,00ch		;9437
	call 08248h		;9439
	call 09809h		;943c
	ld a,01dh		;943f
	call 08248h		;9441
	call 09800h		;9444
	call L_97A9		;9447
	ld a,00bh		;944a
	call 08248h		;944c
	call 08251h		;944f
	jp L_93C1		;9452
L_9455:
	call 083e8h		;9455
	ld a,0c3h		;9458
	ld (l9425h),a		;945a
	ld hl,L_93F6		;945d
	ld (l9425h+1),hl		;9460
	jp 0982ah		;9463
L_9466:
	ld a,001h		;9466
	ld (0d1e9h),a		;9468
	ret			;946b
L_946C:
	call 0981bh		;946c
	jr c,L_9474		;946f
	jp L_93C1		;9471
L_9474:
	ld a,005h		;9474
	ld (0d1d8h),a		;9476
	add a,080h		;9479
	ld (0d1d9h),a		;947b
	ret			;947e
L_947F:
	call 09806h		;947f
	ret c			;9482
	call 0842eh		;9483
L_9486:
	jp L_93DF		;9486
L_9489:
	call 0825ah		;9489
	ret nz			;948c
	ld a,00ch		;948d
	call 08248h		;948f
	call 09806h		;9492
	call 09809h		;9495
	call 0980ch		;9498
	jr L_9486		;949b
L_949D:
	ld a,(0d1c8h)		;949d
	and 080h		;94a0
	jr nz,L_94C8		;94a2
	call 09818h		;94a4
	ld a,(0d1c3h)		;94a7
	and 007h		;94aa
	jr nz,L_94B8		;94ac
	ld a,(0d1c6h)		;94ae
	or a			;94b1
	jp nz,L_94B8		;94b2
	call 0980fh		;94b5
L_94B8:
	call 09812h		;94b8
	ld a,(0d1c7h)		;94bb
	or a			;94be
	ret nz			;94bf
	call 08203h		;94c0
L_94C3:
	call 0981bh		;94c3
	jr L_9486		;94c6
L_94C8:
	call L_94C3		;94c8
	jr L_94D1		;94cb
L_94CD:
	call 08257h		;94cd
	ret nz			;94d0
L_94D1:
	xor a			;94d1
	ld (0d1ffh),a		;94d2
	call 09815h		;94d5
	call 0842eh		;94d8
	jp L_9486		;94db
L_94DE:
	call 0825ah		;94de
	ret nz			;94e1
	call 0981eh		;94e2
	ld a,00bh		;94e5
	call 08248h		;94e7
	call 08251h		;94ea
	call 083e8h		;94ed
L_94F0:
	ld a,006h		;94f0
	ld (0d1d7h),a		;94f2
	jp L_9386		;94f5
L_94F8:
	ld a,(0d1c3h)		;94f8
	and 007h		;94fb
	ret nz			;94fd
	ld a,(09218h)		;94fe
	ld b,a			;9501
	ld a,003h		;9502
	call L_9570		;9504
	ret c			;9507
	ld a,(09218h)		;9508
	xor 001h		;950b
	ld (09218h),a		;950d
	ret			;9510
L_9511:
	ld hl,09517h		;9511
	jp 082dbh		;9514

; ----------------------------------------------------------------------
; DATOS paleta_9517: paleta: 16 colores de 2 bytes; lo usa 0x9514 (32 bytes)
;   0x9517..0x9537  (32 bytes)
DATA_paleta_9517:
	defb 000h,000h,020h,004h,000h,000h,000h,000h,073h,002h,007h,006h,007h,002h,005h,000h	; 9517  .. .....s.......
	defb 070h,000h,070h,004h,074h,007h,000h,000h,055h,005h,041h,007h,077h,007h,000h,000h	; 9527  p.p.t...U.A.w...

; ======================================================================
; CODIGO 0x9537..0x9569  (50 bytes)
; ======================================================================


L_9537:
	ld (0d1e4h),a		;9537
L_953A:
	ld a,(0d1e4h)		;953a
	call L_954E		;953d
	ld de,0b000h		;9540
	call 08215h		;9543
	jr c,L_953A		;9546
	ld a,0ffh		;9548
	ld (0e0fdh),a		;954a
	ret			;954d
L_954E:
	add a,a			;954e
	add a,a			;954f
	ld hl,09702h		;9550
	call 08221h		;9553
	ld c,(hl)			;9556
	inc hl			;9557
	ld b,(hl)			;9558
	inc hl			;9559
	ld a,(hl)			;955a
	inc hl			;955b
	ld h,(hl)			;955c
	ld l,a			;955d
	ret			;955e
L_955F:
	ld (0956ah),a		;955f
	ld ix,09569h		;9562
	jp L_95F2		;9566

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9569..0x9570  (7 bytes)
DATA_9569:
	defb 020h,0c4h,004h,0a0h,000h,0b0h,080h	; 9569

; ======================================================================
; CODIGO 0x9570..0x95ab  (59 bytes)
; ======================================================================


L_9570:
	djnz L_958B		;9570
	ld d,a			;9572
	ld a,(09219h)		;9573
	sub 001h		;9576
	ld (09219h),a		;9578
	ld c,a			;957b
	ccf			;957c
	ret nc			;957d
	ld a,(09219h)		;957e
	ld b,a			;9581
	rlca			;9582
	rlca			;9583
	rlca			;9584
	rlca			;9585
	and 0f0h		;9586
	or b			;9588
	jr L_95A2		;9589
L_958B:
	ld d,a			;958b
	ld a,(09219h)		;958c
	inc a			;958f
	ld (09219h),a		;9590
	ld c,a			;9593
	cp 008h		;9594
	ret nc			;9596
	ld a,(09219h)		;9597
	ld b,a			;959a
	rlca			;959b
	rlca			;959c
	rlca			;959d
	rlca			;959e
	and 0f0h		;959f
	or b			;95a1
L_95A2:
	ld b,a			;95a2
	ld a,d			;95a3
	ld d,b			;95a4
	ld e,c			;95a5
	call 08245h		;95a6
	scf			;95a9
	ret			;95aa

; ----------------------------------------------------------------------
; DATOS sin identificar  0x95ab..0x95c0  (21 bytes)
DATA_95AB:
	defb 021h,080h,0f6h,087h,0cdh,021h,082h,0cdh,0a5h,082h,03ah,006h,000h,04fh,0edh,040h	; 95ab  !....!....:..O.@
	defb 0f5h,0f1h,0edh,048h,0c9h	; 95bb

; ======================================================================
; CODIGO 0x95c0..0x96ee  (302 bytes)
; ======================================================================


L_95C0:
	call L_95CA		;95c0
	ld ix,0b200h		;95c3
	jp 082cch		;95c7
L_95CA:
	ld (0d1e4h),a		;95ca
L_95CD:
	ld a,(0d1e4h)		;95cd
	call L_95E1		;95d0
	ld de,0b200h		;95d3
	call 08215h		;95d6
	jr c,L_95CD		;95d9
	ld a,0ffh		;95db
	ld (0e0fdh),a		;95dd
	ret			;95e0
L_95E1:
	add a,a			;95e1
	add a,a			;95e2
	ld hl,096eeh		;95e3
	call 08221h		;95e6
	ld c,(hl)			;95e9
	inc hl			;95ea
	ld b,(hl)			;95eb
	inc hl			;95ec
	ld a,(hl)			;95ed
	inc hl			;95ee
	ld h,(hl)			;95ef
	ld l,a			;95f0
	ret			;95f1
L_95F2:
	ld a,(ix+000h)		;95f2
	rla			;95f5
	ret c			;95f6
	call L_9601		;95f7
	ld de,00006h		;95fa
	add ix,de		;95fd
	jr L_95F2		;95ff
L_9601:
	push bc			;9601
	bit 6,(ix+000h)		;9602
	jr nz,L_9627		;9606
	bit 4,(ix+000h)		;9608
	jr nz,L_962F		;960c
	call L_9616		;960e
	call L_9637		;9611
	pop bc			;9614
	ret			;9615
L_9616:
	ld b,(ix+001h)		;9616
	ld l,(ix+002h)		;9619
	ld h,(ix+003h)		;961c
	ld e,(ix+004h)		;961f
	ld d,(ix+005h)		;9622
	ex de,hl			;9625
	ret			;9626
L_9627:
	call L_9616		;9627
	call L_9641		;962a
	pop bc			;962d
	ret			;962e
L_962F:
	call L_9616		;962f
	call L_964B		;9632
	pop bc			;9635
	ret			;9636
L_9637:
	push bc			;9637
	ld b,001h		;9638
	call L_966A		;963a
	pop bc			;963d
	djnz L_9637		;963e
	ret			;9640
L_9641:
	push bc			;9641
	ld b,001h		;9642
	call L_967F		;9644
	pop bc			;9647
	djnz L_9641		;9648
	ret			;964a
L_964B:
	push bc			;964b
	ld b,001h		;964c
	call L_96B4		;964e
	pop bc			;9651
	djnz L_964B		;9652
	ret			;9654
L_9655:
	push de			;9655
	ld b,008h		;9656
L_9658:
	push bc			;9658
	ld bc,00004h		;9659
	call 08224h		;965c
	ex de,hl			;965f
	ld bc,00080h		;9660
	add hl,bc			;9663
	ex de,hl			;9664
	pop bc			;9665
	djnz L_9658		;9666
	pop de			;9668
	ret			;9669
L_966A:
	push bc			;966a
	call L_9655		;966b
	ld a,004h		;966e
	add a,e			;9670
	cp 080h		;9671
	jr nz,L_967A		;9673
	ld a,004h		;9675
	add a,d			;9677
	ld d,a			;9678
	xor a			;9679
L_967A:
	ld e,a			;967a
	pop bc			;967b
	djnz L_966A		;967c
	ret			;967e
L_967F:
	push bc			;967f
	push de			;9680
	ld de,0d303h		;9681
	ld c,008h		;9684
L_9686:
	ld b,004h		;9686
L_9688:
	ld a,(hl)			;9688
	rrca			;9689
	rrca			;968a
	rrca			;968b
	rrca			;968c
	ld (de),a			;968d
	dec de			;968e
	inc hl			;968f
	djnz L_9688		;9690
	ld a,008h		;9692
	call 08206h		;9694
	dec c			;9697
	jr nz,L_9686		;9698
	pop de			;969a
	push hl			;969b
	ld hl,0d300h		;969c
	call L_9655		;969f
	pop hl			;96a2
	ld a,004h		;96a3
	add a,e			;96a5
	cp 080h		;96a6
	jr nz,L_96AF		;96a8
	ld a,004h		;96aa
	add a,d			;96ac
	ld d,a			;96ad
	xor a			;96ae
L_96AF:
	ld e,a			;96af
	pop bc			;96b0
	djnz L_967F		;96b1
	ret			;96b3
L_96B4:
	push bc			;96b4
	push de			;96b5
	ld de,0d31ch		;96b6
	ld c,008h		;96b9
L_96BB:
	ld b,004h		;96bb
L_96BD:
	ld a,(hl)			;96bd
	ld (de),a			;96be
	inc de			;96bf
	inc hl			;96c0
	djnz L_96BD		;96c1
	call L_96E3		;96c3
	dec c			;96c6
	jr nz,L_96BB		;96c7
	pop de			;96c9
	push hl			;96ca
	ld hl,0d300h		;96cb
	call L_9655		;96ce
	pop hl			;96d1
	ld a,004h		;96d2
	add a,e			;96d4
	cp 080h		;96d5
	jr nz,L_96DE		;96d7
	ld a,004h		;96d9
	add a,d			;96db
	ld d,a			;96dc
	xor a			;96dd
L_96DE:
	ld e,a			;96de
	pop bc			;96df
	djnz L_96B4		;96e0
	ret			;96e2
L_96E3:
	push hl			;96e3
	ld hl,00008h		;96e4
	ex de,hl			;96e7
	or a			;96e8
	sbc hl,de		;96e9
	ex de,hl			;96eb
	pop hl			;96ec
	ret			;96ed

; ----------------------------------------------------------------------
; DATOS sin identificar  0x96ee..0x970e  (32 bytes)
DATA_96EE:
	defb 049h,004h,000h,002h,04dh,001h,000h,003h,097h,001h,000h,003h,05dh,003h,000h,003h	; 96ee  I...M.......]...
	defb 0f0h,003h,000h,003h,07eh,001h,000h,00fh,08dh,001h,000h,00ah,0eeh,001h,000h,010h	; 96fe  ....~...........

; ======================================================================
; CODIGO 0x970e..0x97c4  (182 bytes)
; ======================================================================


L_970E:
	ld a,(0d1d6h)		;970e
	ld hl,097c4h		;9711
	call 0826ch		;9714
	ld (L_9734+1),hl		;9717
	ld hl,0049bh		;971a
	ld (L_974D+1),hl		;971d
	ld hl,00493h		;9720
	ld (L_9766+1),hl		;9723
	ld hl,0048bh		;9726
	ld (L_977F+1),hl		;9729
	ld a,0c9h		;972c
	ld (04000h),a		;972e
	ld (04003h),a		;9731
L_9734:
	ld bc,0002eh		;9734
	ld de,09800h		;9737
	ld hl,00b00h		;973a
	call 08215h		;973d
	jr c,L_9734		;9740
	ld hl,09800h		;9742
	ld de,06a00h		;9745
	ld bc,01600h		;9748
	ldir		;974b
L_974D:
	ld bc,0049bh		;974d
	ld de,09800h		;9750
	ld hl,00500h		;9753
	call 08215h		;9756
	jr c,L_974D		;9759
	ld hl,09800h		;975b
	ld de,06000h		;975e
	ld bc,00a00h		;9761
	ldir		;9764
L_9766:
	ld bc,00493h		;9766
	ld de,09800h		;9769
	ld hl,00800h		;976c
	call 08215h		;976f
	jr c,L_9766		;9772
	ld hl,09800h		;9774
	ld de,05000h		;9777
	ld bc,01000h		;977a
	ldir		;977d
L_977F:
	ld bc,0048bh		;977f
	ld de,09800h		;9782
	ld hl,00800h		;9785
	call 08215h		;9788
	jr c,L_977F		;978b
	ld hl,09806h		;978d
	ld de,04006h		;9790
	ld bc,00ffah		;9793
	ldir		;9796
	ld hl,09800h		;9798
	ld de,04000h		;979b
	ld bc,00006h		;979e
	ldir		;97a1
	ld a,0ffh		;97a3
	ld (0e0fdh),a		;97a5
	ret			;97a8
L_97A9:
	ld hl,0002eh		;97a9
	ld (L_9734+1),hl		;97ac
	ld hl,00029h		;97af
	ld (L_974D+1),hl		;97b2
	ld hl,00021h		;97b5
	ld (L_9766+1),hl		;97b8
	ld hl,00019h		;97bb
	ld (L_977F+1),hl		;97be
	jp L_9734		;97c1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x97c4..0x9800  (60 bytes)
DATA_97C4:
	defb 008h,001h,013h,001h,0fdh,000h,060h,003h,005h,000h,083h,001h,000h,000h,003h,001h	; 97c4  ......`.........
	defb 085h,011h,00dh,00fh,007h,0ffh,009h,000h,087h,080h,004h,088h,0b0h,0f0h,0e0h,0feh	; 97d4  ................
	defb 00fh,000h,081h,080h,010h,000h,086h,0bfh,007h,00fh,00dh,011h,020h,00ah,000h,08ah	; 97e4  ............ ...
	defb 0ffh,0e0h,0f0h,0b0h,008h,080h,080h,000h,000h,080h,006h,000h	; 97f4  ............
