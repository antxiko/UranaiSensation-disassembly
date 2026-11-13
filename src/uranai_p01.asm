; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p01 (se ejecuta en 0x9200)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09200


; ======================================================================
; CODIGO 0x9200..0x9203  (3 bytes)
; ======================================================================


L_9200:
	jp L_9208		;9200

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9203..0x9208  (5 bytes)
DATA_9203:
	defb 0c3h,08eh,0c3h,0f6h,095h	; 9203

; ======================================================================
; CODIGO 0x9208..0x9215  (13 bytes)
; ======================================================================


L_9208:
	call 0823fh		;9208
	ret z			;920b
	call 08260h		;920c
	ld a,(0d1d7h)		;920f
	call 0822dh		;9212

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9215..0x921d  (8 bytes)
DATA_9215:
	defb 01dh,092h,029h,092h,03dh,092h,043h,092h	; 9215  ..).=.C.

; ======================================================================
; CODIGO 0x921d..0x9249  (44 bytes)
; ======================================================================


L_921D:
	call 09c06h		;921d
L_9220:
	ld hl,0d1d7h		;9220
	inc (hl)			;9223
L_9224:
	xor a			;9224
	ld (0d1d8h),a		;9225
	ret			;9228
L_9229:
	call 09c09h		;9229
	jp nc,09c12h		;922c
	ld a,(0d22ah)		;922f
	dec a			;9232
	jr z,L_9220		;9233
	call 09c0ch		;9235
	jr nz,L_9220		;9238
	jp 09c0fh		;923a
L_923D:
	call 09c15h		;923d
	ret nc			;9240
	jr L_9220		;9241
L_9243:
	ld a,(0d22ah)		;9243
	call 0822dh		;9246

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9249..0x9251  (8 bytes)
DATA_9249:
	defb 005h,095h,051h,092h,072h,094h,0a5h,095h	; 9249  ..Q.r...

; ======================================================================
; CODIGO 0x9251..0x925c  (11 bytes)
; ======================================================================


L_9251:
	call 09c6ch		;9251
	jr c,$+56		;9254
	ld a,(0d1d8h)		;9256
	call 0822dh		;9259

; ----------------------------------------------------------------------
; DATOS sin identificar  0x925c..0x928c  (48 bytes)
DATA_925C:
	defb 0a4h,092h,0b6h,092h,0c4h,092h,0d7h,092h,0eah,092h,01eh,093h,02ch,093h,048h,093h	; 925c  ............,.H.
	defb 051h,093h,064h,093h,07fh,093h,097h,093h,0adh,093h,0cah,093h,0d3h,093h,0e6h,093h	; 926c  Q.d.............
	defb 0f9h,093h,002h,094h,018h,094h,03ah,094h,043h,094h,057h,094h,061h,094h,06ah,094h	; 927c  ......:.C.W.a.j.

; ======================================================================
; CODIGO 0x928c..0x93f4  (360 bytes)
; ======================================================================


L_928C:
	ld a,(0d1d8h)		;928c
	cp 002h		;928f
	jr c,L_929E		;9291
	call 09c21h		;9293
L_9296:
	ld a,001h		;9296
	ld (0d1e2h),a		;9298
	jp 08442h		;929b
L_929E:
	call 09c66h		;929e
	jp L_94E0		;92a1
L_92A4:
	call 09c63h		;92a4
L_92A7:
	ld hl,0d1d8h		;92a7
	inc (hl)			;92aa
	ret			;92ab
L_92AC:
	call L_92A7		;92ac
	jr L_92A7		;92af
L_92B1:
	ld hl,0d1d8h		;92b1
	dec (hl)			;92b4
	ret			;92b5
L_92B6:
	call 09c1bh		;92b6
	jp nc,09c03h		;92b9
	call 09c1eh		;92bc
L_92BF:
	call L_9296		;92bf
	jr L_92A7		;92c2
L_92C4:
	call 0825ah		;92c4
	ret nz			;92c7
	ld a,004h		;92c8
	call 08248h		;92ca
	call 09c00h		;92cd
	ld a,090h		;92d0
	ld (0d1d9h),a		;92d2
	jr L_92A7		;92d5
L_92D7:
	call 09c03h		;92d7
	ld a,(0d1c8h)		;92da
	and 010h		;92dd
	jr nz,L_92E5		;92df
	call 0825dh		;92e1
	ret nz			;92e4
