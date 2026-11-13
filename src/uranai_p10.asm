; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p10 (se ejecuta en 0x9200)
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
	jp L_9235		;9200
L_9203:
	jp L_955B		;9203
L_9206:
	jp L_9583		;9206
L_9209:
	jp L_9594		;9209
L_920C:
	jp L_959E		;920c
L_920F:
	jp L_9235		;920f
L_9212:
	jp L_95C6		;9212
L_9215:
	jp L_9235		;9215
L_9218:
	jp 09a00h		;9218

; ----------------------------------------------------------------------
; DATOS sin identificar  0x921b..0x9235  (26 bytes)
DATA_921B:
	defb 0cdh,047h,092h,0cdh,009h,082h,03eh,002h,0cdh,0a2h,092h,021h,004h,0c0h,022h,0d6h	; 921b  .G....>....!..".
	defb 092h,03eh,0cdh,03ch,082h,0c8h,03ah,065h,095h,000h	; 922b  .>.<..:e..

; ======================================================================
; CODIGO 0x9235..0x9241  (12 bytes)
; ======================================================================


L_9235:
	call 0823ch		;9235
	jp z,L_937B		;9238
	ld a,(0d1d7h)		;923b
	call 0822dh		;923e

; ----------------------------------------------------------------------
; DATOS saltos_9241: 12 destinos del despachador (call 0x822D en 0x923E) (23
;   bytes)
;   0x9241..0x9258  (23 bytes)
DATA_saltos_9241:
	defw 09259h,09276h,092a9h,092c0h,0931fh,09394h,0939eh,093bdh	; 9241
	defw 093d2h,094f3h,09514h	; 9251  -> L_93D2 L_94F3 L_9514
	defb 038h	; 9257

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9258..0x9259  (1 bytes)
DATA_9258:
	defb 095h	; 9258

; ======================================================================
; CODIGO 0x9259..0x92a4  (75 bytes)
; ======================================================================


L_9259:
	ld a,011h		;9259
	call 08248h		;925b
	ld hl,08004h		;925e
	ld (0958fh),hl		;9261
	call 09800h		;9264
	ld hl,0a004h		;9267
	ld (0958fh),hl		;926a
L_926D:
	ld hl,0d1d7h		;926d
	inc (hl)			;9270
L_9271:
	xor a			;9271
	ld (0d1d8h),a		;9272
	ret			;9275
L_9276:
	ld a,(0d1c8h)		;9276
	cp 010h		;9279
	jr z,L_9295		;927b
	call 09803h		;927d
	ret nc			;9280
	ld hl,00000h		;9281
	ld (L_9295),hl		;9284
	ld (L_9295+1),hl		;9287
	ld hl,092a4h		;928a
	ld de,092a9h		;928d
	ld bc,00005h		;9290
	ldir		;9293
L_9295:
	call 0842eh		;9295
	xor a			;9298
	ld (0d1ffh),a		;9299
	ld (0d1deh),a		;929c
	ld (0d217h),a		;929f
	jr L_926D		;92a2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92a4..0x92a9  (5 bytes)
DATA_92A4:
	defb 03ah,000h,0d0h,0b7h,0c0h	; 92a4

; ======================================================================
; CODIGO 0x92a9..0x9325  (124 bytes)
; ======================================================================


L_92A9:
	call 0825ah		;92a9
	ret nz			;92ac
	nop			;92ad
	ld a,013h		;92ae
	call 08248h		;92b0
	call 09800h		;92b3
L_92B6:
	ld a,014h		;92b6
	call 08248h		;92b8
	call 09800h		;92bb
L_92BE:
	jr $-81		;92be
L_92C0:
	ld a,(0d1c3h)		;92c0
	and 010h		;92c3
	jr z,L_92CC		;92c5
	call L_92F9		;92c7
	jr L_92CF		;92ca
L_92CC:
	call L_92F5		;92cc
L_92CF:
	ld a,(0d1d8h)		;92cf
	or a			;92d2
	jr nz,L_92FF		;92d3
	call 08257h		;92d5
	jr z,L_930A		;92d8
	ld a,(0d1c8h)		;92da
	and 00ch		;92dd
	ret z			;92df
	cp 00ch		;92e0
	ret z			;92e2
	push af			;92e3
	ld a,001h		;92e4
	ld (0d1d8h),a		;92e6
	call 08384h		;92e9
	pop af			;92ec
	cp 008h		;92ed
	jp z,09803h		;92ef
	jp 09806h		;92f2
