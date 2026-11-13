; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p0D (se ejecuta en 0x9200)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09200


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_9294:	equ 0x09294

; ======================================================================
; CODIGO 0x9200..0x921b  (27 bytes)
; ======================================================================


L_9200:
	jp L_922D		;9200
L_9203:
	jp L_954F		;9203
L_9206:
	jp L_9577		;9206
L_9209:
	jp L_9588		;9209
L_920C:
	jp L_9592		;920c
L_920F:
	jp L_95BA		;920f
L_9212:
	jp L_95F2		;9212
L_9215:
	jp L_9570		;9215
L_9218:
	jp 09a00h		;9218

; ----------------------------------------------------------------------
; DATOS leido_921B: lo usa el codigo: 0x9378 ld a,(09223h) (en +8); 0x93B2 ld
;   a,(09223h) (en +8); 0x943A ld (09224h),a (en +9); 0x947F ld a,(09224h) (en
;   +9) (18 bytes)
;   0x921b..0x922d  (18 bytes)
DATA_leido_921B:
	defb 0cdh,047h,092h,0cdh,009h,082h,03eh,002h,0cdh,0a2h,092h,021h,004h,0c0h,022h,0d6h	; 921b  .G....>....!..".
	defb 092h,03eh	; 922b

; ======================================================================
; CODIGO 0x922d..0x9237  (10 bytes)
; ======================================================================


L_922D:
	call 0823ch		;922d
	ret z			;9230
	ld a,(0d1d7h)		;9231
	call 0822dh		;9234

; ----------------------------------------------------------------------
; DATOS saltos_9237: 17 destinos del despachador (call 0x822D en 0x9234) (34
;   bytes)
;   0x9237..0x9259  (34 bytes)
DATA_saltos_9237:
	defw 09259h,0926eh,09295h,092abh,092cch,092f2h,09306h,09316h	; 9237
	defw 09327h,09335h,093b2h,093dch,09404h,09448h,0951dh,09530h	; 9247
	defw 09537h	; 9257  -> L_9537

; ======================================================================
; CODIGO 0x9259..0x92c4  (107 bytes)
; ======================================================================


L_9259:
	ld a,00eh		;9259
	call 08248h		;925b
	xor a			;925e
	ld (0922ch),a		;925f
	call 09800h		;9262
L_9265:
	ld hl,0d1d7h		;9265
	inc (hl)			;9268
L_9269:
	xor a			;9269
	ld (0d1d8h),a		;926a
	ret			;926d
L_926E:
	ld a,(0d1c8h)		;926e
	cp 010h		;9271
	jr z,L_9289		;9273
	ld a,(0922ch)		;9275
	or a			;9278
	jr nz,L_927F		;9279
	call 09803h		;927b
	ret nc			;927e
L_927F:
	ld a,001h		;927f
	ld (0922ch),a		;9281
	ld a,(0d000h)		;9284
	or a			;9287
	ret nz			;9288
L_9289:
	xor a			;9289
	ld (09212h),a		;928a
	ld (0d1ffh),a		;928d
	call 0842eh		;9290
	jr L_9265		;9293
L_9295:
	call 0825ah		;9295
	ret nz			;9298
	ld a,00fh		;9299
	call 08248h		;929b
	call 09800h		;929e
	ld a,012h		;92a1
	call 08248h		;92a3
	call 09800h		;92a6
L_92A9:
	jr L_9265		;92a9
L_92AB:
	call 09803h		;92ab
	ret nc			;92ae
	call 08242h		;92af
	jp z,L_92BA		;92b2
	call 09806h		;92b5
L_92B8:
	jr L_92A9		;92b8
L_92BA:
	ld a,006h		;92ba
	ld (0d1d7h),a		;92bc
	call 0842eh		;92bf
	jr L_92A9		;92c2

; ----------------------------------------------------------------------
; DATOS suelto_92C4: nadie lo lee ni lo apunta (8 bytes)
;   0x92c4..0x92cc  (8 bytes)
DATA_suelto_92C4:
	defb 03eh,001h,032h,0e2h,0d1h,0c3h,042h,084h	; 92c4  >.2...B.

; ======================================================================
; CODIGO 0x92cc..0x92fc  (48 bytes)
; ======================================================================


L_92CC:
	ld a,(0d1d8h)		;92cc
	or a			;92cf
	jr nz,L_92E3		;92d0
	call 0825dh		;92d2
	ret nz			;92d5
	call 09809h		;92d6
