; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - nucleo (se ejecuta en 0x8200)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08200


; ======================================================================
; CODIGO 0x8200..0x84fb  (763 bytes)
; ======================================================================



; ----------------------------------------------------------------------
; ===== tabla de saltos: las partes llaman al nucleo por aqui =====
; ----------------------------------------------------------------------
L_8200:
	jp L_8451		;8200
L_8203:
	jp L_89A4		;8203
L_8206:
	jp L_8536		;8206
L_8209:
	jp L_8CD3		;8209
L_820C:
	jp L_8BF8		;820c
L_820F:
	jp L_8EB3		;820f
L_8212:
	jp L_8CE3		;8212
L_8215:
	jp L_88EE		;8215
L_8218:
	jp L_8EC7		;8218
L_821B:
	jp L_8AFF		;821b
L_821E:
	jp L_8530		;821e
L_8221:
	jp L_8531		;8221
L_8224:
	jp L_8AD3		;8224
L_8227:
	jp L_8908		;8227
L_822A:
	jp L_8E2C		;822a
L_822D:
	jp L_853B		;822d
L_8230:
	jp L_853C		;8230
L_8233:
	jp L_8547		;8233
L_8236:
	jp L_8558		;8236
L_8239:
	jp L_856E		;8239
L_823C:
	jp L_8777		;823c
L_823F:
	jp L_8781		;823f
L_8242:
	jp L_87E3		;8242
L_8245:
	jp L_888F		;8245
L_8248:
	jp L_8EA0		;8248
L_824B:
	jp L_890C		;824b
L_824E:
	jp L_8926		;824e
L_8251:
	jp L_8967		;8251
L_8254:
	jp L_8972		;8254
L_8257:
	jp L_8987		;8257
L_825A:
	jp L_89C0		;825a
L_825D:
	jp L_89F1		;825d
L_8260:
	jp L_89F6		;8260
L_8263:
	jp L_8ACB		;8263
L_8266:
	jp L_8AE6		;8266
L_8269:
	jp L_8AF9		;8269
L_826C:
	jp L_8B22		;826c
L_826F:
	jp L_8B2A		;826f
L_8272:
	jp L_8B2F		;8272
L_8275:
	jp L_8B42		;8275
L_8278:
	jp L_8B52		;8278
L_827B:
	jp L_8B47		;827b
L_827E:
	jp L_8BDA		;827e
L_8281:
	jp L_8BEA		;8281
L_8284:
	jp L_8C3D		;8284
L_8287:
	jp L_8C77		;8287
L_828A:
	jp L_8C90		;828a
L_828D:
	jp L_8C9A		;828d
L_8290:
	jp L_8CBA		;8290
L_8293:
	jp L_8CED		;8293
L_8296:
	jp L_8CF5		;8296
L_8299:
	jp L_8CFC		;8299
L_829C:
	jp L_8D07		;829c
L_829F:
	jp L_8D15		;829f
L_82A2:
	jp L_8D47		;82a2
L_82A5:
	jp L_8D67		;82a5
L_82A8:
	jp L_8D70		;82a8
L_82AB:
	jp L_8D7A		;82ab
L_82AE:
	jp L_8DA0		;82ae
L_82B1:
	jp L_8DA9		;82b1
L_82B4:
	jp L_8DFF		;82b4
L_82B7:
	jp L_8E02		;82b7
L_82BA:
	jp L_8E07		;82ba
L_82BD:
	jp L_8E18		;82bd
L_82C0:
	jp L_8E3F		;82c0
L_82C3:
	jp L_8E40		;82c3
L_82C6:
	jp L_8E7C		;82c6
L_82C9:
	jp L_8E88		;82c9
L_82CC:
	jp L_8FC6		;82cc
L_82CF:
	jp L_8F40		;82cf
L_82D2:
	jp L_8F6E		;82d2
L_82D5:
	jp L_82D2		;82d5
L_82D8:
	jp L_8F96		;82d8
L_82DB:
	jp L_88BD		;82db
L_82DE:
	jp L_894E		;82de
L_82E1:
	jp L_88BA		;82e1

; ----------------------------------------------------------------------
; ===== peticiones de sonido: A = el numero, al controlador de 0x4000 por 0x8558 =====
; ----------------------------------------------------------------------
L_82E4:
	ld a,001h		;82e4
	jp L_8558		;82e6
L_82E9:
	ld a,002h		;82e9
	jp L_8558		;82eb
L_82EE:
	ld a,003h		;82ee
	jp L_8558		;82f0
L_82F3:
	ld a,004h		;82f3
	jp L_8558		;82f5
L_82F8:
	ld a,005h		;82f8
	jp L_8558		;82fa
L_82FD:
	ld a,006h		;82fd
	jp L_8558		;82ff
L_8302:
	ld a,007h		;8302
	jp L_8558		;8304
L_8307:
	ld a,008h		;8307
	jp L_8558		;8309
L_830C:
	ld a,009h		;830c
	jp L_8558		;830e
L_8311:
	ld a,00ah		;8311
	jp L_8558		;8313
L_8316:
	ld a,00bh		;8316
	jp L_8558		;8318
L_831B:
	ld a,00ch		;831b
	jp L_8558		;831d
L_8320:
	ld a,00dh		;8320
	jp L_8558		;8322
L_8325:
	ld a,00eh		;8325
	jp L_8558		;8327
L_832A:
	ld a,00fh		;832a
	jp L_8558		;832c
L_832F:
	ld a,010h		;832f
	jp L_8558		;8331
L_8334:
	ld a,011h		;8334
	jp L_8558		;8336
L_8339:
	ld a,012h		;8339
	jp L_8558		;833b
L_833E:
	ld a,013h		;833e
	jp L_8558		;8340
L_8343:
	ld a,014h		;8343
	jp L_8558		;8345
L_8348:
	ld a,015h		;8348
	jp L_8558		;834a
L_834D:
	ld a,016h		;834d
	jp L_8558		;834f
L_8352:
	ld a,017h		;8352
	jp L_8558		;8354
L_8357:
	ld a,018h		;8357
	jp L_8558		;8359
L_835C:
	ld a,019h		;835c
	jp L_8558		;835e
L_8361:
	ld a,01ah		;8361
	jp L_8558		;8363
L_8366:
	ld a,01bh		;8366
	jp L_8558		;8368
L_836B:
	ld a,01ch		;836b
	jp L_8558		;836d
L_8370:
	ld a,01dh		;8370
	jp L_8558		;8372
L_8375:
	ld a,01eh		;8375
	jp L_8558		;8377
L_837A:
	ld a,01fh		;837a
	jp L_8558		;837c
L_837F:
	ld a,020h		;837f
	jp L_8558		;8381
L_8384:
	ld a,021h		;8384
	jp L_8558		;8386
L_8389:
	ld a,022h		;8389
	jp L_8558		;838b
L_838E:
	ld a,023h		;838e
	jp L_8558		;8390
L_8393:
	ld a,024h		;8393
	jp L_8558		;8395
L_8398:
	ld a,025h		;8398
	jp L_8558		;839a
L_839D:
	ld a,026h		;839d
	jp L_8558		;839f
L_83A2:
	ld a,027h		;83a2
	jp L_8558		;83a4
L_83A7:
	ld a,028h		;83a7
	jp L_8558		;83a9
L_83AC:
	ld a,029h		;83ac
	jp L_8558		;83ae
L_83B1:
	ld a,02ah		;83b1
	jp L_8558		;83b3
L_83B6:
	ld a,02bh		;83b6
	jp L_8558		;83b8
L_83BB:
	ld a,02ch		;83bb
	jp L_8558		;83bd
L_83C0:
	ld a,02dh		;83c0
	jp L_8558		;83c2
L_83C5:
	ld a,02eh		;83c5
	jp L_8558		;83c7
L_83CA:
	ld a,02fh		;83ca
	jp L_8558		;83cc
L_83CF:
	ld a,030h		;83cf
	jp L_8558		;83d1
L_83D4:
	ld a,031h		;83d4
	jp L_8558		;83d6
L_83D9:
	ld a,032h		;83d9
	jp L_8558		;83db
L_83DE:
	ld a,033h		;83de
	jp L_8558		;83e0
L_83E3:
	ld a,034h		;83e3
	jp L_8558		;83e5
L_83E8:
	ld a,035h		;83e8
	jp L_8558		;83ea
L_83ED:
	ld a,036h		;83ed
	jp L_8558		;83ef
L_83F2:
	ld a,037h		;83f2
	jp L_8558		;83f4
L_83F7:
	ld a,038h		;83f7
	jp L_8558		;83f9
L_83FC:
	ld a,039h		;83fc
	jp L_8558		;83fe
L_8401:
	ld a,03ah		;8401
	jp L_8558		;8403
L_8406:
	ld a,03bh		;8406
	jp L_8558		;8408
L_840B:
	ld a,03ch		;840b
	jp L_8558		;840d
L_8410:
	ld a,03dh		;8410
	jp L_8558		;8412
L_8415:
	ld a,03eh		;8415
	jp L_8558		;8417
L_841A:
	ld a,03fh		;841a
	jp L_8558		;841c
L_841F:
	ld a,040h		;841f
	jp L_8558		;8421
L_8424:
	ld a,041h		;8424
	jp L_8558		;8426
L_8429:
	ld a,080h		;8429
	jp L_8558		;842b
L_842E:
	ld a,081h		;842e
	jp L_8558		;8430
L_8433:
	ld a,082h		;8433
	jp L_8558		;8435
L_8438:
	ld a,083h		;8438
	jp L_8558		;843a
L_843D:
	ld a,084h		;843d
	jp L_8558		;843f