L_92F5:
	ld a,0d8h		;92f5
	jr L_92FB		;92f7
L_92F9:
	ld a,0feh		;92f9
L_92FB:
	ld (0d2d0h),a		;92fb
	ret			;92fe
L_92FF:
	call 0980fh		;92ff
	ld a,(09229h)		;9302
	or a			;9305
	ret nz			;9306
	jp L_9271		;9307
L_930A:
	call 0826fh		;930a
	ld a,(0d217h)		;930d
	inc a			;9310
	cp 006h		;9311
	jr c,L_9316		;9313
	xor a			;9315
L_9316:
	ld (0d217h),a		;9316
	call 09809h		;9319
L_931C:
	jp L_92BE		;931c
L_931F:
	ld a,(0d1d8h)		;931f
	call 0822dh		;9322

; ----------------------------------------------------------------------
; DATOS saltos_9325: 3 destinos del despachador (call 0x822D en 0x9322) (5
;   bytes)
;   0x9325..0x932a  (5 bytes)
DATA_saltos_9325:
	defw 0932bh,09351h	; 9325  -> L_932B L_9351
	defb 058h	; 9329

; ----------------------------------------------------------------------
; DATOS sin identificar  0x932a..0x932b  (1 bytes)
DATA_932A:
	defb 093h	; 932a

; ======================================================================
; CODIGO 0x932b..0x93d8  (173 bytes)
; ======================================================================


L_932B:
	call 0980ch		;932b
	ret nc			;932e
	xor a			;932f
	ld (0d225h),a		;9330
	ld a,(0d217h)		;9333
	or a			;9336
	jr nz,L_933F		;9337
	call 0842eh		;9339
	jp L_9413		;933c
L_933F:
	ld a,(0d217h)		;933f
	cp 005h		;9342
	jr z,L_9376		;9344
	ld a,001h		;9346
	ld (0d1e2h),a		;9348
	call 08442h		;934b
	jp L_9413		;934e
L_9351:
	call 0825ah		;9351
	ret nz			;9354
	jp L_9413		;9355
L_9358:
	ld a,(0d217h)		;9358
	or a			;935b
	jr z,L_9380		;935c
	ld a,017h		;935e
	call 08248h		;9360
	call 09800h		;9363
	ld a,018h		;9366
	call 08248h		;9368
	xor a			;936b
	ld (0d1deh),a		;936c
L_936F:
	xor a			;936f
	ld (0d234h),a		;9370
	jp 09800h		;9373
L_9376:
	ld a,001h		;9376
	ld (0d1e9h),a		;9378
L_937B:
	xor a			;937b
	ld (0d225h),a		;937c
	ret			;937f
L_9380:
	ld a,015h		;9380
	call 08248h		;9382
	call 09800h		;9385
	ld a,016h		;9388
	call 08248h		;938a
	xor a			;938d
	ld (09226h),a		;938e
	jp L_92BE		;9391
L_9394:
	call 09800h		;9394
	ret nc			;9397
	call 08203h		;9398
	jp L_931C		;939b
L_939E:
	call 09803h		;939e
	call 08257h		;93a1
	ret nz			;93a4
	call 08251h		;93a5
L_93A8:
	call L_93AE		;93a8
	jp L_931C		;93ab
L_93AE:
	ld a,(09234h)		;93ae
	or a			;93b1
	jp z,0842eh		;93b2
	ld a,001h		;93b5
	ld (0d1e2h),a		;93b7
	jp 08442h		;93ba
L_93BD:
	ld a,(0d1d8h)		;93bd
	or a			;93c0
	jr nz,L_93CA		;93c1
	call 0825ah		;93c3
	ret nz			;93c6
	jp L_9413		;93c7
L_93CA:
	ld a,002h		;93ca
	ld (0d1d7h),a		;93cc
	jp L_92B6		;93cf
L_93D2:
	ld a,(0d1d8h)		;93d2
	call 0822dh		;93d5