L_92E5:
	call 09c06h		;92e5
L_92E8:
	jr L_92A7		;92e8
L_92EA:
	call 09c09h		;92ea
	jp nc,09c0ch		;92ed
	ld a,(0d22ch)		;92f0
	cp 04eh		;92f3
	jr nc,L_9307		;92f5
	call 09c0fh		;92f7
	ld a,(0d229h)		;92fa
	inc a			;92fd
	ld (0d229h),a		;92fe
	cp 004h		;9301
	ret c			;9303
	jp 09c12h		;9304
L_9307:
	call 09c15h		;9307
	jr c,L_9311		;930a
	call 09c18h		;930c
L_930F:
	jr L_92E8		;930f
L_9311:
	ld a,001h		;9311
	ld (09204h),a		;9313
L_9316:
	ld a,004h		;9316
	ld (0d1d8h),a		;9318
	jp 09c1bh		;931b
L_931E:
	call 09c1eh		;931e
	ret nc			;9321
	call 08242h		;9322
	jr nz,L_9316		;9325
	call 09c24h		;9327
L_932A:
	jr L_930F		;932a
L_932C:
	call 09c1eh		;932c
	ret nc			;932f
	call 09c27h		;9330
	dec a			;9333
	jr z,L_9343		;9334
	dec a			;9336
	jp z,L_942B		;9337
L_933A:
	xor a			;933a
	ld (0d20ah),a		;933b
	call 09c2ah		;933e
L_9341:
	jr L_932A		;9341
L_9343:
	call L_92AC		;9343
	jr L_935A		;9346
L_9348:
	call 09c2dh		;9348
	ret c			;934b
	call 09c30h		;934c
L_934F:
	jr L_9341		;934f
L_9351:
	call 09c1eh		;9351
	ret nc			;9354
	call 08242h		;9355
	jr nz,L_935F		;9358
L_935A:
	call 09c33h		;935a
L_935D:
	jr L_934F		;935d
L_935F:
	call 09c6fh		;935f
	jr L_933A		;9362
L_9364:
	call 09c1eh		;9364
	ret nc			;9367
	call 09c27h		;9368
	dec a			;936b
	jr z,L_937A		;936c
	dec a			;936e
	jp z,L_942B		;936f
	call 09c36h		;9372
L_9375:
	call 09c39h		;9375
L_9378:
	jr L_935D		;9378
L_937A:
	call L_92AC		;937a
	jr L_93A3		;937d
L_937F:
	call 09c3ch		;937f
	ret c			;9382
	ld a,(0d208h)		;9383
	cp 080h		;9386
	jr z,L_938F		;9388
	call 09c3fh		;938a
L_938D:
	jr L_9378		;938d
L_938F:
	call 082e9h		;938f
	call L_92B1		;9392
	jr L_9375		;9395
L_9397:
	call 09c1eh		;9397
	ret nc			;939a
	call 08242h		;939b
	jr nz,L_93A8		;939e
	call 09c75h		;93a0
L_93A3:
	call 09c45h		;93a3
L_93A6:
	jr L_938D		;93a6
L_93A8:
	call 09c72h		;93a8
	jr L_9375		;93ab
L_93AD:
	call 09c1eh		;93ad
	ret nc			;93b0
	call 09c27h		;93b1
	dec a			;93b4
	jr z,L_93C5		;93b5
	dec a			;93b7
	jp z,L_942B		;93b8
L_93BB:
	ld a,003h		;93bb
	ld (0d20ah),a		;93bd
	call 09c48h		;93c0
L_93C3:
	jr L_93A6		;93c3
L_93C5:
	call L_92AC		;93c5
	jr L_93DC		;93c8
L_93CA:
	call 09c4bh		;93ca
	ret c			;93cd
	call 09c4eh		;93ce
L_93D1:
	jr L_93C3		;93d1
L_93D3:
	call 09c1eh		;93d3
	ret nc			;93d6
	call 08242h		;93d7
	jr nz,L_93E1		;93da
L_93DC:
	call 09c51h		;93dc
L_93DF:
	jr L_93D1		;93df
L_93E1:
	call 09c78h		;93e1
	jr L_93BB		;93e4
L_93E6:
	call 09c1eh		;93e6
	ret nc			;93e9
	call 08242h		;93ea
	jr nz,$+62		;93ed
L_93EF:
	call 09c54h		;93ef