L_8442:
	ld a,085h		;8442
	jp L_8558		;8444
L_8447:
	ld a,086h		;8447
	jp L_8558		;8449
L_844C:
	call L_843D		;844c
	jr L_8433		;844f

; ----------------------------------------------------------------------
; ===== entrada desde el arranque =====
; ----------------------------------------------------------------------
L_8451:
	ld hl,085cdh		;8451
	ld de,L_845A		;8454
	push de			;8457
	push hl			;8458
	ret			;8459
L_845A:
	ld hl,0fd9fh		;845a
	ld de,0e0f4h		;845d
	ld bc,00005h		;8460
	ldir		;8463
	ld a,028h		;8465
	call L_8EA0		;8467
	call 09a03h		;846a
	call L_8579		;846d
	jp nc,L_85CB		;8470
	ld bc,00019h		;8473
	ld de,04000h		;8476
	ld a,004h		;8479
L_847B:
	push af			;847b
	push bc			;847c
	push de			;847d
	push de			;847e
	ld de,09200h		;847f
	ld hl,00800h		;8482
	call L_8908		;8485
	pop de			;8488
	ld hl,09200h		;8489
	ld bc,01000h		;848c
	ldir		;848f
	pop de			;8491
	push hl			;8492
	ld hl,01000h		;8493
	add hl,de			;8496
	ex de,hl			;8497
	pop hl			;8498
	pop bc			;8499
	push hl			;849a
	ld hl,00008h		;849b
	add hl,bc			;849e
	push hl			;849f
	pop bc			;84a0
	pop hl			;84a1
	pop af			;84a2
	dec a			;84a3
	jr nz,L_847B		;84a4
	ld hl,L_8451		;84a6
	ld de,084fbh		;84a9
	ld bc,00009h		;84ac
L_84AF:
	ld a,(de)			;84af
	cpi		;84b0
	jp nz,L_85CB		;84b2
	inc de			;84b5
	ld a,b			;84b6
	or c			;84b7
	jr nz,L_84AF		;84b8
	ld a,(085cdh)		;84ba
	or a			;84bd
	jp nz,L_85CB		;84be
	xor a			;84c1
	call L_8EA0		;84c2
	di			;84c5
	ld hl,08937h		;84c6
	ld (0f323h),hl		;84c9
	ld sp,0e0f0h		;84cc
	im 1		;84cf
	ld a,0c3h		;84d1
	ld (0fd9ah),a		;84d3
	ld hl,08504h		;84d6
	ld (0fd9bh),hl		;84d9
	ld hl,0d000h		;84dc
	ld de,0d001h		;84df
	ld bc,00fffh		;84e2
	ld (hl),000h		;84e5
	ldir		;84e7
	ld a,001h		;84e9
	ld (0d1c5h),a		;84eb
	call L_87ED		;84ee
	xor a			;84f1
	ld (0d1c5h),a		;84f2
	call 0013eh		;84f5   ; BIOS RDVDP - Reads VDP status register
	ei			;84f8
L_84F9:
	jr L_84F9		;84f9

; ----------------------------------------------------------------------
; DATOS copia_8451: los 9 bytes de 0x8451 otra vez: 0x84A6 los compara con los
;   de verdad y, si alguien los ha tocado, se queda colgado en 0x85CB (9
;   bytes)
;   0x84fb..0x8504  (9 bytes)
DATA_copia_8451:
	defb 021h,0cdh,085h,011h,05ah,084h,0d5h,0e5h,0c9h	; 84fb  !...Z....

; ======================================================================
; CODIGO 0x8504..0x85e7  (227 bytes)
; ======================================================================



; ----------------------------------------------------------------------
; ===== H.TIMI: la interrupcion de cada cuadro =====
; ----------------------------------------------------------------------
L_8504:
	call 0013eh		;8504   ; BIOS RDVDP - Reads VDP status register
	di			;8507
	ld hl,0d1d4h		;8508
	ld a,(hl)			;850b
	and a			;850c
	ld (hl),001h		;850d
	jr nz,L_852E		;850f
	call L_8547		;8511
	call 04003h		;8514
	xor a			;8517
	ld (0d1d4h),a		;8518
	ld hl,0d1c5h		;851b
	ld a,(hl)			;851e
	and a			;851f
	jr nz,L_852E		;8520
	inc (hl)			;8522
	ei			;8523
	call L_8834		;8524
	call L_85D4		;8527
	xor a			;852a
	ld (0d1c5h),a		;852b
L_852E:
	ei			;852e
	ret			;852f
L_8530:
	add a,a			;8530
L_8531:
	add a,l			;8531
	ld l,a			;8532
	ret nc			;8533
	inc h			;8534
	ret			;8535
L_8536:
	add a,e			;8536
	ld e,a			;8537
	ret nc			;8538
	inc d			;8539
	ret			;853a
L_853B:
	pop hl			;853b
L_853C:
	add a,a			;853c
	add a,l			;853d
	ld l,a			;853e
	jr nc,L_8542		;853f
	inc h			;8541
L_8542:
	ld a,(hl)			;8542
	inc hl			;8543
	ld h,(hl)			;8544
	ld l,a			;8545
	jp (hl)			;8546
L_8547:
	ld a,(0e0fdh)		;8547
	or a			;854a
	ret z			;854b
	call 0e0f4h		;854c
	call 0e0f4h		;854f
	ld hl,0e0fdh		;8552
	dec (hl)			;8555
	dec (hl)			;8556
	ret			;8557
L_8558:
	di			;8558
	push ix		;8559
	push iy		;855b
	push hl			;855d
	push de			;855e
	push bc			;855f
	push af			;8560
	call 04000h		;8561
	pop af			;8564
	pop bc			;8565
	pop de			;8566
	pop hl			;8567
	pop iy		;8568
	pop ix		;856a
	ei			;856c
	ret			;856d
L_856E:
	ld a,0bfh		;856e
	ld (0d0eeh),a		;8570
	ld e,a			;8573
	ld a,007h		;8574
	jp 00093h		;8576   ; BIOS WRTPSG - Writes data to PSG-register
L_8579:
	call L_8581		;8579
	ret nc			;857c
	ld (0e0fch),a		;857d
	ret			;8580
L_8581:
	ld bc,00400h		;8581
	ld hl,0fcc1h		;8584
L_8587:
	push bc			;8587
	push hl			;8588
	ld a,(hl)			;8589
	bit 7,a		;858a
	jr nz,L_859A		;858c
	ld a,c			;858e
	call L_85AF		;858f
L_8592:
	pop hl			;8592
	pop bc			;8593
	ret c			;8594
	inc hl			;8595
	inc c			;8596
	djnz L_8587		;8597
	ret			;8599
L_859A:
	and 080h		;859a
	or c			;859c
	call L_85A2		;859d
	jr L_8592		;85a0
L_85A2:
	ld b,004h		;85a2
L_85A4:
	push bc			;85a4
	call L_85AF		;85a5
	pop bc			;85a8
	ret c			;85a9
	add a,004h		;85aa
	djnz L_85A4		;85ac
	ret			;85ae
L_85AF:
	push af			;85af
	ld h,040h		;85b0
	call 00024h		;85b2   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld hl,04000h		;85b5
	ld b,000h		;85b8
L_85BA:
	ld a,(hl)			;85ba
	cpl			;85bb
	ld (hl),a			;85bc
	cp (hl)			;85bd
	cpl			;85be
	ld (hl),a			;85bf
	jr nz,L_85C8		;85c0
	inc hl			;85c2
	djnz L_85BA		;85c3
	pop af			;85c5
	scf			;85c6
	ret			;85c7
L_85C8:
	pop af			;85c8
	and a			;85c9
	ret			;85ca
L_85CB:
	jr L_85CB		;85cb
L_85CD:
	nop			;85cd
	call L_9168		;85ce
	ret nc			;85d1
L_85D2:
	jr L_85D2		;85d2
L_85D4:
	ld hl,0d1c3h		;85d4
	inc (hl)			;85d7
	ld a,(0d1c0h)		;85d8
	cp 002h		;85db
	jr nc,L_85DF		;85dd
L_85DF:
	ld bc,(0d1c0h)		;85df
	ld a,c			;85e3
	call L_853B		;85e4

; ----------------------------------------------------------------------
; DATOS estados: 7 destinos del despachador de 0x85E4 (call 0x853B con la
;   tabla pegada detras), uno por estado de 0xD1C0: 85F5, 8646, 867D, 8687,
;   8697, 8722, 879B (14 bytes)
;   0x85e7..0x85f5  (14 bytes)
DATA_estados:
	defw 085f5h,08646h,0867dh,08687h,08697h,08722h,0879bh	; 85e7

; ======================================================================
; CODIGO 0x85f5..0x8663  (110 bytes)
; ======================================================================


L_85F5:
	djnz L_8621		;85f5
	ld a,(0d1c8h)		;85f7
	or a			;85fa
	jr nz,L_8617		;85fb
	ld a,(0d1c3h)		;85fd
	rra			;8600
	ret nc			;8601
	call 09203h		;8602
	ret nz			;8605
	call 09206h		;8606
	ld a,006h		;8609
	call L_8EA0		;860b
	call 09200h		;860e
	xor a			;8611
	ld (0d1e3h),a		;8612
	jr $+106		;8615
L_8617:
	call 09206h		;8617
	call L_842E		;861a
	xor a			;861d
	jp L_86D6		;861e
L_8621:
	djnz L_8637		;8621
	ld a,(0d1c8h)		;8623
	or a			;8626
	jr nz,L_8632		;8627
	call 09203h		;8629
	ret nc			;862c
	call L_86D6		;862d
	jr $+82		;8630