; ----------------------------------------------------------------------
; DATOS saltos_93D8: 7 destinos del despachador (call 0x822D en 0x93D5) (13
;   bytes)
;   0x93d8..0x93e5  (13 bytes)
DATA_saltos_93D8:
	defw 093e6h,09432h,0945bh,094a7h,094b8h,094d5h	; 93d8
	defb 0e6h	; 93e4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x93e5..0x93e6  (1 bytes)
DATA_93E5:
	defb 094h	; 93e5

; ======================================================================
; CODIGO 0x93e6..0x942e  (72 bytes)
; ======================================================================


L_93E6:
	ld a,(0d217h)		;93e6
	cp 004h		;93e9
	jr z,L_9418		;93eb
	call 09803h		;93ed
	ret nc			;93f0
	call L_9422		;93f1
	ld a,(0d234h)		;93f4
	cp b			;93f7
	jr nz,L_940C		;93f8
	call 09809h		;93fa
L_93FD:
	xor a			;93fd
	ld (0d1deh),a		;93fe
	inc a			;9401
	ld (09234h),a		;9402
L_9405:
	ld a,006h		;9405
	ld (0d1d7h),a		;9407
	jr $-98		;940a
L_940C:
	xor a			;940c
	ld (0d1dch),a		;940d
L_9410:
	call 09806h		;9410
L_9413:
	ld hl,0d1d8h		;9413
	inc (hl)			;9416
	ret			;9417
L_9418:
	call 08257h		;9418
	ret nz			;941b
	call 08251h		;941c
	jp L_940C		;941f
L_9422:
	ld a,(0d217h)		;9422
	dec a			;9425
	ld hl,0942eh		;9426
	call 08221h		;9429
	ld b,(hl)			;942c
	ret			;942d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x942e..0x9432  (4 bytes)
DATA_942E:
	defb 004h,003h,005h,000h	; 942e

; ======================================================================
; CODIGO 0x9432..0x958d  (347 bytes)
; ======================================================================


L_9432:
	call 09803h		;9432
	ret nc			;9435
	ld a,(0d1dch)		;9436
	cp 002h		;9439
	jp z,L_9487		;943b
	or a			;943e
	jr nz,L_9447		;943f
	call 0980ch		;9441
	jp L_93A8		;9444
L_9447:
	call 0980ch		;9447
L_944A:
	call 0980fh		;944a
	jp nc,L_9413		;944d
	ld a,006h		;9450
	ld (0d1d8h),a		;9452
	add a,050h		;9455
	ld (0d1d9h),a		;9457
	ret			;945a
L_945B:
	call 09803h		;945b
	ret nc			;945e
	ld a,(0d1eeh)		;945f
	cp 005h		;9462
	jr z,L_946B		;9464
	call 09815h		;9466
	jr $-86		;9469
L_946B:
	ld a,(0d217h)		;946b
	cp 004h		;946e
	jr nz,L_9484		;9470
	call 0981bh		;9472
	call 09818h		;9475
	xor a			;9478
	ld (0d1d8h),a		;9479
	jp L_940C		;947c
L_947F:
	ld a,018h		;947f
	call 08248h		;9481
L_9484:
	call 0981bh		;9484
L_9487:
	call 082bah		;9487
	call 09818h		;948a
	ld a,(0d217h)		;948d
	cp 004h		;9490
	jp z,L_93FD		;9492
	ld a,001h		;9495
	ld (0d1deh),a		;9497
	jp L_936F		;949a
L_949D:
	ld a,001h		;949d
	ld (0d1deh),a		;949f
	ld (0d1d8h),a		;94a2
	jr L_944A		;94a5
L_94A7:
	call 09803h		;94a7
	jp nc,0981eh		;94aa
	call 08242h		;94ad
	jr nz,L_949D		;94b0
	call 0842eh		;94b2
	jp L_9413		;94b5
L_94B8:
	call 0825ah		;94b8
	ret nz			;94bb
	call L_9722		;94bc
	ld a,019h		;94bf
	call 08248h		;94c1
	call 0981bh		;94c4
	ld a,01eh		;94c7
	call 08248h		;94c9
	call 09800h		;94cc
	call L_97BD		;94cf
	jp L_9413		;94d2
