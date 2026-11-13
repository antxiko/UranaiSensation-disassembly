; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p1F (se ejecuta en 0x9200)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09200


; ======================================================================
; CODIGO 0x9200..0x921b  (27 bytes)
; ======================================================================


L_9200:
	jp L_9234		;9200
L_9203:
	jp L_95A2		;9203
L_9206:
	jp L_95CA		;9206
L_9209:
	jp L_95DB		;9209
L_920C:
	jp L_95E5		;920c
L_920F:
	jp L_9264		;920f
L_9212:
	jp L_960D		;9212
L_9215:
	jp L_9264		;9215
L_9218:
	jp 09a00h		;9218

; ----------------------------------------------------------------------
; DATOS sin identificar  0x921b..0x9234  (25 bytes)
DATA_921B:
	defb 0cdh,047h,092h,0cdh,009h,082h,03eh,002h,0cdh,0a2h,092h,021h,004h,0c0h,022h,0d6h	; 921b  .G....>....!..".
	defb 092h,03eh,0cdh,03ch,082h,0c8h,03ah,065h,095h	; 922b  .>.<..:e.

; ======================================================================
; CODIGO 0x9234..0x923e  (10 bytes)
; ======================================================================


L_9234:
	call 0823ch		;9234
	ret z			;9237
	ld a,(0d1d7h)		;9238
	call 0822dh		;923b

; ----------------------------------------------------------------------
; DATOS saltos_923E: 11 destinos del despachador (call 0x822D en 0x923B) (21
;   bytes)
;   0x923e..0x9253  (21 bytes)
DATA_saltos_923E:
	defw 09254h,09265h,0928ch,092a2h,092feh,0944ah,0952fh,0954ah	; 923e
	defw 09573h,09583h	; 924e  -> L_9573 L_9583
	defb 096h	; 9252

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9253..0x9254  (1 bytes)
DATA_9253:
	defb 095h	; 9253

; ======================================================================
; CODIGO 0x9254..0x92a8  (84 bytes)
; ======================================================================


L_9254:
	ld a,020h		;9254
	call 08248h		;9256
	call 09800h		;9259
L_925C:
	ld hl,0d1d7h		;925c
	inc (hl)			;925f
L_9260:
	xor a			;9260
	ld (0d1d8h),a		;9261
L_9264:
	ret			;9264
L_9265:
	ld a,(0d1c8h)		;9265
	cp 010h		;9268
	jr z,L_9270		;926a
	call 09803h		;926c
	ret nc			;926f
L_9270:
	xor a			;9270
	ld (0d1ffh),a		;9271
	ld (0d1deh),a		;9274
	ld (09218h),a		;9277
	ld (0922fh),a		;927a
	ld (0d1efh),a		;927d
	ld (0d217h),a		;9280
	inc a			;9283
	ld (09230h),a		;9284
	call 0842eh		;9287
	jr L_925C		;928a
L_928C:
	call 0825ah		;928c
	ret nz			;928f
	ld a,021h		;9290
	call 08248h		;9292
	call 09800h		;9295
	ld a,022h		;9298
	call 08248h		;929a
	call 083e3h		;929d
L_92A0:
	jr L_925C		;92a0
L_92A2:
	ld a,(0d1d8h)		;92a2
	call 0822dh		;92a5

; ----------------------------------------------------------------------
; DATOS saltos_92A8: 5 destinos del despachador (call 0x822D en 0x92A5) (9
;   bytes)
;   0x92a8..0x92b1  (9 bytes)
DATA_saltos_92A8:
	defw 092b2h,092bfh,092cah,092d3h	; 92a8  -> L_92B2 L_92BF L_92CA L_92D3
	defb 0dch	; 92b0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92b1..0x92b2  (1 bytes)
DATA_92B1:
	defb 092h	; 92b1

; ======================================================================
; CODIGO 0x92b2..0x930f  (93 bytes)
; ======================================================================


L_92B2:
	call 09800h		;92b2
L_92B5:
	ld a,090h		;92b5
	ld (0d1d9h),a		;92b7
L_92BA:
	ld hl,0d1d8h		;92ba
	inc (hl)			;92bd
	ret			;92be
L_92BF:
	call 08257h		;92bf
	jp nz,09812h		;92c2
	call 09803h		;92c5
	jr L_92B5		;92c8