L_8632:
	call 09215h		;8632
	jr L_8651		;8635
L_8637:
	call L_87FB		;8637
	call L_8CBA		;863a
	call 09200h		;863d
	xor a			;8640
	ld (0d271h),a		;8641
	jr $+62		;8644
L_8646:
	djnz $+41		;8646
	call 09218h		;8648
	ld a,(0d1c8h)		;864b
	and 010h		;864e
	ret z			;8650
L_8651:
	call L_83D9		;8651
	ld hl,0d1c0h		;8654
	ld (hl),003h		;8657
	inc hl			;8659
	ld c,000h		;865a
	ld (hl),c			;865c
	ld a,07eh		;865d
	ld (0d1c4h),a		;865f
	ret			;8662

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8663..0x8664  (1 bytes)
DATA_8663:
	defb 0afh	; 8663

; ======================================================================
; CODIGO 0x8664..0x870c  (168 bytes)
; ======================================================================


L_8664:
	ld (0d1c0h),a		;8664
	ld a,020h		;8667
	ld (0d1c4h),a		;8669
	jp L_86DD		;866c
L_866F:
	call L_89C0		;866f
	ret nz			;8672
	ld a,006h		;8673
	call L_8EA0		;8675
L_8678:
	call 0920fh		;8678
	jr L_8682		;867b
L_867D:
	ld a,020h		;867d
L_867F:
	ld (0d1c4h),a		;867f
L_8682:
	ld hl,0d1c1h		;8682
	inc (hl)			;8685
	ret			;8686
L_8687:
	call 09212h		;8687
	ld hl,0d1c4h		;868a
	dec (hl)			;868d
	ret nz			;868e
	call L_82E4		;868f
	call 09209h		;8692
	jr L_86D4		;8695
L_8697:
	djnz L_86A9		;8697
	xor a			;8699
	ld (0d1d6h),a		;869a
	ld (0d1e9h),a		;869d
	ld (0d1d7h),a		;86a0
	ld (0d1d8h),a		;86a3
	jp L_8682		;86a6
L_86A9:
	djnz L_86BE		;86a9
	call 09200h		;86ab
	ld a,(0d1e9h)		;86ae
	or a			;86b1
	ret z			;86b2
	ld hl,0d0dch		;86b3
	bit 0,(hl)		;86b6
	call z,L_842E		;86b8
	jp L_8682		;86bb
L_86BE:
	djnz L_86E2		;86be
	call L_89C0		;86c0
	ret nz			;86c3
	call L_8711		;86c4
	xor a			;86c7
	ld (0d1d2h),a		;86c8
	ld (0d1e9h),a		;86cb
	ld (0d1d7h),a		;86ce
	ld (0d1d8h),a		;86d1
L_86D4:
	ld a,020h		;86d4
L_86D6:
	ld (0d1c4h),a		;86d6
	ld hl,0d1c0h		;86d9
	inc (hl)			;86dc
L_86DD:
	xor a			;86dd
L_86DE:
	ld (0d1c1h),a		;86de
	ret			;86e1
L_86E2:
	call 0920ch		;86e2
	call 09206h		;86e5
	ld a,001h		;86e8
	call L_8EA0		;86ea
	ld a,002h		;86ed
	call L_8EA0		;86ef
	ld a,003h		;86f2
	call L_8EA0		;86f4
	call L_8CBA		;86f7
	call L_8703		;86fa
	call L_83DE		;86fd
	jp L_8682		;8700
L_8703:
	call L_8B2A		;8703
	call L_89F6		;8706
	jp 09c00h		;8709

; ----------------------------------------------------------------------
; DATOS sin identificar  0x870c..0x8711  (5 bytes)
DATA_870C:
	defb 03eh,002h,0c3h,064h,086h	; 870c

; ======================================================================
; CODIGO 0x8711..0x871e  (13 bytes)
; ======================================================================


L_8711:
	ld hl,0871eh		;8711
	ld a,(0d1d6h)		;8714
	call L_8531		;8717
	ld a,(hl)			;871a
	jp L_8EA0		;871b

; ----------------------------------------------------------------------
; DATOS partes_8711: 4 partes que carga 0x8711 segun 0xD1D6: 0x10, 0x07, 0x1F,
;   0x0D (4 bytes)
;   0x871e..0x8722  (4 bytes)
DATA_partes_8711:
	defb 010h,007h,01fh,00dh	; 871e

; ======================================================================
; CODIGO 0x8722..0x8828  (262 bytes)
; ======================================================================


L_8722:
	djnz L_8757		;8722
	call L_89C0		;8724
	ret nz			;8727
	ld a,001h		;8728
	call L_8EA0		;872a
	ld a,002h		;872d
	call L_8EA0		;872f
	ld a,003h		;8732
	call L_8EA0		;8734
	call L_8703		;8737
	call L_83DE		;873a
	ld a,004h		;873d
	call L_8664		;873f
	ld a,002h		;8742
	call L_86DE		;8744
	xor a			;8747
	ld (0d22ah),a		;8748
	ld (0d1d8h),a		;874b
	ld (0d1e9h),a		;874e
	ld (0d1d7h),a		;8751
	ld a,002h		;8754
	ret			;8756
L_8757:
	call L_876D		;8757
	ld a,(0d1e9h)		;875a
	or a			;875d
	ret z			;875e
	call L_8CBA		;875f
	ld hl,0d0dch		;8762
	bit 0,(hl)		;8765
	call z,L_842E		;8767
	jp L_8682		;876a
L_876D:
	call L_89F6		;876d
	call L_8781		;8770
	ret z			;8773
	jp 09200h		;8774
L_8777:
	call L_87B1		;8777
	cp 004h		;877a
	ret nz			;877c
	ld (0d1e9h),a		;877d
	ret			;8780
L_8781:
	call L_87B1		;8781
	cp 005h		;8784
	ret nz			;8786
	ld a,004h		;8787
	ld (0d1e9h),a		;8789
	ld hl,0d0dch		;878c
	bit 0,(hl)		;878f
	call z,L_842E		;8791
	pop hl			;8794
	ld a,006h		;8795
	ld (0d1c0h),a		;8797
	ret			;879a
L_879B:
	call L_89C0		;879b
	ret nz			;879e
	ld a,006h		;879f
	call L_8EA0		;87a1
	ld hl,00001h		;87a4
	ld (0d1c0h),hl		;87a7
	xor a			;87aa
	ld (0d1e9h),a		;87ab
	jp L_8678		;87ae
L_87B1:
	push bc			;87b1
	ld a,006h		;87b2
	call 00141h		;87b4   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	ld b,001h		;87b7
	bit 5,a		;87b9
	jr z,L_87E0		;87bb
	inc b			;87bd
	bit 6,a		;87be
	jr z,L_87E0		;87c0
	inc b			;87c2
	bit 7,a		;87c3
	jr z,L_87E0		;87c5
	inc b			;87c7
	ld a,007h		;87c8
	call 00141h		;87ca   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 0,a		;87cd
	jr z,L_87E0		;87cf
	inc b			;87d1
	bit 1,a		;87d2
	jr z,L_87E0		;87d4
	ld b,0ffh		;87d6
	ld a,(0d1c8h)		;87d8
	cp 010h		;87db
	jr z,L_87E0		;87dd
	inc b			;87df
L_87E0:
	ld a,b			;87e0
	pop bc			;87e1
	ret			;87e2
L_87E3:
	ld a,(0d1cdh)		;87e3
	or a			;87e6
	ld a,000h		;87e7
	ld (0d1cdh),a		;87e9
	ret			;87ec
L_87ED:
	ld a,0bfh		;87ed
	ld (0d0eeh),a		;87ef
	ld e,a			;87f2
	ld a,007h		;87f3
	call 00093h		;87f5   ; BIOS WRTPSG - Writes data to PSG-register
	call L_82E4		;87f8
L_87FB:
	ld a,005h		;87fb
	call 0005fh		;87fd   ; BIOS CHGMOD - Switches to given screen mode
	ld a,005h		;8800
	ld (0fcafh),a		;8802
	call 00069h		;8805   ; BIOS CLRSPR - Initialises all sprites
	ld a,00fh		;8808
	ld (0f3ebh),a		;880a
	call 00062h		;880d   ; BIOS CHGCLR - Changes the screen colors
	ld b,006h		;8810
	ld hl,08828h		;8812
L_8815:
	push bc			;8815
	ld c,(hl)			;8816
	inc hl			;8817
	ld b,(hl)			;8818
	inc hl			;8819
	push hl			;881a
	call 00047h		;881b   ; BIOS WRTVDP - Writes data in the VDP-register
	pop hl			;881e
	pop bc			;881f
	djnz L_8815		;8820
	call L_88BA		;8822
	jp L_8CF5		;8825

; ----------------------------------------------------------------------
; DATOS vdp_87FB: 6 parejas (valor, registro) del VDP para WRTVDP en 0x8815
;   (12 bytes)
;   0x8828..0x8834  (12 bytes)
DATA_vdp_87FB:
	defb 001h,062h	; 8828
	defb 005h,0efh	; 882a
	defb 006h,01fh	; 882c
	defb 008h,008h	; 882e
	defb 009h,080h	; 8830
	defb 00bh,001h	; 8832

; ======================================================================
; CODIGO 0x8834..0x88ce  (154 bytes)
; ======================================================================


L_8834:
	call L_8841		;8834
	ld hl,0d1c9h		;8837
	ld c,(hl)			;883a
	ld (hl),a			;883b
	xor c			;883c
	and (hl)			;883d
	dec hl			;883e
	ld (hl),a			;883f
	ret			;8840