L_94D5:
	ld a,(0d217h)		;94d5
	cp 004h		;94d8
	jp z,L_9405		;94da
	call L_947F		;94dd
	call 08251h		;94e0
	jp 083d4h		;94e3
L_94E6:
	call 0825dh		;94e6
	ret nz			;94e9
	call L_9271		;94ea
	call 09812h		;94ed
	jp L_9410		;94f0
L_94F3:
	call 0825ah		;94f3
	ret nz			;94f6
	ld a,015h		;94f7
	call 08248h		;94f9
	call 09800h		;94fc
	ld a,019h		;94ff
	call 08248h		;9501
	call 0981bh		;9504
	xor a			;9507
	ld (0d216h),a		;9508
	call 09803h		;950b
	call 09812h		;950e
L_9511:
	jp L_926D		;9511
L_9514:
	ld a,(0d1c8h)		;9514
	and 080h		;9517
	jr nz,L_953C		;9519
	ld a,(0d1c3h)		;951b
	and 007h		;951e
	jr nz,L_952B		;9520
	ld a,(0d1c6h)		;9522
	or a			;9525
	jr nz,L_952B		;9526
	call 09815h		;9528
L_952B:
	call 09818h		;952b
	ld a,(0d1c7h)		;952e
	or a			;9531
	ret nz			;9532
	call 08203h		;9533
	jr L_9511		;9536
L_9538:
	call 08257h		;9538
	ret nz			;953b
L_953C:
	xor a			;953c
	ld (0d1ffh),a		;953d
	call 08251h		;9540
	ld a,(0d217h)		;9543
	cp 004h		;9546
	jp z,L_9405		;9548
	ld a,004h		;954b
	ld (0d1d7h),a		;954d
	ld a,001h		;9550
	ld (0d1d8h),a		;9552
	ld (09234h),a		;9555
	jp 0842eh		;9558
L_955B:
	ld (0d1e4h),a		;955b
L_955E:
	ld a,(0d1e4h)		;955e
	call L_9572		;9561
	ld de,0aa00h		;9564
	call 08215h		;9567
	jr c,L_955E		;956a
	ld a,0ffh		;956c
	ld (0e0fdh),a		;956e
	ret			;9571
L_9572:
	add a,a			;9572
	add a,a			;9573
	ld hl,096d6h		;9574
	call 08221h		;9577
	ld c,(hl)			;957a
	inc hl			;957b
	ld b,(hl)			;957c
	inc hl			;957d
	ld a,(hl)			;957e
	inc hl			;957f
	ld h,(hl)			;9580
	ld l,a			;9581
	ret			;9582
L_9583:
	ld (0958eh),a		;9583
	ld ix,0958dh		;9586
	jp L_95C6		;958a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x958d..0x9594  (7 bytes)
DATA_958D:
	defb 020h,0c4h,004h,0a0h,000h,0aah,080h	; 958d

; ======================================================================
; CODIGO 0x9594..0x96c2  (302 bytes)
; ======================================================================


L_9594:
	call L_959E		;9594
	ld ix,0b200h		;9597
	jp 082cch		;959b
L_959E:
	ld (0d1e4h),a		;959e
L_95A1:
	ld a,(0d1e4h)		;95a1
	call L_95B5		;95a4
	ld de,0b200h		;95a7
	call 08215h		;95aa
	jr c,L_95A1		;95ad
	ld a,0ffh		;95af
	ld (0e0fdh),a		;95b1
	ret			;95b4
L_95B5:
	add a,a			;95b5
	add a,a			;95b6
	ld hl,096c2h		;95b7
	call 08221h		;95ba
	ld c,(hl)			;95bd
	inc hl			;95be
	ld b,(hl)			;95bf
	inc hl			;95c0
	ld a,(hl)			;95c1
	inc hl			;95c2
	ld h,(hl)			;95c3
	ld l,a			;95c4
	ret			;95c5
L_95C6:
	ld a,(ix+000h)		;95c6
	rla			;95c9
	ret c			;95ca
	call L_95D5		;95cb
	ld de,00006h		;95ce
	add ix,de		;95d1
	jr L_95C6		;95d3