L_92CA:
	call 08257h		;92ca
	ret nz			;92cd
	call 09806h		;92ce
	jr L_92BA		;92d1
L_92D3:
	call 09809h		;92d3
	ret nc			;92d6
	call 0980ch		;92d7
L_92DA:
	jr L_92BA		;92da
L_92DC:
	call 09809h		;92dc
	ret nc			;92df
	call 08242h		;92e0
	jr nz,L_92F6		;92e3
	xor a			;92e5
	ld (09219h),a		;92e6
	call L_92EE		;92e9
	jr $-76		;92ec
L_92EE:
	ld a,001h		;92ee
	ld (0d1e2h),a		;92f0
	jp 08442h		;92f3
L_92F6:
	call 0980fh		;92f6
L_92F9:
	ld hl,0d1d8h		;92f9
	dec (hl)			;92fc
	ret			;92fd
L_92FE:
	ld a,(0d1c8h)		;92fe
	and 01ch		;9301
	call nz,L_9421		;9303
	call 08299h		;9306
	ld a,(0d1d8h)		;9309
	call 0822dh		;930c

; ----------------------------------------------------------------------
; DATOS saltos_930F: 6 destinos del despachador (call 0x822D en 0x930C) (11
;   bytes)
;   0x930f..0x931a  (11 bytes)
DATA_saltos_930F:
	defw 0931bh,0933ch,093a1h,093d9h,093c6h	; 930f
	defb 0d0h	; 9319

; ----------------------------------------------------------------------
; DATOS sin identificar  0x931a..0x931b  (1 bytes)
DATA_931A:
	defb 093h	; 931a

; ======================================================================
; CODIGO 0x931b..0x9442  (295 bytes)
; ======================================================================


L_931B:
	call 0825ah		;931b
	ret nz			;931e
	ld a,023h		;931f
	call 08248h		;9321
	call 09800h		;9324
	ld a,024h		;9327
	call 08248h		;9329
	call 0844ch		;932c
	ld a,0ffh		;932f
	ld (09231h),a		;9331
	call 0983fh		;9334
	call 09806h		;9337
	jr $-96		;933a
L_933C:
	call 09845h		;933c
	ld a,(0d1c7h)		;933f
	or a			;9342
	call nz,09839h		;9343
	ld a,(0d1c8h)		;9346
	and 080h		;9349
	jr nz,L_9396		;934b
	call 0980fh		;934d
	jp nc,0983ch		;9350
	ld hl,0921bh		;9353
	ld a,(09219h)		;9356
	call 08221h		;9359
	ld a,(09232h)		;935c
	dec a			;935f
	cp (hl)			;9360
	jr z,L_9378		;9361
	ld b,a			;9363
	ld a,(09219h)		;9364
	cp 006h		;9367
	jr nz,L_9371		;9369
	ld a,b			;936b
	dec a			;936c
	cp (hl)			;936d
	jp z,0984bh		;936e
L_9371:
	ld a,(hl)			;9371
	ld (09233h),a		;9372
	jp 09812h		;9375
L_9378:
	ld a,(09233h)		;9378
	ld (hl),a			;937b
	ld hl,09219h		;937c
	inc (hl)			;937f
	ld a,(hl)			;9380
	cp 007h		;9381
	jr nc,L_9390		;9383
L_9385:
	ld a,0ffh		;9385
	ld (09231h),a		;9387
	call 0983fh		;938a
	jp 09809h		;938d
L_9390:
	call 09815h		;9390
	jp L_92BA		;9393
L_9396:
	ld a,(09219h)		;9396
	sub 001h		;9399
	ret c			;939b
	ld (09219h),a		;939c
	jr L_9385		;939f
L_93A1:
	call L_941B		;93a1
	call 09848h		;93a4
	ret nc			;93a7
	ld a,(0921ah)		;93a8
	cp 004h		;93ab
	jr z,L_93BD		;93ad
	call 09818h		;93af
	call 0983fh		;93b2
	ld a,0ffh		;93b5
	ld (09231h),a		;93b7
	jp L_92BA		;93ba
L_93BD:
	call L_92EE		;93bd
	call L_92BA		;93c0
	jp L_92BA		;93c3
L_93C6:
	call 0825ah		;93c6
	ret nz			;93c9
	call 09842h		;93ca
	jp L_92BA		;93cd
L_93D0:
	call 0844ch		;93d0