L_8841:
	ld e,08fh		;8841
	ld a,00fh		;8843
	call 00093h		;8845   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00eh		;8848
	di			;884a
	call 00096h		;884b   ; BIOS RDPSG - Reads value from PSG-register
	ei			;884e
	cpl			;884f
	and 03fh		;8850
	push af			;8852
	ld a,004h		;8853
	call 00141h		;8855   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;8858
	rlca			;8859
	rlca			;885a
	rlca			;885b
	and 020h		;885c
	ld e,a			;885e
	ld a,008h		;885f
	call 00141h		;8861   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;8864
	rrca			;8865
	rrca			;8866
	ld b,a			;8867
	and 004h		;8868
	or e			;886a
	ld c,a			;886b
	ld a,b			;886c
	rrca			;886d
	rrca			;886e
	ld b,a			;886f
	and 018h		;8870
	or c			;8872
	ld c,a			;8873
	ld a,b			;8874
	rrca			;8875
	and 003h		;8876
	or c			;8878
	ld e,a			;8879
	ld a,007h		;887a
	call 00141h		;887c   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;887f
	rrca			;8880
	ld b,a			;8881
	and 040h		;8882
	or e			;8884
	ld c,a			;8885
	ld a,b			;8886
	rrca			;8887
	rrca			;8888
	and 080h		;8889
	or c			;888b
	pop bc			;888c
	or b			;888d
	ret			;888e
L_888F:
	push bc			;888f
	push hl			;8890
	ld b,a			;8891
	ld a,(00007h)		;8892
	inc a			;8895
	ld c,a			;8896
	di			;8897
	out (c),b		;8898
	ld a,090h		;889a
	out (c),a		;889c
	inc c			;889e
	out (c),d		;889f
	push af			;88a1
	pop af			;88a2
	out (c),e		;88a3
	dec c			;88a5
	ld hl,0f680h		;88a6
	ld a,b			;88a9
	add a,a			;88aa
	add a,l			;88ab
	ld l,a			;88ac
	call L_8D47		;88ad
	dec c			;88b0
	out (c),d		;88b1
	nop			;88b3
	out (c),e		;88b4
	pop hl			;88b6
	pop bc			;88b7
	ei			;88b8
	ret			;88b9
L_88BA:
	ld hl,088ceh		;88ba
L_88BD:
	ld b,010h		;88bd
	ld a,000h		;88bf
L_88C1:
	ld d,(hl)			;88c1
	inc hl			;88c2
	ld e,(hl)			;88c3
	inc hl			;88c4
	push af			;88c5
	call L_888F		;88c6
	pop af			;88c9
	inc a			;88ca
	djnz L_88C1		;88cb
	ret			;88cd

; ----------------------------------------------------------------------
; DATOS paleta: los 16 colores de la paleta, dos bytes cada uno, para 0x88BD
;   (32 bytes)
;   0x88ce..0x88ee  (32 bytes)
DATA_paleta:
	defb 000h,000h	; 88ce
	defb 000h,000h	; 88d0
	defb 011h,006h	; 88d2
	defb 033h,007h	; 88d4
	defb 017h,001h	; 88d6
	defb 027h,003h	; 88d8
	defb 051h,001h	; 88da
	defb 027h,006h	; 88dc
	defb 071h,001h	; 88de
	defb 073h,003h	; 88e0
	defb 061h,006h	; 88e2
	defb 064h,006h	; 88e4
	defb 011h,004h	; 88e6
	defb 065h,002h	; 88e8
	defb 055h,005h	; 88ea
	defb 077h,007h	; 88ec

; ======================================================================
; CODIGO 0x88ee..0x8937  (73 bytes)
; ======================================================================


L_88EE:
	ld (0e0f9h),sp		;88ee
	ld a,(0fd9ah)		;88f2
	ld (0e0f3h),a		;88f5
	ld a,0c9h		;88f8
	ld (0fd9ah),a		;88fa
	call L_8908		;88fd
	ld a,(0e0f3h)		;8900
	ld (0fd9ah),a		;8903
	or a			;8906
	ret			;8907
L_8908:
	ld a,02fh		;8908
	jr L_8928		;890a
L_890C:
	ld (0e0f9h),sp		;890c
	ld a,(0fd9ah)		;8910
	ld (0e0f3h),a		;8913
	ld a,0c9h		;8916
	ld (0fd9ah),a		;8918
	call L_8926		;891b
	ld a,(0e0f3h)		;891e
	ld (0fd9ah),a		;8921
	or a			;8924
	ret			;8925
L_8926:
	ld a,030h		;8926
L_8928:
	push af			;8928
	push bc			;8929
	push hl			;892a
	ld c,01ah		;892b
	call 0f37dh		;892d
	pop hl			;8930
	pop de			;8931
	pop af			;8932
	ld c,a			;8933
	jp 0f37dh		;8934

; ----------------------------------------------------------------------
; DATOS diskve: la direccion del manejador de errores de disco (0x8939):
;   DISKVE (0xF323) apunta aqui (2 bytes)
;   0x8937..0x8939  (2 bytes)
DATA_diskve:
	defb 039h,089h	; 8937

; ======================================================================
; CODIGO 0x8939..0x89b6  (125 bytes)
; ======================================================================


L_8939:
	ld a,(0d1efh)		;8939
	or a			;893c
	jr nz,L_894E		;893d
	call L_89A9		;893f
	call L_8972		;8942
	call L_8967		;8945
	ld sp,(0e0f9h)		;8948
	jr L_8956		;894c
L_894E:
	ld sp,(0e0f1h)		;894e
	xor a			;8952
	ld (0d1efh),a		;8953
L_8956:
	ld a,(0e0fch)		;8956
	ld h,040h		;8959
	call 00024h		;895b   ; BIOS ENASLT - Switches to specified slot and page definitively
	ei			;895e
	ld a,(0e0f3h)		;895f
	ld (0fd9ah),a		;8962
	scf			;8965
	ret			;8966
L_8967:
	ld hl,000c0h		;8967
	ld bc,00010h		;896a
	xor a			;896d
	ld d,a			;896e
	jp L_8D15		;896f
L_8972:
	ld b,005h		;8972
	xor a			;8974
L_8975:
	push bc			;8975
	push af			;8976
	call 000d8h		;8977   ; BIOS GTTRIG - Returns current trigger status
	or a			;897a
	jr nz,L_8984		;897b
	pop af			;897d
	pop bc			;897e
	inc a			;897f
	djnz L_8975		;8980
	jr L_8972		;8982
L_8984:
	pop af			;8984
	pop bc			;8985
	ret			;8986
L_8987:
	ld a,(0d1c8h)		;8987
	cp 010h		;898a
	ret nz			;898c
	ld a,(0d1d6h)		;898d
	or a			;8990
	jr nz,L_899A		;8991
	ld a,(0d1d7h)		;8993
	cp 003h		;8996
	jr z,L_899F		;8998
L_899A:
	call L_82F3		;899a
	xor a			;899d
	ret			;899e
L_899F:
	call L_838E		;899f
	xor a			;89a2
	ret			;89a3
L_89A4:
	ld hl,089bah		;89a4
	jr L_89AC		;89a7
L_89A9:
	ld hl,089b6h		;89a9
L_89AC:
	ld de,070c0h		;89ac
	ld c,004h		;89af
	ld a,002h		;89b1
	jp L_8EC7		;89b3

; ----------------------------------------------------------------------
; DATOS tabla_89B6: la lee 0x89A9 (10 bytes)
;   0x89b6..0x89c0  (10 bytes)
DATA_tabla_89B6:
	defb 080h,008h,0c1h,000h,080h,007h,0e9h,001h,0c0h,000h	; 89b6  ..........

; ======================================================================
; CODIGO 0x89c0..0x8a2b  (107 bytes)
; ======================================================================


L_89C0:
	ld a,(0d1e2h)		;89c0
	or a			;89c3
	jr nz,L_89D4		;89c4
	ld hl,0d0dch		;89c6
	bit 0,(hl)		;89c9
	ret nz			;89cb
	call L_82E4		;89cc
	call L_856E		;89cf
	xor a			;89d2
	ret			;89d3
L_89D4:
	ld hl,0d0dch		;89d4
	bit 4,(hl)		;89d7
	jr z,L_89E2		;89d9
	res 4,(hl)		;89db
	xor a			;89dd
	ld (0d1e2h),a		;89de
	ret			;89e1
L_89E2:
	bit 6,(hl)		;89e2
	jr z,L_89EE		;89e4
	res 6,(hl)		;89e6
	call L_8429		;89e8
	call L_8438		;89eb
L_89EE:
	or 0ffh		;89ee
	ret			;89f0
L_89F1:
	ld hl,0d1d9h		;89f1
	dec (hl)			;89f4
	ret			;89f5
L_89F6:
	ld de,0f600h		;89f6
	ld hl,0d280h		;89f9
	ld bc,00080h		;89fc
	call L_8AD3		;89ff
	ld b,020h		;8a02
	ld de,0d283h		;8a04
	ld hl,0f400h		;8a07
L_8A0A:
	push bc			;8a0a
	push de			;8a0b
	push hl			;8a0c
	ld a,(de)			;8a0d
	call L_8A1F		;8a0e
	pop hl			;8a11
	ld de,00010h		;8a12
	add hl,de			;8a15
	pop de			;8a16
	inc de			;8a17
	inc de			;8a18
	inc de			;8a19
	inc de			;8a1a
	pop bc			;8a1b
	djnz L_8A0A		;8a1c
	ret			;8a1e