L_93F2:
	jr L_93DF		;93f2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x93f4..0x93f9  (5 bytes)
DATA_93F4:
	defb 0cdh,0ach,092h,018h,015h	; 93f4

; ======================================================================
; CODIGO 0x93f9..0x9478  (127 bytes)
; ======================================================================


L_93F9:
	call 09c57h		;93f9
	ret c			;93fc
	call 09c5ah		;93fd
L_9400:
	jr $-14		;9400
L_9402:
	call 09c1eh		;9402
	ret nc			;9405
	call 08242h		;9406
	jr nz,L_9413		;9409
	call 09c7eh		;940b
	call 09c5dh		;940e
L_9411:
	jr L_9400		;9411
L_9413:
	call 09c7bh		;9413
	jr $-39		;9416
L_9418:
	call 09c1eh		;9418
	ret nc			;941b
	call 09c27h		;941c
	dec a			;941f
	jr z,L_9435		;9420
	dec a			;9422
	jp z,L_942B		;9423
L_9426:
	call 09c60h		;9426
L_9429:
	jr L_9411		;9429
L_942B:
	ld a,014h		;942b
	ld (0d1d8h),a		;942d
	call 082bah		;9430
	jr L_944C		;9433
L_9435:
	call L_92AC		;9435
	jr L_944C		;9438
L_943A:
	call 09c63h		;943a
	ret c			;943d
	call 09c66h		;943e
L_9441:
	jr L_9429		;9441
L_9443:
	call 09c1eh		;9443
	ret nc			;9446
	call 08242h		;9447
	jr nz,L_9452		;944a
L_944C:
	call 09c69h		;944c
	jp L_92BF		;944f
L_9452:
	call 09c81h		;9452
	jr L_9426		;9455
L_9457:
	call 0825ah		;9457
	ret nz			;945a
	call 09618h		;945b
	jp L_92AC		;945e
L_9461:
	call 0825ah		;9461
	ret nz			;9464
	jr L_9441		;9465
L_9467:
	call L_9224		;9467
L_946A:
	ld a,003h		;946a
	call 08248h		;946c
	jp 09c00h		;946f
L_9472:
	ld a,(0d1d8h)		;9472
	call 0822dh		;9475

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9478..0x9488  (16 bytes)
DATA_9478:
	defb 088h,094h,08dh,094h,09bh,094h,0b6h,094h,0cch,094h,0e8h,094h,0ffh,094h,067h,094h	; 9478  ..............g.

; ======================================================================
; CODIGO 0x9488..0x950b  (131 bytes)
; ======================================================================


L_9488:
	call 09c7eh		;9488
	jr $-74		;948b
L_948D:
	call 09c09h		;948d
	ret nc			;9490
	call 08242h		;9491
	jr nz,L_94DD		;9494
	call 09c18h		;9496
L_9499:
	jr $-88		;9499
L_949B:
	ld a,(0d1c8h)		;949b
	and 080h		;949e
	jr nz,L_94DD		;94a0
	call 09c1bh		;94a2
	jp nc,09c6fh		;94a5
	call 09c1eh		;94a8
	call 09c8ah		;94ab
	jp z,082e9h		;94ae
	call 09c81h		;94b1
	jr L_9499		;94b4
L_94B6:
	ld a,(0d1c8h)		;94b6
	and 080h		;94b9
	jr nz,L_94DA		;94bb
	call 09c09h		;94bd
	ret nc			;94c0
	call 08242h		;94c1
	jp nz,09c87h		;94c4
	call 0842eh		;94c7
	jr L_9499		;94ca
L_94CC:
	call 0825ah		;94cc
	ret nz			;94cf
	ld a,005h		;94d0
	call 08248h		;94d2
	call 09c00h		;94d5
L_94D8:
	jr L_9499		;94d8
L_94DA:
	call 09c84h		;94da
L_94DD:
	call 09c27h		;94dd
L_94E0:
	xor a			;94e0
	ld (0d1d7h),a		;94e1
	ld (0d22ch),a		;94e4
	ret			;94e7
L_94E8:
	ld a,(0d1c8h)		;94e8
	and 010h		;94eb
	jr nz,L_94F7		;94ed
	ld a,(0d1dbh)		;94ef
	or a			;94f2
	ret z			;94f3
	jp 09c03h		;94f4
L_94F7:
	call 082f3h		;94f7
	call 0842eh		;94fa