L_93D3:
	call 0981bh		;93d3
	jp L_92A0		;93d6
L_93D9:
	call 08299h		;93d9
	call 09845h		;93dc
	ld a,(0d1c7h)		;93df
	or a			;93e2
	call nz,09839h		;93e3
	call 0980fh		;93e6
	jp nc,0983ch		;93e9
	ld hl,0921bh		;93ec
	ld a,(09219h)		;93ef
	call 08221h		;93f2
	ld a,(09232h)		;93f5
	dec a			;93f8
	cp (hl)			;93f9
	jr z,L_9411		;93fa
	ld b,a			;93fc
	ld a,(09219h)		;93fd
	cp 006h		;9400
	jr nz,L_940A		;9402
	ld a,b			;9404
	dec a			;9405
	cp (hl)			;9406
	jp z,0984bh		;9407
L_940A:
	ld a,(hl)			;940a
	ld (09233h),a		;940b
	jp 09812h		;940e
L_9411:
	ld a,(09233h)		;9411
	ld (hl),a			;9414
	call 09815h		;9415
	jp L_92F9		;9418
L_941B:
	ld a,0d8h		;941b
	ld (0d2a0h),a		;941d
	ret			;9420
L_9421:
	xor a			;9421
	ld (0d269h),a		;9422
	ld a,004h		;9425
	ld (0d266h),a		;9427
	ld a,(0d26eh)		;942a
	and a			;942d
	ret nz			;942e
	xor a			;942f
	ld (0d266h),a		;9430
	ld (0d26dh),a		;9433
	ld hl,09442h		;9436
	ld de,0d2f0h		;9439
	ld bc,00008h		;943c
	ldir		;943f
	ret			;9441

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9442..0x944a  (8 bytes)
DATA_9442:
	defb 0e0h,0e0h,0e0h,000h,0e0h,0e0h,0e0h,000h	; 9442  ........

; ======================================================================
; CODIGO 0x944a..0x9450  (6 bytes)
; ======================================================================


L_944A:
	ld a,(0d1d8h)		;944a
	call 0822dh		;944d

; ----------------------------------------------------------------------
; DATOS saltos_9450: 7 destinos del despachador (call 0x822D en 0x944D) (13
;   bytes)
;   0x9450..0x945d  (13 bytes)
DATA_saltos_9450:
	defw 0945eh,09481h,094ach,094e0h,094f1h,09516h	; 9450
	defb 01ch	; 945c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x945d..0x945e  (1 bytes)
DATA_945D:
	defb 095h	; 945d

; ======================================================================
; CODIGO 0x945e..0x95d4  (374 bytes)
; ======================================================================


L_945E:
	call 09848h		;945e
	jp nc,0981eh		;9461
	ld a,(0d217h)		;9464
	cp 004h		;9467
	jr nz,L_9471		;9469
	ld a,001h		;946b
	ld (0d1e9h),a		;946d
	ret			;9470
L_9471:
	xor a			;9471
	ld (0d1deh),a		;9472
	ld (0d1dch),a		;9475
	ld (0d1ffh),a		;9478
L_947B:
	call 09821h		;947b
	jp L_92BA		;947e
L_9481:
	call 09848h		;9481
	ret nc			;9484
	ld a,(0d1dch)		;9485
	cp 002h		;9488
	jp z,L_94C0		;948a
	or a			;948d
	jr nz,L_9496		;948e
	call 09824h		;9490
	jp L_9529		;9493
L_9496:
	call 09824h		;9496
L_9499:
	call 09827h		;9499
	jr c,L_94A1		;949c
	jp L_92BA		;949e
L_94A1:
	ld a,006h		;94a1
	ld (0d1d8h),a		;94a3
	add a,050h		;94a6
	ld (0d1d9h),a		;94a8
	ret			;94ab
L_94AC:
	call 09848h		;94ac
	ret nc			;94af
	ld a,(0d1eeh)		;94b0
	cp 005h		;94b3
	jr z,L_94BD		;94b5
	call 0982dh		;94b7
	jp L_92BA		;94ba
L_94BD:
	call 09830h		;94bd
L_94C0:
	ld a,001h		;94c0
	ld (0d1deh),a		;94c2
	call 082bah		;94c5
	call 09833h		;94c8
L_94CB:
	ld a,004h		;94cb
	ld (0d1d7h),a		;94cd
	call L_9260		;94d0
	jp L_93D3		;94d3