L_8A1F:
	push hl			;8a1f
	ld hl,08a2bh		;8a20
	call L_8B22		;8a23
	ex de,hl			;8a26
	pop hl			;8a27
	jp L_8AFF		;8a28

; ----------------------------------------------------------------------
; DATOS punteros_8A2B: 32 punteros a las entradas de 3 bytes de 0x8A6B; los
;   lee 0x8A20 (64 bytes)
;   0x8a2b..0x8a6b  (64 bytes)
DATA_punteros_8A2B:
	defw 08a6bh,08a6eh,08a71h,08a74h,08a77h,08a7ah,08a7dh,08a80h	; 8a2b
	defw 08a83h,08a86h,08a89h,08a8ch,08a8fh,08a92h,08a95h,08a98h	; 8a3b
	defw 08a9bh,08a9eh,08aa1h,08aa4h,08aa7h,08aaah,08aadh,08ab0h	; 8a4b
	defw 08ab3h,08ab6h,08ab9h,08abch,08abfh,08ac2h,08ac5h,08ac8h	; 8a5b

; ----------------------------------------------------------------------
; DATOS tabla_8A6B: 32 entradas de 3 bytes (64 bytes)
;   0x8a6b..0x8acb  (96 bytes)
DATA_tabla_8A6B:
	defb 010h,000h,000h	; 8a6b
	defb 010h,001h,000h	; 8a6e
	defb 010h,002h,000h	; 8a71
	defb 010h,003h,000h	; 8a74
	defb 010h,004h,000h	; 8a77
	defb 010h,005h,000h	; 8a7a
	defb 010h,006h,000h	; 8a7d
	defb 010h,007h,000h	; 8a80
	defb 010h,008h,000h	; 8a83
	defb 010h,009h,000h	; 8a86
	defb 010h,00ah,000h	; 8a89
	defb 010h,00bh,000h	; 8a8c
	defb 010h,00ch,000h	; 8a8f
	defb 010h,00dh,000h	; 8a92
	defb 010h,00eh,000h	; 8a95
	defb 010h,00fh,000h	; 8a98
	defb 010h,040h,000h	; 8a9b
	defb 010h,041h,000h	; 8a9e
	defb 010h,042h,000h	; 8aa1
	defb 010h,043h,000h	; 8aa4
	defb 010h,044h,000h	; 8aa7
	defb 010h,045h,000h	; 8aaa
	defb 010h,046h,000h	; 8aad
	defb 010h,047h,000h	; 8ab0
	defb 010h,048h,000h	; 8ab3
	defb 010h,049h,000h	; 8ab6
	defb 010h,04ah,000h	; 8ab9
	defb 010h,04bh,000h	; 8abc
	defb 010h,04ch,000h	; 8abf
	defb 010h,04dh,000h	; 8ac2
	defb 010h,04eh,000h	; 8ac5
	defb 010h,04fh,000h	; 8ac8

; ======================================================================
; CODIGO 0x8acb..0x8e26  (859 bytes)
; ======================================================================


L_8ACB:
	ex de,hl			;8acb
	ld a,c			;8acc
	or a			;8acd
	ld a,b			;8ace
	ld b,c			;8acf
	ret z			;8ad0
	inc a			;8ad1
	ret			;8ad2
L_8AD3:
	ex de,hl			;8ad3
	call L_8D47		;8ad4
	call L_8ACB		;8ad7
	ex af,af'			;8ada
	ld a,(00007h)		;8adb
	ld c,a			;8ade
	ex af,af'			;8adf
L_8AE0:
	otir		;8ae0
	dec a			;8ae2
	jr nz,L_8AE0		;8ae3
	ret			;8ae5
L_8AE6:
	call L_8D67		;8ae6
	call L_8ACB		;8ae9
	ex af,af'			;8aec
	ld a,(00006h)		;8aed
	ld c,a			;8af0
	ex af,af'			;8af1
L_8AF2:
	inir		;8af2
	dec a			;8af4
	jr nz,L_8AF2		;8af5
	ex de,hl			;8af7
	ret			;8af8
L_8AF9:
	ex de,hl			;8af9
	ld e,(hl)			;8afa
	inc hl			;8afb
	ld d,(hl)			;8afc
	inc hl			;8afd
	ex de,hl			;8afe
L_8AFF:
	call L_8D47		;8aff
	ld a,(00007h)		;8b02
	ld c,a			;8b05
L_8B06:
	ld a,(de)			;8b06
	and a			;8b07
	ret z			;8b08
	inc de			;8b09
	ld b,a			;8b0a
	and 07fh		;8b0b
	cp b			;8b0d
	jr z,L_8B1A		;8b0e
	and a			;8b10
	jr z,L_8AF9		;8b11
	ex de,hl			;8b13
	ld b,a			;8b14
	otir		;8b15
	ex de,hl			;8b17
	jr L_8B06		;8b18
L_8B1A:
	ld a,(de)			;8b1a
	inc de			;8b1b
L_8B1C:
	out (c),a		;8b1c
	djnz L_8B1C		;8b1e
	jr L_8B06		;8b20
L_8B22:
	call L_8530		;8b22
	ld e,(hl)			;8b25
	inc hl			;8b26
	ld d,(hl)			;8b27
	ex de,hl			;8b28
	ret			;8b29
L_8B2A:
	ld hl,0d280h		;8b2a
	ld b,020h		;8b2d
L_8B2F:
	ld e,l			;8b2f
	ld d,h			;8b30
	inc de			;8b31
L_8B32:
	push bc			;8b32
	ld bc,00003h		;8b33
	ld (hl),0e0h		;8b36
	ldir		;8b38
	ld (hl),000h		;8b3a
	inc hl			;8b3c
	inc de			;8b3d
	pop bc			;8b3e
	djnz L_8B32		;8b3f
	ret			;8b41
L_8B42:
	ld bc,000ffh		;8b42
	jr L_8B4A		;8b45
L_8B47:
	ld bc,00000h		;8b47
L_8B4A:
	ld a,b			;8b4a
	ld (0d1cch),a		;8b4b
	ld d,(hl)			;8b4e
	inc hl			;8b4f
	ld e,(hl)			;8b50
	inc hl			;8b51
L_8B52:
	ld a,(hl)			;8b52
	inc hl			;8b53
	ld b,a			;8b54
	inc b			;8b55
	ret z			;8b56
	inc b			;8b57
	jr z,L_8B42		;8b58
	inc b			;8b5a
	jr z,L_8B7A		;8b5b
	ld b,a			;8b5d
	ld a,(0d1ffh)		;8b5e
	or a			;8b61
	jr nz,L_8B6F		;8b62
	ld a,b			;8b64
	add a,042h		;8b65
	cp 019h		;8b67
	jr c,L_8B84		;8b69
	cp 03dh		;8b6b
	jr c,L_8B9D		;8b6d
L_8B6F:
	ld a,b			;8b6f
L_8B70:
	and c			;8b70
	call L_8F40		;8b71
	ld a,d			;8b74
	add a,008h		;8b75
	ld d,a			;8b77
	jr L_8B52		;8b78
L_8B7A:
	ld a,(0d1ffh)		;8b7a
	xor 001h		;8b7d
	ld (0d1ffh),a		;8b7f
	jr L_8B52		;8b82
L_8B84:
	call L_8BC7		;8b84
	ld b,043h		;8b87
	cp 014h		;8b89
	jr c,L_8B8F		;8b8b
	ld b,044h		;8b8d
L_8B8F:
	call L_8BCE		;8b8f
	exx			;8b92
	ld hl,0919fh		;8b93
	call L_8531		;8b96
	ld a,(hl)			;8b99
	exx			;8b9a
	jr L_8B70		;8b9b
L_8B9D:
	sub 019h		;8b9d
	cp 015h		;8b9f
	jr c,L_8BB1		;8ba1
	call L_8BC7		;8ba3
	ld b,043h		;8ba6
	cp 021h		;8ba8
	jr c,L_8BAE		;8baa
	ld b,044h		;8bac
L_8BAE:
	call L_8BCE		;8bae
L_8BB1:
	push hl			;8bb1
	ld hl,091b8h		;8bb2
	add a,a			;8bb5
	call L_8531		;8bb6
	ld a,(hl)			;8bb9
	and c			;8bba
	call L_8F40		;8bbb
	ld a,d			;8bbe
	add a,008h		;8bbf
	ld d,a			;8bc1
	inc hl			;8bc2
	ld a,(hl)			;8bc3
	pop hl			;8bc4
	jr L_8B70		;8bc5
L_8BC7:
	ex af,af'			;8bc7
	ld a,e			;8bc8
	sub 008h		;8bc9
	ld e,a			;8bcb
	ex af,af'			;8bcc
	ret			;8bcd
L_8BCE:
	push af			;8bce
	ld a,b			;8bcf
	and c			;8bd0
	call L_8F40		;8bd1
	ld a,e			;8bd4
	add a,008h		;8bd5
	ld e,a			;8bd7
	pop af			;8bd8
	ret			;8bd9
L_8BDA:
	push bc			;8bda
	push hl			;8bdb
	push de			;8bdc
	ex af,af'			;8bdd
	xor a			;8bde
	ld (0d1cch),a		;8bdf
	ex af,af'			;8be2
	call L_8F40		;8be3
	pop de			;8be6
	pop hl			;8be7
	pop bc			;8be8
	ret			;8be9
L_8BEA:
	ld b,a			;8bea
	and 01fh		;8beb
	add a,a			;8bed
	add a,a			;8bee
	add a,a			;8bef
	ld h,a			;8bf0
	ld a,b			;8bf1
	and 0e0h		;8bf2
	rrca			;8bf4
	rrca			;8bf5
	ld l,a			;8bf6
	ret			;8bf7