L_92D9:
	ld a,004h		;92d9
	ld (0d1d9h),a		;92db
	ld hl,0d1d8h		;92de
	inc (hl)			;92e1
	ret			;92e2
L_92E3:
	call 0825dh		;92e3
	ret nz			;92e6
	call 0980ch		;92e7
	jp c,0980fh		;92ea
	call 09812h		;92ed
L_92F0:
	jr $-56		;92f0
L_92F2:
	ld a,(0d1d8h)		;92f2
	call 0822dh		;92f5
	dec d			;92f8
	sbc a,b			;92f9
	jr $-102		;92fa

; ----------------------------------------------------------------------
; DATOS suelto_92FC: nadie lo lee ni lo apunta (10 bytes)
;   0x92fc..0x9306  (10 bytes)
DATA_suelto_92FC:
	defb 01bh,098h,01eh,098h,021h,098h,024h,098h,027h,098h	; 92fc  ....!.$.'.

; ======================================================================
; CODIGO 0x9306..0x933b  (53 bytes)
; ======================================================================


L_9306:
	call 09803h		;9306
	ret nc			;9309
	call 08242h		;930a
	jp z,L_92BA		;930d
L_9310:
	ld a,001h		;9310
	ld (0d1e9h),a		;9312
	ret			;9315
L_9316:
	call 0825ah		;9316
	ret nz			;9319
	ld a,01ah		;931a
	call 08248h		;931c
	call 09800h		;931f
	call 083f2h		;9322
L_9325:
	jr $-53		;9325
L_9327:
	call 09803h		;9327
	ret nc			;932a
	call 08242h		;932b
	jr nz,L_9310		;932e
	call 09806h		;9330
L_9333:
	jr L_9325		;9333
L_9335:
	ld a,(0d1d8h)		;9335
	call 0822dh		;9338

; ----------------------------------------------------------------------
; DATOS saltos_933B: 6 destinos del despachador (call 0x822D en 0x9338) (12
;   bytes)
;   0x933b..0x9347  (12 bytes)
DATA_saltos_933B:
	defw 09347h,09360h,09369h,09371h,09382h,093a9h	; 933b

; ======================================================================
; CODIGO 0x9347..0x944e  (263 bytes)
; ======================================================================


L_9347:
	call 09809h		;9347
	call 08257h		;934a
	ret nz			;934d
	call 0980ch		;934e
	call 0980fh		;9351
	call 0842eh		;9354
L_9357:
	call L_92D9		;9357
	ld a,030h		;935a
	ld (0d1d9h),a		;935c
	ret			;935f
L_9360:
	call 0825ah		;9360
	ret nz			;9363
	call 09812h		;9364
	jr L_9357		;9367
L_9369:
	call 08311h		;9369
	call 09815h		;936c
	jr L_9357		;936f
L_9371:
	call 0825dh		;9371
	ret nz			;9374
	call 09818h		;9375
	ld a,(09223h)		;9378
	cp 007h		;937b
	jp z,0981bh		;937d
	jr L_9357		;9380
L_9382:
	call 0981eh		;9382
	xor a			;9385
	ld (0dcf3h),a		;9386
	ld hl,0c435h		;9389
	ld de,0dcb0h		;938c
	ld bc,00043h		;938f
	ldir		;9392
	call 09821h		;9394
	call 09824h		;9397
	ld a,01bh		;939a
	call 0822ah		;939c
L_939F:
	call 09809h		;939f
	xor a			;93a2
	ld (0d1cfh),a		;93a3
L_93A6:
	jp L_9333		;93a6
L_93A9:
	call 09827h		;93a9
	ret nc			;93ac
	call 0982ah		;93ad
	jr L_93A6		;93b0
L_93B2:
	ld a,(09223h)		;93b2
	cp 007h		;93b5
	jr z,L_93D7		;93b7
	ld a,(0d1c3h)		;93b9
	and 00fh		;93bc
	ret nz			;93be
	call 0980ch		;93bf
	call 0980fh		;93c2
	ld a,(0d1c7h)		;93c5
	or a			;93c8
	ret nz			;93c9
	call 0980ch		;93ca
	call 09812h		;93cd
	ld a,030h		;93d0
	ld (0d1d9h),a		;93d2
	jr L_93A6		;93d5