L_94D6:
	ld a,001h		;94d6
	ld (0d1deh),a		;94d8
	ld (0d1d8h),a		;94db
	jr L_9499		;94de
L_94E0:
	call 09848h		;94e0
	jp nc,09836h		;94e3
	call 08242h		;94e6
	jr nz,L_94D6		;94e9
	call 0842eh		;94eb
	jp L_92BA		;94ee
L_94F1:
	call 0825ah		;94f1
	ret nz			;94f4
	call L_9735		;94f5
	ld a,025h		;94f8
	call 08248h		;94fa
	call 0980fh		;94fd
	ld a,026h		;9500
	call 08248h		;9502
	call 09800h		;9505
	call L_97D0		;9508
	ld a,024h		;950b
	call 08248h		;950d
	call 08251h		;9510
	jp L_92BA		;9513
L_9516:
	call 083e3h		;9516
	jp L_94BD		;9519
L_951C:
	call 0825dh		;951c
	ret nz			;951f
	call L_9260		;9520
	call 0982ah		;9523
	jp L_947B		;9526
L_9529:
	call 0842eh		;9529
L_952C:
	jp L_92A0		;952c
L_952F:
	call 0825ah		;952f
	ret nz			;9532
	call 082bah		;9533
	ld a,025h		;9536
	call 08248h		;9538
	call 0980fh		;953b
	xor a			;953e
	ld (0d216h),a		;953f
	call 09803h		;9542
	call 09806h		;9545
L_9548:
	jr L_952C		;9548
L_954A:
	ld a,(0d1c8h)		;954a
	and 080h		;954d
	jr nz,L_956E		;954f
	ld a,(0d1c3h)		;9551
	and 007h		;9554
	jr nz,L_9561		;9556
	ld a,(0d1c6h)		;9558
	or a			;955b
	jr nz,L_9561		;955c
	call 09809h		;955e
L_9561:
	call 0980ch		;9561
	ld a,(0d1c7h)		;9564
	or a			;9567
	ret nz			;9568
	call 08203h		;9569
	jr L_9548		;956c
L_956E:
	call L_957A		;956e
	jr L_9548		;9571
L_9573:
	call 08257h		;9573
	ret nz			;9576
	call 08251h		;9577
L_957A:
	xor a			;957a
	ld (0d1ffh),a		;957b
	call 0842eh		;957e
L_9581:
	jr L_9548		;9581
L_9583:
	call 0825ah		;9583
	ret nz			;9586
	ld a,001h		;9587
	call L_95DB		;9589
	ld a,024h		;958c
	call 08248h		;958e
	call 09851h		;9591
	jr L_9581		;9594
L_9596:
	call 08251h		;9596
	call 083e3h		;9599
	call 0984eh		;959c
	jp L_94CB		;959f
L_95A2:
	ld (0d1e4h),a		;95a2
L_95A5:
	ld a,(0d1e4h)		;95a5
	call L_95B9		;95a8
	ld de,0b000h		;95ab
	call 08215h		;95ae
	jr c,L_95A5		;95b1
	ld a,0ffh		;95b3
	ld (0e0fdh),a		;95b5
	ret			;95b8
L_95B9:
	add a,a			;95b9
	add a,a			;95ba
	ld hl,0971dh		;95bb
	call 08221h		;95be
	ld c,(hl)			;95c1
	inc hl			;95c2
	ld b,(hl)			;95c3
	inc hl			;95c4
	ld a,(hl)			;95c5
	inc hl			;95c6
	ld h,(hl)			;95c7
	ld l,a			;95c8
	ret			;95c9
L_95CA:
	ld (095d5h),a		;95ca
	ld ix,095d4h		;95cd
	jp L_960D		;95d1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x95d4..0x95db  (7 bytes)
DATA_95D4:
	defb 020h,0c4h,004h,0a0h,000h,0b0h,080h	; 95d4

; ======================================================================
; CODIGO 0x95db..0x9709  (302 bytes)
; ======================================================================


L_95DB:
	call L_95E5		;95db
	ld ix,0b200h		;95de
	jp 082cch		;95e2
L_95E5:
	ld (0d1e4h),a		;95e5