L_94FD:
	jr L_94D8		;94fd
L_94FF:
	call 0825ah		;94ff
	ret nz			;9502
	jr L_94FD		;9503
L_9505:
	ld a,(0d1d8h)		;9505
	call 0822dh		;9508

; ----------------------------------------------------------------------
; DATOS sin identificar  0x950b..0x9515  (10 bytes)
DATA_950B:
	defb 015h,095h,01ah,095h,039h,095h,08dh,095h,09dh,095h	; 950b  ....9.....

; ======================================================================
; CODIGO 0x9515..0x95ab  (150 bytes)
; ======================================================================


L_9515:
	call 09c39h		;9515
L_9518:
	jr $-27		;9518
L_951A:
	call 09c09h		;951a
	jp nc,09c3ch		;951d
	ld a,(0d1ceh)		;9520
	cp 002h		;9523
	jr z,L_9530		;9525
	call 09c42h		;9527
	ret c			;952a
	call 09c45h		;952b
L_952E:
	jr L_9518		;952e
L_9530:
	call 09c3fh		;9530
	ld a,004h		;9533
	ld (0d1d8h),a		;9535
	ret			;9538
L_9539:
	ld a,(0d1c8h)		;9539
	and 080h		;953c
	jp nz,09c60h		;953e
	call 09c1bh		;9541
	jr nc,L_9587		;9544
	call 09c4bh		;9546
	jr z,L_9581		;9549
	call 09c51h		;954b
	jr z,L_9562		;954e
	ld a,002h		;9550
	ld (0d20ah),a		;9552
	call 09c54h		;9555
	cp (ix+001h)		;9558
	jr z,L_9577		;955b
	ld a,001h		;955d
	ld (0d20ah),a		;955f
L_9562:
	call 09c57h		;9562
	ld a,(0d22fh)		;9565
	ld (0d22bh),a		;9568
	ld hl,0d20ah		;956b
	dec (hl)			;956e
	jp nz,09c4eh		;956f
	call 09c5ah		;9572
L_9575:
	jr L_952E		;9575
L_9577:
	call 082e9h		;9577
	ld hl,0d20ah		;957a
	dec (hl)			;957d
	jp 09c4eh		;957e
L_9581:
	call 082e9h		;9581
	jp 09c4eh		;9584
L_9587:
	call 09c03h		;9587
	jp 09c48h		;958a
L_958D:
	call 09c09h		;958d
	ret nc			;9590
	call 08242h		;9591
	jp nz,09c5dh		;9594
	ld a,001h		;9597
	ld (0d1e9h),a		;9599
	ret			;959c
L_959D:
	xor a			;959d
	ld (0d1d7h),a		;959e
	ld (0d22ch),a		;95a1
	ret			;95a4
L_95A5:
	ld a,(0d1d8h)		;95a5
	call 0822dh		;95a8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x95ab..0x95b7  (12 bytes)
DATA_95AB:
	defb 0b7h,095h,0bch,095h,0cah,095h,0d8h,095h,0e7h,095h,0f0h,095h	; 95ab  ............

; ======================================================================
; CODIGO 0x95b7..0x95fc  (69 bytes)
; ======================================================================


L_95B7:
	call 09c2dh		;95b7
L_95BA:
	jr $-69		;95ba
L_95BC:
	call 09c09h		;95bc
	ret nc			;95bf
	call 08242h		;95c0
	jr nz,L_95F6		;95c3
	call 09c2ah		;95c5
L_95C8:
	jr L_95BA		;95c8
L_95CA:
	call 09c7bh		;95ca
	jp nc,09c6fh		;95cd
	call 09c30h		;95d0
	jp z,09c69h		;95d3
L_95D6:
	jr L_95C8		;95d6
L_95D8:
	call 09c78h		;95d8
	ret nc			;95db
	call 08242h		;95dc
	jp nz,09c72h		;95df
	call 09c33h		;95e2
L_95E5:
	jr L_95D6		;95e5
L_95E7:
	call 0825ah		;95e7
	ret nz			;95ea
	call 09618h		;95eb
	jr L_95E5		;95ee
L_95F0:
	call 0844ch		;95f0
	jp 09c75h		;95f3
L_95F6:
	call 09c36h		;95f6
	jp L_94E0		;95f9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x95fc..0x9600  (4 bytes)
DATA_95FC:
	defb 011h,01ch,0d3h,00eh	; 95fc
