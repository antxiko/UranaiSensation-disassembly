; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - sonido (se ejecuta en 0x4000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x04000


; ======================================================================
; CODIGO 0x4000..0x40fd  (253 bytes)
; ======================================================================


L_4000:
	jp L_4006		;4000
L_4003:
	jp L_41A6		;4003
L_4006:
	ld c,a			;4006
	cp 080h		;4007
	jp z,L_4125		;4009
	cp 081h		;400c
	jp z,L_4132		;400e
	cp 084h		;4011
	jp z,L_414B		;4013
	cp 085h		;4016
	jp z,L_412D		;4018
	cp 082h		;401b
	jp z,L_415B		;401d
	cp 083h		;4020
	jp z,L_419E		;4022
	ld hl,0d084h		;4025
	ld a,c			;4028
	cp 00ch		;4029
	jr nz,L_4030		;402b
	ld a,(hl)			;402d
	cp c			;402e
	ret z			;402f
L_4030:
	ld a,c			;4030
	cp 00dh		;4031
	jr nz,L_4038		;4033
	ld a,(hl)			;4035
	cp c			;4036
	ret z			;4037
L_4038:
	ld a,c			;4038
	cp 012h		;4039
	jr nz,L_4040		;403b
	ld a,(hl)			;403d
	cp c			;403e
	ret z			;403f
L_4040:
	ld a,c			;4040
	cp 01eh		;4041
	jr nz,L_4048		;4043
	ld a,(hl)			;4045
	cp c			;4046
	ret z			;4047
L_4048:
	ld hl,0d0ddh		;4048
	ld (hl),c			;404b
	ld hl,04ea3h		;404c
	ld a,c			;404f
	add a,c			;4050
	ld e,a			;4051
	ld d,000h		;4052
	add hl,de			;4054
	ld e,(hl)			;4055
	inc hl			;4056
	ld d,(hl)			;4057
	ex de,hl			;4058
	ld de,0d0deh		;4059
	ld bc,0000ch		;405c
	ldir		;405f
	ld ix,0d0e0h		;4061
	ld hl,0d0deh		;4065
	bit 7,(hl)		;4068
	jp z,L_4079		;406a
	inc hl			;406d
	ld a,(hl)			;406e
	ld hl,0d001h		;406f
	call L_40DD		;4072
	inc ix		;4075
	inc ix		;4077
L_4079:
	ld hl,0d0deh		;4079
	bit 6,(hl)		;407c
	jp z,L_408D		;407e
	inc hl			;4081
	ld a,(hl)			;4082
	ld hl,0d02dh		;4083
	call L_40DD		;4086
	inc ix		;4089
	inc ix		;408b
L_408D:
	ld hl,0d0deh		;408d
	bit 5,(hl)		;4090
	jp z,L_40A1		;4092
	inc hl			;4095
	ld a,(hl)			;4096
	ld hl,0d059h		;4097
	call L_40DD		;409a
	inc ix		;409d
	inc ix		;409f
L_40A1:
	ld hl,0d0deh		;40a1
	bit 4,(hl)		;40a4
	jp z,L_40B5		;40a6
L_40A9:
	inc hl			;40a9
	ld a,(hl)			;40aa
	ld hl,0d085h		;40ab
	call L_40DD		;40ae
	inc ix		;40b1
	inc ix		;40b3
L_40B5:
	ld hl,0d0deh		;40b5
	bit 3,(hl)		;40b8
	ret z			;40ba
	ld de,0d084h		;40bb
	ld a,(de)			;40be
	ld b,a			;40bf
	or b			;40c0
	jp z,L_40D6		;40c1
	cp 00bh		;40c4
	jp z,L_40D6		;40c6
	cp 011h		;40c9
	jp z,L_40D6		;40cb
	inc hl			;40ce
	ld a,(hl)			;40cf
	ld hl,0d0b1h		;40d0
	jp L_40DD		;40d3
L_40D6:
	set 4,(hl)		;40d6
	res 3,(hl)		;40d8
	jp L_40A9		;40da
L_40DD:
	ld b,(hl)			;40dd
	cp b			;40de
	ret c			;40df
	ex de,hl			;40e0
	ld (de),a			;40e1
	dec de			;40e2
	ld hl,0d0ddh		;40e3
	ld a,(hl)			;40e6
	ld (de),a			;40e7
	inc de			;40e8
	inc de			;40e9
	ld a,(ix+000h)		;40ea
	ld (de),a			;40ed
	inc de			;40ee
	ld a,(ix+001h)		;40ef
	ld (de),a			;40f2
	inc de			;40f3
	ld hl,040fdh		;40f4
	ld bc,00028h		;40f7
	ldir		;40fa
	ret			;40fc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x40fd..0x4125  (40 bytes)
DATA_40FD:
	defb 001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 40fd  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 410d  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 411d  ........

; ======================================================================
; CODIGO 0x4125..0x42ea  (453 bytes)
; ======================================================================


L_4125:
	ld hl,0d0dch		;4125
	res 0,(hl)		;4128
	jp L_4143		;412a
L_412D:
	ld hl,0d0dch		;412d
	set 2,(hl)		;4130
L_4132:
	ld hl,0d0eah		;4132
	ld (hl),00ah		;4135
	inc hl			;4137
	ld (hl),009h		;4138
	ld hl,0d0dch		;413a
	set 0,(hl)		;413d
	res 5,(hl)		;413f
	res 4,(hl)		;4141
L_4143:
	ld hl,0d0ech		;4143
	xor a			;4146
	ld (hl),a			;4147
	inc hl			;4148
	ld (hl),a			;4149
	ret			;414a
L_414B:
	ld hl,0d0dch		;414b
	set 5,(hl)		;414e
	res 0,(hl)		;4150
	ld hl,0d0ech		;4152
	xor a			;4155
	ld (hl),a			;4156
	inc hl			;4157
	ld (hl),004h		;4158
	ret			;415a
L_415B:
	ld hl,0d0dch		;415b
	bit 1,(hl)		;415e
	ld b,000h		;4160
	jr nz,L_4166		;4162
	ld b,001h		;4164
L_4166:
	res 1,(hl)		;4166
	res 4,(hl)		;4168
	ld a,(0d0dch)		;416a
	set 3,a		;416d
	ld (0d0dch),a		;416f
	ld a,(0d00dh)		;4172
	ld e,a			;4175
	ld a,(0d0f7h)		;4176
	and 00fh		;4179
	or e			;417b
	ld (0d00dh),a		;417c
	ld a,(0d039h)		;417f
	ld e,a			;4182
	ld a,(0d0f7h)		;4183
	and 0f0h		;4186
	rrca			;4188
	rrca			;4189
	rrca			;418a
	rrca			;418b
	or e			;418c
	ld (0d039h),a		;418d
	ld a,(0d065h)		;4190
	ld e,a			;4193
	ld a,(0d0f7h)		;4194
	and 00fh		;4197
	or e			;4199
	ld (0d065h),a		;419a
	ret			;419d
L_419E:
	ld hl,0d0dch		;419e
	res 6,(hl)		;41a1
	set 1,(hl)		;41a3
	ret			;41a5
L_41A6:
	ld a,(0d0eeh)		;41a6
	call L_4C71		;41a9
	ld hl,0d0dch		;41ac
	bit 1,(hl)		;41af
	jp nz,L_4212		;41b1
	ld a,(0d0dch)		;41b4
	bit 0,a		;41b7
	call nz,L_4701		;41b9
	ld a,(0d0dch)		;41bc
	bit 5,a		;41bf
	call nz,L_47FE		;41c1
	ld a,(0d0dch)		;41c4
	bit 6,a		;41c7
	ret nz			;41c9
	ld a,001h		;41ca
	ld (0d0efh),a		;41cc
	ld ix,0d000h		;41cf
	call L_420A		;41d3
	ld a,002h		;41d6
	ld (0d0efh),a		;41d8
	ld ix,0d02ch		;41db
	call L_420A		;41df
	ld a,004h		;41e2
	ld (0d0efh),a		;41e4
	ld ix,0d058h		;41e7
	call L_420A		;41eb
	ld a,008h		;41ee
	ld (0d0efh),a		;41f0
	ld ix,0d084h		;41f3
	call L_420A		;41f7
	ld a,010h		;41fa
	ld (0d0efh),a		;41fc
	ld ix,0d0b0h		;41ff
	call L_420A		;4203
	call L_4B45		;4206
	ret			;4209
L_420A:
	ld a,(ix+000h)		;420a
	or a			;420d
	call nz,L_4247		;420e
	ret			;4211
L_4212:
	ld ix,0d000h		;4212
	call L_423A		;4216
	ld ix,0d02ch		;4219
	call L_423A		;421d
	ld ix,0d058h		;4220
	call L_423A		;4224
	ld a,(0d0dch)		;4227
	set 4,a		;422a
	ld (0d0dch),a		;422c
	ld de,0d0f2h		;422f
	ld a,(de)			;4232
	and 01fh		;4233
	ld (de),a			;4235
	call L_4B45		;4236
	ret			;4239
L_423A:
	ld (ix+00ch),000h		;423a
	ld a,(ix+00dh)		;423e
	and 0f0h		;4241
	ld (ix+00dh),a		;4243
	ret			;4246
L_4247:
	dec (ix+004h)		;4247
	jp nz,L_44A7		;424a
	ld l,(ix+002h)		;424d
	ld h,(ix+003h)		;4250
L_4253:
	ld a,(hl)			;4253
	cp 0ffh		;4254
	jp z,L_4816		;4256
	cp 0d0h		;4259
	jp c,L_4265		;425b
	call L_4884		;425e
	inc hl			;4261
	jp L_4253		;4262
L_4265:
	bit 0,(ix+009h)		;4265
	jp nz,L_427C		;4269
	bit 1,(ix+009h)		;426c
	jp nz,L_42F6		;4270
	ld a,(ix+009h)		;4273
	and 03ch		;4276
	jp nz,L_4370		;4278
	ret			;427b
L_427C:
	ld a,(hl)			;427c
	and 00fh		;427d
	ld b,a			;427f
	ld a,(ix+014h)		;4280
	jp z,L_428A		;4283
	ld e,a			;4286
L_4287:
	add a,e			;4287
	djnz L_4287		;4288
L_428A:
	ld (ix+004h),a		;428a
	ld a,(hl)			;428d
	and 0f0h		;428e
	rrca			;4290
	rrca			;4291
	rrca			;4292
	rrca			;4293
	call L_46F9		;4294
	bit 7,(ix+009h)		;4297
	ret nz			;429b
	cp 00ch		;429c
	jp nc,L_42E1		;429e
	ld hl,042eah		;42a1
	ld e,a			;42a4
	ld d,000h		;42a5
	add hl,de			;42a7
	ld l,(hl)			;42a8
	ld h,000h		;42a9
	ld a,(ix+016h)		;42ab
	or a			;42ae
	jp z,L_42B6		;42af
	ld b,a			;42b2
L_42B3:
	add hl,hl			;42b3
	djnz L_42B3		;42b4
L_42B6:
	ld (ix+010h),l		;42b6
	ld (ix+011h),h		;42b9
	ld e,(ix+015h)		;42bc
	ld a,(0d0dch)		;42bf
	and 021h		;42c2
	call nz,L_47E9		;42c4
	ld (ix+012h),e		;42c7
	ld a,(ix+00dh)		;42ca
	and 0f0h		;42cd
	ld (ix+00dh),a		;42cf
	ld a,(0d0dch)		;42d2
	and 042h		;42d5
	jr nz,L_42DD		;42d7
	set 1,(ix+00dh)		;42d9
L_42DD:
	call L_4403		;42dd
	ret			;42e0
L_42E1:
	ld a,(ix+00dh)		;42e1
	and 0f0h		;42e4
	ld (ix+00dh),a		;42e6
	ret			;42e9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x42ea..0x42f6  (12 bytes)
DATA_42EA:
	defb 06ah,064h,05eh,059h,054h,04fh,04ah,046h,042h,03fh,03bh,038h	; 42ea  jd^YTOJFB?.8

; ======================================================================
; CODIGO 0x42f6..0x4899  (1443 bytes)
; ======================================================================


L_42F6:
	ld a,(ix+00dh)		;42f6
	and 003h		;42f9
	jp z,L_4361		;42fb
	cp 001h		;42fe
	jp z,L_433E		;4300
	ld a,(hl)			;4303
	bit 6,(ix+00eh)		;4304
	jp nz,L_4328		;4308
	bit 5,(ix+00eh)		;430b
	jp nz,L_432E		;430f
	and 0f0h		;4312
	ld b,a			;4314
	xor (hl)			;4315
	ld d,a			;4316
	inc hl			;4317
	ld a,(hl)			;4318
	ld (ix+010h),a		;4319
	ld (ix+011h),d		;431c
	ld a,b			;431f
	rrca			;4320
	rrca			;4321
	rrca			;4322
	rrca			;4323
	ld b,a			;4324
	jp L_4342		;4325
L_4328:
	ld (ix+010h),a		;4328
	jp L_4350		;432b
L_432E:
	and 0f0h		;432e
	rrca			;4330
	rrca			;4331
	rrca			;4332
	rrca			;4333
	ld b,a			;4334
	ld a,(hl)			;4335
	and 00fh		;4336
	ld (ix+011h),a		;4338
	jp L_4342		;433b
L_433E:
	ld a,(hl)			;433e
	and 00fh		;433f
	ld b,a			;4341
L_4342:
	bit 2,(ix+00dh)		;4342
	jp z,L_434B		;4346
	ld b,010h		;4349
L_434B:
	inc b			;434b
	inc b			;434c
	ld (ix+012h),b		;434d
L_4350:
	ld e,(ix+012h)		;4350
	ld a,(0d0dch)		;4353
	and 021h		;4356
	call nz,L_47E9		;4358
	ld (ix+012h),e		;435b
	call L_4403		;435e
L_4361:
	bit 7,(ix+009h)		;4361
	ret nz			;4365
	call L_46F9		;4366
	ld a,(ix+013h)		;4369
	ld (ix+004h),a		;436c
	ret			;436f
L_4370:
	set 7,(ix+009h)		;4370
	call L_427C		;4374
	ld b,a			;4377
	call L_43A7		;4378
	ld a,b			;437b
	add a,a			;437c
	ld e,a			;437d
	ld d,000h		;437e
	add hl,de			;4380
	ld e,(hl)			;4381
	inc hl			;4382
	ld d,(hl)			;4383
	ex de,hl			;4384
	ld a,(hl)			;4385
L_4386:
	set 1,(ix+009h)		;4386
	call L_4253		;438a
	res 1,(ix+009h)		;438d
	res 7,(ix+009h)		;4391
	ld a,(ix+013h)		;4395
	ld (ix+019h),a		;4398
	inc hl			;439b
	ld (ix+017h),l		;439c
	ld (ix+018h),h		;439f
	set 0,(ix+00eh)		;43a2
	ret			;43a6
L_43A7:
	bit 2,(ix+009h)		;43a7
	jp nz,L_43C3		;43ab
	bit 3,(ix+009h)		;43ae
	jp nz,L_43D3		;43b2
	bit 4,(ix+009h)		;43b5
	jp nz,L_43E3		;43b9
	bit 5,(ix+009h)		;43bc
	jp nz,L_43F3		;43c0
L_43C3:
	ld a,(ix+016h)		;43c3
	cp 001h		;43c6
	jp z,L_43CF		;43c8
	ld hl,04c8eh		;43cb
	ret			;43ce
L_43CF:
	ld hl,04d02h		;43cf
	ret			;43d2
L_43D3:
	ld a,(ix+016h)		;43d3
	cp 001h		;43d6
	jp z,L_43DF		;43d8
	ld hl,04e0bh		;43db
	ret			;43de
L_43DF:
	ld hl,04e5dh		;43df
	ret			;43e2
L_43E3:
	ld a,(ix+016h)		;43e3
	cp 001h		;43e6
	jp z,L_43EF		;43e8
	ld hl,04e75h		;43eb
	ret			;43ee
L_43EF:
	ld hl,04e8dh		;43ef
	ret			;43f2
L_43F3:
	ld a,(ix+016h)		;43f3
	cp 001h		;43f6
	jp z,L_43FF		;43f8
	ld hl,09c8ah		;43fb
	ret			;43fe
L_43FF:
	ld hl,09d44h		;43ff
	ret			;4402
L_4403:
	call L_45B6		;4403
	res 4,(ix+00eh)		;4406
	bit 4,(ix+00dh)		;440a
	jp z,L_4415		;440e
	set 6,(ix+00dh)		;4411
L_4415:
	ld a,(0d0dch)		;4415
	bit 3,a		;4418
	jr z,L_442F		;441a
	set 6,(ix+00fh)		;441c
	ld a,(0d0efh)		;4420
	cp 004h		;4423
	jr nz,L_442F		;4425
	ld a,(0d0dch)		;4427
	res 3,a		;442a
	ld (0d0dch),a		;442c
L_442F:
	res 5,(ix+00dh)		;442f
	ld a,(ix+00fh)		;4433
	and 0d7h		;4436
	ld (ix+00fh),a		;4438
	xor a			;443b
	ld (ix+01dh),a		;443c
	ld (ix+01eh),a		;443f
	ld (ix+01fh),a		;4442
	ld (ix+020h),a		;4445
	set 2,(ix+00fh)		;4448
	ld a,(ix+012h)		;444c
	bit 7,(ix+00eh)		;444f
	jp z,L_445D		;4453
	ld e,(ix+015h)		;4456
	sub e			;4459
	call m,L_44A5		;445a
L_445D:
	ld (ix+00ch),a		;445d
	bit 2,(ix+00dh)		;4460
	ret nz			;4464
	bit 6,(ix+00fh)		;4465
	jr z,L_4475		;4469
	bit 7,(ix+00fh)		;446b
	jr nz,L_448E		;446f
	res 6,(ix+00fh)		;4471
L_4475:
	bit 1,(ix+00fh)		;4475
	ret z			;4479
	ld a,(0d0dch)		;447a
	bit 0,a		;447d
	jr z,L_449A		;447f
	bit 2,a		;4481
	jr z,L_4489		;4483
	set 7,(ix+00fh)		;4485
L_4489:
	res 1,(ix+00fh)		;4489
	ret			;448d
L_448E:
	res 7,(ix+00fh)		;448e
	res 6,(ix+00fh)		;4492
	set 1,(ix+00fh)		;4496
L_449A:
	ld a,(ix+025h)		;449a
	ld (ix+00ch),a		;449d
	res 2,(ix+00fh)		;44a0
	ret			;44a4
L_44A5:
	xor a			;44a5
	ret			;44a6
L_44A7:
	bit 0,(ix+00eh)		;44a7
	jp nz,L_458D		;44ab
	bit 4,(ix+00dh)		;44ae
	call nz,L_44E8		;44b2
	bit 2,(ix+00eh)		;44b5
	call nz,L_45D3		;44b9
	bit 0,(ix+00fh)		;44bc
	call nz,L_4628		;44c0
	ld a,(0d0dch)		;44c3
	bit 0,a		;44c6
	ret z			;44c8
	ld a,(ix+009h)		;44c9
	bit 1,a		;44cc
	ret nz			;44ce
	inc (ix+02bh)		;44cf
	ld a,00bh		;44d2
	cp (ix+02bh)		;44d4
	ret nz			;44d7
	xor a			;44d8
	ld (ix+02bh),a		;44d9
	ld b,(ix+00ch)		;44dc
	dec b			;44df
	ld (ix+00ch),a		;44e0
	ret m			;44e3
	ld (ix+00ch),b		;44e4
	ret			;44e7
L_44E8:
	nop			;44e8
	bit 6,(ix+00dh)		;44e9
	ret z			;44ed
	bit 7,(ix+00dh)		;44ee
	jp nz,L_453D		;44f2
	bit 5,(ix+00dh)		;44f5
	jp nz,L_4515		;44f9
	ld l,(ix+010h)		;44fc
	ld h,(ix+011h)		;44ff
	ld b,(ix+028h)		;4502
L_4505:
	ld d,000h		;4505
	ld e,(ix+027h)		;4507
	add hl,de			;450a
	jp nc,L_4510		;450b
	sbc hl,de		;450e
L_4510:
	djnz L_4505		;4510
	jp L_455A		;4512
L_4515:
	ld a,(ix+00ah)		;4515
	ld d,(ix+00bh)		;4518
	sbc a,(ix+027h)		;451b
	ld e,a			;451e
	jp nc,L_452C		;451f
	ld a,d			;4522
	or a			;4523
	jr nz,L_452B		;4524
	ld de,00001h		;4526
	jr L_452C		;4529
L_452B:
	dec d			;452b
L_452C:
	ld (ix+00ah),e		;452c
	ld (ix+00bh),d		;452f
	dec (ix+028h)		;4532
	ld a,(ix+028h)		;4535
	or a			;4538
	ret nz			;4539
	jp L_457F		;453a
L_453D:
	bit 5,(ix+00dh)		;453d
	jp nz,L_4565		;4541
	ld l,(ix+010h)		;4544
	ld h,(ix+011h)		;4547
	ld b,(ix+028h)		;454a
L_454D:
	ld d,000h		;454d
	ld e,(ix+027h)		;454f
	sbc hl,de		;4552
	jp nc,L_4558		;4554
	add hl,de			;4557
L_4558:
	djnz L_454D		;4558
L_455A:
	ld (ix+00ah),l		;455a
	ld (ix+00bh),h		;455d
	set 5,(ix+00dh)		;4560
	ret			;4564
L_4565:
	ld l,(ix+00ah)		;4565
	ld h,(ix+00bh)		;4568
	ld d,000h		;456b
	ld e,(ix+027h)		;456d
	add hl,de			;4570
	ld (ix+00ah),l		;4571
	ld (ix+00bh),h		;4574
	dec (ix+028h)		;4577
	ld a,(ix+028h)		;457a
	or a			;457d
	ret nz			;457e
L_457F:
	res 6,(ix+00dh)		;457f
	call L_45B6		;4583
	ld a,(ix+029h)		;4586
	ld (ix+028h),a		;4589
	ret			;458c
L_458D:
	dec (ix+019h)		;458d
	ret nz			;4590
	ld l,(ix+017h)		;4591
	ld h,(ix+018h)		;4594
	ld a,(hl)			;4597
	cp 0ffh		;4598
	jp z,L_45A5		;459a
	set 7,(ix+009h)		;459d
	call L_4386		;45a1
	ret			;45a4
L_45A5:
	res 0,(ix+00eh)		;45a5
	xor a			;45a9
	ld (ix+00ch),a		;45aa
	ld a,(ix+00dh)		;45ad
	and 0f0h		;45b0
	ld (ix+00dh),a		;45b2
	ret			;45b5
L_45B6:
	ld e,(ix+010h)		;45b6
	ld d,(ix+011h)		;45b9
	bit 1,(ix+00eh)		;45bc
	jp z,L_45CC		;45c0
	ld a,(ix+026h)		;45c3
	add a,e			;45c6
	ld e,a			;45c7
	jp nc,L_45CC		;45c8
	inc d			;45cb
L_45CC:
	ld (ix+00ah),e		;45cc
	ld (ix+00bh),d		;45cf
	ret			;45d2
L_45D3:
	inc (ix+01eh)		;45d3
	ld a,(ix+01eh)		;45d6
	ld b,(ix+00eh)		;45d9
	bit 4,b		;45dc
	jp nz,L_45F5		;45de
	bit 3,b		;45e1
	jp z,L_45F5		;45e3
	cp (ix+01ah)		;45e6
	ret nz			;45e9
	ld (ix+01eh),000h		;45ea
	set 4,(ix+00eh)		;45ee
	jp L_45F9		;45f2
L_45F5:
	cp (ix+01bh)		;45f5
	ret nz			;45f8
L_45F9:
	ld e,(ix+00ah)		;45f9
	ld d,(ix+00bh)		;45fc
	ld b,(ix+01ch)		;45ff
	ld a,(ix+01dh)		;4602
	cpl			;4605
	ld (ix+01dh),a		;4606
	and a			;4609
	ld a,e			;460a
	jp nz,L_4617		;460b
	add a,b			;460e
	ld e,a			;460f
	jp nc,L_461D		;4610
	inc d			;4613
	jp L_461D		;4614
L_4617:
	sub b			;4617
	ld e,a			;4618
	jp nc,L_461D		;4619
	dec d			;461c
L_461D:
	ld (ix+00ah),e		;461d
	ld (ix+00bh),d		;4620
	ld (ix+01eh),000h		;4623
	ret			;4627
L_4628:
	bit 2,(ix+00dh)		;4628
	ret nz			;462c
	call L_4634		;462d
	ld (ix+00ch),e		;4630
	ret			;4633
L_4634:
	ld e,(ix+00ch)		;4634
	inc (ix+01fh)		;4637
	ld b,(ix+01fh)		;463a
	ld a,(ix+024h)		;463d
	cp (ix+004h)		;4640
	call nc,L_46F4		;4643
	bit 5,(ix+00fh)		;4646
	jp nz,L_46DA		;464a
	bit 3,(ix+00fh)		;464d
	jp nz,L_468E		;4651
	bit 2,(ix+00fh)		;4654
	jp nz,L_466E		;4658
	ld a,e			;465b
	inc a			;465c
	ld e,a			;465d
	cp (ix+012h)		;465e
	ret c			;4661
	set 2,(ix+00fh)		;4662
	ld e,(ix+012h)		;4666
	ld (ix+01fh),000h		;4669
	ret			;466d
L_466E:
	ld a,e			;466e
	dec a			;466f
	jp m,L_467C		;4670
	cp (ix+02ah)		;4673
	jp c,L_467C		;4676
	ld e,a			;4679
	jr L_4680		;467a
L_467C:
	ld a,(ix+02ah)		;467c
	ld e,a			;467f
L_4680:
	ld a,b			;4680
	cp (ix+021h)		;4681
	ret c			;4684
	ld (ix+01fh),000h		;4685
	set 3,(ix+00fh)		;4689
	ret			;468d
L_468E:
	bit 4,(ix+00fh)		;468e
	jp nz,L_46BD		;4692
	ld a,b			;4695
	cp (ix+022h)		;4696
	ret nz			;4699
	ld a,e			;469a
	dec a			;469b
	jp m,L_46B8		;469c
	cp (ix+02ah)		;469f
	jr c,L_46B8		;46a2
	ld e,a			;46a4
	inc (ix+020h)		;46a5
	ld a,(ix+020h)		;46a8
	cp (ix+023h)		;46ab
	ld (ix+01fh),000h		;46ae
	ret nz			;46b2
	set 5,(ix+00fh)		;46b3
	ret			;46b7
L_46B8:
	ld a,(ix+02ah)		;46b8
	ld e,a			;46bb
	ret			;46bc
L_46BD:
	ld a,(ix+022h)		;46bd
	ld d,a			;46c0
	ld a,e			;46c1
	sub d			;46c2
	jp c,L_46CC		;46c3
	cp (ix+02ah)		;46c6
	jp nc,L_46CF		;46c9
L_46CC:
	ld a,(ix+02ah)		;46cc
L_46CF:
	ld e,a			;46cf
	ld a,b			;46d0
	cp (ix+023h)		;46d1
	ret nz			;46d4
	set 5,(ix+00fh)		;46d5
	ret			;46d9
L_46DA:
	ld a,(ix+024h)		;46da
	cp (ix+004h)		;46dd
	jr nc,L_46E3		;46e0
	ret			;46e2
L_46E3:
	ld a,e			;46e3
	dec a			;46e4
	jp m,L_46EF		;46e5
	cp (ix+02ah)		;46e8
	jr c,L_46EF		;46eb
	jr L_46F2		;46ed
L_46EF:
	ld a,(ix+02ah)		;46ef
L_46F2:
	ld e,a			;46f2
	ret			;46f3
L_46F4:
	set 5,(ix+00fh)		;46f4
	ret			;46f8
L_46F9:
	inc hl			;46f9
	ld (ix+002h),l		;46fa
	ld (ix+003h),h		;46fd
	ret			;4700
L_4701:
	ld hl,0d0ech		;4701
	ld de,0d0eah		;4704
	ld a,(de)			;4707
	ld b,a			;4708
	inc de			;4709
	ld a,(de)			;470a
	ld c,a			;470b
	inc (hl)			;470c
	ld a,(hl)			;470d
	cp b			;470e
	ret nz			;470f
	ld (hl),000h		;4710
	inc hl			;4712
	inc (hl)			;4713
	ld a,(hl)			;4714
	cp c			;4715
	ret nz			;4716
	ld hl,0d0dch		;4717
	res 0,(hl)		;471a
	xor a			;471c
	ld hl,0d0ech		;471d
	ld (hl),a			;4720
	inc hl			;4721
	ld (hl),a			;4722
	ld de,0002ch		;4723
	ld ix,0d000h		;4726
	ld a,(0d1e9h)		;472a
	bit 2,a		;472d
	jr nz,L_4738		;472f
	ld hl,0d0dch		;4731
	bit 2,(hl)		;4734
	jr nz,L_4765		;4736
L_4738:
	res 2,a		;4738
	res 0,a		;473a
	ld (0d0dch),a		;473c
	call L_4816		;473f
	add ix,de		;4742
	call L_4816		;4744
	add ix,de		;4747
	call L_4816		;4749
	add ix,de		;474c
	call L_4816		;474e
	add ix,de		;4751
	call L_4816		;4753
	ld a,(0d1e9h)		;4756
	bit 2,a		;4759
	ret z			;475b
	ld a,(0d0dch)		;475c
	set 4,a		;475f
	ld (0d0dch),a		;4761
	ret			;4764
L_4765:
	xor a			;4765
	ld (0d00ch),a		;4766
	ld a,(0d00dh)		;4769
	ld d,a			;476c
	and 00fh		;476d
	ld (0d0f7h),a		;476f
	ld a,d			;4772
	and 0f0h		;4773
	ld (0d00dh),a		;4775
	xor a			;4778
	ld (0d038h),a		;4779
	ld a,(0d039h)		;477c
	ld d,a			;477f
	and 00fh		;4780
	rlca			;4782
	rlca			;4783
	rlca			;4784
	rlca			;4785
	ld e,a			;4786
	ld a,(0d0f7h)		;4787
	and e			;478a
	ld (0d0f7h),a		;478b
	ld a,d			;478e
	and 0f0h		;478f
	ld (0d039h),a		;4791
	xor a			;4794
	ld (0d064h),a		;4795
	ld a,(0d065h)		;4798
	ld d,a			;479b
	and 00fh		;479c
	ld (0d0f8h),a		;479e
	ld a,d			;47a1
	and 0f0h		;47a2
	ld (0d065h),a		;47a4
	ld de,00084h		;47a7
	ld ix,0d000h		;47aa
	add ix,de		;47ae
	call L_47C3		;47b0
	add ix,de		;47b3
	call L_47C3		;47b5
	ld a,(0d0dch)		;47b8
	res 2,a		;47bb
	set 6,a		;47bd
	ld (0d0dch),a		;47bf
	ret			;47c2
L_47C3:
	xor a			;47c3
	ld (ix+000h),a		;47c4
	ld (ix+001h),a		;47c7
	ld (ix+005h),a		;47ca
	ld (ix+006h),a		;47cd
	ld (ix+00ah),a		;47d0
	ld (ix+00bh),a		;47d3
	ld (ix+00ch),a		;47d6
	ld (ix+00dh),a		;47d9
	ld (ix+00eh),a		;47dc
	ld (ix+00fh),a		;47df
	ld (ix+029h),a		;47e2
	ld (ix+02bh),a		;47e5
	ret			;47e8
L_47E9:
	bit 2,(ix+00dh)		;47e9
	jp nz,L_47FB		;47ed
	ld a,(0d0edh)		;47f0
	ld b,a			;47f3
	ld a,e			;47f4
	sub b			;47f5
	ld e,000h		;47f6
	ret m			;47f8
	ld e,a			;47f9
	ret			;47fa
L_47FB:
	ld e,000h		;47fb
	ret			;47fd
L_47FE:
	ld hl,0d0ech		;47fe
	inc (hl)			;4801
	ld a,(hl)			;4802
	cp 010h		;4803
	ret nz			;4805
	ld (hl),000h		;4806
	inc hl			;4808
	dec (hl)			;4809
	ret nz			;480a
	ld hl,0d0dch		;480b
	res 5,(hl)		;480e
	ld hl,0d0ech		;4810
	ld (hl),000h		;4813
	ret			;4815
L_4816:
	xor a			;4816
	ld (ix+000h),a		;4817
	ld (ix+001h),a		;481a
	ld (ix+005h),a		;481d
	ld (ix+006h),a		;4820
	ld (ix+00ah),a		;4823
	ld (ix+00bh),a		;4826
	ld (ix+00ch),a		;4829
	ld (ix+00dh),a		;482c
	ld (ix+00eh),a		;482f
	ld (ix+00fh),a		;4832
	ld (ix+029h),a		;4835
	ld (ix+02bh),a		;4838
	call L_4856		;483b
	ld hl,0d0f2h		;483e
	ld a,(0d0efh)		;4841
	cp 008h		;4844
	jp nz,L_4853		;4846
	res 1,(hl)		;4849
	bit 3,(hl)		;484b
	ret z			;484d
	res 3,(hl)		;484e
	set 2,(hl)		;4850
	ret			;4852
L_4853:
	res 3,(hl)		;4853
	ret			;4855
L_4856:
	ld hl,0d0f6h		;4856
	ld a,(0d0efh)		;4859
	cp 010h		;485c
	jp z,L_487C		;485e
	cp 008h		;4861
	jp z,L_4874		;4863
	cp 004h		;4866
	jp z,L_4871		;4868
	cp 002h		;486b
	ret nz			;486d
	res 3,(hl)		;486e
	ret			;4870
L_4871:
	res 1,(hl)		;4871
	ret			;4873
L_4874:
	ld a,(0d058h)		;4874
	or a			;4877
	ret z			;4878
	set 1,(hl)		;4879
	ret			;487b
L_487C:
	ld a,(0d02ch)		;487c
	or a			;487f
	ret z			;4880
	set 3,(hl)		;4881
	ret			;4883
L_4884:
	cp 0e0h		;4884
	jp c,L_4AB7		;4886
	and 01fh		;4889
	push hl			;488b
	ld hl,04899h		;488c
	add a,a			;488f
	ld e,a			;4890
	ld d,000h		;4891
	add hl,de			;4893
	ld e,(hl)			;4894
	inc hl			;4895
	ld d,(hl)			;4896
	ex de,hl			;4897
	jp (hl)			;4898

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4899..0x48d7  (62 bytes)
DATA_4899:
	defb 0d7h,048h,0edh,048h,0d7h,048h,0edh,048h,00dh,049h,038h,049h,04ch,049h,05ch,049h	; 4899  .H.H.H.H.I8ILI\I
	defb 06eh,049h,07fh,049h,086h,049h,08dh,049h,0d8h,049h,0e2h,049h,0e9h,049h,0f4h,049h	; 48a9  nI.I.I.I.I.I.I.I
	defb 0fah,049h,004h,04ah,01fh,04ah,02eh,04ah,02eh,04ah,034h,04ah,03ah,04ah,044h,04ah	; 48b9  .I.J.J.J.J4J:JDJ
	defb 044h,04ah,04bh,04ah,056h,04ah,05eh,04ah,079h,04ah,090h,04ah,094h,04ah	; 48c9  DJKJVJ^JyJ.J.J

; ======================================================================
; CODIGO 0x48d7..0x4ac7  (496 bytes)
; ======================================================================


L_48D7:
	pop hl			;48d7
L_48D8:
	res 6,(ix+00eh)		;48d8
	ld a,(hl)			;48dc
	and 003h		;48dd
	ld (ix+00dh),a		;48df
	ld b,a			;48e2
	inc hl			;48e3
	ld a,(hl)			;48e4
	ld (ix+013h),a		;48e5
	ld a,b			;48e8
	or a			;48e9
	ret nz			;48ea
	dec hl			;48eb
	ret			;48ec
L_48ED:
	pop hl			;48ed
	ld a,(0d0efh)		;48ee
	cp 008h		;48f1
	ld a,(0d0f2h)		;48f3
	jp nz,L_4903		;48f6
	set 0,a		;48f9
	res 1,a		;48fb
	ld (0d0f2h),a		;48fd
	jp L_48D8		;4900
L_4903:
	set 2,a		;4903
	res 3,a		;4905
	ld (0d0f2h),a		;4907
	jp L_48D8		;490a
L_490D:
	pop hl			;490d
	inc hl			;490e
	ld a,(hl)			;490f
	and 01fh		;4910
	ld b,a			;4912
	ld a,(0d0efh)		;4913
	cp 008h		;4916
	ld a,b			;4918
	jp nz,L_492A		;4919
	ld (0d0f0h),a		;491c
	ld a,(0d0f2h)		;491f
	set 0,a		;4922
	res 1,a		;4924
	ld (0d0f2h),a		;4926
	ret			;4929
L_492A:
	ld (0d0f1h),a		;492a
	ld a,(0d0f2h)		;492d
	set 2,a		;4930
	res 3,a		;4932
	ld (0d0f2h),a		;4934
	ret			;4937
L_4938:
	pop hl			;4938
	inc hl			;4939
	res 3,(ix+00dh)		;493a
	ld a,(hl)			;493e
	ld (0d0f3h),a		;493f
	ld de,0d0f2h		;4942
	ld a,(de)			;4945
	set 5,a		;4946
	ld (de),a			;4948
	jp L_494D		;4949
L_494C:
	pop hl			;494c
L_494D:
	inc hl			;494d
	ld a,(hl)			;494e
	ld (0d0f5h),a		;494f
	ld de,0d0f2h		;4952
	ld a,(de)			;4955
	set 6,a		;4956
	ld (de),a			;4958
	jp L_495D		;4959
L_495C:
	pop hl			;495c
L_495D:
	inc hl			;495d
	ld a,(hl)			;495e
	ld (0d0f4h),a		;495f
	ld de,0d0f2h		;4962
	ld a,(de)			;4965
	set 7,a		;4966
	ld (de),a			;4968
	set 2,(ix+00dh)		;4969
	ret			;496d
L_496E:
	pop hl			;496e
	ld de,0d0f2h		;496f
	ld a,(de)			;4972
	and 01fh		;4973
	ld (de),a			;4975
	ld a,(ix+00dh)		;4976
	and 0f3h		;4979
	ld (ix+00dh),a		;497b
	ret			;497e
L_497F:
	pop hl			;497f
	inc hl			;4980
	ld a,(hl)			;4981
	ld (ix+014h),a		;4982
	ret			;4985
L_4986:
	pop hl			;4986
	inc hl			;4987
	ld a,(hl)			;4988
	ld (ix+015h),a		;4989
	ret			;498c
L_498D:
	pop hl			;498d
	inc hl			;498e
	ld a,(hl)			;498f
	and 0f0h		;4990
	rrca			;4992
	rrca			;4993
	rrca			;4994
	rrca			;4995
	cp 008h		;4996
	jp nc,L_499F		;4998
	set 2,(ix+00fh)		;499b
L_499F:
	res 3,a		;499f
	inc a			;49a1
	bit 2,(ix+00fh)		;49a2
	jp nz,L_49AD		;49a6
	set 1,(ix+00fh)		;49a9
L_49AD:
	ld (ix+021h),a		;49ad
	ld a,(hl)			;49b0
	and 00fh		;49b1
	cp 008h		;49b3
	jp c,L_49BC		;49b5
	set 4,(ix+00fh)		;49b8
L_49BC:
	res 3,a		;49bc
	inc a			;49be
	ld (ix+022h),a		;49bf
	inc hl			;49c2
	ld a,(hl)			;49c3
	and 0f0h		;49c4
	rrca			;49c6
	rrca			;49c7
	rrca			;49c8
	rrca			;49c9
	ld (ix+023h),a		;49ca
	ld a,(hl)			;49cd
	and 00fh		;49ce
	ld (ix+024h),a		;49d0
	set 0,(ix+00fh)		;49d3
	ret			;49d7
L_49D8:
	pop hl			;49d8
	res 0,(ix+00fh)		;49d9
	res 1,(ix+00fh)		;49dd
	ret			;49e1
L_49E2:
	pop hl			;49e2
	inc hl			;49e3
	ld a,(hl)			;49e4
	ld (ix+025h),a		;49e5
	ret			;49e8
L_49E9:
	pop hl			;49e9
	inc hl			;49ea
	ld a,(hl)			;49eb
	ld (ix+026h),a		;49ec
	set 1,(ix+00eh)		;49ef
	ret			;49f3
L_49F4:
	pop hl			;49f4
	res 1,(ix+00eh)		;49f5
	ret			;49f9
L_49FA:
	pop hl			;49fa
	ld a,(ix+00eh)		;49fb
	and 0e2h		;49fe
	ld (ix+00eh),a		;4a00
	ret			;4a03
L_4A04:
	pop hl			;4a04
	inc hl			;4a05
	ld a,(ix+00eh)		;4a06
	or 014h		;4a09
	ld (ix+00eh),a		;4a0b
	ld a,(hl)			;4a0e
	and 00fh		;4a0f
	ld (ix+01ch),a		;4a11
	ld a,(hl)			;4a14
	and 0f0h		;4a15
	rrca			;4a17
	rrca			;4a18
	rrca			;4a19
	rrca			;4a1a
	ld (ix+01bh),a		;4a1b
	ret			;4a1e
L_4A1F:
	pop hl			;4a1f
	inc hl			;4a20
	ld a,(hl)			;4a21
	ld (ix+01ah),a		;4a22
	ld a,(ix+00eh)		;4a25
	or 00ch		;4a28
	ld (ix+00eh),a		;4a2a
	ret			;4a2d
L_4A2E:
	pop hl			;4a2e
	set 6,(ix+00eh)		;4a2f
	ret			;4a33
L_4A34:
	pop hl			;4a34
	set 5,(ix+00eh)		;4a35
	ret			;4a39
L_4A3A:
	pop hl			;4a3a
	ld a,(ix+00eh)		;4a3b
	and 09fh		;4a3e
	ld (ix+00eh),a		;4a40
	ret			;4a43
L_4A44:
	pop hl			;4a44
	inc hl			;4a45
	ld a,(hl)			;4a46
	ld (ix+001h),a		;4a47
	ret			;4a4a
L_4A4B:
	pop hl			;4a4b
	call L_4A6B		;4a4c
	ld (ix+007h),e		;4a4f
	ld (ix+008h),d		;4a52
	ret			;4a55
L_4A56:
	pop hl			;4a56
	ld l,(ix+007h)		;4a57
	ld h,(ix+008h)		;4a5a
	ret			;4a5d
L_4A5E:
	pop hl			;4a5e
	inc hl			;4a5f
	ld a,(ix+005h)		;4a60
	inc a			;4a63
	cp (hl)			;4a64
	jp z,L_4A72		;4a65
	ld (ix+005h),a		;4a68
L_4A6B:
	inc hl			;4a6b
	ld e,(hl)			;4a6c
	inc hl			;4a6d
	ld d,(hl)			;4a6e
	ex de,hl			;4a6f
	dec hl			;4a70
	ret			;4a71
L_4A72:
	inc hl			;4a72
	inc hl			;4a73
	ld (ix+005h),000h		;4a74
	ret			;4a78
L_4A79:
	pop hl			;4a79
	inc hl			;4a7a
	ld a,(ix+006h)		;4a7b
	inc a			;4a7e
	cp (hl)			;4a7f
	jp z,L_4A89		;4a80
	ld (ix+006h),a		;4a83
	jp L_4A6B		;4a86
L_4A89:
	inc hl			;4a89
	inc hl			;4a8a
	ld (ix+006h),000h		;4a8b
	ret			;4a8f
L_4A90:
	pop hl			;4a90
	jp L_4A6B		;4a91
L_4A94:
	pop hl			;4a94
	inc hl			;4a95
	ld a,(hl)			;4a96
	ld (ix+009h),a		;4a97
	cp 004h		;4a9a
	jp c,L_4AB2		;4a9c
	ld a,(ix+00eh)		;4a9f
	set 0,a		;4aa2
	and 011h		;4aa4
	ld (ix+00eh),a		;4aa6
	res 0,(ix+00fh)		;4aa9
	res 1,(ix+00fh)		;4aad
	ret			;4ab1
L_4AB2:
	res 0,(ix+00eh)		;4ab2
	ret			;4ab6
L_4AB7:
	and 00fh		;4ab7
	push hl			;4ab9
	ld hl,04ac7h		;4aba
	add a,a			;4abd
	ld e,a			;4abe
	ld d,000h		;4abf
	add hl,de			;4ac1
	ld e,(hl)			;4ac2
	inc hl			;4ac3
	ld d,(hl)			;4ac4
	ex de,hl			;4ac5
	jp (hl)			;4ac6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4ac7..0x4ae7  (32 bytes)
DATA_4AC7:
	defb 0e7h,04ah,0e7h,04ah,0e7h,04ah,0e7h,04ah,0e7h,04ah,0e7h,04ah,0efh,04ah,00ah,04bh	; 4ac7  .J.J.J.J.J.J.J.K
	defb 021h,04bh,02bh,04bh,02bh,04bh,02dh,04bh,034h,04bh,02bh,04bh,02bh,04bh,03ah,04bh	; 4ad7  !K+K+K-K4K+K+K:K

; ======================================================================
; CODIGO 0x4ae7..0x4c82  (411 bytes)
; ======================================================================


L_4AE7:
	pop hl			;4ae7
	ld a,(hl)			;4ae8
	and 00fh		;4ae9
	ld (ix+016h),a		;4aeb
	ret			;4aee
L_4AEF:
	pop hl			;4aef
	ld a,(ix+00dh)		;4af0
	or 050h		;4af3
	ld (ix+00dh),a		;4af5
	res 7,(ix+00dh)		;4af8
	inc hl			;4afc
	ld a,(hl)			;4afd
	ld (ix+027h),a		;4afe
	inc hl			;4b01
	ld a,(hl)			;4b02
	ld (ix+028h),a		;4b03
	ld (ix+029h),a		;4b06
	ret			;4b09
L_4B0A:
	pop hl			;4b0a
	ld a,(ix+00dh)		;4b0b
	or 0d0h		;4b0e
	ld (ix+00dh),a		;4b10
	inc hl			;4b13
	ld a,(hl)			;4b14
	ld (ix+027h),a		;4b15
	inc hl			;4b18
	ld a,(hl)			;4b19
	ld (ix+028h),a		;4b1a
	ld (ix+029h),a		;4b1d
	ret			;4b20
L_4B21:
	pop hl			;4b21
	ld a,(ix+00dh)		;4b22
	and 00fh		;4b25
	ld (ix+00dh),a		;4b27
	ret			;4b2a
L_4B2B:
	pop hl			;4b2b
	ret			;4b2c
L_4B2D:
	pop hl			;4b2d
	inc hl			;4b2e
	ld a,(hl)			;4b2f
	ld (ix+02ah),a		;4b30
	ret			;4b33
L_4B34:
	pop hl			;4b34
	xor a			;4b35
	ld (ix+02ah),a		;4b36
	ret			;4b39
L_4B3A:
	pop hl			;4b3a
	set 7,(ix+00eh)		;4b3b
	sub 005h		;4b3f
	ld (ix+015h),a		;4b41
	ret			;4b44
L_4B45:
	ld hl,0d0f6h		;4b45
	res 0,(hl)		;4b48
	ld a,(0d059h)		;4b4a
	ld b,a			;4b4d
	ld a,(0d085h)		;4b4e
	cp b			;4b51
	jp c,L_4B57		;4b52
	set 0,(hl)		;4b55
L_4B57:
	res 2,(hl)		;4b57
	ld a,(0d02dh)		;4b59
	ld b,a			;4b5c
	ld a,(0d0b1h)		;4b5d
	cp b			;4b60
	jp c,L_4B66		;4b61
	set 2,(hl)		;4b64
L_4B66:
	call L_4B73		;4b66
	call L_4BE0		;4b69
	call L_4C0A		;4b6c
	call L_4C38		;4b6f
	ret			;4b72
L_4B73:
	ld b,000h		;4b73
	ld c,008h		;4b75
	ld hl,0d00ah		;4b77
	call L_4BC2		;4b7a
	ld hl,0d0f6h		;4b7d
	bit 2,(hl)		;4b80
	jp nz,L_4B9A		;4b82
	bit 3,(hl)		;4b85
	jp z,L_4B91		;4b87
	res 3,(hl)		;4b8a
	ld a,008h		;4b8c
	ld (0d038h),a		;4b8e
L_4B91:
	ld hl,0d036h		;4b91
	call L_4BC2		;4b94
	jp L_4BA0		;4b97
L_4B9A:
	ld hl,0d0bah		;4b9a
	call L_4BC2		;4b9d
L_4BA0:
	ld hl,0d0f6h		;4ba0
	bit 0,(hl)		;4ba3
	jp nz,L_4BBB		;4ba5
	bit 1,(hl)		;4ba8
	jp z,L_4BB4		;4baa
	res 1,(hl)		;4bad
	ld a,006h		;4baf
	ld (0d064h),a		;4bb1
L_4BB4:
	ld hl,0d062h		;4bb4
	call L_4BC2		;4bb7
	ret			;4bba
L_4BBB:
	ld hl,0d08eh		;4bbb
	call L_4BC2		;4bbe
	ret			;4bc1
L_4BC2:
	ld e,(hl)			;4bc2
	ld a,b			;4bc3
	call 00093h		;4bc4   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;4bc7
	inc b			;4bc8
	ld e,(hl)			;4bc9
	ld a,b			;4bca
	call 00093h		;4bcb   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;4bce
	ld e,(hl)			;4bcf
	ld a,c			;4bd0
	inc b			;4bd1
	inc c			;4bd2
	inc hl			;4bd3
	bit 3,(hl)		;4bd4
	ret nz			;4bd6
	call 00093h		;4bd7   ; BIOS WRTPSG - Writes data to PSG-register
	bit 2,(hl)		;4bda
	ret z			;4bdc
	set 3,(hl)		;4bdd
	ret			;4bdf
L_4BE0:
	ld hl,0d0f2h		;4be0
	bit 0,(hl)		;4be3
	jp z,L_4BF6		;4be5
	res 0,(hl)		;4be8
	set 1,(hl)		;4bea
	ld a,(0d0f0h)		;4bec
	ld e,a			;4bef
	ld a,006h		;4bf0
	call 00093h		;4bf2   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;4bf5
L_4BF6:
	bit 1,(hl)		;4bf6
	ret nz			;4bf8
	bit 2,(hl)		;4bf9
	ret z			;4bfb
	res 2,(hl)		;4bfc
	set 3,(hl)		;4bfe
	ld a,(0d0f1h)		;4c00
	ld e,a			;4c03
	ld a,006h		;4c04
	call 00093h		;4c06   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;4c09
L_4C0A:
	ld hl,0d0f2h		;4c0a
	bit 7,(hl)		;4c0d
	ret z			;4c0f
	res 7,(hl)		;4c10
	ld a,(0d0f4h)		;4c12
	ld e,a			;4c15
	ld a,00bh		;4c16
	call 00093h		;4c18   ; BIOS WRTPSG - Writes data to PSG-register
	bit 6,(hl)		;4c1b
	ret z			;4c1d
	res 6,(hl)		;4c1e
	ld a,(0d0f5h)		;4c20
	ld e,a			;4c23
	ld a,00ch		;4c24
	call 00093h		;4c26   ; BIOS WRTPSG - Writes data to PSG-register
	bit 5,(hl)		;4c29
	ret z			;4c2b
	res 5,(hl)		;4c2c
	ld a,(0d0f3h)		;4c2e
	ld e,a			;4c31
	ld a,00dh		;4c32
	call 00093h		;4c34   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;4c37
L_4C38:
	ld hl,0d00dh		;4c38
	ld a,(hl)			;4c3b
	ld hl,04c82h		;4c3c
	call L_4C7B		;4c3f
	ld b,(hl)			;4c42
	ld a,(0d0f6h)		;4c43
	bit 2,a		;4c46
	ld hl,0d039h		;4c48
	jp z,L_4C51		;4c4b
	ld hl,0d0bdh		;4c4e
L_4C51:
	ld a,(hl)			;4c51
	ld hl,04c86h		;4c52
	call L_4C7B		;4c55
	ld c,(hl)			;4c58
	ld a,(0d0f6h)		;4c59
	bit 0,a		;4c5c
	ld hl,0d065h		;4c5e
	jp z,L_4C67		;4c61
	ld hl,0d091h		;4c64
L_4C67:
	ld a,(hl)			;4c67
	ld hl,04c8ah		;4c68
	call L_4C7B		;4c6b
	ld a,(hl)			;4c6e
	or b			;4c6f
	or c			;4c70
L_4C71:
	ld e,a			;4c71
	ld (0d0eeh),a		;4c72
	ld a,007h		;4c75
	call 00093h		;4c77   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;4c7a
L_4C7B:
	and 003h		;4c7b
	ld e,a			;4c7d
	ld d,000h		;4c7e
	add hl,de			;4c80
	ret			;4c81

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4c82..0x8000  (13182 bytes)
DATA_4C82:
	defb 089h,081h,088h,080h,092h,082h,090h,080h,0a4h,084h,0a0h,080h,0a2h,04ch,0a9h,04ch	; 4c82  .............L.L
	defb 0bch,04ch,0d1h,04ch,0eah,04ch,0f3h,04ch,0f3h,04ch,0f3h,04ch,0f3h,04ch,0f3h,04ch	; 4c92  .L.L.L.L.L.L.L.L
	defb 0e1h,001h,0e4h,000h,008h,006h,0ffh,0e3h,001h,0e4h,004h,085h,000h,0e4h,000h,0e1h	; 4ca2  ................
	defb 004h,007h,006h,005h,004h,003h,002h,001h,000h,0ffh,0e1h,001h,0e4h,014h,006h,0e2h	; 4cb2  ................
	defb 001h,062h,000h,0e1h,002h,0e4h,010h,002h,001h,0e1h,001h,0e4h,006h,001h,0ffh,0e3h	; 4cc2  .b..............
	defb 001h,0e5h,001h,000h,030h,001h,0b0h,0e8h,0e1h,001h,0e4h,006h,007h,006h,005h,004h	; 4cd2  ....0...........
	defb 003h,002h,001h,000h,000h,000h,000h,0ffh,0e3h,001h,080h,009h,070h,003h,050h,003h	; 4ce2  ............p.P.
	defb 0ffh,0e2h,001h,0e5h,009h,001h,0a0h,094h,050h,096h,000h,097h,000h,098h,000h,0ffh	; 4cf2  ........P.......
	defb 016h,04dh,01ah,04dh,0a3h,04dh,0bdh,04dh,0d7h,04dh,0f1h,04dh,00bh,04eh,00bh,04eh	; 4d02  .M.M.M.M.M.M.N.N
	defb 00bh,04eh,00bh,04eh,0e2h,001h,0eeh,006h,0e2h,001h,040h,085h,050h,093h,060h,084h	; 4d12  .N.N......@.P.`.
	defb 070h,092h,080h,082h,090h,090h,090h,080h,090h,08dh,090h,082h,090h,090h,080h,084h	; 4d22  p...............
	defb 090h,075h,0a0h,084h,0a0h,078h,0a0h,088h,0a0h,07ah,0a0h,08bh,0a0h,082h,0a0h,08dh	; 4d32  .u...x...z......
	defb 0a0h,084h,0a0h,08fh,090h,086h,090h,090h,080h,087h,080h,094h,070h,089h,070h,096h	; 4d42  ............p.p.
	defb 070h,08bh,060h,098h,060h,08dh,050h,099h,050h,08fh,050h,098h,050h,090h,050h,094h	; 4d52  p.`.`.P.P.P.P.P.
	defb 050h,091h,050h,095h,050h,092h,050h,096h,050h,093h,050h,097h,050h,094h,050h,098h	; 4d62  P.P.P.P.P.P.P.P.
	defb 050h,095h,050h,099h,050h,096h,040h,09ah,040h,097h,040h,09bh,040h,098h,040h,09ch	; 4d72  P.P.P.@.@.@.@.@.
	defb 0e2h,002h,040h,099h,040h,09dh,040h,09ah,040h,09eh,040h,09bh,040h,09fh,040h,09ch	; 4d82  ..@.@.@.@.@.@.@.
	defb 040h,0a0h,040h,09dh,030h,0a1h,030h,09eh,030h,0a2h,020h,09fh,020h,0a3h,020h,0a0h	; 4d92  @.@.0.0.0. . . .
	defb 0ffh,0e2h,002h,090h,046h,0f5h,090h,080h,080h,080h,070h,070h,070h,060h,050h,040h	; 4da2  ....F.....ppp`P@
	defb 030h,040h,050h,060h,050h,040h,030h,020h,020h,0f6h,0ffh,0e2h,002h,090h,035h,0f5h	; 4db2  0@P`P@0  .....5.
	defb 080h,070h,060h,050h,040h,050h,060h,070h,060h,050h,040h,030h,040h,050h,060h,050h	; 4dc2  .p`P@P`p`P@0@P`P
	defb 040h,030h,020h,0f6h,0ffh,0e2h,002h,090h,070h,0f5h,090h,080h,080h,080h,070h,070h	; 4dd2  @0 .....p.....pp
	defb 070h,060h,050h,040h,030h,040h,050h,060h,050h,040h,030h,020h,020h,0f6h,0ffh,0e2h	; 4de2  p`P@0@P`P@0  ...
	defb 002h,090h,054h,0f5h,080h,070h,060h,050h,040h,050h,060h,070h,060h,050h,040h,030h	; 4df2  ..T..p`P@P`p`P@0
	defb 040h,050h,060h,050h,040h,030h,020h,0f6h,0ffh,024h,04eh,023h,04eh,023h,04eh,023h	; 4e02  @P`P@0 ..$N#N#N#
	defb 04eh,037h,04eh,04ah,04eh,023h,04eh,023h,04eh,023h,04eh,023h,04eh,023h,04eh,023h	; 4e12  N7NJN#N#N#N#N#N#
	defb 04eh,0ffh,0e2h,004h,070h,035h,060h,035h,050h,035h,040h,035h,030h,035h,020h,035h	; 4e22  N...p5`5P5@505 5
	defb 010h,035h,000h,035h,0ffh,0e2h,004h,070h,02ah,060h,02ah,050h,02ah,040h,02ah,030h	; 4e32  .5.5...p*`*P*@*0
	defb 02ah,020h,02ah,010h,02ah,000h,02ah,0ffh,0e2h,004h,070h,028h,060h,028h,050h,028h	; 4e42  * *.*.*...p(`(P(
	defb 040h,028h,030h,028h,020h,028h,010h,028h,000h,028h,0ffh,075h,04eh,075h,04eh,075h	; 4e52  @(0( (.(.(.uNuNu
	defb 04eh,075h,04eh,075h,04eh,075h,04eh,075h,04eh,075h,04eh,075h,04eh,075h,04eh,075h	; 4e62  NuNuNuNuNuNuNuNu
	defb 04eh,075h,04eh,08dh,04eh,08dh,04eh,08dh,04eh,08dh,04eh,08dh,04eh,08dh,04eh,08dh	; 4e72  NuN.N.N.N.N.N.N.
	defb 04eh,08dh,04eh,08dh,04eh,08dh,04eh,08dh,04eh,08dh,04eh,0a5h,04eh,0a5h,04eh,0a5h	; 4e82  N.N.N.N.N.N.N.N.
	defb 04eh,0a5h,04eh,0a5h,04eh,0a5h,04eh,0a5h,04eh,0a5h,04eh,0a5h,04eh,0a5h,04eh,0a5h	; 4e92  N.N.N.N.N.N.N.N.
	defb 04eh,0a5h,04eh,025h,04fh,031h,04fh,035h,04fh,039h,04fh,03dh,04fh,041h,04fh,045h	; 4ea2  N.N%O1O5O9O=OAOE
	defb 04fh,049h,04fh,04dh,04fh,051h,04fh,057h,04fh,05bh,04fh,05fh,04fh,063h,04fh,069h	; 4eb2  OIOMOQOWO[O_OcOi
	defb 04fh,06dh,04fh,071h,04fh,075h,04fh,079h,04fh,07dh,04fh,085h,04fh,08dh,04fh,091h	; 4ec2  OmOqOuOyO}O.O.O.
	defb 04fh,099h,04fh,0a1h,04fh,0a9h,04fh,0adh,04fh,0b5h,04fh,0b9h,04fh,0bdh,04fh,0c1h	; 4ed2  O.O.O.O.O.O.O.O.
	defb 04fh,0c5h,04fh,0c9h,04fh,0cdh,04fh,0d1h,04fh,0d7h,04fh,0dbh,04fh,0dfh,04fh,0e3h	; 4ee2  O.O.O.O.O.O.O.O.
	defb 04fh,0ebh,04fh,0f3h,04fh,0f7h,04fh,0ffh,04fh,003h,050h,00bh,050h,00fh,050h,017h	; 4ef2  O.O.O.O.O.P.P.P.
	defb 050h,01fh,050h,027h,050h,02fh,050h,037h,050h,03fh,050h,047h,050h,04fh,050h,057h	; 4f02  P.P'P/P7P?PGPOPW
	defb 050h,05fh,050h,067h,050h,06fh,050h,077h,050h,07fh,050h,087h,050h,08fh,050h,097h	; 4f12  P_PgPoPwP.P.P.P.
	defb 050h,09fh,050h,0f8h,080h,0a7h,050h,0a7h,050h,0a7h,050h,0a7h,050h,0a7h,050h,010h	; 4f22  P.P...P.P.P.P.P.
	defb 008h,0d3h,072h,010h,005h,0ffh,070h,010h,008h,0fbh,077h,010h,005h,034h,071h,010h	; 4f32  ..r...p...w..4q.
	defb 005h,05bh,071h,010h,005h,01fh,072h,010h,005h,075h,078h,010h,005h,032h,078h,018h	; 4f42  .[q...r..ux..2x.
	defb 005h,056h,072h,091h,072h,008h,005h,0a8h,072h,010h,005h,0ebh,072h,010h,005h,0fah	; 4f52  .Vr.r...r...r...
	defb 072h,018h,005h,009h,073h,05bh,073h,010h,005h,052h,070h,010h,005h,087h,070h,008h	; 4f62  r...s[s..Rp...p.
	defb 005h,0d4h,070h,010h,005h,094h,073h,010h,005h,0a5h,073h,0e0h,005h,0bah,073h,0cdh	; 4f72  ..p...s...s...s.
	defb 073h,024h,074h,0e0h,005h,08ch,079h,0b1h,079h,0dbh,079h,010h,005h,0bch,071h,0e0h	; 4f82  s$t...y.y.y...q.
	defb 005h,07bh,074h,0a7h,074h,0d3h,074h,0e0h,005h,06bh,075h,0a6h,075h,0dah,075h,0e0h	; 4f92  .{t.t.t..ku.u.u.
	defb 005h,01fh,076h,038h,076h,04ah,076h,010h,005h,009h,079h,0e0h,005h,063h,076h,0c5h	; 4fa2  ..v8vJv...y..cv.
	defb 076h,01dh,077h,010h,005h,087h,077h,010h,005h,0c0h,077h,010h,004h,0e0h,077h,010h	; 4fb2  v.w...w...w...w.
	defb 005h,0d6h,078h,010h,005h,000h,07ah,010h,005h,03fh,07ah,010h,009h,0eah,07ah,018h	; 4fc2  ..x...z..?z...z.
	defb 005h,09ah,07ah,0c9h,07ah,010h,005h,04ah,07bh,010h,006h,025h,07bh,010h,005h,079h	; 4fd2  ..z.z..J{..%{..y
	defb 07bh,0e0h,005h,0aeh,07bh,0b3h,07bh,0bch,07bh,0e0h,005h,0a8h,050h,03dh,051h,08bh	; 4fe2  {...{.{.{...P=Q.
	defb 051h,010h,005h,022h,07ch,0e0h,002h,0c0h,06bh,05ah,06dh,0ech,06eh,010h,005h,037h	; 4ff2  Q.."|...kZm.n..7
	defb 07ch,0e0h,005h,020h,063h,0bfh,063h,04ch,064h,010h,009h,064h,07ch,0e0h,005h,0bbh	; 5002  |.. c.cLd..d|...
	defb 07ch,0beh,07ch,0d9h,07ch,0e0h,005h,06eh,07dh,076h,07dh,0c8h,07dh,0e0h,005h,014h	; 5012  |.|.|..n}v}.}...
	defb 07dh,01bh,07dh,024h,07dh,0e0h,002h,08fh,05eh,099h,05fh,075h,060h,0e0h,007h,020h	; 5022  }.}$}...^._u`..
	defb 07eh,079h,07eh,0d4h,07eh,0e0h,002h,05dh,059h,021h,05ah,0ech,05ah,0e0h,002h,005h	; 5032  ~y~.~..]Y!Z.Z...
	defb 05ch,086h,05ch,038h,05dh,0e0h,002h,0ebh,05dh,038h,05eh,06bh,05eh,0e0h,002h,076h	; 5042  \.\8]...]8^k^..v
	defb 05eh,080h,05fh,05fh,060h,0e0h,002h,082h,061h,005h,062h,075h,062h,0e0h,002h,0ach	; 5052  ^.__`...a.bub...
	defb 06bh,038h,06dh,0d7h,06eh,0e0h,002h,070h,06ah,0e0h,06ah,03bh,06bh,0e0h,002h,008h	; 5062  k8m.n..pj.j.k...
	defb 067h,03bh,068h,037h,069h,0e0h,002h,01dh,055h,05ah,056h,08ch,057h,0e0h,002h,0e4h	; 5072  g.h7i...UZV.W...
	defb 064h,0b2h,065h,05bh,066h,0e0h,002h,04ch,052h,028h,052h,0cbh,052h,0e0h,002h,0f2h	; 5082  d.e[f..LR(R.R...
	defb 052h,066h,053h,0bfh,053h,0e0h,002h,024h,054h,07fh,054h,0c3h,054h,0e0h,006h,000h	; 5092  RfS.S..$T.T.T...
	defb 09ch,020h,09ch,059h,09ch,0ffh,0feh,001h,0f0h,0e9h,004h,0eah,00bh,0d6h,002h,002h	; 50a2  . .Y............
	defb 0ebh,003h,070h,0d2h,005h,041h,073h,073h,0f9h,02dh,051h,0eah,00bh,0ebh,003h,070h	; 50b2  ..p..Ass.-Q....p
	defb 0f0h,0d0h,003h,001h,0d1h,0b1h,0a3h,093h,0f9h,02dh,051h,0fbh,002h,0a8h,050h,0f0h	; 50c2  .........-Q...P.
	defb 0eah,00bh,0ech,0d8h,0eah,007h,0d2h,060h,0eah,008h,060h,0eah,009h,060h,0f1h,042h	; 50d2  .......`..`..`.B
	defb 0eah,00ah,062h,0f0h,0eah,006h,060h,0eah,004h,060h,0eah,008h,071h,0eah,007h,071h	; 50e2  ..b...`..`..q..q
	defb 0eah,003h,073h,0eah,007h,080h,0eah,008h,080h,0eah,009h,080h,0f1h,042h,0eah,00ah	; 50f2  ..s..........B..
	defb 082h,0f0h,0eah,006h,080h,0eah,004h,080h,0eah,008h,071h,0eah,007h,071h,0eah,004h	; 5102  ..........q..q..
	defb 073h,0ebh,003h,080h,0f1h,041h,0eah,00bh,0d8h,063h,073h,083h,073h,0f1h,042h,061h	; 5112  s....A...cs.s.Ba
	defb 071h,081h,091h,0a1h,0b1h,0d1h,001h,011h,0fdh,0a8h,050h,0f1h,042h,0ebh,007h,020h	; 5122  q.........P.B..
	defb 085h,0eah,007h,081h,0eah,00bh,071h,0eah,009h,075h,0fah,0feh,001h,0e9h,004h,0eah	; 5132  ......q..u......
	defb 00ch,0ebh,003h,080h,0d4h,003h,0d3h,003h,0d4h,003h,0d3h,003h,0ebh,005h,070h,0d7h	; 5142  ..............p.
	defb 030h,003h,0d4h,087h,077h,0d8h,0fbh,004h,03dh,051h,0ebh,003h,080h,0eah,00bh,0d7h	; 5152  0...w...=Q......
	defb 005h,002h,0d4h,063h,0d3h,061h,061h,0d3h,073h,0d4h,073h,0d4h,083h,0d3h,081h,081h	; 5162  ...c.aa.s.s.....
	defb 073h,0d4h,073h,0eah,00ch,0d4h,063h,073h,083h,073h,0d7h,005h,004h,061h,071h,081h	; 5172  s.s...cs.s...aq.
	defb 091h,0a1h,0b1h,0d3h,001h,011h,0fdh,03dh,051h,0feh,001h,0f0h,0e9h,004h,0eah,00bh	; 5182  .......=Q.......
	defb 0d6h,002h,002h,0ebh,003h,070h,0d3h,075h,0d2h,001h,043h,043h,0ebh,007h,020h,0f1h	; 5192  .....p.u..CC.. .
	defb 042h,035h,0eah,007h,031h,0eah,00bh,041h,0eah,009h,045h,0eah,00bh,0f0h,0ebh,003h	; 51a2  B5..1..A..E.....
	defb 070h,0d2h,003h,001h,0d3h,0b1h,0a3h,093h,0f1h,042h,0ebh,007h,020h,085h,0eah,007h	; 51b2  p........B.. ...
	defb 081h,0eah,00bh,071h,0eah,009h,075h,0fbh,002h,08bh,051h,0f0h,0eah,00bh,0ech,0d8h	; 51c2  ...q..u...Q.....
	defb 0eah,007h,0d2h,020h,0eah,008h,020h,0eah,009h,020h,0f1h,042h,0eah,00ah,022h,0f0h	; 51d2  ... .. .. .B..".
	defb 0eah,006h,020h,0eah,004h,020h,0eah,008h,031h,0eah,007h,031h,0eah,003h,033h,0eah	; 51e2  .. .. ..1..1..3.
	defb 007h,040h,0eah,008h,040h,0eah,009h,040h,0f1h,042h,0eah,00ah,042h,0f0h,0eah,006h	; 51f2  .@..@..@.B..B...
	defb 040h,0eah,004h,040h,0eah,008h,031h,0eah,007h,031h,0eah,004h,033h,0ebh,003h,080h	; 5202  @..@..1..1..3...
	defb 0f1h,041h,0eah,00bh,0d8h,023h,033h,043h,033h,0f1h,042h,021h,031h,041h,051h,061h	; 5212  .A...#3C3.B!1AQa
	defb 071h,081h,091h,0fdh,08bh,051h,0feh,001h,0e9h,007h,0ebh,007h,082h,0eah,00bh,0d0h	; 5222  q....Q..........
	defb 091h,0eah,00ah,091h,0eah,00bh,041h,0eah,00ah,041h,0eah,00bh,021h,0eah,00ah,021h	; 5232  ......A..A..!..!
	defb 0eah,00bh,0d1h,091h,0eah,00ah,091h,0fdh,028h,052h,0feh,001h,0e9h,007h,0f9h,068h	; 5242  ........(R.....h
	defb 052h,0eah,007h,0d1h,000h,0eah,008h,010h,020h,030h,0f9h,068h,052h,0eah,008h,011h	; 5252  R....... 0.hR...
	defb 0eah,007h,011h,0fdh,04ch,052h,0f1h,071h,0ech,0d1h,0eah,006h,040h,0eah,007h,040h	; 5262  ....LR.q....@..@
	defb 0eah,008h,040h,0f1h,072h,0eah,009h,044h,0f0h,041h,0eah,008h,041h,0eah,007h,041h	; 5272  ..@.r..D.A..A..A
	defb 0eah,006h,041h,0eah,006h,030h,0eah,007h,030h,0eah,008h,030h,0f1h,072h,0eah,009h	; 5282  ..A..0..0..0.r..
	defb 034h,0f0h,031h,0eah,008h,031h,0eah,007h,031h,0eah,006h,031h,0eah,006h,020h,0eah	; 5292  4.1..1..1..1.. .
	defb 007h,020h,0eah,008h,020h,0f1h,072h,0eah,009h,024h,0f0h,021h,0eah,008h,021h,0eah	; 52a2  . .. .r..$.!..!.
	defb 007h,021h,0eah,006h,021h,0eah,006h,010h,0eah,007h,010h,0eah,008h,010h,0f1h,072h	; 52b2  .!..!..........r
	defb 0eah,009h,014h,0f0h,011h,0eah,008h,011h,0fah,0feh,001h,0e9h,007h,0c1h,0f2h,01bh	; 52c2  ................
	defb 0f1h,041h,0ech,0eah,008h,0d0h,091h,0eah,007h,091h,0eah,008h,041h,0eah,007h,041h	; 52d2  .A..........A..A
	defb 0eah,008h,021h,0eah,007h,021h,0eah,008h,0d1h,091h,0eah,007h,091h,0fdh,0d5h,052h	; 52e2  ..!..!.........R
	defb 0feh,001h,0e9h,006h,0eah,00ch,0ebh,006h,080h,0d6h,005h,001h,0f9h,05ah,053h,027h	; 52f2  .............ZS'
	defb 0feh,001h,0e9h,006h,0eah,00bh,0f9h,04bh,053h,0d2h,001h,0d3h,061h,0ebh,004h,080h	; 5302  .......KS...a...
	defb 0d6h,010h,008h,063h,0f9h,04bh,053h,0d8h,0feh,002h,0e2h,001h,0a0h,075h,090h,074h	; 5312  ...c.KS......u.t
	defb 090h,073h,080h,072h,080h,071h,0e2h,002h,080h,071h,080h,073h,080h,071h,080h,073h	; 5322  .s.r.q...q.s.q.s
	defb 080h,071h,080h,073h,080h,071h,0e2h,001h,070h,073h,060h,071h,050h,06fh,040h,06dh	; 5332  .q.s.q..ps`qPo@m
	defb 040h,06bh,0fbh,002h,01ah,053h,0fdh,002h,053h,0ebh,002h,080h,0d6h,005h,001h,0d2h	; 5342  @k...S..S.......
	defb 001h,070h,070h,0d3h,071h,0d2h,071h,0fah,0d1h,041h,041h,041h,041h,023h,023h,0d2h	; 5352  .pp.q.q..AAAA##.
	defb 0b3h,0b3h,0d1h,0fah,0feh,001h,0e9h,006h,0eah,00bh,0ebh,006h,080h,0d7h,005h,001h	; 5362  ................
	defb 0d2h,0b1h,0b1h,0b1h,0b1h,093h,093h,063h,063h,097h,0feh,001h,0e9h,006h,0eah,00ch	; 5372  .......cc.......
	defb 0f9h,0afh,053h,0d3h,001h,0d4h,061h,0ebh,004h,080h,0d7h,010h,008h,063h,0f9h,0afh	; 5382  ..S...a......c..
	defb 053h,0d7h,005h,002h,0ebh,004h,080h,0d2h,0b3h,0e9h,003h,0ebh,005h,010h,0b6h,0e9h	; 5392  S...............
	defb 001h,0eah,008h,0d2h,0b0h,0d1h,000h,0eah,007h,010h,0fdh,07ch,053h,0ebh,002h,080h	; 53a2  ...........|S...
	defb 0d6h,005h,001h,0d3h,001h,0d2h,060h,060h,0d4h,071h,0d2h,061h,0fah,0feh,001h,0d8h	; 53b2  ......``.q.a....
	defb 0eeh,001h,0e9h,006h,0eah,007h,0ech,0c1h,0f9h,05ah,053h,025h,0feh,001h,0e9h,006h	; 53c2  .........ZS%....
	defb 0eah,00bh,0f9h,015h,054h,0d1h,001h,0d2h,061h,0ebh,004h,080h,0d2h,063h,0f9h,015h	; 53d2  ....T...a....c..
	defb 054h,0d8h,0feh,002h,0e2h,001h,0a0h,06eh,090h,06dh,090h,06ch,080h,06bh,080h,06ah	; 53e2  T......n.m.l.k.j
	defb 0e2h,002h,080h,06ah,080h,06ch,080h,06ah,080h,06ch,080h,06ah,080h,06ch,080h,06ah	; 53f2  ...j.l.j.l.j.l.j
	defb 0e2h,001h,070h,06ch,060h,06ah,050h,068h,040h,066h,040h,064h,0fbh,002h,0e4h,053h	; 5402  ..pl`jPh@f@d...S
	defb 0fdh,0ceh,053h,0ebh,002h,080h,0d6h,002h,001h,0d1h,001h,070h,070h,0d2h,071h,0d1h	; 5412  ..S........pp.q.
	defb 071h,0fah,0feh,001h,0e9h,005h,0eah,00bh,0ebh,003h,080h,0d2h,0c0h,090h,0a2h,0b0h	; 5422  q...............
	defb 0d1h,003h,0d2h,053h,0d1h,023h,0d2h,093h,0ebh,007h,050h,0f2h,008h,0f1h,042h,0d1h	; 5432  ...S.#....P...B.
	defb 006h,0f0h,0d2h,0a3h,0ebh,003h,080h,0a0h,092h,080h,0ebh,003h,080h,073h,0d1h,043h	; 5442  .............s.C
	defb 0d2h,073h,0d1h,043h,0d6h,002h,001h,0eah,00ah,0ech,041h,0f1h,032h,041h,0f1h,033h	; 5452  .s.C......A.2A.3
	defb 0eah,009h,041h,0d8h,0eah,00bh,0f2h,008h,0ebh,006h,070h,0f1h,041h,051h,0eah,005h	; 5462  ..A.......p.AQ..
	defb 051h,0d7h,006h,007h,0eah,00ch,0d3h,055h,0d8h,0eah,006h,053h,0ffh,0feh,001h,0e9h	; 5472  Q......U...S....
	defb 005h,0eah,00ch,0ebh,003h,070h,0d4h,0c5h,053h,0d3h,003h,0d4h,063h,0d3h,003h,0d4h	; 5482  .....p..S...c...
	defb 073h,0d3h,023h,0d4h,073h,0d3h,023h,0ebh,003h,080h,003h,0eah,00bh,0d2h,043h,0d3h	; 5492  s.#.s.#.......C.
	defb 003h,0d2h,043h,0eah,00ch,0ebh,006h,070h,0f2h,008h,0f1h,043h,0d3h,005h,0f1h,041h	; 54a2  ..C....p...C...A
	defb 0d4h,091h,0eah,005h,091h,0eah,00ch,0d7h,030h,005h,0d4h,055h,0d8h,0eah,005h,053h	; 54b2  ........0..U...S
	defb 0ffh,0feh,001h,0e9h,005h,0eah,00bh,0ebh,003h,080h,0d2h,0c0h,050h,052h,050h,093h	; 54c2  ............PRP.
	defb 003h,093h,063h,0ebh,007h,050h,0f2h,008h,0f1h,042h,096h,0f0h,073h,0ebh,003h,080h	; 54d2  ..c..P...B..s...
	defb 0eeh,001h,0d3h,0a0h,092h,080h,0ebh,003h,080h,073h,0d1h,003h,0d3h,073h,0d1h,003h	; 54e2  .........s...s..
	defb 0efh,0eah,00ah,0ech,0d6h,002h,001h,0d2h,071h,0f1h,032h,0eah,009h,071h,0f1h,033h	; 54f2  ........q.2..q.3
	defb 071h,0d8h,0ebh,006h,070h,0eah,00bh,0f2h,008h,0f1h,041h,091h,0eah,005h,091h,0d7h	; 5502  q...p.....A.....
	defb 006h,007h,0eah,00ch,0d3h,005h,0d8h,0eah,006h,003h,0ffh,0feh,001h,0e9h,007h,0eah	; 5512  ................
	defb 00bh,0ebh,003h,082h,0f0h,0f1h,041h,0f9h,0d1h,055h,0d2h,0b0h,0d1h,004h,0ebh,011h	; 5522  ......A..U......
	defb 075h,0d2h,0b0h,090h,070h,0eah,00bh,0ebh,003h,082h,0f1h,041h,0f9h,0d1h,055h,040h	; 5532  u...p......A..U@
	defb 005h,0d2h,0b0h,0d1h,040h,0eah,00bh,0ebh,017h,003h,0f2h,004h,0f1h,041h,0d1h,040h	; 5542  ....@........A.@
	defb 0d2h,080h,090h,0d1h,000h,050h,040h,020h,000h,040h,0d2h,080h,090h,0d1h,000h,090h	; 5552  .....P@ .@......
	defb 070h,050h,040h,0f2h,013h,0f1h,052h,0ebh,007h,070h,075h,059h,0ebh,017h,003h,0f2h	; 5562  pP@...R..puY....
	defb 004h,0f1h,041h,0d1h,020h,0d2h,070h,0b0h,0d1h,020h,040h,020h,000h,0d2h,0b0h,0d1h	; 5572  ..A. .p.. @ ....
	defb 020h,0d2h,070h,0b0h,0d1h,020h,0b0h,090h,070h,050h,0f2h,013h,0f1h,052h,0ebh,007h	; 5582   .p.. ..pP...R..
	defb 070h,057h,0eah,00ah,047h,0f1h,041h,0eah,00bh,0ebh,007h,050h,0d1h,052h,022h,0d2h	; 5592  pW..G.A....P.R".
	defb 0a9h,0d1h,042h,002h,0d2h,099h,0eah,009h,0ebh,007h,052h,0d2h,090h,0a0h,0fbh,004h	; 55a2  ..B.......R.....
	defb 0adh,055h,0eah,00ah,0d1h,020h,010h,0fbh,004h,0b4h,055h,0eah,00bh,0d1h,050h,040h	; 55b2  .U... ....U...P@
	defb 0fbh,004h,0bdh,055h,032h,0b1h,0eah,00ah,0b1h,0eah,009h,0b0h,0fdh,01dh,055h,0d2h	; 55c2  ...U2.........U.
	defb 071h,0eah,009h,071h,0eah,00ah,0ebh,071h,088h,0d0h,000h,000h,0eah,00bh,0ebh,017h	; 55d2  q..q...q........
	defb 000h,0d2h,070h,0d1h,000h,0ebh,003h,082h,0d2h,091h,0eah,009h,091h,0eah,00ah,0ebh	; 55e2  ..p.............
	defb 071h,088h,0d0h,000h,000h,0eah,00bh,0ebh,017h,000h,0d2h,090h,0d1h,000h,0ebh,003h	; 55f2  q...............
	defb 081h,0d2h,0b1h,0b1h,0b0h,0ebh,017h,000h,0d1h,050h,040h,020h,070h,0ebh,011h,075h	; 5602  .........P@ p..u
	defb 050h,040h,020h,000h,0d2h,0b0h,090h,070h,0ebh,003h,082h,0d2h,071h,0eah,009h,071h	; 5612  P@ ....p....q..q
	defb 0eah,00ah,0ebh,071h,088h,0d0h,000h,000h,0eah,00bh,0ebh,017h,000h,0d2h,070h,0d1h	; 5622  ...q..........p.
	defb 000h,0ebh,003h,082h,0d2h,091h,0eah,009h,091h,0eah,00ah,0ebh,071h,088h,0d0h,000h	; 5632  ............q...
	defb 000h,0eah,00bh,0ebh,017h,000h,0d2h,090h,0d1h,000h,0ebh,003h,081h,0d2h,0b1h,0b1h	; 5642  ................
	defb 0b0h,0ebh,017h,000h,0d1h,000h,020h,0fah,0f9h,05eh,057h,0d4h,000h,0d3h,000h,0d4h	; 5652  ...... ..^W.....
	defb 000h,0d3h,000h,0f9h,05eh,057h,0d4h,0b0h,0d3h,0b0h,0d4h,0b0h,0d3h,0b0h,0ebh,014h	; 5662  ....^W..........
	defb 034h,0f1h,042h,0d4h,091h,0eah,00ah,091h,0feh,004h,0d0h,000h,000h,0feh,001h,0ebh	; 5672  4.B.............
	defb 013h,034h,0eah,00bh,0d3h,090h,080h,091h,0d2h,001h,041h,091h,021h,0eah,008h,021h	; 5682  .4........A.!..!
	defb 0feh,004h,030h,030h,000h,000h,0feh,001h,0eah,00bh,0ebh,017h,003h,050h,090h,020h	; 5692  ..00.........P.
	defb 050h,0d3h,090h,0d2h,020h,0d3h,050h,090h,0ebh,014h,034h,0d4h,071h,0eah,009h,071h	; 56a2  P... .P...4.q..q
	defb 0feh,004h,000h,000h,0feh,001h,0ebh,013h,034h,0eah,00bh,0d3h,070h,060h,071h,0b1h	; 56b2  ........4...p`q.
	defb 0d2h,021h,071h,0ebh,017h,003h,040h,0d3h,040h,070h,0d2h,000h,070h,040h,000h,0d3h	; 56c2  .!q...@.@p..p@..
	defb 070h,0d2h,0b0h,060h,020h,0d3h,0b0h,090h,0d2h,000h,040h,090h,0eah,00ah,0ebh,007h	; 56d2  p..` .....@.....
	defb 002h,0f1h,042h,0d2h,0a0h,0d3h,0a0h,020h,050h,0a0h,050h,020h,0d4h,0a0h,0d2h,020h	; 56e2  ..B.... P.P ...
	defb 0d3h,0a0h,050h,020h,0eah,00bh,0d2h,050h,020h,0d3h,0a0h,050h,0eah,00ah,090h,0d4h	; 56f2  ..P ...P ..P....
	defb 090h,0d3h,000h,050h,090h,050h,000h,0d4h,090h,0d2h,000h,0d3h,090h,040h,000h,0eah	; 5702  ...P.P.......@..
	defb 00bh,0d2h,040h,000h,0d3h,090h,040h,0ebh,007h,052h,0eeh,001h,0eah,00ah,0d2h,070h	; 5712  ..@...@..R.....p
	defb 0d3h,070h,0a0h,0d2h,020h,0eah,00bh,070h,020h,0d3h,0a0h,070h,0eah,00ah,0d2h,090h	; 5722  .p.. ..p ..p....
	defb 0d3h,090h,0d2h,010h,040h,0eah,00bh,090h,040h,010h,0d3h,090h,0eah,00ah,0d2h,090h	; 5732  ....@...@.......
	defb 0d3h,090h,0d2h,020h,050h,0eah,00bh,090h,050h,020h,0d3h,090h,0d2h,0b0h,040h,0d3h	; 5742  ... P...P ....@.
	defb 0b0h,081h,0eah,008h,081h,0eah,007h,080h,0efh,0fdh,05ah,056h,0feh,001h,0e9h,007h	; 5752  ..........ZV....
	defb 0eah,00ch,0ebh,011h,060h,0d4h,000h,0d3h,000h,0fbh,014h,05eh,057h,0d4h,050h,0d3h	; 5762  ....`......^W.P.
	defb 050h,0fbh,003h,06fh,057h,0d3h,050h,0d4h,050h,0d4h,070h,0d3h,070h,0fbh,004h,07bh	; 5772  P..oW.P.P.p.p..{
	defb 057h,0d4h,000h,0d3h,000h,0d4h,000h,0d3h,000h,0fah,0f9h,0d8h,058h,070h,044h,0ebh	; 5782  W...........XpD.
	defb 011h,074h,070h,050h,040h,0f9h,0d8h,058h,0d1h,000h,0d2h,041h,0ebh,002h,080h,0d6h	; 5792  .tpP@..X...A....
	defb 020h,002h,0d3h,001h,0d7h,020h,002h,0d4h,0b1h,0d8h,0ebh,017h,000h,0d2h,041h,0eah	; 57a2   .... ........A.
	defb 00bh,0ebh,014h,034h,0f2h,009h,0f1h,041h,0d2h,001h,0eah,00ah,001h,0eah,009h,001h	; 57b2  ...4...A........
	defb 0feh,004h,0d0h,011h,0feh,001h,0ebh,017h,000h,0eah,00bh,0ebh,017h,060h,0eeh,001h	; 57c2  .............`..
	defb 0d2h,043h,093h,0efh,050h,040h,055h,0eah,00ah,0ebh,007h,073h,0d0h,020h,050h,0d1h	; 57d2  .C..P@U....s. P.
	defb 090h,0d0h,020h,0d1h,050h,090h,020h,050h,0ebh,014h,034h,0d3h,0b1h,0eah,00ah,0b1h	; 57e2  .. .P. P..4.....
	defb 0eah,009h,0b1h,0feh,004h,011h,0feh,001h,0e9h,007h,0eah,00bh,0ebh,017h,060h,0eeh	; 57f2  ..............`.
	defb 003h,0d3h,073h,0b3h,0efh,0f2h,013h,0f1h,052h,0ebh,007h,070h,0d1h,007h,0eeh,001h	; 5802  ..s.....R..p....
	defb 0eah,00ah,0d2h,0b5h,0efh,0feh,004h,040h,040h,0feh,001h,0e9h,007h,0f2h,013h,0f1h	; 5812  .......@@.......
	defb 041h,0eah,00bh,0ebh,007h,050h,0d1h,022h,0d2h,0a2h,051h,0eah,009h,050h,0edh,009h	; 5822  A....P."..Q..P..
	defb 0eah,00ah,0ebh,003h,010h,0d1h,020h,050h,0a0h,0f9h,096h,058h,0feh,001h,0ebh,007h	; 5832  ...... P...X....
	defb 050h,0eah,00bh,0d1h,002h,0d2h,092h,041h,0eah,009h,040h,0eah,00ah,0ebh,082h,070h	; 5842  P......A..@....p
	defb 0d1h,040h,090h,0d0h,000h,0f9h,0b7h,058h,0feh,001h,0ebh,003h,080h,0eah,00ah,0d4h	; 5852  .@.....X........
	defb 071h,0feh,004h,040h,0feh,001h,0ebh,003h,060h,072h,071h,0eah,00bh,091h,0feh,004h	; 5862  q..@....`rq.....
	defb 040h,0feh,001h,0ebh,003h,060h,092h,091h,0eah,00ch,0ebh,003h,070h,0d3h,021h,0feh	; 5872  @....`......p.!.
	defb 004h,040h,0feh,001h,0ebh,003h,080h,022h,021h,041h,0feh,004h,000h,000h,011h,030h	; 5882  .@....."!A.....0
	defb 030h,0fdh,08ch,057h,0feh,002h,0e2h,001h,080h,05fh,0f5h,0e2h,006h,070h,0e2h,002h	; 5892  0..W....._...p..
	defb 060h,050h,0e2h,001h,040h,030h,020h,0e2h,003h,050h,040h,030h,0e2h,001h,030h,020h	; 58a2  `P..@0 ..P@0..0
	defb 020h,020h,010h,0f6h,0fah,0feh,002h,0e2h,001h,080h,054h,0f5h,0e2h,006h,070h,0e2h	; 58b2    ........T...p.
	defb 002h,060h,050h,0e2h,001h,040h,030h,020h,0e2h,003h,050h,040h,030h,0e2h,001h,030h	; 58c2  .`P..@0 ..P@0..0
	defb 020h,020h,020h,010h,0f6h,0fah,0feh,001h,0e9h,007h,0eah,00bh,0ebh,003h,082h,0f1h	; 58d2     .............
	defb 041h,0d2h,041h,0eah,009h,041h,0feh,004h,0d0h,040h,010h,0feh,001h,0eah,00bh,0ebh	; 58e2  A.A..A...@......
	defb 017h,000h,0d2h,040h,070h,0ebh,003h,082h,051h,0eah,009h,051h,0feh,004h,040h,010h	; 58f2  ...@p...Q..Q..@.
	defb 0feh,001h,0eah,00bh,0ebh,017h,000h,050h,090h,0ebh,003h,081h,0d2h,071h,071h,070h	; 5902  .......P.....qqp
	defb 0ebh,017h,000h,0d1h,020h,000h,0d2h,0b0h,0d1h,040h,0ebh,011h,075h,0d1h,020h,000h	; 5912  .... ....@..u. .
	defb 0d2h,0b0h,090h,070h,050h,040h,0ebh,003h,082h,041h,0eah,009h,041h,0feh,004h,040h	; 5922  ...pP@...A..A..@
	defb 010h,0feh,001h,0eah,00bh,0ebh,017h,000h,040h,070h,0ebh,003h,082h,051h,0eah,009h	; 5932  ........@p...Q..
	defb 051h,0feh,004h,040h,010h,0feh,001h,0ebh,017h,000h,0eah,00bh,050h,090h,0ebh,003h	; 5942  Q..@........P...
	defb 081h,0d2h,071h,071h,070h,0ebh,017h,000h,090h,0b0h,0fah,0feh,001h,0e9h,005h,0eah	; 5952  ..qqp...........
	defb 00bh,0ebh,007h,080h,0d1h,091h,041h,021h,0d2h,091h,0fbh,002h,05dh,059h,0d1h,071h	; 5962  ......A!....]Y.q
	defb 021h,001h,0d2h,071h,0fbh,002h,070h,059h,0ebh,006h,050h,0d1h,053h,041h,008h,0c0h	; 5972  !..q..pY..P.SA..
	defb 051h,051h,041h,001h,0eah,009h,001h,0eah,00bh,025h,0ebh,007h,010h,0eah,00bh,00fh	; 5982  QQA......%......
	defb 0eah,008h,001h,0eah,007h,001h,0eah,006h,001h,0eah,005h,001h,0c7h,0feh,001h,0e9h	; 5992  ................
	defb 005h,0f0h,0eah,00bh,0ebh,004h,030h,0d1h,043h,0d2h,073h,0d1h,043h,0d2h,071h,0d1h	; 59a2  ......0.C.s.C.q.
	defb 043h,041h,053h,043h,021h,001h,0f2h,013h,0f1h,041h,0ebh,007h,030h,025h,045h,023h	; 59b2  CASC!....A..0%E#
	defb 007h,0d2h,0b7h,0f0h,0ebh,004h,030h,0d1h,003h,0d2h,043h,0d1h,003h,0d2h,041h,0d1h	; 59c2  ......0...C...A.
	defb 003h,001h,023h,007h,0f2h,013h,0f1h,041h,0ebh,007h,030h,0d2h,0b7h,0d1h,007h,025h	; 59d2  ..#....A..0....%
	defb 0f1h,041h,0ebh,005h,070h,0eah,00bh,0d2h,0b1h,0d1h,001h,021h,041h,051h,0efh,0ebh	; 59e2  .A..p......!AQ..
	defb 007h,040h,0eah,00bh,0d2h,093h,051h,093h,0d1h,005h,0d2h,0bfh,0b3h,081h,0b3h,0d1h	; 59f2  .@....Q.........
	defb 043h,021h,00fh,0ebh,005h,030h,0d2h,055h,0d1h,045h,023h,005h,0d2h,0b9h,0f0h,0d1h	; 5a02  C!...0.U.E#.....
	defb 025h,0eah,00ah,0e9h,00ah,0ebh,007h,010h,008h,0eah,007h,003h,0fdh,09fh,059h,0feh	; 5a12  %.............Y.
	defb 001h,0e9h,005h,0ech,0eah,007h,0d3h,050h,0eah,008h,0d3h,050h,0eah,009h,050h,0eah	; 5a22  .......P...P..P.
	defb 00ah,050h,0eah,00bh,058h,0eah,00ah,050h,0eah,009h,050h,0eah,008h,050h,0eah,007h	; 5a32  .P..X..P..P..P..
	defb 040h,0eah,008h,040h,0eah,009h,040h,0eah,00ah,040h,0eah,00bh,048h,0eah,00ah,040h	; 5a42  @..@..@..@..H..@
	defb 0eah,009h,040h,0eah,008h,040h,0eah,00bh,0edh,00ah,0ebh,087h,020h,023h,041h,058h	; 5a52  ..@..@...... #AX
	defb 0c0h,0d3h,021h,021h,041h,053h,075h,0eah,00ch,0ebh,002h,040h,0d4h,001h,0d3h,001h	; 5a62  ..!!ASu....@....
	defb 0fbh,004h,06eh,05ah,0d4h,000h,000h,0d3h,001h,0d4h,001h,0d3h,001h,0fbh,003h,07bh	; 5a72  ..nZ...........{
	defb 05ah,0feh,001h,0e9h,005h,0eah,00ch,0ebh,002h,030h,0d3h,001h,0d2h,001h,0fbh,008h	; 5a82  Z........0......
	defb 083h,05ah,0d4h,0b1h,0d3h,0b1h,0fbh,008h,094h,05ah,0d4h,091h,0d3h,091h,0fbh,008h	; 5a92  .Z.......Z......
	defb 09ch,05ah,0d4h,071h,0d3h,071h,0fbh,008h,0a4h,05ah,0eah,00ch,0ebh,005h,070h,055h	; 5aa2  .Z.q.q...Z....pU
	defb 051h,057h,075h,071h,077h,085h,081h,087h,095h,091h,093h,0d6h,005h,004h,0d4h,093h	; 5ab2  QWuqw...........
	defb 0d8h,0eah,00ch,0ebh,002h,030h,0d4h,051h,0d3h,051h,0fbh,004h,0c8h,05ah,0d4h,071h	; 5ac2  .....0.Q.Q...Z.q
	defb 0d3h,071h,0fbh,004h,0d0h,05ah,0d3h,001h,0d2h,001h,0fbh,006h,0d8h,05ah,0d3h,000h	; 5ad2  .q...Z.......Z..
	defb 000h,0d2h,001h,0d3h,001h,0d2h,001h,0fdh,083h,05ah,0feh,001h,0e9h,005h,0eah,009h	; 5ae2  .........Z......
	defb 0ebh,007h,070h,0c1h,0d1h,091h,041h,021h,0d2h,091h,0fbh,002h,0f6h,05ah,0d1h,071h	; 5af2  ..p...A!.....Z.q
	defb 021h,001h,0d2h,071h,0d1h,071h,021h,001h,0eah,00bh,0ebh,006h,050h,0d1h,023h,001h	; 5b02  !..q.q!.....P.#.
	defb 0d2h,098h,0c0h,0d1h,021h,021h,001h,0d2h,091h,0eah,009h,091h,0eah,00bh,0b5h,0ebh	; 5b12  ....!!..........
	defb 007h,010h,0eah,00bh,0d2h,07fh,0eah,008h,071h,0eah,007h,071h,0eah,006h,071h,0eah	; 5b22  ........q..q..q.
	defb 005h,071h,0c7h,0feh,001h,0e9h,005h,0f0h,0efh,0eah,00bh,0ebh,004h,030h,0d2h,073h	; 5b32  .q...........0.s
	defb 043h,073h,041h,073h,071h,073h,073h,071h,071h,0f2h,013h,0f1h,041h,0ebh,007h,030h	; 5b42  CsAsqssqq...A..0
	defb 0b5h,0d1h,005h,0d2h,0b3h,097h,077h,0f0h,0ebh,004h,030h,0eeh,001h,0d2h,043h,003h	; 5b52  ......w...0...C.
	defb 043h,001h,043h,041h,043h,047h,0f2h,013h,0f1h,041h,0ebh,007h,030h,0efh,0d2h,077h	; 5b62  C.CACG...A..0..w
	defb 097h,0b1h,0f1h,041h,0ebh,005h,070h,0eah,00bh,0efh,0d2h,071h,091h,0eah,00ah,0eeh	; 5b72  ...A..p....q....
	defb 001h,0ebh,002h,010h,0b3h,0d1h,001h,021h,0eah,009h,041h,0efh,0feh,001h,0e9h,005h	; 5b82  .......!..A.....
	defb 0f1h,015h,0f1h,051h,0ebh,007h,070h,0eah,00ah,0eeh,003h,0d3h,051h,0efh,091h,0d2h	; 5b92  ...Q..p.....Q...
	defb 001h,051h,0eeh,001h,091h,0efh,051h,001h,0d3h,091h,0eeh,003h,0d3h,071h,0efh,0b1h	; 5ba2  .Q....Q......q..
	defb 0d2h,021h,071h,0d2h,0b1h,0d2h,021h,081h,091h,0eeh,003h,0d3h,081h,0efh,0b1h,0d2h	; 5bb2  .!q...!.........
	defb 021h,041h,081h,041h,021h,0d3h,0b1h,0eeh,003h,0d3h,091h,0efh,0d2h,001h,041h,091h	; 5bc2  !A.A!.........A.
	defb 0d1h,001h,0d2h,091h,041h,001h,0ebh,005h,030h,0efh,005h,095h,093h,075h,079h,045h	; 5bd2  ....A...0....uyE
	defb 049h,0feh,001h,0e9h,005h,0efh,0f2h,018h,0f1h,041h,0eah,00bh,0edh,00ah,0ebh,087h	; 5be2  I........A......
	defb 020h,0d1h,025h,0eeh,001h,005h,0f0h,0f1h,041h,0ech,0eah,006h,001h,0eah,005h,001h	; 5bf2   .%.....A.......
	defb 0fdh,035h,05bh,0feh,001h,0e9h,006h,0eah,00bh,0ebh,005h,070h,0f2h,013h,0f1h,042h	; 5c02  .5[........p...B
	defb 0f9h,059h,05ch,0d8h,093h,093h,093h,0d6h,002h,002h,071h,091h,0b3h,0d1h,023h,0d2h	; 5c12  .Y\.......q...#.
	defb 0b5h,0f9h,059h,05ch,093h,0b3h,0d1h,023h,0d2h,0b3h,0d1h,0d6h,003h,004h,043h,043h	; 5c22  ..Y\...#......CC
	defb 047h,0feh,001h,0e9h,003h,0eah,00bh,0ebh,007h,050h,0f9h,069h,05ch,0d8h,093h,0b3h	; 5c32  G........P.i\...
	defb 0d0h,043h,0d1h,0b3h,09fh,0f9h,069h,05ch,0f2h,020h,0f1h,041h,0d6h,001h,004h,093h	; 5c42  .C....i\. .A....
	defb 0b3h,0d0h,047h,02bh,0fdh,005h,05ch,0d8h,0d1h,040h,020h,043h,073h,023h,041h,021h	; 5c52  ..G+..\..@ Cs#A!
	defb 0d2h,0b5h,0b1h,0b5h,090h,070h,0fah,0d6h,001h,008h,0f0h,0d1h,077h,077h,0d8h,043h	; 5c62  .....p......ww.C
	defb 023h,043h,073h,093h,0b3h,047h,023h,073h,047h,0d6h,001h,008h,077h,077h,0d8h,043h	; 5c72  #Cs..G#sG...ww.C
	defb 023h,043h,073h,0fah,0feh,001h,0e9h,003h,0eah,00ch,0ebh,024h,040h,0c3h,0f9h,0dah	; 5c82  #Cs........$@...
	defb 05ch,0d4h,093h,0d3h,043h,0d4h,023h,0d3h,023h,0d4h,073h,0d3h,073h,0d4h,023h,0d3h	; 5c92  \...C.#.#.s.s.#.
	defb 023h,0d4h,073h,0d3h,073h,0d4h,0b3h,0d3h,043h,0f9h,0dah,05ch,0d4h,0b3h,0d3h,063h	; 5ca2  #.s.s...C..\...c
	defb 0d4h,0b3h,0d3h,063h,0d4h,043h,0b3h,0d4h,043h,0d3h,043h,0eah,00dh,0d7h,030h,005h	; 5cb2  ...c.C..C.C...0.
	defb 0d4h,047h,0d5h,0b7h,0d8h,0feh,001h,0e9h,003h,0dbh,005h,0ebh,007h,050h,0f9h,002h	; 5cc2  .G...........P..
	defb 05dh,0b3h,0f9h,002h,05dh,0fdh,086h,05ch,0d4h,041h,041h,0b3h,043h,0b3h,0d4h,073h	; 5cd2  ]...]..\.AA.C..s
	defb 0d3h,073h,0d4h,021h,021h,0d3h,023h,0d4h,043h,0d3h,043h,0d4h,023h,0b1h,0b1h,0d4h	; 5ce2  .s.!!.#.C.C.#...
	defb 043h,0d3h,043h,0d4h,043h,0d3h,043h,0d4h,093h,0d3h,043h,0d4h,093h,0d3h,043h,0fah	; 5cf2  C.C.C.C...C...C.
	defb 0eah,00ah,0d4h,073h,0d3h,023h,073h,093h,0eah,00bh,0d2h,02fh,043h,0d3h,0b3h,0eah	; 5d02  ...s.#s..../C...
	defb 00ah,0d2h,023h,0d3h,093h,0eah,009h,0b3h,073h,093h,043h,0eah,00ah,0d4h,073h,0d3h	; 5d12  ..#.....s.C...s.
	defb 023h,073h,093h,0eah,00bh,0d2h,02fh,043h,073h,0eah,00ah,023h,043h,0eah,009h,0d3h	; 5d22  #s..../Cs..#C...
	defb 0b3h,0d2h,023h,0d3h,093h,0fah,0feh,001h,0e9h,006h,0d8h,0eah,00ah,0ebh,005h,070h	; 5d32  ..#............p
	defb 0f2h,013h,0f1h,042h,0d6h,001h,004h,0d2h,0b0h,0b0h,0b3h,0b3h,073h,0b1h,0b1h,0d2h	; 5d42  ...B........s...
	defb 045h,041h,041h,0d8h,0eah,00bh,0ebh,003h,060h,0d3h,0b1h,091h,073h,0d3h,093h,093h	; 5d52  EAA.....`...s...
	defb 091h,0ebh,005h,070h,0d6h,001h,004h,0d2h,021h,021h,0d2h,073h,073h,071h,0eah,00ah	; 5d62  ...p....!!.ssq..
	defb 0ebh,007h,070h,0d2h,040h,020h,0d3h,0b1h,0d2h,021h,0eah,00ah,0ebh,005h,070h,0d2h	; 5d72  ..p.@ ...!....p.
	defb 0b3h,0b3h,073h,0b1h,0b1h,0d2h,045h,041h,045h,040h,040h,043h,043h,093h,063h,0d2h	; 5d82  ..s...EAE@@CC.c.
	defb 0d6h,003h,004h,0b3h,0b3h,0b3h,0d7h,030h,005h,0d4h,0b3h,0feh,001h,0e9h,003h,0eah	; 5d92  .......0........
	defb 00bh,0ebh,017h,051h,0f9h,0c2h,05dh,0d6h,003h,002h,023h,043h,0b3h,043h,02fh,0f9h	; 5da2  ...Q..]...#C.C/.
	defb 0c2h,05dh,0d7h,001h,004h,0f2h,020h,0f1h,041h,023h,043h,0b7h,09bh,0fdh,038h,05dh	; 5db2  .].... .A#C...8]
	defb 0d6h,001h,008h,0f0h,0d1h,027h,027h,0d8h,0d2h,0b3h,093h,0b3h,0d1h,023h,0d7h,003h	; 5dc2  .....''......#..
	defb 002h,023h,043h,0d2h,0b7h,093h,0d1h,023h,0d2h,0b7h,0d8h,0d6h,001h,008h,0d1h,027h	; 5dd2  .#C....#.......'
	defb 027h,0d8h,0d2h,0b3h,093h,0b3h,0d1h,023h,0fah,0feh,001h,0e9h,009h,0eah,00ah,0edh	; 5de2  '......#........
	defb 008h,0ebh,087h,000h,0f9h,0f9h,05dh,0d2h,021h,061h,091h,0d1h,011h,021h,061h,091h	; 5df2  ......].!a...!a.
	defb 0d0h,011h,0fbh,002h,0f9h,05dh,0d3h,091h,0d2h,011h,041h,081h,091h,0d1h,011h,041h	; 5e02  .....]....A....A
	defb 081h,0fbh,002h,008h,05eh,0d3h,061h,081h,0d2h,001h,031h,061h,081h,0d1h,001h,031h	; 5e12  ....^.a...1a...1
	defb 0fbh,002h,017h,05eh,0d3h,051h,081h,0b1h,0d2h,021h,051h,081h,0b1h,0d1h,021h,0fbh	; 5e22  ...^.Q...!Q...!.
	defb 002h,026h,05eh,0fdh,0f9h,05dh,0feh,001h,0f2h,01dh,0f1h,052h,0e9h,009h,0eah,00bh	; 5e32  .&^..].....R....
	defb 0dbh,003h,0ebh,007h,070h,0d1h,0c7h,067h,0d0h,017h,0f2h,020h,02fh,0f2h,01dh,0d1h	; 5e42  ....p..g... /...
	defb 087h,0d0h,0b7h,0f2h,020h,08fh,0f2h,01dh,037h,0d1h,087h,0d0h,067h,0f2h,020h,05fh	; 5e52  .... ...7...g. _
	defb 0f2h,01dh,0d1h,0b7h,0d0h,087h,0fdh,038h,05eh,0feh,001h,0e9h,009h,0eah,007h,0ech	; 5e62  .......8^.......
	defb 0c1h,0f9h,0f9h,05dh,0feh,001h,0e9h,005h,0eah,00bh,0ebh,003h,070h,0d1h,041h,043h	; 5e72  ...]........p.AC
	defb 041h,053h,063h,077h,0ebh,006h,070h,0d7h,005h,002h,0d3h,077h,0d8h,0f9h,00eh,05fh	; 5e82  AScw..p....w..._
	defb 0ebh,006h,060h,0d3h,077h,0f9h,00eh,05fh,0feh,004h,0d1h,027h,0f9h,04dh,05fh,0ebh	; 5e92  ..`.w.._...'.M_.
	defb 007h,050h,009h,0eah,005h,003h,0ebh,004h,070h,0eah,00bh,001h,0d1h,0b1h,0d1h,091h	; 5ea2  .P......p.......
	defb 0d0h,001h,051h,095h,071h,051h,041h,073h,003h,045h,021h,011h,021h,011h,021h,0d1h	; 5eb2  ..Q.qQAs.E!.!.!.
	defb 091h,0eah,008h,091h,0eah,00bh,0d0h,001h,0ebh,007h,096h,071h,051h,021h,0d1h,0b3h	; 5ec2  ...........qQ!..
	defb 091h,081h,071h,0f9h,04dh,05fh,0ebh,007h,050h,00bh,0eah,005h,005h,0eah,00bh,0ebh	; 5ed2  ..q.M_..P.......
	defb 004h,0f6h,001h,0d1h,091h,0b1h,0d0h,003h,0d1h,091h,0b1h,0d0h,003h,0d1h,091h,0b1h	; 5ee2  ................
	defb 0d0h,003h,0ebh,004h,070h,0d0h,091h,041h,001h,041h,0d1h,071h,0b1h,0d0h,043h,031h	; 5ef2  ....p..A.A.q..C1
	defb 023h,0ebh,006h,070h,007h,0feh,004h,0d1h,037h,0fdh,08fh,05eh,0feh,001h,0e9h,005h	; 5f02  #..p....7..^....
	defb 0eah,00bh,0ebh,004h,050h,0d1h,071h,061h,071h,093h,043h,041h,021h,011h,021h,097h	; 5f12  ....P.qaq.CA!.!.
	defb 001h,0d2h,0b1h,0a1h,0b1h,0ebh,005h,040h,0d1h,075h,053h,041h,031h,041h,095h,073h	; 5f22  .......@.uSA1A.s
	defb 0ebh,004h,050h,071h,061h,071h,093h,043h,041h,021h,011h,021h,097h,071h,061h,091h	; 5f32  ..Pqaq.CA!.!.qa.
	defb 0d0h,001h,023h,0d1h,0b1h,093h,0ebh,005h,070h,077h,0fah,0feh,001h,0e9h,005h,0eah	; 5f42  ..#.....pw......
	defb 00bh,0ebh,004h,070h,0d0h,041h,031h,041h,003h,0e9h,002h,0d1h,078h,0eah,009h,030h	; 5f52  ...p.A1A....x..0
	defb 0eah,00bh,0e9h,005h,041h,0eah,008h,041h,0eah,00bh,071h,0d0h,001h,021h,041h,073h	; 5f62  ....A..A..q..!As
	defb 081h,0eah,008h,081h,0eah,00bh,0d1h,081h,0b1h,0d0h,021h,051h,043h,0fah,0feh,001h	; 5f72  ..........!QC...
	defb 0e9h,005h,0eah,00ch,0ebh,003h,070h,0d3h,041h,043h,041h,053h,063h,077h,0ebh,006h	; 5f82  ......p.ACAScw..
	defb 070h,0d7h,008h,005h,0d4h,077h,0d8h,0feh,001h,0e9h,005h,0eah,00ch,0ebh,014h,020h	; 5f92  p....w.........
	defb 0d3h,003h,073h,0d3h,003h,0d4h,073h,0d3h,023h,093h,023h,093h,0d4h,073h,0d3h,023h	; 5fa2  ..s...s.#.#..s.#
	defb 0d4h,073h,0d3h,023h,0d3h,003h,073h,003h,0d4h,073h,0d3h,003h,073h,0d3h,003h,0d4h	; 5fb2  .s.#..s..s..s...
	defb 073h,0d3h,023h,093h,023h,0b3h,0d4h,063h,0d3h,003h,0d4h,063h,0d3h,003h,0ebh,005h	; 5fc2  s.#.#..c...c....
	defb 070h,0d3h,077h,0ebh,006h,060h,0d4h,077h,0fbh,002h,099h,05fh,0f9h,042h,060h,073h	; 5fd2  p.w..`.w..._.B`s
	defb 053h,0d3h,053h,0d4h,093h,0d3h,053h,0d4h,073h,0d3h,073h,003h,013h,023h,093h,0d4h	; 5fe2  S.S...S.s.s..#..
	defb 093h,0d3h,093h,0eah,00ch,0ebh,017h,096h,0d3h,051h,051h,0d4h,0b1h,0d3h,023h,0eah	; 5ff2  .........QQ...#.
	defb 00ch,0ebh,004h,096h,0d4h,071h,091h,0b1h,0f9h,042h,060h,0d4h,043h,0d4h,053h,0d3h	; 6002  .....q...B`.C.S.
	defb 053h,0d4h,063h,0d3h,063h,0d4h,073h,0d3h,073h,0d4h,093h,0d3h,093h,0ebh,014h,020h	; 6012  S.c.c.s.s......
	defb 0d4h,073h,0d3h,023h,0d4h,0b3h,073h,0ebh,014h,0f0h,0e9h,002h,0d3h,008h,0d6h,010h	; 6022  .s.#..s.........
	defb 003h,0d4h,07ah,0e9h,005h,0ebh,006h,070h,0d7h,010h,004h,007h,0d8h,0fdh,099h,05fh	; 6032  ..z....p......._
	defb 0ebh,014h,020h,0d3h,003h,073h,0d4h,073h,0d3h,073h,0fbh,002h,042h,060h,0d4h,0b3h	; 6042  .. ..s.s.s..B`..
	defb 0d3h,043h,0d4h,043h,0d3h,043h,0d4h,093h,0d3h,043h,0d4h,093h,0fah,0feh,001h,0e9h	; 6052  .C.C.C...C......
	defb 005h,0eah,00bh,0ebh,003h,070h,0d1h,001h,003h,001h,023h,033h,047h,0ebh,006h,070h	; 6062  .....p....#3G..p
	defb 0d3h,027h,0d8h,0f9h,0feh,060h,0ebh,006h,060h,0d3h,027h,0f9h,0feh,060h,0feh,004h	; 6072  .'...`..`.'..`..
	defb 0d1h,047h,0f9h,04dh,061h,0feh,008h,0d0h,040h,052h,043h,000h,002h,0feh,001h,0eah	; 6082  .G.Ma...@RC.....
	defb 00bh,0ebh,004h,070h,0d1h,091h,071h,051h,091h,0d0h,001h,055h,041h,021h,001h,043h	; 6092  ...p..qQ...UA!.C
	defb 0d1h,073h,0d0h,005h,0d1h,061h,061h,061h,061h,061h,061h,0eah,008h,061h,0eah,00bh	; 60a2  .s...aaaaaa..a..
	defb 091h,0f2h,009h,0f1h,041h,0ebh,007h,096h,0d1h,0b1h,0b1h,051h,073h,051h,051h,021h	; 60b2  ....A......QsQQ!
	defb 0f0h,0f9h,04dh,061h,0feh,008h,0d0h,040h,052h,043h,000h,000h,005h,0feh,001h,0ebh	; 60c2  ..Ma...@RC......
	defb 004h,0f6h,0eah,00bh,0d1h,091h,051h,071h,093h,061h,071h,093h,021h,021h,023h,0ebh	; 60d2  ......Qq.aq.!!#.
	defb 004h,070h,0eah,009h,0d0h,093h,041h,0eah,00bh,0d0h,001h,0d1h,041h,051h,0b3h,0b1h	; 60e2  .p....A.....AQ..
	defb 0b3h,0ebh,006h,070h,047h,0feh,004h,0d1h,057h,0fdh,075h,060h,0feh,001h,0e9h,005h	; 60f2  ...pG...W.u`....
	defb 0eah,00bh,0ebh,004h,050h,0d1h,041h,031h,041h,043h,003h,001h,0d2h,091h,091h,091h	; 6102  ....P.A1AC......
	defb 0d1h,023h,0eah,00ah,0ebh,003h,050h,0d1h,011h,021h,091h,0ebh,004h,050h,0d2h,021h	; 6112  .#....P..!...P.!
	defb 011h,021h,0ebh,005h,040h,0d2h,0b5h,093h,071h,061h,071h,045h,043h,0eah,00bh,0ebh	; 6122  .!..@...qaqEC...
	defb 004h,050h,0d1h,041h,031h,041h,043h,003h,001h,0d2h,091h,091h,091h,0d1h,027h,021h	; 6132  .P.A1AC.......'!
	defb 001h,061h,091h,093h,061h,063h,0ebh,004h,070h,027h,0fah,0feh,001h,0e9h,005h,0eah	; 6142  .a..ac..p'......
	defb 008h,0eeh,001h,0ech,0d0h,043h,031h,041h,003h,0d1h,071h,0efh,0ebh,004h,070h,0eah	; 6152  .....C1A..q...p.
	defb 00bh,0d1h,001h,0eah,008h,001h,0eah,00bh,041h,071h,0b1h,0d0h,001h,043h,041h,0eah	; 6162  ........Aq...CA.
	defb 008h,041h,0eah,00bh,0d2h,0b1h,0d1h,041h,081h,081h,083h,0ebh,007h,0f0h,041h,0fah	; 6172  .A.....A......A.
	defb 0feh,001h,0e9h,009h,0eah,00bh,0edh,00ah,0ebh,085h,060h,0f2h,010h,0f1h,042h,0d1h	; 6182  ..........`...B.
	defb 043h,041h,041h,041h,0ebh,086h,060h,020h,040h,021h,0d2h,0b0h,090h,0b5h,0d1h,021h	; 6192  CAAA..` @!.....!
	defb 0ebh,086h,040h,0d2h,0b5h,0ebh,085h,070h,090h,070h,0ebh,085h,060h,093h,091h,091h	; 61a2  ..@....p.p..`...
	defb 091h,0ebh,086h,060h,070h,090h,071h,040h,020h,045h,071h,0ebh,086h,040h,045h,0ech	; 61b2  ...`p.q@ Eq..@E.
	defb 0eah,004h,041h,0fbh,002h,082h,061h,0eah,00bh,0edh,00ah,0ebh,087h,070h,0f2h,010h	; 61c2  ..A...a......p..
	defb 0f1h,042h,0d2h,073h,071h,071h,091h,0b0h,090h,071h,091h,0ebh,086h,060h,0b5h,0d1h	; 61d2  .B.sqq...q...`..
	defb 021h,0d2h,0b5h,0d1h,040h,020h,0ebh,087h,050h,043h,041h,041h,075h,040h,020h,049h	; 61e2  !...@ ..PCAAu@ I
	defb 0ech,0eah,004h,043h,0eah,003h,041h,0eah,002h,041h,0feh,004h,0e9h,00eh,0d1h,018h	; 61f2  ...C..A..A......
	defb 0fdh,082h,061h,0feh,001h,0e9h,009h,0eah,00ch,0dbh,006h,0ebh,003h,090h,0d8h,0d4h	; 6202  ..a.............
	defb 043h,0b1h,0b1h,0fbh,004h,005h,062h,0d4h,093h,0d3h,041h,041h,0fbh,002h,019h,062h	; 6212  C.....b...AA...b
	defb 0d4h,043h,0b1h,0b1h,0fbh,002h,022h,062h,0fch,002h,005h,062h,0dbh,006h,0ebh,004h	; 6222  .C...."b...b....
	defb 090h,0d4h,073h,0d3h,021h,021h,0d4h,091h,090h,090h,0d3h,041h,041h,0d4h,0b3h,0d3h	; 6232  ..s.!!.....AA...
	defb 061h,061h,0d4h,0b3h,0eah,00bh,0edh,00ah,0ebh,086h,060h,0d3h,063h,0eah,00ch,0edh	; 6242  aa........`.c...
	defb 00ah,0dbh,006h,0ebh,086h,060h,007h,025h,0eah,00ch,091h,0dch,0ebh,003h,090h,0d6h	; 6252  .....`.%........
	defb 010h,002h,0d4h,043h,0b1h,0b1h,0d4h,041h,0b0h,0b0h,0b1h,0b1h,0fbh,002h,05eh,062h	; 6262  ...C...A......^b
	defb 0fdh,005h,062h,0feh,001h,0e9h,009h,0eah,00bh,0edh,00ah,0ebh,085h,060h,0f2h,010h	; 6272  ..b..........`..
	defb 0f1h,041h,0d2h,0b3h,0b1h,0b1h,0b1h,0ebh,086h,060h,0b0h,0b0h,0b1h,070h,040h,045h	; 6282  .A.......`...p@E
	defb 071h,0ebh,086h,040h,043h,0eah,00ah,0edh,006h,0ebh,086h,060h,0eeh,001h,0d1h,020h	; 6292  q..@C......`...
	defb 0d2h,0b0h,0efh,0edh,00ah,0eah,00bh,0ebh,085h,070h,040h,020h,0ebh,085h,060h,043h	; 62a2  .........p@ ..`C
	defb 041h,041h,041h,0ebh,086h,060h,040h,040h,041h,0d3h,0b0h,0b0h,0b5h,0d2h,041h,0ebh	; 62b2  AAA..`@@A.....A.
	defb 086h,040h,0d3h,0b3h,0edh,007h,0f1h,042h,0ebh,086h,050h,0b0h,0d2h,020h,0eah,009h	; 62c2  .@.....B..P.. ..
	defb 040h,070h,0fbh,002h,075h,062h,0feh,001h,0e9h,009h,0eah,00bh,0edh,00ah,0ebh,087h	; 62d2  @p..ub..........
	defb 070h,0f2h,010h,0f1h,042h,0d2h,023h,021h,021h,041h,040h,040h,041h,041h,0ebh,086h	; 62e2  p...B.#!!A@@AA..
	defb 060h,065h,0b1h,065h,0b0h,0b0h,0ebh,087h,050h,073h,071h,071h,0d1h,025h,0d2h,090h	; 62f2  `e.e....Psqq.%..
	defb 090h,0b9h,0ech,0eah,004h,0b3h,0eah,003h,0b1h,0eah,002h,0b1h,0e9h,001h,0c0h,0feh	; 6302  ................
	defb 004h,0e9h,00eh,0d1h,007h,0feh,001h,0e9h,00dh,0c0h,0efh,0fdh,075h,062h,0feh,001h	; 6312  ............ub..
	defb 0e9h,007h,0f2h,015h,0f1h,041h,0eah,00dh,0dbh,006h,0ebh,005h,070h,0d0h,072h,0eah	; 6322  .....A......p.r.
	defb 00ch,0ebh,003h,070h,022h,0ebh,005h,060h,0dbh,002h,0e9h,005h,042h,0e9h,008h,0ebh	; 6332  ...p"..`....B...
	defb 006h,070h,0eah,007h,0d1h,0b1h,0e9h,001h,0c0h,0e9h,009h,0eah,00ch,0d0h,0b1h,0dch	; 6342  .p..............
	defb 0ech,0e9h,002h,020h,020h,0eah,00bh,020h,0eah,00ah,020h,0eah,009h,020h,0eah,009h	; 6352  ...  .. .. .. ..
	defb 020h,0eah,00ah,020h,0eah,00ah,020h,0eah,009h,020h,0eah,008h,020h,0eah,007h,020h	; 6362   .. .. .. .. ..
	defb 0eah,006h,020h,0eah,006h,020h,0eah,007h,020h,0eah,007h,020h,0eah,006h,020h,0eah	; 6372  .. .. .. .. .. .
	defb 005h,020h,0eah,004h,020h,0eah,003h,020h,0eah,003h,020h,0eah,004h,020h,0eah,004h	; 6382  . .. .. .. .. ..
	defb 020h,0eah,004h,020h,0eah,003h,020h,0eah,003h,020h,0eah,003h,020h,0eah,002h,020h	; 6392   .. .. .. .. ..
	defb 0eah,002h,020h,0eah,002h,020h,0eah,001h,020h,0eah,001h,020h,0eah,001h,020h,0eah	; 63a2  .. .. .. .. .. .
	defb 000h,020h,0eah,000h,020h,0feh,001h,0e9h,005h,0c3h,0f9h,019h,065h,0feh,001h,0e9h	; 63b2  . .. .......e...
	defb 007h,0f2h,015h,0f1h,041h,0eah,007h,0ebh,005h,070h,0d0h,0b0h,0eah,00ch,0dbh,006h	; 63c2  ....A....p......
	defb 062h,072h,0ebh,004h,070h,0dbh,002h,0e9h,005h,024h,0eah,009h,023h,0dch,0ech,0e9h	; 63d2  br..p....$..#...
	defb 002h,0eah,00ch,090h,090h,0eah,00bh,090h,0eah,00ah,090h,0eah,009h,090h,0eah,009h	; 63e2  ................
	defb 090h,0eah,00ah,090h,0eah,00ah,090h,0eah,009h,090h,0eah,008h,090h,0eah,007h,090h	; 63f2  ................
	defb 0eah,006h,090h,0eah,006h,090h,0eah,007h,090h,0eah,007h,090h,0eah,006h,090h,0eah	; 6402  ................
	defb 005h,090h,0eah,004h,090h,0eah,003h,090h,0eah,003h,090h,0eah,004h,090h,0eah,004h	; 6412  ................
	defb 090h,0eah,004h,090h,0eah,003h,090h,0eah,003h,090h,0eah,003h,090h,0eah,002h,090h	; 6422  ................
	defb 0eah,002h,090h,0eah,002h,090h,0eah,001h,090h,0eah,001h,090h,0eah,001h,090h,0eah	; 6432  ................
	defb 000h,090h,0feh,001h,0e9h,005h,0c3h,0f9h,0d4h,065h,0feh,001h,0e9h,007h,0f2h,015h	; 6442  .........e......
	defb 0f1h,041h,0eah,008h,0ebh,005h,070h,0d0h,021h,0eah,00ch,0dbh,006h,042h,062h,0ebh	; 6452  .A....p.!....Bb.
	defb 004h,070h,0dbh,002h,0e9h,001h,0c0h,0e9h,009h,0ebh,005h,070h,071h,0eah,00ah,071h	; 6462  .p.........pq..q
	defb 0eah,00ch,0dch,0ech,0e9h,002h,060h,060h,0eah,00bh,060h,0eah,00ah,060h,0eah,009h	; 6472  ......``..`..`..
	defb 060h,0eah,009h,060h,0eah,00ah,060h,0eah,00ah,060h,0eah,009h,060h,0eah,008h,060h	; 6482  `..`..`..`..`..`
	defb 0eah,007h,060h,0eah,006h,060h,0eah,006h,060h,0eah,007h,060h,0eah,007h,060h,0eah	; 6492  ..`..`..`..`..`.
	defb 006h,060h,0eah,005h,060h,0eah,004h,060h,0eah,003h,060h,0eah,003h,060h,0eah,004h	; 64a2  .`..`..`..`..`..
	defb 060h,0eah,004h,060h,0eah,004h,060h,0eah,003h,060h,0eah,003h,060h,0eah,003h,060h	; 64b2  `..`..`..`..`..`
	defb 0eah,002h,060h,0eah,002h,060h,0eah,002h,060h,0eah,001h,060h,0eah,001h,060h,0eah	; 64c2  ..`..`..`..`..`.
	defb 001h,060h,0eah,000h,060h,0e9h,001h,0eah,000h,060h,0feh,001h,0e9h,005h,0c3h,0f9h	; 64d2  .`..`....`......
	defb 08eh,066h,0feh,001h,0e9h,005h,0eah,00bh,0ebh,001h,040h,0d6h,001h,001h,0d0h,0c1h	; 64e2  .f........@.....
	defb 021h,011h,001h,0f9h,035h,065h,0feh,001h,0e9h,006h,0eah,00bh,0ebh,005h,0f0h,0d6h	; 64f2  !...5e..........
	defb 001h,001h,0d1h,0c1h,071h,0eah,007h,071h,0eah,00bh,091h,0a3h,020h,070h,0ebh,007h	; 6502  ....q..q.... p..
	defb 070h,0d8h,0b7h,0eah,004h,0b3h,0c1h,0feh,001h,0e9h,005h,0eah,00bh,0ebh,001h,040h	; 6512  p..............@
	defb 0d0h,021h,011h,001h,0f9h,035h,065h,0d1h,071h,070h,0a0h,0b0h,070h,040h,020h,071h	; 6522  .!...5e.qp..p@ q
	defb 0fdh,019h,065h,0d8h,0d1h,0c1h,0b1h,0a0h,0b2h,0a1h,0b1h,0a1h,0b1h,021h,0b0h,070h	; 6532  ..e..........!.p
	defb 020h,0b0h,0a1h,0b1h,070h,0a0h,0b0h,070h,020h,0b0h,0d0h,001h,0d1h,040h,070h,0d0h	; 6542   ...p..p ....@p.
	defb 000h,0d1h,070h,090h,0d0h,000h,0d1h,071h,070h,070h,0d0h,000h,0d1h,070h,040h,0d0h	; 6552  ..p....qpp...p@.
	defb 000h,0d1h,0b0h,030h,060h,0b0h,090h,060h,0b0h,090h,0d2h,0b1h,0d1h,090h,060h,0b0h	; 6562  ...0`..`......`.
	defb 060h,030h,0b0h,0d0h,001h,0d1h,020h,040h,0d0h,000h,0d1h,070h,090h,0d0h,000h,0d1h	; 6572  `0.... @...p....
	defb 040h,0d1h,070h,090h,0d0h,001h,0d1h,070h,090h,070h,0d0h,023h,023h,0d1h,040h,0d0h	; 6582  @.p....p.p.##.@.
	defb 040h,0d1h,080h,0b0h,0d0h,040h,0d1h,0b0h,080h,0b0h,0d1h,091h,010h,040h,090h,010h	; 6592  @....@.......@..
	defb 040h,090h,0d0h,020h,0d1h,020h,060h,090h,0d0h,020h,0d1h,090h,060h,0d0h,020h,0fah	; 65a2  @.. . `.. ..`. .
	defb 0feh,001h,0e9h,005h,0c7h,0f9h,0feh,065h,0eah,00bh,0e9h,006h,0d4h,071h,0eah,00ch	; 65b2  .......e.....q..
	defb 0d3h,021h,0fbh,002h,0bah,065h,0d4h,073h,0ebh,007h,070h,0eah,00bh,079h,0eah,004h	; 65c2  .!...e.s..p..y..
	defb 073h,0c1h,0feh,001h,0eeh,001h,0e9h,005h,0eah,00ah,0ebh,001h,040h,0d1h,071h,071h	; 65d2  s...........@.qq
	defb 071h,0f9h,0feh,065h,0eah,00bh,0d4h,071h,0eah,00ch,0d3h,021h,0fbh,002h,0e6h,065h	; 65e2  q..e...q...!...e
	defb 0eah,00ah,0d4h,071h,0eah,00ch,0d3h,023h,021h,0fdh,0e3h,065h,0eah,00bh,0ebh,001h	; 65f2  ...q...#!..e....
	defb 040h,0d4h,071h,0eah,00ch,0d3h,021h,0fbh,008h,0feh,065h,0eah,00bh,0d4h,071h,0eah	; 6602  @.q...!...e...q.
	defb 00ch,0d3h,001h,0fbh,004h,00dh,066h,0eah,00bh,0d4h,0b1h,0eah,00dh,0d3h,031h,0fbh	; 6612  ......f.......1.
	defb 004h,019h,066h,0eah,00bh,0d4h,071h,0eah,00ch,0d3h,001h,0fbh,004h,025h,066h,0eah	; 6622  ..f...q......%f.
	defb 00bh,0d4h,071h,0eah,00ch,0d3h,021h,0fbh,002h,031h,066h,0eah,00ch,0d4h,0b3h,0b3h	; 6632  ..q...!..1f.....
	defb 0eah,00bh,0d4h,091h,0eah,00ch,0d3h,041h,0fbh,002h,042h,066h,0eah,00bh,0d4h,091h	; 6642  .......A..Bf....
	defb 0eah,00ch,0d3h,021h,0fbh,002h,04eh,066h,0fah,0feh,001h,0eeh,001h,0e9h,005h,0eah	; 6652  ...!..Nf........
	defb 00ah,0ebh,001h,040h,0d1h,0c1h,071h,071h,071h,0ebh,071h,0f6h,0f9h,0b0h,066h,0e9h	; 6662  ...@..qqq.q...f.
	defb 006h,0d2h,071h,070h,0a0h,0b0h,070h,040h,020h,0ebh,005h,0f0h,0d6h,001h,001h,073h	; 6672  ..qp..p@ ......s
	defb 0b0h,0d1h,020h,0ebh,007h,070h,0d8h,077h,0eah,003h,073h,0c1h,0feh,001h,0eeh,001h	; 6682  .. ..p.w..s.....
	defb 0e9h,005h,0eah,00ah,0ebh,001h,040h,0d1h,0c5h,0ebh,071h,0f6h,0f9h,0b0h,066h,0d2h	; 6692  ......@...q...f.
	defb 070h,0d1h,020h,0d2h,0b0h,0d1h,020h,0fbh,004h,0a1h,066h,0fdh,09bh,066h,0d2h,070h	; 66a2  p. ... ...f..f.p
	defb 0d1h,020h,0d2h,0b0h,0d1h,020h,0fbh,008h,0b0h,066h,0d2h,070h,0d1h,040h,000h,040h	; 66b2  . ... ...f.p.@.@
	defb 0fbh,004h,0bch,066h,0eah,00bh,0d2h,0b0h,0d1h,060h,030h,060h,0fbh,004h,0c6h,066h	; 66c2  ...f.....`0`...f
	defb 0eah,00ah,0d2h,070h,0d1h,040h,000h,040h,0fbh,004h,0d2h,066h,0d2h,070h,0d1h,020h	; 66d2  ...p.@.@...f.p.
	defb 0d2h,0b0h,0d1h,020h,0fbh,002h,0deh,066h,0d2h,040h,0b0h,080h,0b0h,0fbh,002h,0eah	; 66e2  ... ...f.@......
	defb 066h,0d2h,090h,0d1h,040h,010h,040h,0fbh,002h,0f3h,066h,0d2h,090h,0d1h,060h,020h	; 66f2  f...@.@...f...`
	defb 060h,0fbh,002h,0fdh,066h,0fah,0feh,001h,0e9h,006h,0eah,00bh,0dbh,005h,0ebh,007h	; 6702  `...f...........
	defb 043h,0f2h,020h,0f1h,041h,0d1h,0c3h,073h,0e9h,002h,077h,075h,0eah,006h,075h,0eah	; 6712  C. .A..s..wu..u.
	defb 009h,073h,0eah,00bh,0d1h,097h,093h,0eah,007h,093h,0eah,00bh,0c3h,0bbh,0eah,007h	; 6722  .s..............
	defb 0b3h,0ebh,001h,070h,0f0h,0d0h,0eah,00ah,0b7h,0eah,009h,0bbh,0f2h,020h,0f1h,041h	; 6732  ...p......... .A
	defb 0ebh,007h,043h,0eah,00bh,0d1h,073h,0eah,007h,073h,0eah,00bh,0c3h,073h,077h,073h	; 6742  ..C...s..s...sws
	defb 0eah,006h,077h,0eah,009h,073h,0ebh,002h,031h,0eah,00bh,057h,043h,057h,0e9h,004h	; 6752  ..w..s..1..WCW..
	defb 0ebh,004h,020h,027h,0eah,004h,025h,0e9h,002h,0eah,00bh,0ebh,007h,022h,0f2h,013h	; 6762  .. '..%......"..
	defb 0f1h,041h,0c7h,0d1h,043h,0eah,007h,047h,0eah,00bh,043h,05bh,057h,043h,0d1h,027h	; 6772  .A..C..G..C[WC.'
	defb 0d2h,073h,0eah,007h,077h,0eah,00bh,0d1h,023h,0eah,007h,027h,0eah,00bh,0f2h,042h	; 6782  .s..w...#..'...B
	defb 0ebh,007h,010h,04fh,0eah,007h,047h,0eah,00bh,0ebh,007h,022h,0f1h,041h,043h,0eah	; 6792  ...O..G....".AC.
	defb 007h,047h,0eah,00bh,043h,097h,0bbh,0d0h,003h,0d1h,0b7h,023h,0eah,007h,027h,0eah	; 67a2  .G..C......#..'.
	defb 00bh,0e9h,004h,0ebh,007h,010h,04bh,0eah,008h,041h,0feh,001h,0f9h,00bh,068h,0eah	; 67b2  ......K..A....h.
	defb 00bh,0d1h,053h,0eah,007h,057h,0eah,00bh,053h,077h,093h,077h,053h,047h,0eah,008h	; 67c2  ..S..W..Sw.wSG..
	defb 043h,0eah,00bh,047h,07fh,0eah,005h,07bh,0f9h,00bh,068h,0eah,00bh,0ebh,004h,030h	; 67d2  C..G...{..h....0
	defb 0d1h,063h,0eah,007h,067h,0eah,00bh,063h,067h,023h,047h,063h,0ebh,004h,073h,077h	; 67e2  .c..g..cg#Gc..sw
	defb 053h,0eah,007h,057h,0eah,00bh,023h,0eah,007h,027h,0eah,00bh,0f1h,041h,0ebh,004h	; 67f2  S..W..#..'...A..
	defb 030h,0d2h,0b3h,0d1h,007h,023h,0fdh,008h,067h,0e9h,002h,0eah,00bh,0dbh,004h,0ebh	; 6802  0....#..g.......
	defb 005h,070h,0f0h,0d1h,0c7h,093h,0eah,007h,097h,0eah,00bh,093h,0b7h,0d0h,00bh,0eah	; 6812  .p..............
	defb 007h,003h,0eah,005h,007h,0eah,00bh,0d1h,073h,0eah,007h,077h,0eah,00bh,073h,0b7h	; 6822  ........s..w..s.
	defb 0d0h,00bh,0eah,007h,003h,0eah,005h,007h,0fah,0feh,001h,0e9h,002h,0eah,00ch,0dbh	; 6832  ................
	defb 003h,0ebh,004h,081h,0d3h,007h,043h,077h,003h,017h,0ebh,005h,070h,077h,0eah,009h	; 6842  ......Cw....pw..
	defb 073h,0ebh,004h,081h,0eah,00ch,013h,027h,053h,093h,0b3h,0d2h,003h,0d6h,003h,002h	; 6852  s......'S.......
	defb 0ebh,005h,082h,0d3h,0b7h,07bh,023h,0d8h,0ebh,004h,081h,007h,043h,077h,003h,017h	; 6862  .....{#.....Cw..
	defb 07bh,013h,02bh,023h,043h,053h,0d4h,07bh,0feh,004h,0d0h,003h,003h,003h,0feh,001h	; 6872  {.+#CS.{........
	defb 0dbh,006h,0ebh,004h,081h,0d3h,00bh,0feh,004h,0d0h,017h,0feh,001h,0ebh,004h,081h	; 6882  ................
	defb 0d3h,003h,0d4h,05bh,0feh,004h,017h,0feh,001h,0ebh,004h,081h,053h,0d4h,07bh,0feh	; 6892  ...[........S.{.
	defb 004h,017h,0feh,001h,0ebh,004h,081h,073h,0d3h,00bh,0feh,004h,003h,003h,003h,0fbh	; 68a2  .......s........
	defb 002h,080h,068h,0f9h,0fch,068h,0dbh,004h,0ebh,004h,070h,0eah,00ch,0f0h,0d3h,02bh	; 68b2  ..h..h....p....+
	defb 02bh,07bh,05bh,0eah,00ch,047h,0eah,009h,043h,0eah,00ch,00bh,02bh,04bh,0dch,0f9h	; 68c2  +{[..G..C...+K..
	defb 0fch,068h,0dbh,004h,0eah,00ch,0f0h,0ebh,015h,050h,0d3h,02bh,0d3h,00bh,0d4h,0bbh	; 68d2  .h.......P.+....
	defb 09bh,0dbh,002h,0ebh,003h,070h,077h,073h,0eah,007h,077h,0eah,00ch,073h,0eah,003h	; 68e2  .....pws..w..s..
	defb 077h,0eah,00ch,073h,097h,0b3h,0dch,0fdh,03bh,068h,0feh,001h,0eah,00ch,0ebh,006h	; 68f2  w..s.....h......
	defb 020h,0f2h,00ah,0f0h,0d3h,05bh,0eah,008h,05bh,0eah,00bh,0ebh,004h,020h,0f1h,041h	; 6902   ....[..[.... .A
	defb 0d2h,053h,043h,053h,0d1h,007h,0eah,008h,003h,0ebh,006h,020h,0f0h,0eah,00ch,0d3h	; 6912  .SCS....... ....
	defb 04bh,0eah,008h,04bh,0eah,00bh,0ebh,004h,020h,0f1h,041h,0d2h,043h,033h,043h,0d1h	; 6922  K..K.... .A.C3C.
	defb 007h,0eah,008h,003h,0fah,0feh,001h,0e9h,006h,0eah,00bh,0dbh,005h,0ebh,007h,043h	; 6932  ...............C
	defb 0f2h,020h,0f1h,041h,0d1h,0c3h,043h,0e9h,002h,047h,043h,0ebh,002h,070h,0eah,00ah	; 6942  . .A..C..GC..p..
	defb 0eeh,001h,0d1h,077h,073h,0efh,0eah,00bh,0ebh,007h,044h,0eah,00bh,0d1h,057h,053h	; 6952  ...ws.....D...WS
	defb 0eah,006h,053h,0eah,00bh,0c3h,07bh,0eah,006h,073h,0feh,004h,0d0h,007h,003h,017h	; 6962  ..S...{..s......
	defb 0feh,001h,0ebh,007h,043h,0eah,00bh,0d1h,043h,0eah,006h,043h,0eah,00bh,0c3h,043h	; 6972  ....C...C..C...C
	defb 047h,043h,0ebh,002h,070h,0eeh,001h,0eah,00ah,0d1h,077h,073h,0efh,0eah,00bh,0ebh	; 6982  GC..p.....ws....
	defb 002h,031h,0eah,00bh,027h,003h,027h,0e9h,004h,0ebh,004h,020h,0d2h,0b7h,0eah,004h	; 6992  .1..'.'.... ....
	defb 0b5h,0e9h,002h,0eah,00bh,0ebh,007h,022h,0f2h,013h,0f1h,041h,0c7h,0d1h,003h,0eah	; 69a2  ......."...A....
	defb 007h,007h,0eah,00bh,003h,02bh,027h,003h,0d2h,0b7h,0d2h,023h,0eah,007h,027h,0eah	; 69b2  .....+'....#..'.
	defb 00bh,0d2h,0b3h,0eah,007h,0b7h,0eah,00bh,0ebh,007h,010h,0d1h,00fh,0eah,007h,007h	; 69c2  ................
	defb 0ebh,007h,022h,0eah,00bh,003h,0eah,007h,007h,0eah,00bh,003h,057h,07bh,093h,077h	; 69d2  ..".........W{.w
	defb 0d2h,0b3h,0eah,007h,0b7h,0eah,00bh,0e9h,004h,0ebh,007h,010h,0d1h,00bh,0eah,008h	; 69e2  ................
	defb 001h,0f9h,042h,06ah,0eah,00bh,023h,0eah,006h,027h,0eah,00bh,023h,047h,053h,047h	; 69f2  ..Bj..#..'..#GSG
	defb 023h,007h,0eah,008h,003h,0eah,00bh,007h,04fh,0eah,005h,04bh,0eah,00dh,0f9h,042h	; 6a02  #.......O..K...B
	defb 06ah,0eah,00bh,0ebh,004h,030h,023h,0eah,006h,027h,0eah,00bh,023h,027h,0d2h,0b3h	; 6a12  j....0#..'..#'..
	defb 0d1h,007h,023h,0ebh,004h,073h,047h,023h,0eah,006h,027h,0eah,00bh,0d2h,0b3h,0eah	; 6a22  ..#..sG#..'.....
	defb 006h,0b7h,0eah,00bh,0ebh,004h,030h,0f1h,041h,0d2h,073h,097h,0b3h,0fdh,037h,069h	; 6a32  ......0.A.s...7i
	defb 0e9h,002h,0eah,00bh,0dbh,004h,0ebh,005h,070h,0f0h,0d1h,0c7h,053h,0eah,006h,057h	; 6a42  ........p...S..W
	defb 0eah,00bh,053h,077h,09bh,0eah,007h,093h,0eah,005h,097h,0eah,00bh,0d1h,043h,0eah	; 6a52  ..Sw..........C.
	defb 006h,047h,0eah,00bh,043h,077h,07bh,0eah,007h,073h,0eah,005h,077h,0fah,0feh,001h	; 6a62  .G..Cw{..s..w...
	defb 0e9h,006h,0f2h,010h,0f1h,043h,0ebh,004h,040h,0eah,00bh,0d2h,023h,093h,081h,093h	; 6a72  .....C..@...#...
	defb 053h,021h,021h,091h,081h,093h,051h,0ebh,005h,010h,0f2h,005h,0f1h,043h,0d6h,002h	; 6a82  S!!...Q......C..
	defb 004h,0d1h,023h,013h,001h,0d2h,0b3h,0adh,0d8h,0eah,007h,0a1h,0eah,005h,0a1h,0fbh	; 6a92  ..#.............
	defb 002h,070h,06ah,0f0h,0ebh,003h,070h,0dbh,004h,0c1h,0eah,00bh,0d2h,091h,091h,091h	; 6aa2  .pj...p.........
	defb 083h,091h,0eah,009h,091h,0eah,007h,091h,0fbh,002h,0ach,06ah,0eah,00bh,091h,091h	; 6ab2  ...........j....
	defb 091h,083h,093h,0ech,0eah,008h,0f1h,042h,0d7h,001h,004h,0a1h,0b1h,0eah,009h,0d1h	; 6ac2  .......B........
	defb 001h,011h,0eah,00ah,021h,031h,041h,0eah,008h,051h,0d8h,0fdh,070h,06ah,0feh,001h	; 6ad2  ....!1A..Q..pj..
	defb 0e9h,006h,0eah,00ch,0dbh,007h,0ebh,003h,070h,0d3h,023h,0d7h,008h,003h,091h,091h	; 6ae2  ........p.#.....
	defb 0d8h,021h,021h,0d7h,008h,003h,093h,0d8h,0fbh,002h,0e0h,06ah,0d4h,073h,0d7h,008h	; 6af2  .!!........j.s..
	defb 003h,0d3h,021h,021h,0d8h,0fbh,004h,0feh,06ah,0fch,002h,0e0h,06ah,0dbh,006h,0ebh	; 6b02  ..!!....j...j...
	defb 003h,060h,0d7h,030h,003h,0d4h,09dh,091h,09dh,091h,097h,0d8h,083h,093h,0ech,0d7h	; 6b12  .`.0............
	defb 010h,005h,0eah,00ah,0d4h,0a1h,0b1h,0d3h,001h,0eah,00ah,011h,021h,031h,0eah,00bh	; 6b22  ............!1..
	defb 041h,0eah,009h,051h,0d8h,0f0h,0fdh,0e0h,06ah,0feh,001h,0e9h,006h,0f2h,010h,0f1h	; 6b32  A..Q....j.......
	defb 043h,0ebh,004h,040h,0eah,00bh,0d3h,093h,0d2h,053h,051h,053h,023h,0eeh,003h,0d3h	; 6b42  C..@.....SQS#...
	defb 091h,091h,0efh,0d2h,051h,051h,053h,021h,0eeh,001h,0ech,0eah,008h,0d1h,025h,013h	; 6b52  ....QQS!......%.
	defb 001h,0d2h,0b3h,0abh,0eah,007h,0a1h,0eah,005h,0a1h,0d8h,0fbh,002h,03bh,06bh,0f0h	; 6b62  ..............k.
	defb 0ebh,003h,070h,0dbh,004h,0c1h,0eah,00bh,0d2h,041h,041h,041h,043h,041h,0eah,009h	; 6b72  ..p......AAACA..
	defb 041h,0eah,007h,041h,0fbh,002h,078h,06bh,0eah,00bh,041h,041h,041h,043h,043h,0ech	; 6b82  A..A..xk..AAACC.
	defb 0eah,008h,0f1h,043h,0d7h,001h,004h,061h,071h,0eah,009h,081h,091h,0eah,00ah,0a1h	; 6b92  ...C...aq.......
	defb 0b1h,0d1h,001h,0eah,007h,011h,0d8h,0fdh,03bh,06bh,0feh,001h,0e9h,001h,0f1h,041h	; 6ba2  .........k.....A
	defb 0eah,00ah,0edh,009h,0ebh,087h,070h,0d3h,0f9h,0eeh,06ch,023h,0f0h,0ech,0f9h,000h	; 6bb2  ......p...l#....
	defb 06dh,0d1h,020h,041h,051h,0ebh,005h,070h,042h,052h,073h,0edh,003h,0eah,00bh,0ebh	; 6bc2  m. AQ..pBRs.....
	defb 087h,070h,0d6h,012h,010h,0d1h,073h,0d8h,0eah,007h,071h,0f9h,000h,06dh,020h,050h	; 6bd2  .p....s...q..m P
	defb 040h,021h,0ebh,003h,0f0h,000h,000h,001h,0eah,005h,000h,0eah,00bh,000h,0eah,005h	; 6be2  @!..............
	defb 000h,0eah,00bh,000h,001h,0ebh,002h,080h,0d7h,004h,003h,0eah,00bh,0d4h,000h,0d3h	; 6bf2  ................
	defb 000h,0fbh,003h,0ffh,06bh,0d8h,0f0h,0ebh,002h,070h,0f0h,0d2h,091h,091h,090h,0b1h	; 6c02  ....k....p......
	defb 0d1h,001h,001h,000h,0d2h,0b1h,091h,0ebh,007h,070h,070h,0eah,003h,070h,0eah,00bh	; 6c12  .........pp..p..
	defb 080h,0eah,003h,080h,0eah,00bh,090h,0eah,003h,091h,0eah,00bh,070h,0eah,003h,070h	; 6c22  ............p..p
	defb 0eah,00bh,070h,0eah,003h,070h,0ebh,003h,080h,0eah,00bh,080h,090h,0b0h,090h,070h	; 6c32  ..p..p.........p
	defb 0ebh,007h,070h,050h,0eah,003h,050h,0eah,00bh,050h,0eah,003h,050h,0ebh,002h,070h	; 6c42  ..pP..P..P..P..p
	defb 0eah,00bh,050h,071h,091h,091h,090h,071h,051h,0ebh,005h,091h,0d7h,004h,001h,040h	; 6c52  ..Pq...qQ......@
	defb 0d3h,070h,0d2h,040h,051h,0d3h,080h,0d2h,050h,061h,0d3h,090h,0d2h,060h,072h,071h	; 6c62  .p.@Q...Pa...`rq
	defb 0d8h,0f0h,0ebh,003h,070h,0d2h,090h,0eah,003h,090h,0eah,00bh,090h,0eah,003h,090h	; 6c72  ....p...........
	defb 0eah,00bh,090h,0b1h,0ebh,002h,070h,0d1h,001h,001h,000h,0d2h,0b1h,091h,0ebh,003h	; 6c82  ......p.........
	defb 070h,070h,0eah,003h,070h,0eah,00bh,070h,0eah,003h,070h,0ebh,002h,070h,0eah,00bh	; 6c92  pp..p..p..p..p..
	defb 070h,0b1h,0d1h,001h,001h,000h,0d2h,071h,041h,0ebh,002h,030h,091h,021h,091h,020h	; 6ca2  p......qA..0.!.
	defb 090h,0eah,007h,090h,0ebh,003h,080h,0eah,00bh,020h,050h,090h,0d1h,000h,0d2h,0b0h	; 6cb2  ......... P.....
	defb 091h,0f2h,014h,0f1h,041h,0ebh,005h,022h,0d6h,003h,001h,0d2h,0b2h,0b2h,0b1h,0eah	; 6cc2  ....A.."........
	defb 005h,0b1h,0d8h,0eah,00bh,0ebh,004h,080h,0d6h,001h,001h,0d2h,071h,0d1h,070h,0eah	; 6cd2  ............q.p.
	defb 009h,070h,0eah,008h,070h,0eah,007h,070h,0d8h,0fdh,0c0h,06bh,003h,023h,043h,053h	; 6ce2  .p..p..p...k.#CS
	defb 073h,093h,0b3h,0d2h,003h,023h,043h,053h,073h,093h,0b3h,0d1h,003h,0fah,0feh,001h	; 6cf2  s....#CSs.......
	defb 0e9h,006h,0eah,00bh,0ebh,003h,070h,0f2h,01bh,0f1h,041h,0d1h,041h,0d2h,071h,0d1h	; 6d02  ......p...A.A.q.
	defb 041h,0d2h,070h,0d1h,041h,041h,0d2h,070h,0d1h,051h,041h,0f1h,042h,0ebh,005h,070h	; 6d12  A.p.AA.p.QA.B..p
	defb 052h,072h,093h,0ebh,003h,070h,0f1h,041h,071h,051h,041h,021h,0d2h,071h,0d1h,021h	; 6d22  Rr...p.AqQA!.q.!
	defb 0d2h,070h,0d1h,021h,021h,0fah,0feh,001h,0e9h,001h,0f1h,041h,0eah,009h,0edh,008h	; 6d32  .p.!!......A....
	defb 0ebh,087h,070h,0d4h,093h,0b3h,0d3h,003h,023h,043h,053h,073h,093h,0b3h,0d2h,003h	; 6d42  ..p.....#CSs....
	defb 023h,043h,053h,073h,093h,0b3h,0f0h,0ech,0feh,001h,0e9h,006h,0eah,00ch,0ebh,002h	; 6d52  #CSs............
	defb 070h,0d4h,001h,0d3h,001h,0d4h,001h,0d3h,000h,0d4h,001h,000h,001h,001h,011h,0d4h	; 6d62  p...............
	defb 021h,0d3h,021h,0d4h,021h,0d3h,020h,0d4h,021h,020h,021h,021h,0d4h,091h,071h,0d3h	; 6d72  !.!.!. .! !!..q.
	defb 071h,0d4h,071h,0d3h,070h,0d4h,071h,070h,071h,071h,071h,001h,0d3h,001h,0d4h,001h	; 6d82  q.q.p.qpqqq.....
	defb 0d3h,000h,0d4h,001h,000h,0d3h,001h,0d4h,001h,0d3h,001h,0d4h,001h,0d3h,001h,0d4h	; 6d92  ................
	defb 001h,0d3h,000h,0d4h,001h,000h,0d3h,001h,0d4h,001h,0d3h,001h,0d4h,021h,0d3h,021h	; 6da2  .............!.!
	defb 0d4h,021h,0d3h,020h,0d4h,021h,020h,0d3h,021h,0d4h,021h,0d3h,021h,0d4h,071h,0d3h	; 6db2  .!. .! .!.!.!.q.
	defb 071h,0d4h,071h,0d3h,070h,0d4h,071h,070h,0d3h,071h,0d4h,071h,0d3h,071h,0eah,00ch	; 6dc2  q.q.p.qp.q.q.q..
	defb 0d4h,000h,000h,001h,0eah,007h,000h,0eah,00ch,050h,0eah,007h,050h,0eah,00ch,050h	; 6dd2  .........P..P..P
	defb 003h,0eah,00bh,0e9h,002h,0d2h,005h,0eah,00ah,0e9h,001h,0d3h,0b0h,0a0h,090h,080h	; 6de2  ................
	defb 070h,060h,050h,040h,030h,020h,010h,000h,0feh,001h,0e9h,006h,0eah,00ch,0ebh,003h	; 6df2  p`P@0 ..........
	defb 070h,0d4h,051h,0eah,008h,051h,0eah,00ch,051h,0eah,008h,050h,0eah,00ch,051h,051h	; 6e02  p.Q..Q..Q..P..QQ
	defb 0d3h,000h,0d4h,051h,0eah,008h,051h,0eah,00ch,0d3h,001h,0eah,008h,001h,0eah,00ch	; 6e12  ...Q..Q.........
	defb 001h,0eah,008h,000h,0eah,00ch,000h,0eah,008h,000h,0eah,00ch,001h,070h,001h,0eah	; 6e22  .............p..
	defb 008h,001h,0eah,00ch,0d4h,071h,0eah,008h,071h,0eah,00ch,071h,0eah,008h,070h,0eah	; 6e32  .....q..q..q..p.
	defb 00ch,070h,0eah,008h,070h,0eah,00ch,071h,0d3h,020h,0d4h,071h,0eah,008h,071h,0eah	; 6e42  .p..p..q. .q..q.
	defb 00ch,001h,0d3h,001h,0d4h,011h,0d3h,011h,0d4h,021h,0d3h,021h,0d4h,031h,0d3h,031h	; 6e52  .........!.!.1.1
	defb 0feh,001h,0e9h,006h,0eah,00ch,0ebh,003h,070h,0d4h,051h,0eah,008h,051h,0eah,00ch	; 6e62  ........p.Q..Q..
	defb 051h,0eah,008h,050h,0eah,00ch,050h,0eah,008h,050h,0eah,00ch,051h,0d3h,000h,0d4h	; 6e72  Q..P..P..P..Q...
	defb 051h,0eah,008h,051h,0eah,00ch,0d3h,001h,0eah,008h,001h,0eah,00ch,001h,0eah,008h	; 6e82  Q..Q............
	defb 000h,0eah,00ch,000h,0eah,008h,000h,0eah,00ch,001h,070h,001h,0eah,008h,001h,0eah	; 6e92  ..........p.....
	defb 00ch,021h,0eah,008h,021h,0eah,00ch,021h,0eah,008h,020h,0eah,00ch,020h,0eah,008h	; 6ea2  .!..!..!.. .. ..
	defb 020h,0eah,00ch,021h,020h,021h,0eah,008h,021h,0eah,00ch,0ebh,005h,022h,0d3h,072h	; 6eb2   ..! !..!....".r
	defb 072h,071h,0eah,004h,071h,0ebh,004h,080h,0eah,00ch,0d6h,003h,002h,0d4h,071h,0d3h	; 6ec2  rq..q.........q.
	defb 073h,0d8h,0fdh,05ah,06dh,0f8h,008h,0feh,001h,0e9h,001h,0eah,006h,0eeh,002h,0ech	; 6ed2  s..Zm...........
	defb 0d3h,003h,0f9h,0eeh,06ch,0f0h,0ech,0efh,0f8h,002h,0f9h,01bh,070h,0d1h,001h,021h	; 6ee2  ....l.......p..!
	defb 0ebh,005h,070h,0d1h,002h,022h,043h,0edh,003h,0ebh,087h,070h,0d6h,012h,010h,0d1h	; 6ef2  ..p.."C....p....
	defb 043h,0eah,007h,041h,0d8h,0f9h,01bh,070h,0d1h,020h,000h,0d2h,0b1h,0ebh,003h,0f0h	; 6f02  C..A...p. ......
	defb 070h,070h,071h,0eah,005h,070h,0eah,00bh,090h,0eah,005h,090h,0eah,00bh,090h,073h	; 6f12  ppq..p.........s
	defb 0e9h,002h,0eah,00bh,0d3h,075h,0e9h,001h,0eah,00ah,060h,050h,040h,030h,020h,010h	; 6f22  .....u....`P@0 .
	defb 000h,0d4h,0b0h,0a0h,090h,080h,070h,0e9h,006h,0eah,00bh,0ebh,002h,070h,0f0h,0d2h	; 6f32  ......p......p..
	defb 051h,051h,050h,071h,091h,091h,090h,071h,051h,0ebh,007h,070h,040h,0eah,003h,040h	; 6f42  QQPq...qQ..p@..@
	defb 0eah,00bh,040h,0eah,003h,040h,0eah,00bh,040h,0eah,003h,041h,0eah,00bh,040h,0eah	; 6f52  ..@..@..@..A..@.
	defb 003h,040h,0eah,00bh,040h,0eah,003h,040h,0ebh,003h,080h,0eah,00bh,040h,050h,070h	; 6f62  .@..@..@.....@Pp
	defb 050h,040h,0ebh,007h,070h,020h,0eah,003h,020h,0eah,00bh,020h,0eah,003h,020h,0ebh	; 6f72  P@..p .. .. .. .
	defb 002h,070h,0eah,00bh,020h,041h,051h,051h,050h,041h,021h,0ebh,005h,091h,0d7h,004h	; 6f82  .p.. AQQPA!.....
	defb 001h,000h,0d3h,040h,0d2h,000h,021h,0d3h,040h,0d2h,020h,031h,0d3h,020h,0d2h,030h	; 6f92  ...@..!.@. 1. .0
	defb 042h,041h,0d8h,0eah,00bh,0ebh,003h,070h,0d2h,050h,0eah,003h,050h,0eah,00bh,050h	; 6fa2  BA.....p.P..P..P
	defb 0eah,003h,050h,0ebh,002h,070h,0eah,00bh,050h,071h,091h,091h,090h,071h,051h,0ebh	; 6fb2  ..P..p..Pq...qQ.
	defb 003h,070h,040h,0eah,003h,040h,0eah,00bh,040h,0eah,003h,040h,0ebh,002h,070h,0eah	; 6fc2  .p@..@..@..@..p.
	defb 00bh,040h,071h,071h,071h,070h,041h,001h,0ebh,002h,030h,051h,0d3h,091h,0d2h,051h	; 6fd2  .@qqqpA...0Q...Q
	defb 0d3h,090h,0d2h,050h,0eah,007h,050h,0ebh,003h,080h,0eah,00bh,0d3h,090h,0d2h,020h	; 6fe2  ...P..P........
	defb 050h,090h,070h,051h,0f2h,014h,0f1h,041h,0ebh,005h,022h,072h,072h,071h,0eah,005h	; 6ff2  P.pQ...A.."rrq..
	defb 071h,0eah,00bh,0ebh,004h,080h,0d6h,001h,001h,0d3h,0b1h,0d2h,0b0h,0eah,009h,0b0h	; 7002  q...............
	defb 0eah,008h,0b0h,0eah,007h,0b0h,0f9h,0ech,06eh,0feh,001h,0e9h,006h,0eah,00bh,0f2h	; 7012  ........n.......
	defb 01bh,0f1h,041h,0ebh,003h,070h,0d1h,001h,0d2h,041h,0d1h,001h,0d2h,040h,0d1h,001h	; 7022  ..A..p...A...@..
	defb 001h,0d2h,040h,0d1h,021h,001h,0ebh,005h,070h,0f1h,042h,0d1h,022h,042h,053h,0f1h	; 7032  ..@.!...p.B."BS.
	defb 041h,0ebh,003h,070h,041h,021h,001h,0d2h,0b1h,021h,0b1h,020h,0b1h,0b1h,0b0h,0fah	; 7042  A..pA!...!. ....
	defb 0feh,002h,0e2h,003h,070h,06ah,020h,06ah,090h,05eh,030h,05eh,0a0h,04ah,030h,04ah	; 7052  ....pj j.^0^.J0J
	defb 0a0h,03fh,050h,03fh,0b0h,035h,040h,035h,0a0h,02fh,040h,02fh,090h,025h,030h,025h	; 7062  .?P?.5@5./@/.%0%
	defb 080h,01fh,020h,01fh,070h,035h,020h,035h,050h,02fh,020h,02fh,040h,025h,010h,025h	; 7072  .. .p5 5P/ /@%.%
	defb 030h,01fh,010h,01fh,0ffh,0feh,002h,0e2h,003h,020h,015h,030h,017h,040h,019h,050h	; 7082  0........ .0.@.P
	defb 01bh,050h,01dh,050h,01fh,070h,015h,080h,017h,080h,019h,090h,01bh,0a0h,01dh,0a0h	; 7092  .P.P.p..........
	defb 01fh,090h,020h,080h,021h,0e2h,003h,070h,01fh,090h,021h,070h,023h,080h,021h,060h	; 70a2  .. .!..p..!p#.!`
	defb 023h,070h,021h,050h,023h,060h,021h,040h,023h,050h,021h,030h,023h,040h,021h,020h	; 70b2  #p!P#`!@#P!0#@!
	defb 023h,030h,021h,010h,023h,030h,021h,010h,023h,020h,021h,010h,023h,020h,021h,010h	; 70c2  #0!.#0!.# !.# !.
	defb 023h,0ffh,0feh,002h,0e2h,003h,0a0h,050h,040h,028h,0a0h,030h,060h,050h,040h,023h	; 70d2  #......P@(.0`P@#
	defb 060h,030h,0a0h,01bh,070h,020h,060h,030h,070h,01bh,050h,028h,060h,030h,050h,050h	; 70e2  `0..p `0p.P(`0PP
	defb 050h,020h,040h,030h,030h,01bh,030h,028h,020h,030h,020h,01bh,0ffh,0feh,002h,0e2h	; 70f2  P @00.0( 0 .....
	defb 001h,090h,030h,090h,037h,090h,033h,0a0h,02fh,0a0h,029h,090h,025h,080h,021h,070h	; 7102  ..0.7.3./.).%.!p
	defb 024h,060h,021h,040h,030h,040h,037h,040h,033h,040h,02fh,040h,029h,030h,025h,030h	; 7112  $`!@0@7@3@/@)0%0
	defb 021h,030h,024h,020h,030h,010h,037h,020h,02fh,010h,029h,0f4h,025h,021h,024h,021h	; 7122  !0$ 0.7 /.).%!$!
	defb 0f6h,0ffh,0feh,002h,0e1h,001h,0e4h,000h,0e5h,000h,002h,000h,000h,0e1h,001h,0e4h	; 7132  ................
	defb 000h,0e5h,000h,001h,000h,000h,0e8h,0e4h,00fh,009h,0e4h,004h,0e1h,003h,008h,0e4h	; 7142  ................
	defb 003h,006h,004h,0e1h,002h,003h,002h,001h,0ffh,0feh,002h,0e3h,001h,0e4h,01fh,070h	; 7152  ...............p
	defb 00dh,0e4h,000h,040h,020h,0e2h,001h,0c0h,045h,030h,022h,0b0h,043h,060h,044h,000h	; 7162  ...@ ...E0".C`D.
	defb 000h,090h,043h,000h,000h,0b0h,045h,020h,022h,090h,043h,050h,044h,080h,043h,0e0h	; 7172  ..C...E ".CPD.C.
	defb 002h,0e2h,001h,080h,045h,020h,022h,0a0h,043h,060h,044h,0e0h,002h,0e2h,001h,090h	; 7182  ....E ".C`D.....
	defb 043h,060h,045h,020h,022h,080h,043h,040h,044h,070h,045h,020h,022h,050h,043h,040h	; 7192  C`E ".C@DpE "PC@
	defb 044h,050h,043h,000h,000h,040h,043h,030h,045h,010h,022h,030h,043h,020h,044h,030h	; 71a2  DPC..@C0E."0C D0
	defb 045h,010h,022h,030h,043h,020h,044h,010h,043h,0ffh,0feh,002h,0e2h,001h,0b0h,046h	; 71b2  E."0C D.C......F
	defb 0a0h,045h,0e4h,003h,020h,043h,0e2h,001h,0a0h,045h,0e3h,001h,0e4h,000h,040h,045h	; 71c2  .E.. C...E....@E
	defb 0e2h,001h,090h,043h,000h,000h,080h,045h,090h,043h,080h,045h,0e3h,001h,020h,045h	; 71d2  ...C...E.C.E.. E
	defb 0e2h,001h,0a0h,043h,000h,000h,070h,045h,050h,043h,000h,000h,040h,045h,030h,043h	; 71e2  ...C..pEPC..@E0C
	defb 0e3h,001h,010h,045h,0e2h,001h,020h,045h,010h,043h,0e0h,005h,0e2h,001h,060h,045h	; 71f2  ...E.. E.C....`E
	defb 010h,045h,060h,043h,000h,000h,050h,045h,060h,043h,050h,045h,000h,045h,070h,043h	; 7202  .E`C..PE`CPE.EpC
	defb 000h,000h,040h,045h,020h,043h,000h,000h,010h,045h,000h,043h,0ffh,0feh,002h,0e2h	; 7212  ..@E C...E.C....
	defb 001h,0a0h,020h,050h,01bh,0e2h,002h,0c0h,019h,090h,015h,0b0h,016h,0a0h,015h,0a0h	; 7222  .. P............
	defb 016h,0a0h,015h,090h,016h,090h,015h,080h,016h,080h,015h,070h,016h,070h,015h,060h	; 7232  ...........p.p.`
	defb 016h,060h,015h,050h,016h,050h,015h,040h,016h,030h,015h,030h,016h,020h,015h,020h	; 7242  .`.P.P.@.0.0. .
	defb 016h,010h,015h,0ffh,0feh,002h,0e2h,001h,0a0h,093h,0b0h,085h,0b0h,078h,0b0h,06ch	; 7252  .............x.l
	defb 0b0h,062h,020h,059h,000h,000h,000h,000h,0c0h,056h,0b0h,051h,020h,056h,070h,058h	; 7262  .b Y.....V.Q VpX
	defb 060h,053h,010h,056h,000h,054h,000h,058h,060h,056h,050h,054h,040h,058h,030h,054h	; 7272  `S.V.T.X`VPT@X0T
	defb 000h,056h,000h,054h,000h,058h,030h,054h,030h,058h,020h,056h,010h,056h,0ffh,0feh	; 7282  .V.T.X0T0X V.V..
	defb 002h,0e1h,001h,0e4h,000h,009h,007h,005h,004h,003h,002h,001h,000h,0e2h,001h,0e5h	; 7292  ................
	defb 000h,000h,080h,000h,056h,0ffh,0feh,002h,0e3h,001h,0e4h,000h,040h,056h,060h,050h	; 72a2  ....V.......@V`P
	defb 080h,04ah,0e2h,001h,080h,046h,080h,03eh,070h,036h,070h,030h,070h,02ah,070h,028h	; 72b2  .J...F.>p6p0p*p(
	defb 070h,026h,060h,02bh,040h,02fh,020h,031h,020h,036h,020h,034h,010h,037h,010h,038h	; 72c2  p&`+@/ 1 6 4.7.8
	defb 0ffh,0feh,002h,0e2h,007h,0e5h,00ah,000h,008h,0c0h,0d5h,0e2h,002h,0e8h,000h,000h	; 72d2  ................
	defb 0e2h,00eh,0e5h,00ah,000h,007h,0c0h,0d5h,0ffh,0feh,002h,0e2h,001h,050h,097h,080h	; 72e2  .............P..
	defb 091h,090h,095h,090h,089h,080h,07fh,0ffh,0feh,002h,0e2h,001h,070h,040h,080h,030h	; 72f2  ............p@.0
	defb 050h,024h,060h,022h,020h,021h,0ffh,0feh,002h,0e2h,005h,0e5h,009h,002h,000h,000h	; 7302  P$`" !..........
	defb 0a0h,0e0h,003h,0e2h,003h,0e5h,009h,001h,000h,000h,065h,0e8h,0e0h,01dh,0feh,002h	; 7312  ..........e.....
	defb 0e2h,001h,080h,070h,090h,099h,0a0h,0aah,0a0h,099h,090h,088h,050h,077h,0c0h,066h	; 7322  ...p........Pw.f
	defb 0c0h,055h,0b0h,050h,0b0h,045h,0a0h,040h,090h,035h,080h,040h,070h,045h,060h,050h	; 7332  .U.P.E.@.5.@pE`P
	defb 050h,055h,040h,060h,040h,066h,040h,055h,040h,050h,030h,045h,030h,040h,020h,035h	; 7342  PU@`@f@U@P0E0@ 5
	defb 020h,040h,010h,045h,010h,040h,010h,035h,0ffh,0feh,002h,0e3h,001h,0e4h,00ah,090h	; 7352   @.E.@.5........
	defb 045h,040h,043h,0e2h,001h,000h,000h,070h,045h,080h,043h,090h,045h,000h,000h,080h	; 7362  E@C....pE.C.E...
	defb 043h,000h,000h,080h,045h,070h,043h,000h,000h,060h,045h,050h,043h,000h,000h,050h	; 7372  C...EpC..`EPC..P
	defb 042h,000h,000h,030h,044h,020h,042h,000h,000h,020h,044h,010h,042h,020h,044h,010h	; 7382  B..0D B.. D.B D.
	defb 042h,0ffh,0feh,002h,0e2h,001h,061h,08dh,081h,0b1h,081h,0d0h,081h,0b7h,081h,09eh	; 7392  B.....a.........
	defb 071h,0c0h,0ffh,0feh,002h,0e2h,003h,080h,033h,0e2h,005h,0a0h,020h,060h,020h,040h	; 73a2  q.......3... ` @
	defb 020h,030h,020h,020h,020h,010h,020h,0ffh,0feh,002h,0e3h,004h,0e5h,009h,01ah,000h	; 73b2   0   . .........
	defb 001h,090h,0e3h,090h,0e5h,009h,04ah,000h,001h,090h,0ffh,0feh,002h,0e2h,001h,044h	; 73c2  ......J........D
	defb 0bch,0e2h,003h,0c3h,0bah,0c4h,0bch,0e2h,005h,0c4h,0bah,0e2h,003h,0b4h,0bch,0b4h	; 73d2  ................
	defb 0bah,0b4h,0bch,0a4h,0bah,0a4h,0bch,0a4h,0bah,0a4h,0bch,0a4h,0bah,0a4h,0bch,084h	; 73e2  ................
	defb 0bah,094h,0bch,094h,0bah,074h,0bch,084h,0bah,084h,0bch,064h,0bah,074h,0bch,074h	; 73f2  .....t.....d.t.t
	defb 0bah,054h,0bch,064h,0bah,064h,0bch,044h,0bah,054h,0bch,054h,0bah,034h,0bch,044h	; 7402  .T.d.d.D.T.T.4.D
	defb 0bah,044h,0bch,024h,0bah,034h,0bch,034h,0bah,01ah,0bch,024h,0bah,024h,0bch,014h	; 7412  .D.$.4.4...$.$..
	defb 0bah,0ffh,0feh,002h,0e2h,001h,045h,0f0h,0e2h,003h,0c3h,0f0h,0c3h,0f3h,0e2h,005h	; 7422  ......E.........
	defb 0c3h,0f0h,0e2h,003h,0b3h,0f3h,0b3h,0f0h,0b3h,0f3h,0a3h,0f0h,0a3h,0f3h,0a3h,0f0h	; 7432  ................
	defb 0a3h,0f3h,0a3h,0f0h,0a3h,0f3h,083h,0f0h,093h,0f3h,093h,0f0h,073h,0f3h,083h,0f0h	; 7442  ............s...
	defb 083h,0f3h,063h,0f0h,073h,0f3h,073h,0f0h,053h,0f3h,063h,0f0h,063h,0f3h,043h,0f0h	; 7452  ..c.s.s.S.c.c.C.
	defb 053h,0f3h,053h,0f0h,033h,0f3h,043h,0f0h,043h,0f3h,023h,0f0h,033h,0f3h,033h,0f0h	; 7462  S.S.3.C.C.#.3.3.
	defb 013h,0f3h,023h,0f0h,023h,0f3h,013h,0f0h,0ffh,0feh,001h,0e9h,002h,0ebh,006h,080h	; 7472  ..#.#...........
	defb 0eah,006h,0d4h,070h,0f9h,01ah,075h,050h,060h,0eah,00bh,0e9h,006h,0ebh,001h,060h	; 7482  ...p..uP`......`
	defb 070h,070h,073h,0c3h,0e9h,007h,0ebh,003h,080h,071h,081h,091h,0e9h,001h,0c0h,0e9h	; 7492  pps......q......
	defb 003h,0d3h,0f9h,03bh,075h,0feh,001h,0e9h,002h,0ebh,006h,080h,0eah,006h,0d4h,072h	; 74a2  ....u..........r
	defb 0f9h,01ah,075h,0eah,00bh,0e9h,006h,0ebh,001h,060h,0d2h,020h,020h,023h,0c3h,0e9h	; 74b2  ..u......`.  #..
	defb 007h,0eeh,001h,0ebh,003h,080h,021h,031h,041h,0e9h,003h,0eah,00bh,0d2h,0f9h,03bh	; 74c2  ......!1A.......
	defb 075h,0feh,001h,0e9h,002h,0ech,0eah,007h,0d5h,070h,080h,090h,0a0h,0eah,008h,0b0h	; 74d2  u........p......
	defb 0d4h,000h,010h,020h,0eah,009h,030h,040h,050h,060h,0eah,00ah,070h,080h,090h,0a0h	; 74e2  ... ..0@P`..p...
	defb 0eah,00bh,0b0h,0d3h,010h,020h,030h,0eah,00ch,040h,050h,060h,0eah,00ch,0e9h,006h	; 74f2  ..... 0..@P`....
	defb 0ebh,001h,060h,0d6h,00bh,005h,0d4h,070h,070h,073h,0c3h,0e9h,007h,0ebh,003h,080h	; 7502  ..`....pps......
	defb 071h,081h,091h,0ebh,005h,070h,0abh,0ffh,080h,090h,0a0h,0eah,007h,0b0h,0d3h,000h	; 7512  q....p..........
	defb 010h,020h,0eah,008h,030h,040h,050h,060h,0eah,009h,070h,080h,090h,0a0h,0eah,00ah	; 7522  . ..0@P`..p.....
	defb 0b0h,0d2h,010h,020h,030h,0eah,00bh,040h,0fah,0ebh,002h,080h,050h,0a0h,050h,0a0h	; 7532  ... 0..@....P.P.
	defb 0eah,00ah,050h,0a0h,050h,0a0h,0eah,009h,050h,0a0h,050h,0a0h,0eah,008h,050h,0a0h	; 7542  ..P.P...P.P...P.
	defb 050h,0a0h,0eah,007h,050h,0a0h,050h,0a0h,0eah,006h,050h,0a0h,0eah,005h,050h,0a0h	; 7552  P...P.P...P...P.
	defb 0eah,004h,050h,0a0h,0eah,003h,050h,0a0h,0ffh,0feh,001h,0e9h,008h,0ebh,003h,040h	; 7562  ..P...P........@
	defb 0eah,009h,0d7h,050h,00bh,0d4h,001h,0f2h,010h,0f1h,041h,0eah,00bh,0d7h,001h,003h	; 7572  ...P......A.....
	defb 0ebh,002h,040h,0d1h,040h,040h,021h,001h,022h,000h,0d2h,091h,0d1h,001h,0d7h,002h	; 7582  ..@.@@!.".......
	defb 003h,0eah,00ch,0d3h,071h,0eah,00bh,0d2h,070h,070h,090h,070h,090h,0d1h,000h,003h	; 7592  ....q...pp.p....
	defb 0eah,005h,001h,0ffh,0feh,001h,0e9h,008h,0f2h,010h,0f1h,041h,0eah,00bh,0d7h,001h	; 75a2  ...........A....
	defb 003h,0ebh,002h,050h,0d2h,0c1h,070h,070h,071h,071h,052h,050h,051h,0feh,004h,0d0h	; 75b2  ...P..ppqqRPQ...
	defb 000h,000h,021h,0feh,001h,0ebh,002h,050h,0d7h,002h,003h,0d2h,020h,020h,020h,020h	; 75c2  ..!....P....
	defb 020h,050h,0d2h,043h,0eah,005h,041h,0ffh,0feh,001h,0e9h,008h,0f2h,010h,0f1h,042h	; 75d2   P.C..A........B
	defb 0eah,00ch,0ebh,002h,050h,0d7h,070h,002h,0d3h,003h,003h,0d7h,060h,002h,021h,020h	; 75e2  ....P.p.....`.!
	defb 020h,021h,020h,020h,0eah,00dh,0ebh,003h,040h,0d7h,080h,002h,0d4h,071h,0eeh,001h	; 75f2   !  ....@....q..
	defb 0eah,00ch,0d7h,002h,002h,0eeh,002h,0ebh,003h,070h,0eah,008h,0d2h,071h,070h,090h	; 7602  .........p...qp.
	defb 070h,090h,0eah,00bh,0ebh,002h,040h,0d3h,003h,0eah,005h,001h,0ffh,0feh,002h,0e2h	; 7612  p.....@.........
	defb 003h,090h,08eh,040h,047h,080h,08eh,040h,047h,070h,08eh,040h,047h,050h,08eh,030h	; 7622  ...@G..@Gp.@GP.0
	defb 047h,020h,08eh,010h,047h,0ffh,0feh,002h,0e2h,003h,091h,053h,0f5h,031h,081h,031h	; 7632  G ..G......S.1.1
	defb 071h,031h,051h,021h,021h,001h,0f6h,0ffh,0feh,002h,0e2h,003h,090h,0d5h,031h,01dh	; 7642  q1Q!!.........1.
	defb 080h,0d5h,031h,01dh,070h,0d5h,031h,01dh,050h,0d5h,021h,01dh,020h,0d5h,001h,01dh	; 7652  ..1.p.1.P.!. ...
	defb 0ffh,0feh,002h,0e2h,004h,010h,02ah,020h,035h,0feh,001h,0e9h,002h,0eah,002h,0ech	; 7662  ......* 5.......
	defb 0d0h,0b1h,0eah,003h,071h,0eah,004h,041h,0eah,005h,001h,0eah,006h,0d1h,0b1h,0eah	; 7672  ....q..A........
	defb 007h,071h,0eah,008h,041h,0eah,009h,001h,0eah,00ah,0d1h,0b1h,071h,041h,001h,0eah	; 7682  .q..A.......qA..
	defb 00bh,0d2h,0b1h,071h,0eah,00ah,041h,001h,0feh,001h,0e9h,004h,0ech,0eah,00bh,0d2h	; 7692  ...q..A.........
	defb 000h,040h,070h,0b0h,0eah,00ch,000h,040h,070h,0b0h,0eah,00ah,000h,040h,070h,0b0h	; 76a2  .@p....@p....@p.
	defb 0eah,008h,000h,040h,070h,0b0h,0eah,006h,000h,040h,070h,0b0h,0eah,005h,000h,040h	; 76b2  ...@p....@p....@
	defb 070h,0b0h,0ffh,0feh,002h,0e2h,004h,010h,02ah,020h,02ah,030h,035h,0feh,001h,0eeh	; 76c2  p.......* *05...
	defb 001h,0e9h,002h,0eah,005h,0d0h,0b1h,0eah,006h,071h,041h,0eah,007h,001h,0d1h,0b1h	; 76d2  .........qA.....
	defb 0eah,007h,071h,0eah,008h,041h,001h,0eah,009h,0d1h,0b1h,071h,041h,001h,0eah,008h	; 76e2  ..q..A.....qA...
	defb 0d2h,0b1h,071h,041h,0efh,0feh,001h,0e9h,004h,0ech,0eah,008h,000h,0eah,009h,0d2h	; 76f2  ..qA............
	defb 000h,040h,070h,0b0h,0eah,008h,000h,040h,070h,0b0h,0eah,005h,000h,040h,070h,0b0h	; 7702  .@p....@p....@p.
	defb 000h,040h,070h,0b0h,0eah,003h,000h,040h,070h,0b0h,0ffh,0feh,002h,0e2h,004h,010h	; 7712  .@p....@p.......
	defb 023h,010h,02ah,010h,036h,020h,036h,0feh,001h,0eeh,001h,0e9h,002h,0eah,002h,0ech	; 7722  #.*.6 6.........
	defb 0d0h,0b1h,0eah,003h,071h,0eah,004h,041h,0eah,005h,001h,0eah,006h,0d1h,0b1h,0eah	; 7732  ....q..A........
	defb 007h,071h,0eah,008h,041h,001h,0eah,009h,0d1h,0b1h,071h,041h,001h,0d2h,0b1h,071h	; 7742  .q..A.....qA...q
	defb 0efh,0feh,001h,0e9h,001h,0ech,0eeh,001h,0eah,009h,046h,0e9h,004h,0eah,00ah,0d2h	; 7752  ..........F.....
	defb 000h,040h,070h,0b0h,0eah,00bh,000h,040h,070h,0b0h,0eah,009h,000h,040h,070h,0b0h	; 7762  .@p....@p....@p.
	defb 0eah,007h,000h,040h,070h,0b0h,0eah,005h,000h,040h,070h,0b0h,0eah,004h,000h,040h	; 7772  ...@p....@p....@
	defb 070h,0eah,001h,0b0h,0ffh,0feh,002h,0e2h,001h,070h,05ch,050h,05ch,030h,05eh,0e2h	; 7782  p........p\P\0^.
	defb 002h,020h,05eh,0b0h,02eh,0b0h,02eh,0a0h,02fh,0a0h,02fh,060h,02eh,070h,02dh,0e2h	; 7792  . ^....././`.p-.
	defb 001h,080h,02eh,070h,02dh,060h,02ch,0e2h,002h,050h,02dh,040h,02eh,030h,02dh,0e2h	; 77a2  ...p-`,..P-@.0-.
	defb 001h,020h,02ch,010h,02ch,0fbh,003h,0b1h,077h,010h,02ch,010h,02ch,0ffh,0feh,002h	; 77b2  . ,.,...w.,.,...
	defb 0e2h,002h,090h,02ah,080h,02ah,040h,02ah,0e2h,004h,0a0h,035h,0f5h,090h,080h,0e2h	; 77c2  ...*.*@*...5....
	defb 003h,080h,070h,060h,050h,040h,030h,020h,030h,020h,010h,010h,0f6h,0ffh,0feh,002h	; 77d2  ..p`P@0 0 ......
	defb 0e2h,001h,0a0h,03fh,0a0h,03eh,020h,03dh,020h,03ch,090h,03bh,090h,03ah,020h,038h	; 77e2  ...?.> = <...: 8
	defb 020h,036h,070h,034h,060h,032h,0fdh,0e0h,077h,0feh,002h,0e2h,001h,020h,0d8h,080h	; 77f2   6p4`2..w.... ..
	defb 0cfh,0a0h,0b0h,0a0h,094h,0a0h,06fh,0a0h,053h,0a0h,03eh,0a0h,02eh,090h,023h,060h	; 7802  ......o.S.>...#`
	defb 01ah,040h,0b0h,050h,094h,060h,06fh,070h,053h,060h,03eh,050h,02eh,040h,023h,040h	; 7812  .@.P.`opS`>P.@#@
	defb 01ah,030h,094h,030h,06fh,030h,053h,030h,03eh,020h,02eh,020h,023h,010h,01ah,0ffh	; 7822  .0.0o0S0> . #...
	defb 0feh,002h,0e3h,001h,0e4h,007h,030h,045h,0e4h,011h,070h,040h,0a0h,03ch,0e4h,007h	; 7832  ......0E..p@.<..
	defb 070h,040h,030h,045h,030h,047h,040h,043h,0e4h,010h,050h,03eh,0a0h,03ah,0e4h,007h	; 7842  p@0E0G@C..P>.:..
	defb 080h,03eh,0e4h,005h,040h,03eh,030h,03eh,020h,03fh,0e3h,001h,0e4h,010h,020h,03eh	; 7852  .>..@>0> ?.... >
	defb 020h,03ah,0e3h,002h,0e4h,007h,010h,03eh,020h,03eh,0e4h,005h,020h,03eh,010h,03eh	; 7862   :.....> >.. >.>
	defb 000h,03fh,0ffh,0feh,002h,0e3h,006h,0e4h,002h,0e5h,001h,001h,040h,000h,080h,0e3h	; 7872  .?..........@...
	defb 005h,0e5h,009h,000h,090h,000h,040h,0e8h,0e0h,009h,0e3h,002h,0e5h,009h,000h,090h	; 7882  ......@.........
	defb 000h,040h,0e8h,0e0h,008h,0e2h,002h,0e5h,009h,000h,090h,000h,040h,0e8h,0e0h,007h	; 7892  .@..........@...
	defb 0e2h,002h,0e5h,009h,000h,090h,000h,040h,0e8h,0e0h,007h,0e2h,001h,0e5h,009h,000h	; 78a2  .......@........
	defb 070h,000h,040h,0e8h,0e0h,005h,0e2h,001h,0e5h,009h,000h,060h,000h,040h,0e8h,0e0h	; 78b2  p.@........`.@..
	defb 005h,0e2h,001h,0e5h,009h,000h,050h,000h,040h,0e0h,004h,0e2h,001h,0e5h,009h,000h	; 78c2  ......P.@.......
	defb 040h,000h,040h,0ffh,0feh,002h,0e0h,009h,0e2h,001h,0e5h,008h,000h,048h,000h,000h	; 78d2  @.@..........H..
	defb 0e5h,008h,000h,042h,000h,000h,0e2h,001h,0e5h,000h,000h,020h,000h,031h,0e2h,002h	; 78e2  ...B....... .1..
	defb 0e5h,000h,000h,030h,000h,080h,0e2h,007h,0e5h,000h,000h,028h,000h,07eh,0e2h,00bh	; 78f2  ...0.......(.~..
	defb 0e5h,000h,000h,034h,000h,07bh,0ffh,0feh,002h,0e2h,007h,0a5h,0e0h,096h,050h,086h	; 7902  ...4.{........P.
	defb 0b0h,076h,0edh,076h,0edh,076h,0edh,086h,0edh,086h,0edh,096h,0dah,0a6h,0a0h,096h	; 7912  .v.v.v..........
	defb 0cah,086h,0ddh,096h,0dah,0fbh,006h,025h,079h,0a6h,0a0h,096h,0cah,086h,0ddh,0fch	; 7922  .......%y.......
	defb 002h,01dh,079h,076h,0edh,076h,0edh,076h,0edh,076h,0edh,086h,0edh,086h,0d0h,086h	; 7932  ..yv.v.v.v......
	defb 0dah,096h,0d0h,096h,0cah,0a6h,0b0h,096h,0cah,086h,0dah,086h,0e0h,086h,0edh,076h	; 7942  ...............v
	defb 0edh,076h,0edh,0fbh,002h,035h,079h,086h,0d0h,086h,0cah,096h,0b0h,0a6h,0a0h,096h	; 7952  .v...5y.........
	defb 0b0h,0a6h,0a0h,096h,0cah,086h,0e0h,076h,0edh,076h,0f3h,076h,0f0h,076h,0f3h,076h	; 7962  .......v.v.v.v.v
	defb 0f0h,086h,0edh,096h,0cah,0a6h,0b0h,096h,0a0h,086h,0cah,076h,0e0h,076h,0edh,086h	; 7972  ...........v.v..
	defb 0edh,086h,0edh,0fbh,002h,075h,079h,0fdh,035h,079h,0feh,001h,0e9h,005h,0ebh,002h	; 7982  .....uy.5y......
	defb 080h,0eah,00ch,0d1h,000h,010h,050h,070h,0eah,00bh,000h,010h,050h,070h,0eah,009h	; 7992  ......Pp....Pp..
	defb 000h,010h,0eah,007h,050h,070h,0eah,006h,000h,010h,0eah,004h,050h,070h,0ffh,0feh	; 79a2  ....Pp......Pp..
	defb 001h,0eeh,001h,0e9h,001h,0c3h,0e9h,005h,0ebh,002h,080h,0eah,004h,0d1h,000h,0eah	; 79b2  ................
	defb 00bh,010h,050h,070h,0eah,00ah,000h,010h,050h,070h,0eah,007h,000h,010h,050h,070h	; 79c2  ..Pp....Pp....Pp
	defb 0eah,004h,000h,010h,0eah,003h,050h,070h,0ffh,0feh,001h,0e9h,005h,0ebh,002h,080h	; 79d2  ......Pp........
	defb 0eah,005h,0d1h,072h,0eah,00bh,010h,050h,070h,0eah,009h,000h,010h,050h,070h,0eah	; 79e2  ...r...Pp....Pp.
	defb 007h,000h,010h,050h,070h,0eah,004h,000h,010h,0eah,003h,050h,070h,0ffh,0feh,002h	; 79f2  ...Pp......Pp...
	defb 0e2h,002h,060h,035h,070h,035h,080h,02ah,090h,02ah,0a0h,023h,0a0h,023h,090h,01ch	; 7a02  ..`5p5.*.*.#.#..
	defb 080h,01ch,070h,035h,070h,035h,060h,02ah,060h,02ah,050h,023h,050h,023h,050h,01ch	; 7a12  ..p5p5`*`*P#P#P.
	defb 050h,01ch,050h,035h,040h,035h,040h,02ah,040h,02ah,040h,023h,030h,023h,030h,01ch	; 7a22  P.P5@5@*@*@#0#0.
	defb 020h,01ch,0e2h,004h,020h,035h,010h,02ah,010h,023h,000h,01ch,0ffh,0feh,002h,0e2h	; 7a32   ... 5.*.#......
	defb 001h,020h,0e5h,020h,0e0h,030h,0dbh,030h,0d5h,040h,0cdh,040h,0c8h,050h,0c0h,060h	; 7a42  . . .0.0.@.@.P.`
	defb 0bbh,070h,0b5h,080h,0b0h,090h,0abh,090h,0a3h,090h,09dh,090h,094h,080h,08eh,080h	; 7a52  .p..............
	defb 08bh,080h,085h,080h,080h,080h,07bh,080h,073h,050h,09dh,050h,094h,050h,08eh,050h	; 7a62  ......{.sP.P.P.P
	defb 08bh,050h,085h,050h,080h,050h,07bh,050h,073h,030h,09dh,030h,094h,030h,08eh,030h	; 7a72  .P.P.P{Ps0.0.0.0
	defb 08bh,030h,085h,030h,080h,030h,07bh,030h,073h,020h,085h,020h,080h,020h,07bh,010h	; 7a82  .0.0.0{0s . . {.
	defb 073h,010h,070h,0fbh,002h,03fh,07ah,0ffh,0feh,002h,0e0h,001h,0e2h,003h,090h,02ah	; 7a92  s.p..?z........*
	defb 0a0h,054h,0e2h,001h,020h,02ah,020h,054h,0e2h,003h,090h,02ah,090h,054h,090h,02ah	; 7aa2  .T.. * T...*.T.*
	defb 080h,054h,080h,02ah,070h,054h,060h,02ah,050h,054h,040h,02ah,030h,054h,020h,02ah	; 7ab2  .T.*pT`*PT@*0T *
	defb 020h,054h,010h,02ah,010h,054h,0ffh,0feh,002h,0e2h,003h,090h,035h,080h,06ah,0e2h	; 7ac2   T.*.T......5.j.
	defb 001h,010h,035h,010h,06ah,0e2h,003h,070h,035h,060h,06ah,060h,035h,050h,06ah,040h	; 7ad2  ..5.j..p5`j`5Pj@
	defb 035h,030h,06ah,020h,035h,010h,06ah,0ffh,0feh,002h,0e2h,001h,0c0h,020h,0b0h,021h	; 7ae2  50j 5.j...... .!
	defb 0a0h,022h,0e0h,003h,0e2h,002h,0a0h,028h,0b0h,029h,0b0h,028h,0e2h,003h,0b0h,029h	; 7af2  .".....(.).(...)
	defb 0b0h,028h,0b0h,029h,0a0h,028h,0a0h,029h,090h,028h,090h,029h,080h,028h,080h,029h	; 7b02  .(.).(.).(.).(.)
	defb 070h,028h,060h,029h,050h,028h,040h,029h,030h,028h,020h,029h,0e0h,00fh,0e0h,00dh	; 7b12  p(`)P(@)0( )....
	defb 0e0h,00ch,0ffh,0feh,002h,0e2h,002h,0c2h,0b0h,0c4h,0b0h,0c4h,0a0h,0b4h,090h,0e2h	; 7b22  ................
	defb 001h,0b4h,030h,0b3h,0f0h,0a3h,0b0h,0a3h,050h,0a3h,030h,0a3h,000h,092h,0b0h,082h	; 7b32  ..0.....P.0.....
	defb 070h,072h,030h,052h,010h,032h,000h,0ffh,0feh,002h,0e2h,003h,050h,020h,060h,021h	; 7b42  pr0R.2......P `!
	defb 070h,022h,080h,023h,090h,024h,090h,025h,090h,026h,090h,027h,090h,028h,080h,029h	; 7b52  p".#.$.%.&.'.(.)
	defb 070h,02ah,060h,02bh,060h,02ch,050h,02dh,050h,02eh,050h,02fh,040h,030h,040h,031h	; 7b62  p*`+`,P-P.P/@0@1
	defb 030h,032h,020h,033h,010h,034h,0ffh,0feh,002h,0e3h,001h,0e4h,000h,090h,04fh,0a0h	; 7b72  02 3.4........O.
	defb 04bh,0e2h,001h,0a0h,040h,0b0h,03bh,0b0h,038h,0b0h,000h,0b0h,028h,0b0h,024h,0b0h	; 7b82  K...@...8...(.$.
	defb 020h,0b0h,01bh,0a0h,01ah,090h,019h,0e2h,002h,090h,024h,080h,020h,070h,01bh,060h	; 7b92   .........$. p.`
	defb 01ah,050h,019h,040h,01ah,040h,019h,030h,01ah,020h,019h,0ffh,0feh,002h,0f9h,0cdh	; 7ba2  .P.@.@.0. ......
	defb 07bh,0feh,002h,0eeh,060h,0e0h,001h,0f9h,0cdh,07bh,0feh,002h,0e2h,002h,0c5h,000h	; 7bb2  {...`....{......
	defb 0c6h,000h,0b5h,0f0h,0a5h,0e0h,084h,000h,045h,000h,0ffh,0e2h,002h,0c3h,000h,0c5h	; 7bc2  ........E.......
	defb 000h,0b4h,0f0h,0a4h,0e0h,0e2h,001h,0a4h,080h,0a4h,040h,0a4h,000h,0a3h,0a0h,0a3h	; 7bd2  ..........@.....
	defb 080h,0a3h,050h,093h,000h,082h,0c0h,072h,080h,062h,050h,052h,030h,0feh,002h,0e2h	; 7be2  ..P....r.bPR0...
	defb 001h,073h,000h,075h,000h,074h,0f0h,074h,0e0h,074h,080h,074h,040h,074h,000h,073h	; 7bf2  .s.u.t.t.t.t@t.s
	defb 0a0h,073h,080h,063h,050h,063h,000h,062h,0c0h,052h,080h,042h,050h,043h,000h,032h	; 7c02  .s.cPc.b.R.BPC.2
	defb 0c0h,032h,080h,032h,050h,0e2h,001h,023h,000h,022h,0c0h,012h,080h,012h,050h,0ffh	; 7c12  .2.2P..#."....P.
	defb 0feh,002h,0e2h,001h,090h,095h,040h,030h,030h,092h,000h,093h,000h,094h,090h,0c5h	; 7c22  ......@00.......
	defb 050h,046h,030h,0d0h,0ffh,0feh,002h,0e2h,002h,0a0h,023h,090h,023h,0b0h,02ah,0a0h	; 7c32  PF0.......#.#.*.
	defb 02ah,0a0h,02ah,0a0h,023h,090h,023h,090h,023h,0b0h,02ah,0a0h,02ah,0a0h,02ah,0e2h	; 7c42  *.*.#.#.#.*.*.*.
	defb 003h,090h,023h,0f5h,080h,080h,070h,070h,060h,060h,050h,050h,040h,030h,020h,010h	; 7c52  ..#...pp``PP@0 .
	defb 0f6h,0ffh,0feh,002h,0e2h,002h,0c4h,020h,0b4h,040h,0b4h,040h,054h,053h,0e2h,001h	; 7c62  ....... .@.@TS..
	defb 0a2h,0cah,0b2h,0b4h,0b2h,09fh,0b2h,08ah,0a2h,076h,0a2h,063h,092h,050h,092h,03eh	; 7c72  .........v.c.P.>
	defb 092h,0cah,0a2h,0b4h,0a2h,09fh,0a2h,08ah,092h,076h,092h,063h,082h,050h,082h,03eh	; 7c82  .........v.c.P.>
	defb 072h,0cah,082h,0b4h,082h,09fh,082h,08ah,072h,076h,072h,063h,062h,050h,052h,03eh	; 7c92  r.......rvrcbPR>
	defb 042h,0cah,052h,0b4h,052h,09fh,052h,0bah,042h,076h,042h,063h,032h,050h,022h,03eh	; 7ca2  B.R.R.R.BvBc2P">
	defb 0e0h,00fh,0e0h,00fh,0e0h,00fh,0e0h,00ch,0ffh,0f9h,01fh,072h,0feh,002h,0e1h,001h	; 7cb2  ...........r....
	defb 0e4h,002h,008h,002h,0e1h,003h,0e4h,000h,007h,006h,005h,004h,003h,002h,002h,001h	; 7cc2  ................
	defb 001h,001h,001h,001h,000h,000h,0ffh,0feh,002h,0eeh,001h,0e0h,001h,0e2h,001h,080h	; 7cd2  ................
	defb 020h,030h,01bh,0e2h,002h,0a0h,019h,070h,015h,090h,016h,080h,015h,080h,016h,080h	; 7ce2   0.....p........
	defb 015h,070h,016h,070h,015h,060h,016h,060h,015h,050h,016h,050h,015h,040h,016h,040h	; 7cf2  .p.p.`.`.P.P.@.@
	defb 015h,030h,016h,030h,015h,020h,016h,010h,015h,010h,016h,000h,015h,000h,016h,000h	; 7d02  .0.0. ..........
	defb 015h,0ffh,0feh,002h,0e2h,003h,0f9h,02dh,07dh,0feh,002h,0e0h,006h,0e2h,003h,0f9h	; 7d12  .......-}.......
	defb 02dh,07dh,0feh,002h,0e0h,009h,0e2h,003h,0f9h,02dh,07dh,013h,057h,022h,0ceh,032h	; 7d22  -}.......-}.W".2
	defb 05dh,041h,0e0h,051h,0abh,061h,067h,071h,02eh,080h,0f0h,080h,0d5h,090h,0b3h,090h	; 7d32  ]A.Q.agq........
	defb 097h,080h,078h,080h,06ah,080h,059h,080h,04bh,080h,03ch,070h,035h,060h,02ch,050h	; 7d42  ..x.j.Y.K.<p5`,P
	defb 025h,050h,01eh,040h,035h,030h,02ch,020h,025h,020h,01eh,010h,035h,010h,02ch,010h	; 7d52  %P.@50, % ..5.,.
	defb 025h,010h,021h,010h,035h,010h,02ch,000h,025h,000h,01eh,0ffh,0feh,001h,0e9h,002h	; 7d62  %.!.5.,.%.......
	defb 0d2h,0f9h,0d5h,07dh,0feh,001h,0eeh,002h,0e9h,002h,0d2h,0eah,001h,026h,0eah,002h	; 7d72  ...}.........&..
	defb 041h,0eah,003h,061h,0eah,004h,081h,0eah,005h,0a1h,0eah,006h,021h,0eah,007h,041h	; 7d82  A..a........!..A
	defb 0eah,008h,061h,0eah,009h,081h,0a1h,021h,041h,061h,081h,0a1h,0eah,00ah,021h,041h	; 7d92  ..a....!Aa....!A
	defb 061h,081h,0a1h,0eah,009h,021h,041h,061h,0eah,007h,081h,0a1h,0eah,005h,021h,041h	; 7da2  a....!Aa......!A
	defb 061h,0eah,003h,081h,0a1h,0eah,002h,021h,041h,061h,081h,0eah,001h,0a1h,021h,0eah	; 7db2  a......!Aa....!.
	defb 000h,041h,061h,081h,0a1h,0ffh,0feh,001h,0eeh,001h,0e9h,002h,0d1h,0eah,002h,021h	; 7dc2  .Aa............!
	defb 0f9h,0d5h,07dh,0eah,002h,021h,0eah,003h,041h,0eah,004h,061h,0eah,005h,081h,0eah	; 7dd2  ..}..!..A..a....
	defb 006h,0a1h,0eah,007h,021h,0eah,008h,041h,0eah,009h,061h,0eah,00ah,081h,0a1h,021h	; 7de2  ....!..A..a....!
	defb 041h,061h,081h,0a1h,0eah,00bh,021h,041h,061h,081h,0a1h,0eah,00ah,021h,041h,061h	; 7df2  Aa....!Aa....!Aa
	defb 0eah,008h,081h,0a1h,0eah,006h,021h,041h,061h,0eah,004h,081h,0a1h,0eah,003h,021h	; 7e02  ......!Aa......!
	defb 041h,061h,081h,0eah,002h,0a1h,021h,0eah,001h,041h,061h,081h,0a1h,0ffh,0feh,002h	; 7e12  Aa....!..Aa.....
	defb 0e2h,002h,070h,06ah,0f5h,080h,090h,090h,070h,060h,070h,060h,050h,0f6h,070h,03fh	; 7e22  ..pj....p`p`P.p?
	defb 0f5h,080h,090h,090h,070h,060h,070h,060h,050h,0f6h,070h,025h,0f5h,080h,090h,090h	; 7e32  ....p`p`P.p%....
	defb 070h,060h,070h,060h,050h,0f6h,040h,02fh,0f5h,050h,060h,060h,040h,030h,040h,030h	; 7e42  p`p`P.@/.P``@0@0
	defb 020h,0f6h,010h,035h,0f5h,020h,030h,030h,020h,010h,020h,010h,010h,0f6h,010h,01fh	; 7e52   ..5. 00 . .....
	defb 0f5h,020h,030h,030h,020h,010h,020h,010h,010h,0f6h,010h,025h,0f5h,010h,020h,010h	; 7e62  . 00 . ....%.. .
	defb 010h,010h,000h,000h,000h,0f6h,0ffh,0feh,002h,0e0h,006h,0e2h,002h,070h,05fh,0f5h	; 7e72  .............p_.
	defb 080h,090h,090h,070h,060h,070h,060h,050h,0f6h,070h,035h,0f5h,080h,090h,090h,070h	; 7e82  ...p`p`P.p5....p
	defb 060h,070h,060h,050h,0f6h,070h,01fh,0f5h,080h,090h,090h,070h,060h,070h,060h,050h	; 7e92  `p`P.p.....p`p`P
	defb 0f6h,040h,025h,0f5h,050h,060h,060h,040h,030h,040h,030h,020h,0f6h,010h,02fh,0f5h	; 7ea2  .@%.P``@0@0 ../.
	defb 020h,030h,030h,020h,010h,020h,010h,010h,0f6h,010h,035h,0f5h,020h,030h,030h,020h	; 7eb2   00 . ....5. 00
	defb 010h,020h,010h,010h,0f6h,010h,01fh,0f5h,010h,020h,010h,010h,010h,000h,000h,000h	; 7ec2  . ....... ......
	defb 0f6h,0ffh,0feh,002h,0e0h,00ch,0e2h,002h,070h,04bh,0f5h,080h,090h,090h,070h,060h	; 7ed2  ........pK....p`
	defb 070h,060h,050h,0f6h,070h,02fh,0f5h,080h,090h,090h,070h,060h,070h,060h,050h,0f6h	; 7ee2  p`P.p/....p`p`P.
	defb 070h,035h,0f5h,080h,090h,090h,070h,060h,070h,060h,050h,0f6h,040h,01fh,0f5h,050h	; 7ef2  p5....p`p`P.@..P
	defb 060h,060h,040h,030h,040h,030h,020h,0f6h,010h,025h,0f5h,020h,030h,030h,020h,010h	; 7f02  ``@0@0 ..%. 00 .
	defb 020h,010h,010h,0f6h,010h,02fh,0f5h,020h,030h,030h,020h,010h,020h,010h,010h,0f6h	; 7f12   ..../. 00 . ...
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 7f22  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 7f32  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 7f42  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 7f52  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 7f62  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh	; 7f72  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f82  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f92  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fa2  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fb2  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fc2  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fd2  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fe2  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ff2  ..............