L_95E8:
	ld a,(0d1e4h)		;95e8
	call L_95FC		;95eb
	ld de,0b200h		;95ee
	call 08215h		;95f1
	jr c,L_95E8		;95f4
	ld a,0ffh		;95f6
	ld (0e0fdh),a		;95f8
	ret			;95fb
L_95FC:
	add a,a			;95fc
	add a,a			;95fd
	ld hl,09709h		;95fe
	call 08221h		;9601
	ld c,(hl)			;9604
	inc hl			;9605
	ld b,(hl)			;9606
	inc hl			;9607
	ld a,(hl)			;9608
	inc hl			;9609
	ld h,(hl)			;960a
	ld l,a			;960b
	ret			;960c
L_960D:
	ld a,(ix+000h)		;960d
	rla			;9610
	ret c			;9611
	call L_961C		;9612
	ld de,00006h		;9615
	add ix,de		;9618
	jr L_960D		;961a
L_961C:
	push bc			;961c
	bit 6,(ix+000h)		;961d
	jr nz,L_9642		;9621
	bit 4,(ix+000h)		;9623
	jr nz,L_964A		;9627
	call L_9631		;9629
	call L_9652		;962c
	pop bc			;962f
	ret			;9630
L_9631:
	ld b,(ix+001h)		;9631
	ld l,(ix+002h)		;9634
	ld h,(ix+003h)		;9637
	ld e,(ix+004h)		;963a
	ld d,(ix+005h)		;963d
	ex de,hl			;9640
	ret			;9641
L_9642:
	call L_9631		;9642
	call L_965C		;9645
	pop bc			;9648
	ret			;9649
L_964A:
	call L_9631		;964a
	call L_9666		;964d
	pop bc			;9650
	ret			;9651
L_9652:
	push bc			;9652
	ld b,001h		;9653
	call L_9685		;9655
	pop bc			;9658
	djnz L_9652		;9659
	ret			;965b
L_965C:
	push bc			;965c
	ld b,001h		;965d
	call L_969A		;965f
	pop bc			;9662
	djnz L_965C		;9663
	ret			;9665
L_9666:
	push bc			;9666
	ld b,001h		;9667
	call L_96CF		;9669
	pop bc			;966c
	djnz L_9666		;966d
	ret			;966f
L_9670:
	push de			;9670
	ld b,008h		;9671
L_9673:
	push bc			;9673
	ld bc,00004h		;9674
	call 08224h		;9677
	ex de,hl			;967a
	ld bc,00080h		;967b
	add hl,bc			;967e
	ex de,hl			;967f
	pop bc			;9680
	djnz L_9673		;9681
	pop de			;9683
	ret			;9684
L_9685:
	push bc			;9685
	call L_9670		;9686
	ld a,004h		;9689
	add a,e			;968b
	cp 080h		;968c
	jr nz,L_9695		;968e
	ld a,004h		;9690
	add a,d			;9692
	ld d,a			;9693
	xor a			;9694
L_9695:
	ld e,a			;9695
	pop bc			;9696
	djnz L_9685		;9697
	ret			;9699
L_969A:
	push bc			;969a
	push de			;969b
	ld de,0d303h		;969c
	ld c,008h		;969f
L_96A1:
	ld b,004h		;96a1
L_96A3:
	ld a,(hl)			;96a3
	rrca			;96a4
	rrca			;96a5
	rrca			;96a6
	rrca			;96a7
	ld (de),a			;96a8
	dec de			;96a9
	inc hl			;96aa
	djnz L_96A3		;96ab
	ld a,008h		;96ad
	call 08206h		;96af
	dec c			;96b2
	jr nz,L_96A1		;96b3
	pop de			;96b5
	push hl			;96b6
	ld hl,0d300h		;96b7
	call L_9670		;96ba
	pop hl			;96bd
	ld a,004h		;96be
	add a,e			;96c0
	cp 080h		;96c1
	jr nz,L_96CA		;96c3
	ld a,004h		;96c5
	add a,d			;96c7
	ld d,a			;96c8
	xor a			;96c9
L_96CA:
	ld e,a			;96ca
	pop bc			;96cb
	djnz L_969A		;96cc
	ret			;96ce
L_96CF:
	push bc			;96cf
	push de			;96d0
	ld de,0d31ch		;96d1
	ld c,008h		;96d4
L_96D6:
	ld b,004h		;96d6