L_93D7:
	call 0842eh		;93d7
	jr L_93A6		;93da
L_93DC:
	ld a,(09223h)		;93dc
	cp 007h		;93df
	jr z,L_93EF		;93e1
	call 0825dh		;93e3
	ret nz			;93e6
	call 09815h		;93e7
	call 09818h		;93ea
L_93ED:
	jr L_93A6		;93ed
L_93EF:
	call 0825ah		;93ef
	ret nz			;93f2
	ld a,01bh		;93f3
	call 08248h		;93f5
	call 08251h		;93f8
	call L_939F		;93fb
	call 09812h		;93fe
	jp 09818h		;9401
L_9404:
	ld a,(0d1d8h)		;9404
	or a			;9407
	jr nz,L_9411		;9408
	call 0981bh		;940a
	ret nz			;940d
	jp L_92D9		;940e
L_9411:
	ld a,(0d000h)		;9411
	or a			;9414
	ret nz			;9415
	ld a,007h		;9416
	call L_954F		;9418
	ld a,0a8h		;941b
	call L_9577		;941d
	ld a,008h		;9420
	call L_954F		;9422
	ld a,04ch		;9425
	ld hl,0b424h		;9427
	ld (09583h),hl		;942a
	call L_9577		;942d
	call 0981eh		;9430
	ld hl,0a004h		;9433
	ld (09583h),hl		;9436
	xor a			;9439
	ld (09224h),a		;943a
	ld (09225h),a		;943d
	ld (09226h),a		;9440
	call 09821h		;9443
L_9446:
	jr L_93ED		;9446
L_9448:
	ld a,(0d1d8h)		;9448
	call 0822dh		;944b

; ----------------------------------------------------------------------
; DATOS saltos_944E: 8 destinos del despachador (call 0x822D en 0x944B) (16
;   bytes)
;   0x944e..0x945e  (16 bytes)
DATA_saltos_944E:
	defw 0945eh,09491h,0949bh,094b9h,094cah,094e8h,09513h,09508h	; 944e

; ======================================================================
; CODIGO 0x945e..0x9581  (291 bytes)
; ======================================================================


L_945E:
	call 09824h		;945e
	jp nc,09827h		;9461
	ld a,(09226h)		;9464
	inc a			;9467
	jr z,L_947F		;9468
	inc a			;946a
	ret z			;946b
	inc a			;946c
	jp z,09845h		;946d
	inc a			;9470
	jp z,L_9310		;9471
	call 0982ah		;9474
	call 0982dh		;9477
	call 09830h		;947a
	jr $-55		;947d
L_947F:
	ld a,(09224h)		;947f
	inc a			;9482
	cp 003h		;9483
	jr c,L_9488		;9485
	xor a			;9487
L_9488:
	ld (09224h),a		;9488
	call 09833h		;948b
	jp L_92D9		;948e
L_9491:
	call 0825dh		;9491
	ret nz			;9494
L_9495:
	call 09821h		;9495
	jp L_9269		;9498
L_949B:
	call 09824h		;949b
	ret nc			;949e
	ld a,(0d1eeh)		;949f
	cp 005h		;94a2
	jr z,L_94AC		;94a4
	call 0984bh		;94a6
	jp L_92D9		;94a9
L_94AC:
	call 09848h		;94ac
	jr L_9495		;94af
L_94B1:
	ld a,002h		;94b1
	ld (0d1d8h),a		;94b3
	jp 09851h		;94b6
L_94B9:
	call 09824h		;94b9
	jp nc,0984eh		;94bc
	call 08242h		;94bf
	jr nz,L_94B1		;94c2
	call 09854h		;94c4
	jp L_92D9		;94c7
L_94CA:
	call 09824h		;94ca
	jp nc,09857h		;94cd
	call 0985ah		;94d0
	ld a,(0d1e0h)		;94d3
	cp 010h		;94d6
	jr z,L_94DF		;94d8
	cp 011h		;94da
	jr z,L_950B		;94dc
	ret			;94de
L_94DF:
	call 082bah		;94df
	call 0842eh		;94e2
	jp L_92D9		;94e5
L_94E8:
	call 0825ah		;94e8
	ret nz			;94eb
	call L_96EE		;94ec
	ld a,027h		;94ef
	call 08248h		;94f1
	call 09800h		;94f4
	call L_9789		;94f7
	ld a,01bh		;94fa
	call 08248h		;94fc
	call 08251h		;94ff
	call L_92D9		;9502
	jp L_92D9		;9505