L_95D5:
	push bc			;95d5
	bit 6,(ix+000h)		;95d6
	jr nz,L_95FB		;95da
	bit 4,(ix+000h)		;95dc
	jr nz,L_9603		;95e0
	call L_95EA		;95e2
	call L_960B		;95e5
	pop bc			;95e8
	ret			;95e9
L_95EA:
	ld b,(ix+001h)		;95ea
	ld l,(ix+002h)		;95ed
	ld h,(ix+003h)		;95f0
	ld e,(ix+004h)		;95f3
	ld d,(ix+005h)		;95f6
	ex de,hl			;95f9
	ret			;95fa
L_95FB:
	call L_95EA		;95fb
	call L_9615		;95fe
	pop bc			;9601
	ret			;9602
L_9603:
	call L_95EA		;9603
	call L_961F		;9606
	pop bc			;9609
	ret			;960a
L_960B:
	push bc			;960b
	ld b,001h		;960c
	call L_963E		;960e
	pop bc			;9611
	djnz L_960B		;9612
	ret			;9614
L_9615:
	push bc			;9615
	ld b,001h		;9616
	call L_9653		;9618
	pop bc			;961b
	djnz L_9615		;961c
	ret			;961e
L_961F:
	push bc			;961f
	ld b,001h		;9620
	call L_9688		;9622
	pop bc			;9625
	djnz L_961F		;9626
	ret			;9628
L_9629:
	push de			;9629
	ld b,008h		;962a
L_962C:
	push bc			;962c
	ld bc,00004h		;962d
	call 08224h		;9630
	ex de,hl			;9633
	ld bc,00080h		;9634
	add hl,bc			;9637
	ex de,hl			;9638
	pop bc			;9639
	djnz L_962C		;963a
	pop de			;963c
	ret			;963d
L_963E:
	push bc			;963e
	call L_9629		;963f
	ld a,004h		;9642
	add a,e			;9644
	cp 080h		;9645
	jr nz,L_964E		;9647
	ld a,004h		;9649
	add a,d			;964b
	ld d,a			;964c
	xor a			;964d
L_964E:
	ld e,a			;964e
	pop bc			;964f
	djnz L_963E		;9650
	ret			;9652
L_9653:
	push bc			;9653
	push de			;9654
	ld de,0d303h		;9655
	ld c,008h		;9658
L_965A:
	ld b,004h		;965a
L_965C:
	ld a,(hl)			;965c
	rrca			;965d
	rrca			;965e
	rrca			;965f
	rrca			;9660
	ld (de),a			;9661
	dec de			;9662
	inc hl			;9663
	djnz L_965C		;9664
	ld a,008h		;9666
	call 08206h		;9668
	dec c			;966b
	jr nz,L_965A		;966c
	pop de			;966e
	push hl			;966f
	ld hl,0d300h		;9670
	call L_9629		;9673
	pop hl			;9676
	ld a,004h		;9677
	add a,e			;9679
	cp 080h		;967a
	jr nz,L_9683		;967c
	ld a,004h		;967e
	add a,d			;9680
	ld d,a			;9681
	xor a			;9682
L_9683:
	ld e,a			;9683
	pop bc			;9684
	djnz L_9653		;9685
	ret			;9687
L_9688:
	push bc			;9688
	push de			;9689
	ld de,0d31ch		;968a
	ld c,008h		;968d
L_968F:
	ld b,004h		;968f
L_9691:
	ld a,(hl)			;9691
	ld (de),a			;9692
	inc de			;9693
	inc hl			;9694
	djnz L_9691		;9695
	call L_96B7		;9697
	dec c			;969a
	jr nz,L_968F		;969b
	pop de			;969d
	push hl			;969e
	ld hl,0d300h		;969f
	call L_9629		;96a2
	pop hl			;96a5
	ld a,004h		;96a6
	add a,e			;96a8
	cp 080h		;96a9
	jr nz,L_96B2		;96ab
	ld a,004h		;96ad
	add a,d			;96af
	ld d,a			;96b0
	xor a			;96b1
L_96B2:
	ld e,a			;96b2
	pop bc			;96b3
	djnz L_9688		;96b4
	ret			;96b6
L_96B7:
	push hl			;96b7
	ld hl,00008h		;96b8
	ex de,hl			;96bb
	or a			;96bc
	sbc hl,de		;96bd
	ex de,hl			;96bf
	pop hl			;96c0
	ret			;96c1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x96c2..0x9722  (96 bytes)