L_96D8:
	ld a,(hl)			;96d8
	ld (de),a			;96d9
	inc de			;96da
	inc hl			;96db
	djnz L_96D8		;96dc
	call L_96FE		;96de
	dec c			;96e1
	jr nz,L_96D6		;96e2
	pop de			;96e4
	push hl			;96e5
	ld hl,0d300h		;96e6
	call L_9670		;96e9
	pop hl			;96ec
	ld a,004h		;96ed
	add a,e			;96ef
	cp 080h		;96f0
	jr nz,L_96F9		;96f2
	ld a,004h		;96f4
	add a,d			;96f6
	ld d,a			;96f7
	xor a			;96f8
L_96F9:
	ld e,a			;96f9
	pop bc			;96fa
	djnz L_96CF		;96fb
	ret			;96fd
L_96FE:
	push hl			;96fe
	ld hl,00008h		;96ff
	ex de,hl			;9702
	or a			;9703
	sbc hl,de		;9704
	ex de,hl			;9706
	pop hl			;9707
	ret			;9708

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9709..0x9735  (44 bytes)
DATA_9709:
	defb 049h,004h,000h,002h,04dh,001h,000h,003h,097h,001h,000h,003h,05dh,003h,000h,003h	; 9709  I...M.......]...
	defb 0f0h,003h,000h,003h,050h,001h,000h,010h,060h,001h,000h,008h,03eh,001h,000h,00fh	; 9719  ....P...`...>...
	defb 033h,001h,000h,00bh,02fh,001h,000h,004h,028h,001h,000h,007h	; 9729  3.../...(...

; ======================================================================
; CODIGO 0x9735..0x97eb  (182 bytes)
; ======================================================================


L_9735:
	ld a,(0d1d6h)		;9735
	ld hl,097ebh		;9738
	call 0826ch		;973b
	ld (L_975B+1),hl		;973e
	ld hl,0049bh		;9741
	ld (L_9774+1),hl		;9744
	ld hl,00493h		;9747
	ld (L_978D+1),hl		;974a
	ld hl,0048bh		;974d
	ld (L_97A6+1),hl		;9750
	ld a,0c9h		;9753
	ld (04000h),a		;9755
	ld (04003h),a		;9758
L_975B:
	ld bc,0002eh		;975b
	ld de,09800h		;975e
	ld hl,00b00h		;9761
	call 08215h		;9764
	jr c,L_975B		;9767
	ld hl,09800h		;9769
	ld de,06a00h		;976c
	ld bc,01600h		;976f
	ldir		;9772
L_9774:
	ld bc,0049bh		;9774
	ld de,09800h		;9777
	ld hl,00500h		;977a
	call 08215h		;977d
	jr c,L_9774		;9780
	ld hl,09800h		;9782
	ld de,06000h		;9785
	ld bc,00a00h		;9788
	ldir		;978b
L_978D:
	ld bc,00493h		;978d
	ld de,09800h		;9790
	ld hl,00800h		;9793
	call 08215h		;9796
	jr c,L_978D		;9799
	ld hl,09800h		;979b
	ld de,05000h		;979e
	ld bc,01000h		;97a1
	ldir		;97a4
L_97A6:
	ld bc,0048bh		;97a6
	ld de,09800h		;97a9
	ld hl,00800h		;97ac
	call 08215h		;97af
	jr c,L_97A6		;97b2
	ld hl,09806h		;97b4
	ld de,04006h		;97b7
	ld bc,00ffah		;97ba
	ldir		;97bd
	ld hl,09800h		;97bf
	ld de,04000h		;97c2
	ld bc,00006h		;97c5
	ldir		;97c8
	ld a,0ffh		;97ca
	ld (0e0fdh),a		;97cc
	ret			;97cf
L_97D0:
	ld hl,0002eh		;97d0
	ld (L_975B+1),hl		;97d3
	ld hl,00029h		;97d6
	ld (L_9774+1),hl		;97d9
	ld hl,00021h		;97dc
	ld (L_978D+1),hl		;97df
	ld hl,00019h		;97e2
	ld (L_97A6+1),hl		;97e5
	jp L_975B		;97e8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x97eb..0x9800  (21 bytes)
DATA_97EB:
	defb 008h,001h,013h,001h,0fdh,000h,060h,003h,08ah,0ffh,0e0h,0f0h,0b0h,008h,080h,080h	; 97eb  ......`.........
	defb 000h,000h,080h,006h,000h	; 97fb