L_9508:
	call 09860h		;9508
L_950B:
	call 082bah		;950b
	call 0985dh		;950e
	jr L_9495		;9511
L_9513:
	call 0825dh		;9513
	ret nz			;9516
	call 09842h		;9517
	jp L_9495		;951a
L_951D:
	call 09836h		;951d
	jr c,L_952D		;9520
	ld a,(09229h)		;9522
	and a			;9525
	ret z			;9526
	call 08316h		;9527
	jp 09839h		;952a
L_952D:
	jp L_9446		;952d
L_9530:
	ld a,(0d1c8h)		;9530
	or a			;9533
	ret z			;9534
	jr L_952D		;9535
L_9537:
	call 0983ch		;9537
	jr c,L_9547		;953a
	ld a,(09229h)		;953c
	or a			;953f
	ret z			;9540
	call 08316h		;9541
	jp 0983fh		;9544
L_9547:
	ld a,00dh		;9547
	ld (0d1d7h),a		;9549
	jp L_9495		;954c
L_954F:
	ld (0d1e4h),a		;954f
L_9552:
	ld a,(0d1e4h)		;9552
	call L_9566		;9555
	ld de,0b000h		;9558
	call 08215h		;955b
	jr c,L_9552		;955e
	ld a,0ffh		;9560
	ld (0e0fdh),a		;9562
	ret			;9565
L_9566:
	add a,a			;9566
	add a,a			;9567
	ld hl,096cah		;9568
	call 08221h		;956b
	ld c,(hl)			;956e
	inc hl			;956f
L_9570:
	ld b,(hl)			;9570
	inc hl			;9571
	ld a,(hl)			;9572
	inc hl			;9573
	ld h,(hl)			;9574
	ld l,a			;9575
	ret			;9576
L_9577:
	ld (09582h),a		;9577
	ld ix,09581h		;957a
	jp L_95BA		;957e

; ----------------------------------------------------------------------
; DATOS leido_9581: lo usa el codigo: 0x957A ld ix,09581h; 0x9577 ld
;   (09582h),a (en +1); 0x942A ld (09583h),hl (en +2); 0x9436 ld (09583h),hl
;   (en +2) (7 bytes)
;   0x9581..0x9588  (7 bytes)
DATA_leido_9581:
	defb 020h,0c4h,004h,0a0h,000h,0b0h,080h	; 9581

; ======================================================================
; CODIGO 0x9588..0x96b6  (302 bytes)
; ======================================================================


L_9588:
	call L_9592		;9588
	ld ix,0b200h		;958b
	jp 082cch		;958f
L_9592:
	ld (0d1e4h),a		;9592
L_9595:
	ld a,(0d1e4h)		;9595
	call L_95A9		;9598
	ld de,0b200h		;959b
	call 08215h		;959e
	jr c,L_9595		;95a1
	ld a,0ffh		;95a3
	ld (0e0fdh),a		;95a5
	ret			;95a8
L_95A9:
	add a,a			;95a9
	add a,a			;95aa
	ld hl,096b6h		;95ab
	call 08221h		;95ae
	ld c,(hl)			;95b1
	inc hl			;95b2
	ld b,(hl)			;95b3
	inc hl			;95b4
	ld a,(hl)			;95b5
	inc hl			;95b6
	ld h,(hl)			;95b7
	ld l,a			;95b8
	ret			;95b9
L_95BA:
	ld a,(ix+000h)		;95ba
	rla			;95bd
	ret c			;95be
	call L_95C9		;95bf
	ld de,00006h		;95c2
	add ix,de		;95c5
	jr L_95BA		;95c7
L_95C9:
	push bc			;95c9
	bit 6,(ix+000h)		;95ca
	jr nz,L_95EF		;95ce
	bit 4,(ix+000h)		;95d0
	jr nz,L_95F7		;95d4
	call L_95DE		;95d6
	call L_95FF		;95d9
	pop bc			;95dc
	ret			;95dd
L_95DE:
	ld b,(ix+001h)		;95de
	ld l,(ix+002h)		;95e1
	ld h,(ix+003h)		;95e4
	ld e,(ix+004h)		;95e7
	ld d,(ix+005h)		;95ea
	ex de,hl			;95ed
	ret			;95ee