DATA_96C2:
	defb 049h,004h,000h,002h,04dh,001h,000h,003h,097h,001h,000h,003h,05dh,003h,000h,003h	; 96c2  I...M.......]...
	defb 0f0h,003h,000h,003h,039h,003h,000h,00ch,045h,003h,000h,00bh,050h,003h,000h,00dh	; 96d2  ....9...E...P...
	defb 029h,003h,000h,010h,0fch,002h,000h,00fh,00bh,003h,000h,00fh,01ah,003h,000h,00fh	; 96e2  )...............
	defb 0d6h,002h,000h,00dh,0e3h,002h,000h,009h,0cah,002h,000h,00ch,075h,002h,000h,00bh	; 96f2  ............u...
	defb 080h,002h,000h,00ch,08ch,002h,000h,00ah,096h,002h,000h,00ah,0a0h,002h,000h,007h	; 9702  ................
	defb 0a7h,002h,000h,010h,0b7h,002h,000h,00ah,0c1h,002h,000h,009h,0ech,002h,000h,010h	; 9712  ................

; ======================================================================
; CODIGO 0x9722..0x97d8  (182 bytes)
; ======================================================================


L_9722:
	ld a,(0d1d6h)		;9722
	ld hl,097d8h		;9725
	call 0826ch		;9728
	ld (L_9748+1),hl		;972b
	ld hl,0049bh		;972e
	ld (L_9761+1),hl		;9731
	ld hl,00493h		;9734
	ld (L_977A+1),hl		;9737
	ld hl,0048bh		;973a
	ld (L_9793+1),hl		;973d
	ld a,0c9h		;9740
	ld (04000h),a		;9742
	ld (04003h),a		;9745
L_9748:
	ld bc,0002eh		;9748
	ld de,09800h		;974b
	ld hl,00b00h		;974e
	call 08215h		;9751
	jr c,L_9748		;9754
	ld hl,09800h		;9756
	ld de,06a00h		;9759
	ld bc,01600h		;975c
	ldir		;975f
L_9761:
	ld bc,0049bh		;9761
	ld de,09800h		;9764
	ld hl,00500h		;9767
	call 08215h		;976a
	jr c,L_9761		;976d
	ld hl,09800h		;976f
	ld de,06000h		;9772
	ld bc,00a00h		;9775
	ldir		;9778
L_977A:
	ld bc,00493h		;977a
	ld de,09800h		;977d
	ld hl,00800h		;9780
	call 08215h		;9783
	jr c,L_977A		;9786
	ld hl,09800h		;9788
	ld de,05000h		;978b
	ld bc,01000h		;978e
	ldir		;9791
L_9793:
	ld bc,0048bh		;9793
	ld de,09800h		;9796
	ld hl,00800h		;9799
	call 08215h		;979c
	jr c,L_9793		;979f
	ld hl,09806h		;97a1
	ld de,04006h		;97a4
	ld bc,00ffah		;97a7
	ldir		;97aa
	ld hl,09800h		;97ac
	ld de,04000h		;97af
	ld bc,00006h		;97b2
	ldir		;97b5
	ld a,0ffh		;97b7
	ld (0e0fdh),a		;97b9
	ret			;97bc
L_97BD:
	ld hl,0002eh		;97bd
	ld (L_9748+1),hl		;97c0
	ld hl,00029h		;97c3
	ld (L_9761+1),hl		;97c6
	ld hl,00021h		;97c9
	ld (L_977A+1),hl		;97cc
	ld hl,00019h		;97cf
	ld (L_9793+1),hl		;97d2
	jp L_9748		;97d5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x97d8..0x9800  (40 bytes)
DATA_97D8:
	defb 008h,001h,013h,001h,0fdh,000h,060h,003h,0b0h,0f0h,0e0h,0feh,00fh,000h,081h,080h	; 97d8  ......`.........
	defb 010h,000h,086h,0bfh,007h,00fh,00dh,011h,020h,00ah,000h,08ah,0ffh,0e0h,0f0h,0b0h	; 97e8  ........ .......
	defb 008h,080h,080h,000h,000h,080h,006h,000h	; 97f8  ........