L_8BF8:
	ex af,af'			;8bf8
	ld a,020h		;8bf9
	ld (0d226h),a		;8bfb
	call L_8C77		;8bfe
	out (c),h		;8c01
	xor a			;8c03
	out (c),a		;8c04
	out (c),l		;8c06
	ex af,af'			;8c08
	rlca			;8c09
	rlca			;8c0a
	ld l,a			;8c0b
	and 003h		;8c0c
	out (c),a		;8c0e
	out (c),d		;8c10
	xor a			;8c12
	out (c),a		;8c13
	out (c),e		;8c15
	ld a,l			;8c17
	ld e,a			;8c18
	rlca			;8c19
	rlca			;8c1a
	and 003h		;8c1b
	out (c),a		;8c1d
	ld hl,(0d227h)		;8c1f
	out (c),h		;8c22
	xor a			;8c24
	out (c),a		;8c25
	out (c),l		;8c27
	out (c),a		;8c29
	out (c),a		;8c2b
	ld a,(0d225h)		;8c2d
	out (c),a		;8c30
	ld a,e			;8c32
	rra			;8c33
	rra			;8c34
	and 00fh		;8c35
	or 090h		;8c37
	out (c),a		;8c39
	ei			;8c3b
	ret			;8c3c
L_8C3D:
	ex af,af'			;8c3d
	ld a,020h		;8c3e
	ld (0d226h),a		;8c40
	call L_8C77		;8c43
	out (c),h		;8c46
	xor a			;8c48
	out (c),a		;8c49
	out (c),l		;8c4b
	ex af,af'			;8c4d
	ld l,a			;8c4e
	and 003h		;8c4f
	out (c),a		;8c51
	out (c),d		;8c53
	xor a			;8c55
	out (c),a		;8c56
	out (c),e		;8c58
	ld a,l			;8c5a
	rra			;8c5b
	rra			;8c5c
	and 003h		;8c5d
	out (c),a		;8c5f
	ld hl,(0d227h)		;8c61
	out (c),h		;8c64
	xor a			;8c66
	out (c),a		;8c67
	out (c),l		;8c69
	out (c),a		;8c6b
	out (c),a		;8c6d
	out (c),a		;8c6f
	ld a,0d0h		;8c71
	out (c),a		;8c73
	ei			;8c75
	ret			;8c76
L_8C77:
	call L_8C90		;8c77
	ld (0d227h),bc		;8c7a
	ld a,(00007h)		;8c7e
	inc a			;8c81
	ld c,a			;8c82
	ld a,(0d226h)		;8c83
	di			;8c86
	out (c),a		;8c87
	ld a,091h		;8c89
	out (c),a		;8c8b
	inc c			;8c8d
	inc c			;8c8e
	ret			;8c8f
L_8C90:
	ld a,002h		;8c90
	call L_8C9A		;8c92
	rra			;8c95
	jp c,L_8C90		;8c96
	ret			;8c99
L_8C9A:
	push bc			;8c9a
	push hl			;8c9b
	ld hl,(00006h)		;8c9c
	inc h			;8c9f
	inc l			;8ca0
	di			;8ca1
	call L_8CB2		;8ca2
	ld c,l			;8ca5
	in a,(c)		;8ca6
	push af			;8ca8
	xor a			;8ca9
	call L_8CB2		;8caa
	pop af			;8cad
	pop hl			;8cae
	pop bc			;8caf
	ei			;8cb0
	ret			;8cb1
L_8CB2:
	ld c,h			;8cb2
	out (c),a		;8cb3
	ld a,08fh		;8cb5
	out (c),a		;8cb7
	ret			;8cb9
L_8CBA:
	call L_8CED		;8cba
	call L_8CE3		;8cbd
	ld hl,00000h		;8cc0
	ld bc,00000h		;8cc3
	call L_8E02		;8cc6
	call L_8C90		;8cc9
	ld b,000h		;8ccc
	ld c,017h		;8cce
	call 00047h		;8cd0   ; BIOS WRTVDP - Writes data in the VDP-register
L_8CD3:
	ld a,(0f3e0h)		;8cd3
	or 040h		;8cd6
	call L_8CDD		;8cd8
	jr L_8CFC		;8cdb
L_8CDD:
	ld b,a			;8cdd
	ld c,001h		;8cde
	jp 00047h		;8ce0   ; BIOS WRTVDP - Writes data in the VDP-register
L_8CE3:
	ld a,(0f3e0h)		;8ce3
	and 0bfh		;8ce6
	call L_8CDD		;8ce8
	jr L_8CF5		;8ceb
L_8CED:
	ld hl,0f600h		;8ced
	ld a,0d8h		;8cf0
	jp L_8D07		;8cf2
L_8CF5:
	ld a,(0ffe7h)		;8cf5
	or 002h		;8cf8
	jr L_8D01		;8cfa
L_8CFC:
	ld a,(0ffe7h)		;8cfc
	and 0fdh		;8cff
L_8D01:
	ld b,a			;8d01
	ld c,008h		;8d02
	jp 00047h		;8d04   ; BIOS WRTVDP - Writes data in the VDP-register
L_8D07:
	push bc			;8d07
	push af			;8d08
	call L_8D47		;8d09
	ld a,(00007h)		;8d0c
	ld c,a			;8d0f
	pop af			;8d10
	out (c),a		;8d11
	pop bc			;8d13
	ret			;8d14
L_8D15:
	ex af,af'			;8d15
	ld a,024h		;8d16
	ld (0d226h),a		;8d18
	call L_8C77		;8d1b
	out (c),h		;8d1e
	xor a			;8d20
	out (c),a		;8d21
	out (c),l		;8d23
	out (c),d		;8d25
	ld hl,(0d227h)		;8d27
	out (c),h		;8d2a
	cp h			;8d2c
	jr nz,L_8D30		;8d2d
	inc a			;8d2f
L_8D30:
	out (c),a		;8d30
	xor a			;8d32
	out (c),l		;8d33
	cp l			;8d35
	jr nz,L_8D39		;8d36
	inc a			;8d38
L_8D39:
	out (c),a		;8d39
	ex af,af'			;8d3b
	out (c),a		;8d3c
	xor a			;8d3e
	out (c),a		;8d3f
	ld a,0c0h		;8d41
	out (c),a		;8d43
	ei			;8d45
	ret			;8d46
L_8D47:
	push bc			;8d47
	call L_8D4F		;8d48
	or 040h		;8d4b
	jr L_8D6B		;8d4d
L_8D4F:
	ld a,(00007h)		;8d4f
	inc a			;8d52
	ld c,a			;8d53
	ld a,h			;8d54
	rlca			;8d55
	rlca			;8d56
	and 003h		;8d57
	di			;8d59
	out (c),a		;8d5a
	ld a,08eh		;8d5c
	out (c),a		;8d5e
	ld a,l			;8d60
	out (c),a		;8d61
	ld a,h			;8d63
	and 03fh		;8d64
	ret			;8d66
L_8D67:
	push bc			;8d67
	call L_8D4F		;8d68
L_8D6B:
	out (c),a		;8d6b
	pop bc			;8d6d
	ei			;8d6e
	ret			;8d6f
L_8D70:
	ld a,d			;8d70
	add a,008h		;8d71
	ld d,a			;8d73
	ret nz			;8d74
	ld a,e			;8d75
	add a,008h		;8d76
	ld e,a			;8d78
	ret			;8d79
L_8D7A:
	ld e,a			;8d7a
	call L_8D87		;8d7b
	ld l,a			;8d7e
	ld a,e			;8d7f
	and 01fh		;8d80
	call L_8D8D		;8d82
	ld h,a			;8d85
	ret			;8d86
L_8D87:
	ld l,a			;8d87
	ld c,020h		;8d88
	call L_8D91		;8d8a
L_8D8D:
	add a,a			;8d8d
	add a,a			;8d8e
	add a,a			;8d8f
	ret			;8d90
L_8D91:
	ld h,000h		;8d91
	ld b,008h		;8d93
L_8D95:
	add hl,hl			;8d95
	ld a,h			;8d96
	sub c			;8d97
	jr c,L_8D9C		;8d98
	inc l			;8d9a
	ld h,a			;8d9b
L_8D9C:
	djnz L_8D95		;8d9c
	ld a,l			;8d9e
	ret			;8d9f
L_8DA0:
	call L_8DA9		;8da0
	call L_8D70		;8da3
	djnz L_8DA0		;8da6
	ret			;8da8
L_8DA9:
	push bc			;8da9
	push de			;8daa
	push hl			;8dab
	push de			;8dac
	call L_8DD9		;8dad
	pop de			;8db0
	ld b,d			;8db1
	ld d,e			;8db2
	ld e,b			;8db3
	srl d		;8db4
	rr e		;8db6
	ld a,d			;8db8
	add a,080h		;8db9
	ld d,a			;8dbb
	ld hl,0d300h		;8dbc
	ld b,008h		;8dbf
L_8DC1:
	push bc			;8dc1
	ld bc,00004h		;8dc2
	call L_8AD3		;8dc5
	ex de,hl			;8dc8
	ld bc,00080h		;8dc9
	add hl,bc			;8dcc
	ex de,hl			;8dcd
	pop bc			;8dce
	djnz L_8DC1		;8dcf
	pop hl			;8dd1
	ld bc,00008h		;8dd2
	add hl,bc			;8dd5
	pop de			;8dd6
	pop bc			;8dd7
	ret			;8dd8
L_8DD9:
	ld b,008h		;8dd9
	ld de,0d300h		;8ddb