L_95EF:
	call L_95DE		;95ef
L_95F2:
	call L_9609		;95f2
	pop bc			;95f5
	ret			;95f6
L_95F7:
	call L_95DE		;95f7
	call L_9613		;95fa
	pop bc			;95fd
	ret			;95fe
L_95FF:
	push bc			;95ff
	ld b,001h		;9600
	call L_9632		;9602
	pop bc			;9605
	djnz L_95FF		;9606
	ret			;9608
L_9609:
	push bc			;9609
	ld b,001h		;960a
	call L_9647		;960c
	pop bc			;960f
	djnz L_9609		;9610
	ret			;9612
L_9613:
	push bc			;9613
	ld b,001h		;9614
	call L_967C		;9616
	pop bc			;9619
	djnz L_9613		;961a
	ret			;961c
L_961D:
	push de			;961d
	ld b,008h		;961e
L_9620:
	push bc			;9620
	ld bc,00004h		;9621
	call 08224h		;9624
	ex de,hl			;9627
	ld bc,00080h		;9628
	add hl,bc			;962b
	ex de,hl			;962c
	pop bc			;962d
	djnz L_9620		;962e
	pop de			;9630
	ret			;9631
L_9632:
	push bc			;9632
	call L_961D		;9633
	ld a,004h		;9636
	add a,e			;9638
	cp 080h		;9639
	jr nz,L_9642		;963b
	ld a,004h		;963d
	add a,d			;963f
	ld d,a			;9640
	xor a			;9641
L_9642:
	ld e,a			;9642
	pop bc			;9643
	djnz L_9632		;9644
	ret			;9646
L_9647:
	push bc			;9647
	push de			;9648
	ld de,0d303h		;9649
	ld c,008h		;964c
L_964E:
	ld b,004h		;964e
L_9650:
	ld a,(hl)			;9650
	rrca			;9651
	rrca			;9652
	rrca			;9653
	rrca			;9654
	ld (de),a			;9655
	dec de			;9656
	inc hl			;9657
	djnz L_9650		;9658
	ld a,008h		;965a
	call 08206h		;965c
	dec c			;965f
	jr nz,L_964E		;9660
	pop de			;9662
	push hl			;9663
	ld hl,0d300h		;9664
	call L_961D		;9667
	pop hl			;966a
	ld a,004h		;966b
	add a,e			;966d
	cp 080h		;966e
	jr nz,L_9677		;9670
	ld a,004h		;9672
	add a,d			;9674
	ld d,a			;9675
	xor a			;9676
L_9677:
	ld e,a			;9677
	pop bc			;9678
	djnz L_9647		;9679
	ret			;967b
L_967C:
	push bc			;967c
	push de			;967d
	ld de,0d31ch		;967e
	ld c,008h		;9681
L_9683:
	ld b,004h		;9683
L_9685:
	ld a,(hl)			;9685
	ld (de),a			;9686
	inc de			;9687
	inc hl			;9688
	djnz L_9685		;9689
	call L_96AB		;968b
	dec c			;968e
	jr nz,L_9683		;968f
	pop de			;9691
	push hl			;9692
	ld hl,0d300h		;9693
	call L_961D		;9696
	pop hl			;9699
	ld a,004h		;969a
	add a,e			;969c
	cp 080h		;969d
	jr nz,L_96A6		;969f
	ld a,004h		;96a1
	add a,d			;96a3
	ld d,a			;96a4
	xor a			;96a5
L_96A6:
	ld e,a			;96a6
	pop bc			;96a7
	djnz L_967C		;96a8
	ret			;96aa
L_96AB:
	push hl			;96ab
	ld hl,00008h		;96ac
	ex de,hl			;96af
	or a			;96b0
	sbc hl,de		;96b1
	ex de,hl			;96b3
	pop hl			;96b4
	ret			;96b5