L_8DDE:
	push bc			;8dde
	push hl			;8ddf
	ex de,hl			;8de0
	ld a,(de)			;8de1
	ld d,a			;8de2
	ld b,004h		;8de3
L_8DE5:
	ld a,c			;8de5
	rl d		;8de6
	jr c,L_8DEB		;8de8
	xor a			;8dea
L_8DEB:
	rld		;8deb
	ld a,c			;8ded
	rl d		;8dee
	jr c,L_8DF3		;8df0
	xor a			;8df2
L_8DF3:
	rld		;8df3
	inc hl			;8df5
	djnz L_8DE5		;8df6
	ex de,hl			;8df8
	pop hl			;8df9
	inc hl			;8dfa
	pop bc			;8dfb
	djnz L_8DDE		;8dfc
	ret			;8dfe
L_8DFF:
	call L_8E07		;8dff
L_8E02:
	xor a			;8e02
	ld d,a			;8e03
	jp L_8D15		;8e04
L_8E07:
	push hl			;8e07
	push bc			;8e08
	call L_8E18		;8e09
	ld hl,0d290h		;8e0c
	call L_8E1B		;8e0f
	call L_89F6		;8e12
	pop bc			;8e15
	pop hl			;8e16
	ret			;8e17
L_8E18:
	ld hl,0d280h		;8e18
L_8E1B:
	ld b,004h		;8e1b
L_8E1D:
	ld (hl),0e0h		;8e1d
	ld de,00004h		;8e1f
	add hl,de			;8e22
	djnz L_8E1D		;8e23
	ret			;8e25

; ----------------------------------------------------------------------
; DATOS lectura: la lectura en curso: cuantos y unidad (0x8E26), primer sector
;   (0x8E28), destino (0x8E2A); los pone 0x8E88 (6 bytes)
;   0x8e26..0x8e2c  (6 bytes)
DATA_lectura:
	defb 0bbh,0cah,000h,000h,0cah,0ffh	; 8e26

; ======================================================================
; CODIGO 0x8e2c..0x8ec0  (148 bytes)
; ======================================================================


L_8E2C:
	ld (0d1e4h),a		;8e2c
L_8E2F:
	xor a			;8e2f
	ld (0d1cfh),a		;8e30
	ld a,(0d1e4h)		;8e33
	call L_8E7C		;8e36
	call L_8E40		;8e39
	jr c,L_8E2F		;8e3c
	ret			;8e3e
L_8E3F:
	ret			;8e3f
L_8E40:
	ld bc,(08e26h)		;8e40
L_8E44:
	push bc			;8e44
	ld l,c			;8e45
	ld bc,(08e28h)		;8e46
	ld de,(08e2ah)		;8e4a
	ld h,001h		;8e4e
	call L_88EE		;8e50
	jr c,L_8E79		;8e53
	ld a,(0d1e4h)		;8e55
	or a			;8e58
	call nz,09806h		;8e59
	ld bc,(08e28h)		;8e5c
	inc bc			;8e60
	ld (08e28h),bc		;8e61
	ld hl,(08e2ah)		;8e65
	ld de,00200h		;8e68
	add hl,de			;8e6b
	ld (08e2ah),hl		;8e6c
	pop bc			;8e6f
	djnz L_8E44		;8e70
L_8E72:
	ld a,0ffh		;8e72
	ld (0e0fdh),a		;8e74
	and a			;8e77
	ret			;8e78
L_8E79:
	pop bc			;8e79
	scf			;8e7a
	ret			;8e7b
L_8E7C:
	ld l,a			;8e7c
	ld h,000h		;8e7d
	add hl,hl			;8e7f
	ld d,h			;8e80
	ld e,l			;8e81
	add hl,hl			;8e82
	add hl,de			;8e83
	ld de,0906ch		;8e84
	add hl,de			;8e87
L_8E88:
	ld c,(hl)			;8e88
	inc hl			;8e89
	ld b,(hl)			;8e8a
	inc hl			;8e8b
	ld e,(hl)			;8e8c
	inc hl			;8e8d
	ld d,(hl)			;8e8e
	inc hl			;8e8f
	ld a,(hl)			;8e90
	inc hl			;8e91
	ld h,(hl)			;8e92
	ld l,a			;8e93
	ld (08e28h),bc		;8e94
	ld (08e2ah),de		;8e98
	ld (08e26h),hl		;8e9c
	ret			;8e9f
L_8EA0:
	ld (0d1e4h),a		;8ea0
L_8EA3:
	call L_8EB3		;8ea3
	ld a,(0d1e4h)		;8ea6
	call L_8E7C		;8ea9
	call L_88EE		;8eac
	jr c,L_8EA3		;8eaf
	jr L_8E72		;8eb1
L_8EB3:
	ld hl,08ec0h		;8eb3
	ld de,070c0h		;8eb6
	ld c,004h		;8eb9
	ld a,002h		;8ebb
	jp L_8EC7		;8ebd

; ----------------------------------------------------------------------
; DATOS tabla_8EC0: la usa 0x8EB3 (7 bytes)
;   0x8ec0..0x8ec7  (7 bytes)
DATA_tabla_8EC0:
	defb 080h,008h,0e1h,000h,010h,001h,0bbh	; 8ec0

; ======================================================================
; CODIGO 0x8ec7..0x8f68  (161 bytes)
; ======================================================================


L_8EC7:
	ld (0d1cch),a		;8ec7
	ld a,c			;8eca
	ld (08ec4h),a		;8ecb
	ld (08ec5h),de		;8ece
L_8ED2:
	ld a,(hl)			;8ed2
	inc hl			;8ed3
	ld b,a			;8ed4
	and a			;8ed5
	ret z			;8ed6
	jp p,L_8EF9		;8ed7
	res 7,b		;8eda
	cp 080h		;8edc
	jr z,L_8F26		;8ede
L_8EE0:
	ld a,(hl)			;8ee0
	and a			;8ee1
	inc hl			;8ee2
	call L_8F40		;8ee3
	call L_8D70		;8ee6
	dec c			;8ee9
	call z,L_8F0A		;8eea
	ld a,(08ec4h)		;8eed
	and a			;8ef0
	jr z,L_8EE0		;8ef1
	inc a			;8ef3
	ret z			;8ef4
	djnz L_8EE0		;8ef5
	jr L_8ED2		;8ef7
L_8EF9:
	ld a,(hl)			;8ef9
	and a			;8efa
	call L_8F40		;8efb
	call L_8D70		;8efe
	dec c			;8f01
	call z,L_8F0A		;8f02
	djnz L_8EF9		;8f05
L_8F07:
	inc hl			;8f07
	jr L_8ED2		;8f08
L_8F0A:
	push af			;8f0a
	ld de,(08ec5h)		;8f0b
	ld a,008h		;8f0f
	add a,e			;8f11
	ld e,a			;8f12
	ld (08ec5h),de		;8f13
	ld a,(08ec4h)		;8f17
	and a			;8f1a
	jr z,L_8F20		;8f1b
	ld c,a			;8f1d
	pop af			;8f1e
	ret			;8f1f
L_8F20:
	pop af			;8f20
	ld hl,08ec4h		;8f21
	dec (hl)			;8f24
	ret			;8f25
L_8F26:
	ld a,(hl)			;8f26
	ld b,a			;8f27
	inc hl			;8f28
	ld a,(hl)			;8f29
	exx			;8f2a
	ld d,a			;8f2b
	exx			;8f2c
L_8F2D:
	call L_8F40		;8f2d
	call L_8D70		;8f30
	dec c			;8f33
	call z,L_8F0A		;8f34
	exx			;8f37
	ld a,d			;8f38
	inc a			;8f39
	ld d,a			;8f3a
	exx			;8f3b
	djnz L_8F2D		;8f3c
	jr L_8F07		;8f3e
L_8F40:
	push bc			;8f40
	push hl			;8f41
	push de			;8f42
	call L_8D7A		;8f43
	pop de			;8f46
	call L_8F55		;8f47
	ld bc,00808h		;8f4a
	ld a,001h		;8f4d
	call L_8C3D		;8f4f
	pop hl			;8f52
	pop bc			;8f53
	ret			;8f54
L_8F55:
	ld a,(0d1cch)		;8f55
	or a			;8f58
	ret z			;8f59
	ex af,af'			;8f5a
	ld a,040h		;8f5b
	add a,l			;8f5d
	ld l,a			;8f5e
	ex af,af'			;8f5f
	cp 002h		;8f60
	ret c			;8f62
	ld a,040h		;8f63
	add a,l			;8f65
	ld l,a			;8f66
	ret			;8f67

; ----------------------------------------------------------------------
; DATOS tabla_8F68: (6 bytes)
;   0x8f68..0x8f6e  (6 bytes)
DATA_tabla_8F68:
	defb 04dh,00ch,07dh,078h,010h,001h	; 8f68

; ======================================================================
; CODIGO 0x8f6e..0x9064  (246 bytes)
; ======================================================================


L_8F6E:
	ld a,001h		;8f6e
	ld (0faf6h),a		;8f70
	ld de,00000h		;8f73
	call L_8F82		;8f76
	ld de,00040h		;8f79
	call L_8F82		;8f7c
	ld de,00080h		;8f7f
L_8F82:
	ld bc,01000h		;8f82
L_8F85:
	push bc			;8f85
	push de			;8f86
	ld hl,09064h		;8f87
	call L_8DA9		;8f8a
	pop de			;8f8d
	call L_8D70		;8f8e
	pop bc			;8f91
	inc c			;8f92
	djnz L_8F85		;8f93
	ret			;8f95
L_8F96:
	ld a,024h		;8f96
	ld (0d226h),a		;8f98
	call L_8C77		;8f9b
	out (c),h		;8f9e
	ld a,001h		;8fa0
	out (c),a		;8fa2
	out (c),l		;8fa4
	out (c),a		;8fa6
	ld hl,(0d227h)		;8fa8
	dec h			;8fab
	out (c),h		;8fac
	inc h			;8fae
	xor a			;8faf
	cp h			;8fb0
	jr nz,L_8FB4		;8fb1
	inc a			;8fb3
L_8FB4:
	out (c),a		;8fb4
	xor a			;8fb6
	out (c),a		;8fb7
	out (c),a		;8fb9
	out (c),l		;8fbb
	inc a			;8fbd
	out (c),a		;8fbe
	ld a,070h		;8fc0
	out (c),a		;8fc2
	ei			;8fc4
	ret			;8fc5
L_8FC6:
	ld a,(ix+000h)		;8fc6
	and a			;8fc9
	ret z			;8fca
	call L_8FD5		;8fcb
	ld de,00005h		;8fce
	add ix,de		;8fd1
	jr L_8FC6		;8fd3
L_8FD5:
	xor a			;8fd5
	ld (08f68h),a		;8fd6
	ld l,(ix+001h)		;8fd9
	ld h,(ix+002h)		;8fdc
	ld (08f69h),hl		;8fdf
	ld a,(ix+004h)		;8fe2
	ld (08f6bh),a		;8fe5
	ld a,(ix+003h)		;8fe8
	call L_8D7A		;8feb
L_8FEE:
	ld (08f6ch),hl		;8fee
	ld b,008h		;8ff1
	ld de,0d400h		;8ff3
L_8FF6:
	push bc			;8ff6
	call L_9014		;8ff7
	jr z,L_9012		;8ffa
	ld (de),a			;8ffc
	inc de			;8ffd
	pop bc			;8ffe
	djnz L_8FF6		;8fff
	ld a,(08f6bh)		;9001
	ld c,a			;9004
	call L_9058		;9005
	ld de,(08f6ch)		;9008
	call L_8D70		;900c
	ex de,hl			;900f
	jr L_8FEE		;9010
L_9012:
	pop bc			;9012
	ret			;9013
L_9014:
	ld a,(08f68h)		;9014
	or a			;9017
	jr nz,L_9027		;9018
	ld hl,(08f69h)		;901a
	ld a,(hl)			;901d
	inc hl			;901e
	ld (08f69h),hl		;901f
	and a			;9022
	ret z			;9023
	ld (08f68h),a		;9024
L_9027:
	bit 7,a		;9027
	jr z,L_9045		;9029
	ld hl,(08f69h)		;902b
	ld b,(hl)			;902e
	inc hl			;902f
	ld (08f69h),hl		;9030
	ld a,(08f68h)		;9033
	dec a			;9036
	ld (08f68h),a		;9037
	and 07fh		;903a
	jr nz,L_9041		;903c
	ld (08f68h),a		;903e
L_9041:
	or 0ffh		;9041
	ld a,b			;9043
	ret			;9044
L_9045:
	ld hl,(08f69h)		;9045
	ld b,(hl)			;9048
	ld a,(08f68h)		;9049
	dec a			;904c
	ld (08f68h),a		;904d
	jr nz,L_9041		;9050
	inc hl			;9052
	ld (08f69h),hl		;9053
	jr L_9041		;9056
L_9058:
	ld b,001h		;9058
	ld hl,0d400h		;905a
	ld de,(08f6ch)		;905d
	jp L_8DA0		;9061

; ----------------------------------------------------------------------
; DATOS relleno_9064: 8 x 0xFF (8 bytes)
;   0x9064..0x906c  (8 bytes)
DATA_relleno_9064:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9064  ........

; ----------------------------------------------------------------------
; DATOS partes: las 41 partes del programa, 6 bytes cada una: primer sector,
;   destino, unidad (0) y cuantos sectores; la lee 0x8E7C. Despues, 6 ceros
;   (252 bytes)
;   0x906c..0x9168  (252 bytes)
DATA_partes:
	defb 04dh,000h,000h,092h,000h,004h	; 906c
	defb 00ch,000h,000h,092h,000h,002h	; 9072
	defb 009h,000h,000h,096h,000h,003h	; 9078
	defb 064h,000h,000h,09ch,000h,00bh	; 907e
	defb 06fh,000h,000h,09ch,000h,00eh	; 9084
	defb 07dh,000h,000h,09ch,000h,004h	; 908a
	defb 058h,000h,000h,092h,000h,005h	; 9090
	defb 043h,000h,000h,092h,000h,003h	; 9096
	defb 0b5h,000h,000h,098h,000h,003h	; 909c
	defb 05dh,000h,000h,098h,000h,007h	; 90a2
	defb 0b8h,000h,000h,098h,000h,004h	; 90a8
	defb 0bch,000h,000h,098h,000h,006h	; 90ae
	defb 0c2h,000h,000h,098h,000h,005h	; 90b4
	defb 049h,000h,000h,092h,000h,003h	; 90ba
	defb 081h,000h,000h,098h,000h,005h	; 90c0
	defb 051h,000h,000h,098h,000h,002h	; 90c6
	defb 040h,000h,000h,092h,000h,003h	; 90cc
	defb 097h,000h,000h,098h,000h,004h	; 90d2
	defb 053h,000h,000h,098h,000h,005h	; 90d8
	defb 09bh,000h,000h,098h,000h,002h	; 90de
	defb 09dh,000h,000h,098h,000h,003h	; 90e4
	defb 0a0h,000h,000h,098h,000h,002h	; 90ea
	defb 0a2h,000h,000h,098h,000h,002h	; 90f0
	defb 0a4h,000h,000h,098h,000h,006h	; 90f6
	defb 0aah,000h,000h,098h,000h,006h	; 90fc
	defb 0b0h,000h,000h,098h,000h,005h	; 9102
	defb 086h,000h,000h,098h,000h,007h	; 9108
	defb 08dh,000h,000h,098h,000h,00ah	; 910e
	defb 014h,000h,000h,09ah,000h,005h	; 9114
	defb 011h,000h,000h,098h,000h,001h	; 911a
	defb 00fh,000h,000h,098h,000h,001h	; 9120
	defb 046h,000h,000h,092h,000h,003h	; 9126
	defb 0c7h,000h,000h,098h,000h,004h	; 912c
	defb 0cbh,000h,000h,098h,000h,002h	; 9132
	defb 0cdh,000h,000h,098h,000h,003h	; 9138
	defb 0d0h,000h,000h,098h,000h,003h	; 913e
	defb 0d3h,000h,000h,098h,000h,011h	; 9144
	defb 0e4h,000h,000h,098h,000h,006h	; 914a
	defb 013h,000h,000h,098h,000h,001h	; 9150
	defb 04ch,000h,000h,098h,000h,001h	; 9156
	defb 0f2h,000h,000h,09ah,000h,009h	; 915c
	defb 000h,000h,000h,000h,000h,000h	; 9162

; ======================================================================
; CODIGO 0x9168..0x918f  (39 bytes)
; ======================================================================


L_9168:
	call L_9173		;9168
	cp 004h		;916b
	jr z,L_9171		;916d
	scf			;916f
	ret			;9170
L_9171:
	or a			;9171
	ret			;9172
L_9173:
	push bc			;9173
	push de			;9174
	push hl			;9175
	push ix		;9176
	push iy		;9178
	ld a,(0fcc1h)		;917a
	ld (0918fh),a		;917d
	ld a,000h		;9180
	ld b,001h		;9182
	ld c,0f9h		;9184
	ld e,00eh		;9186
	ld d,000h		;9188
	ld hl,0d300h		;918a
	jr $+3		;918d

; ----------------------------------------------------------------------
; DATOS byte_918F: (1 byte)
;   0x918f..0x9190  (1 bytes)
DATA_byte_918F:
	defb 000h	; 918f

; ======================================================================
; CODIGO 0x9190..0x919a  (10 bytes)
; ======================================================================


L_9190:
	ld a,004h		;9190
	pop iy		;9192
	pop ix		;9194
	pop hl			;9196
	pop de			;9197
	pop bc			;9198
	ret			;9199

; ----------------------------------------------------------------------
; DATOS tabla_919A: (102 bytes)
;   0x919a..0x9200  (102 bytes)
DATA_tabla_919A:
	defb 0c5h,0fch,000h,080h,038h,006h,007h,008h,009h,00ah,00bh,00ch,00dh,00eh,00fh,010h	; 919a  ....8...........
	defb 011h,012h,013h,014h,01ah,01bh,01ch,01dh,01eh,01ah,01bh,01ch,01dh,01eh,007h,02fh	; 91aa  .............../
	defb 007h,030h,007h,031h,00ch,02fh,00ch,030h,00ch,031h,011h,02fh,011h,030h,011h,031h	; 91ba  .0.1./.0.1./.0.1
	defb 016h,02fh,016h,030h,016h,031h,01bh,02fh,01bh,030h,01bh,031h,020h,02fh,020h,030h	; 91ca  ./.0.1./.0.1 / 0
	defb 020h,031h,028h,02fh,028h,030h,028h,031h,007h,02fh,007h,030h,007h,031h,00ch,02fh	; 91da   1(/(0(1./.0.1./
	defb 00ch,030h,00ch,031h,011h,02fh,011h,030h,011h,031h,01bh,02fh,01bh,030h,01bh,031h	; 91ea  .0.1./.0.1./.0.1
	defb 01bh,02fh,01bh,030h,01bh,031h	; 91fa