; ----------------------------------------------------------------------
; DATOS leido_96B6: lo usa el codigo: 0x95AB ld hl,096b6h -> 0x8221 (tabla de
;   bytes: HL + A); 0x9568 ld hl,096cah -> 0x8221 (tabla de bytes: HL + A) (en
;   +20) (56 bytes)
;   0x96b6..0x96ee  (56 bytes)
DATA_leido_96B6:
	defb 049h,004h,000h,002h,04dh,001h,000h,003h,097h,001h,000h,003h,05dh,003h,000h,003h	; 96b6  I...M.......]...
	defb 0f0h,003h,000h,003h,014h,004h,000h,00fh,006h,004h,000h,00eh,0feh,003h,000h,008h	; 96c6  ................
	defb 0f3h,003h,000h,00bh,0b3h,003h,000h,002h,0adh,003h,000h,006h,0abh,003h,000h,002h	; 96d6  ................
	defb 0a0h,003h,000h,00bh,09bh,003h,000h,005h	; 96e6  ........

; ======================================================================
; CODIGO 0x96ee..0x97a4  (182 bytes)
; ======================================================================


L_96EE:
	ld a,(0d1d6h)		;96ee
	ld hl,097a4h		;96f1
	call 0826ch		;96f4
	ld (L_9714+1),hl		;96f7
	ld hl,0049bh		;96fa
	ld (L_972D+1),hl		;96fd
	ld hl,00493h		;9700
	ld (L_9746+1),hl		;9703
	ld hl,0048bh		;9706
	ld (L_975F+1),hl		;9709
	ld a,0c9h		;970c
	ld (04000h),a		;970e
	ld (04003h),a		;9711
L_9714:
	ld bc,0002eh		;9714
	ld de,09800h		;9717
	ld hl,00b00h		;971a
	call 08215h		;971d
	jr c,L_9714		;9720
	ld hl,09800h		;9722
	ld de,06a00h		;9725
	ld bc,01600h		;9728
	ldir		;972b
L_972D:
	ld bc,0049bh		;972d
	ld de,09800h		;9730
	ld hl,00500h		;9733
	call 08215h		;9736
	jr c,L_972D		;9739
	ld hl,09800h		;973b
	ld de,06000h		;973e
	ld bc,00a00h		;9741
	ldir		;9744
L_9746:
	ld bc,00493h		;9746
	ld de,09800h		;9749
	ld hl,00800h		;974c
	call 08215h		;974f
	jr c,L_9746		;9752
	ld hl,09800h		;9754
	ld de,05000h		;9757
	ld bc,01000h		;975a
	ldir		;975d
L_975F:
	ld bc,0048bh		;975f
	ld de,09800h		;9762
	ld hl,00800h		;9765
	call 08215h		;9768
	jr c,L_975F		;976b
	ld hl,09806h		;976d
	ld de,04006h		;9770
	ld bc,00ffah		;9773
	ldir		;9776
	ld hl,09800h		;9778
	ld de,04000h		;977b
	ld bc,00006h		;977e
	ldir		;9781
	ld a,0ffh		;9783
	ld (0e0fdh),a		;9785
	ret			;9788
L_9789:
	ld hl,0002eh		;9789
	ld (L_9714+1),hl		;978c
	ld hl,00029h		;978f
	ld (L_972D+1),hl		;9792
	ld hl,00021h		;9795
	ld (L_9746+1),hl		;9798
	ld hl,00019h		;979b
	ld (L_975F+1),hl		;979e
	jp L_9714		;97a1

; ----------------------------------------------------------------------
; DATOS leido_97A4: lo usa el codigo: 0x96F1 ld hl,097a4h -> 0x826C (tabla de
;   palabras: la de A) (92 bytes)
;   0x97a4..0x9800  (92 bytes)
DATA_leido_97A4:
	defb 008h,001h,013h,001h,0fdh,000h,060h,003h,022h,035h,097h,021h,029h,000h,022h,04eh	; 97a4  ......`."5.!)."N
	defb 097h,021h,021h,000h,022h,067h,097h,021h,019h,000h,022h,080h,097h,0c3h,034h,097h	; 97b4  .!!."g.!.."...4.
	defb 008h,001h,013h,001h,0fdh,000h,060h,003h,005h,000h,083h,001h,000h,000h,003h,001h	; 97c4  ......`.........
	defb 085h,011h,00dh,00fh,007h,0ffh,009h,000h,087h,080h,004h,088h,0b0h,0f0h,0e0h,0feh	; 97d4  ................
	defb 00fh,000h,081h,080h,010h,000h,086h,0bfh,007h,00fh,00dh,011h,020h,00ah,000h,08ah	; 97e4  ............ ...
	defb 0ffh,0e0h,0f0h,0b0h,008h,080h,080h,000h,000h,080h,006h,000h	; 97f4  ............
