; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p22 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9900  (256 bytes)
; ======================================================================


L_9800:
	jp L_9815		;9800
L_9803:
	jp L_9827		;9803
L_9806:
	jp L_9836		;9806
L_9809:
	jp L_9A9B		;9809
L_980C:
	jp L_984C		;980c
L_980F:
	jp L_985B		;980f
L_9812:
	jp L_98DE		;9812
L_9815:
	call 08251h		;9815
	call L_987C		;9818
	call 08203h		;981b
	ld hl,09900h		;981e
	call 08275h		;9821
	jp 08209h		;9824
L_9827:
	ld hl,099c1h		;9827
	call L_98F6		;982a
	call L_9885		;982d
	ld hl,09916h		;9830
	jp 08275h		;9833
L_9836:
	call 08251h		;9836
	call L_988E		;9839
	ld hl,09932h		;983c
	call 08275h		;983f
L_9842:
	call L_9897		;9842
	ld hl,09943h		;9845
	xor a			;9848
	jp L_99E5		;9849
L_984C:
	call L_98A9		;984c
	call L_986E		;984f
	call L_98A0		;9852
	ld hl,0995fh		;9855
	jp L_99E5		;9858
L_985B:
	call L_9860		;985b
	jr L_9842		;985e
L_9860:
	ld bc,05018h		;9860
	ld de,0a898h		;9863
	ld hl,00048h		;9866
	ld a,040h		;9869
	jp 0820ch		;986b
L_986E:
	ld hl,0a898h		;986e
	ld de,00048h		;9871
	ld bc,05018h		;9874
	ld a,010h		;9877
	jp 0820ch		;9879
L_987C:
	ld hl,01010h		;987c
	ld de,06028h		;987f
	jp L_9C22		;9882
L_9885:
	ld hl,01890h		;9885
	ld de,08828h		;9888
	jp L_9C22		;988b
L_988E:
	ld hl,08020h		;988e
	ld de,07018h		;9891
	jp L_9C22		;9894
L_9897:
	ld hl,0b868h		;9897
	ld de,03028h		;989a
	jp L_9C22		;989d
L_98A0:
	ld hl,0a898h		;98a0
	ld de,05018h		;98a3
	jp L_9C22		;98a6
L_98A9:
	call 082bah		;98a9
	ld hl,0cf71h		;98ac
	ld de,0120ah		;98af
	ld a,(09218h)		;98b2
	or a			;98b5
	jr z,L_98BC		;98b6
	ld a,l			;98b8
	add a,010h		;98b9
	ld l,a			;98bb
L_98BC:
	exx			;98bc
	ld de,00009h		;98bd
	ld bc,00e0fh		;98c0
	exx			;98c3
	ld (098ceh),hl		;98c4
	ld (098d1h),de		;98c7
	exx			;98cb
	push bc			;98cc
	ld hl,00000h		;98cd
	ld bc,00000h		;98d0
	push hl			;98d3
	push bc			;98d4
	call L_9D5A		;98d5
	pop bc			;98d8
	pop hl			;98d9
	pop de			;98da
	jp L_9D5A		;98db
L_98DE:
	ld a,(0d1d9h)		;98de
	dec a			;98e1
	jr nz,L_98E6		;98e2
	ld a,001h		;98e4
L_98E6:
	ld (0d1d9h),a		;98e6
	cp 070h		;98e9
	ld hl,09977h		;98eb
	jr z,L_98F6		;98ee
	cp 050h		;98f0
	ld hl,0999fh		;98f2
	ret nz			;98f5
L_98F6:
	ld de,06050h		;98f6
	ld c,008h		;98f9
	ld a,001h		;98fb
	jp 08218h		;98fd

; ----------------------------------------------------------------------
; DATOS texto_9900: texto: x, y y las letras hasta 0xFF; lo usa 0x9821 (22
;   bytes)
;   0x9900..0x9916  (22 bytes)
DATA_texto_9900:
	defb 018h,01ah,053h,02dh,001h,02ch,00eh,013h,0feh,018h,02ah,025h,0ceh,02dh,000h,008h	; 9900  ..S-.,....*%.-..
	defb 02eh,0cbh,071h,00bh,002h,0ffh	; 9910

; ----------------------------------------------------------------------
; DATOS texto_9916: texto: x, y y las letras hasta 0xFF; lo usa 0x9833 (28
;   bytes)
;   0x9916..0x9932  (28 bytes)
DATA_texto_9916:
	defb 020h,09ah,005h,024h,025h,0ceh,0beh,000h,071h,016h,015h,032h,010h,096h,019h,053h	; 9916   ..$%...q..2...S
	defb 0beh,0feh,020h,0aah,0fdh,0beh,0fdh,003h,053h,0cbh,00dh,0ffh	; 9926  .. .....S...

; ----------------------------------------------------------------------
; DATOS texto_9932: texto: x, y y las letras hasta 0xFF; lo usa 0x983F (17
;   bytes)
;   0x9932..0x9943  (17 bytes)
DATA_texto_9932:
	defb 088h,02ah,0fdh,0beh,0fdh,003h,053h,02dh,000h,004h,027h,02eh,0cbh,071h,00bh,002h	; 9932  .*....S-..'..q..
	defb 0ffh	; 9942

; ----------------------------------------------------------------------
; DATOS leido_9943: lo usa el codigo: 0x9845 ld hl,09943h; 0x9855 ld hl,0995fh
;   (en +28); 0x98EB ld hl,09977h (en +52); 0x98F2 ld hl,0999fh (en +92) (162
;   bytes)
;   0x9943..0x99e5  (162 bytes)
DATA_leido_9943:
	defb 04bh,099h,051h,099h,018h,092h,002h,000h,072h,0c0h,000h,082h,0c0h,000h,0d0h,072h	; 9943  K.Q.....r......r
	defb 0fdh,0bfh,0fdh,053h,0feh,0d0h,082h,0fdh,0c0h,0fdh,053h,0ffh,067h,099h,06dh,099h	; 9953  ...S......S.g.m.
	defb 0cdh,0d1h,000h,002h,0a2h,0b0h,000h,0a2h,0d0h,000h,0b8h,0a2h,01ah,002h,000h,000h	; 9963  ................
	defb 002h,002h,004h,0ffh,082h,01fh,049h,080h,004h,0b6h,083h,04eh,01fh,0c0h,080h,006h	; 9973  ......I....N....
	defb 0bah,083h,0c1h,0c8h,0c9h,080h,004h,0c3h,084h,0dah,0dbh,0d0h,0d1h,080h,004h,0cbh	; 9983  ................
	defb 08ah,0dch,0ddh,0d8h,0d9h,0d4h,020h,020h,0d5h,0deh,0dfh,000h,082h,01fh,049h,080h	; 9993  ......  ......I.
	defb 004h,0b6h,083h,04eh,01fh,01fh,080h,006h,0bah,082h,01fh,056h,080h,006h,0c2h,082h	; 99a3  ...N.......V....
	defb 05ch,05fh,080h,006h,0e0h,082h,065h,07ch,080h,006h,0e6h,081h,07ch,000h,082h,01fh	; 99b3  \_....e|....|...
	defb 049h,080h,004h,0b6h,083h,04eh,01fh,01fh,080h,006h,0bah,082h,01fh,056h,080h,006h	; 99c3  I....N.......V..
	defb 0c2h,082h,05ch,05fh,080h,006h,0cah,089h,065h,0d2h,0d3h,0d4h,020h,020h,0d5h,0d6h	; 99d3  ..\_....e...  ..
	defb 0d7h,000h	; 99e3

; ======================================================================
; CODIGO 0x99e5..0x9a93  (174 bytes)
; ======================================================================


L_99E5:
	ld (09c21h),a		;99e5
	call L_9A96		;99e8
	ld (0d200h),de		;99eb
	call L_9A96		;99ef
	ld (0d206h),de		;99f2
	call L_9A96		;99f6
	ld (0d202h),de		;99f9
	ld a,(hl)			;99fd
	inc hl			;99fe
	ld (0d232h),a		;99ff
	ld a,(hl)			;9a02
	inc hl			;9a03
	ld (0d233h),a		;9a04
	call L_9A51		;9a07
	ld hl,(0d206h)		;9a0a
	call 08275h		;9a0d
	ld a,0ffh		;9a10
	ld (0d20ch),a		;9a12
	inc a			;9a15
	ld (09c20h),a		;9a16
	ld c,001h		;9a19
	ld hl,(0d202h)		;9a1b
	ld a,(hl)			;9a1e
	ld b,a			;9a1f
	ld hl,0d233h		;9a20
	ld a,(hl)			;9a23
	or a			;9a24
	jr z,L_9A45		;9a25
	ld a,b			;9a27
L_9A28:
	sub (hl)			;9a28
	jr c,L_9A2E		;9a29
	inc c			;9a2b
	jr L_9A28		;9a2c
L_9A2E:
	add a,(hl)			;9a2e
	inc a			;9a2f
	ld (0d205h),a		;9a30
	ld a,c			;9a33
L_9A34:
	ld (0d204h),a		;9a34
	ld a,(0d205h)		;9a37
	ld hl,0d233h		;9a3a
	cp (hl)			;9a3d
	ret nz			;9a3e
	ld a,001h		;9a3f
	ld (09c20h),a		;9a41
	ret			;9a44
L_9A45:
	ld a,001h		;9a45
	ld (0d205h),a		;9a47
	ld hl,(0d202h)		;9a4a
	ld a,(hl)			;9a4d
	inc a			;9a4e
	jr L_9A34		;9a4f
L_9A51:
	call 082bdh		;9a51
	ld hl,(0d202h)		;9a54
	ld a,(hl)			;9a57
	ld hl,(0d200h)		;9a58
	ld c,a			;9a5b
	add a,a			;9a5c
	add a,c			;9a5d
	call 08221h		;9a5e
	ld de,0d20dh		;9a61
	ld bc,00003h		;9a64
	ldir		;9a67
	ld a,(0d20fh)		;9a69
	cp 001h		;9a6c
	ret z			;9a6e
	ld hl,09bc6h		;9a6f
	call 0826ch		;9a72
	ld b,(hl)			;9a75
	inc hl			;9a76
	ld de,0d280h		;9a77
L_9A7A:
	ld a,(0d20dh)		;9a7a
	add a,(hl)			;9a7d
	ld (de),a			;9a7e
	inc hl			;9a7f
	inc de			;9a80
	ld a,(0d20eh)		;9a81
	add a,(hl)			;9a84
	ld (de),a			;9a85
	inc hl			;9a86
	inc de			;9a87
	ld a,(hl)			;9a88
	ld (de),a			;9a89
	inc hl			;9a8a
	inc de			;9a8b
	ld a,(hl)			;9a8c
	ld (de),a			;9a8d
	inc hl			;9a8e
	inc de			;9a8f
	djnz L_9A7A		;9a90
	ret			;9a92

; ----------------------------------------------------------------------
; DATOS suelto_9A93: nadie lo lee ni lo apunta (3 bytes)
;   0x9a93..0x9a96  (3 bytes)
DATA_suelto_9A93:
	defb 0cdh,01eh,082h	; 9a93

; ======================================================================
; CODIGO 0x9a96..0x9bc6  (304 bytes)
; ======================================================================


L_9A96:
	ld e,(hl)			;9a96
	inc hl			;9a97
	ld d,(hl)			;9a98
	inc hl			;9a99
	ret			;9a9a
L_9A9B:
	ld a,(0d1c8h)		;9a9b
	cp 010h		;9a9e
	jp z,L_9BAF		;9aa0
	ld c,a			;9aa3
	ld a,(0d233h)		;9aa4
	and a			;9aa7
	push bc			;9aa8
	call nz,L_9B60		;9aa9
	pop bc			;9aac
	ld a,(0d204h)		;9aad
	and a			;9ab0
	jr z,L_9AE9		;9ab1
	ld a,c			;9ab3
	cp 001h		;9ab4
	jp z,L_9B3C		;9ab6
	cp 002h		;9ab9
	jr nz,L_9AE9		;9abb
	ld a,(0d204h)		;9abd
	inc a			;9ac0
	ld hl,0d232h		;9ac1
	ld e,(hl)			;9ac4
	inc e			;9ac5
	cp e			;9ac6
	ret nc			;9ac7
	ld (0d204h),a		;9ac8
	ld e,a			;9acb
	ld a,(09c20h)		;9acc
	or a			;9acf
	jr z,L_9AE0		;9ad0
	ld a,e			;9ad2
	cp (hl)			;9ad3
	jr nz,L_9AE0		;9ad4
	ld a,(0d233h)		;9ad6
	ld hl,09c21h		;9ad9
	sub (hl)			;9adc
	ld (0d205h),a		;9add
L_9AE0:
	call L_9AEB		;9ae0
	call L_9AFC		;9ae3
	call L_9A51		;9ae6
L_9AE9:
	xor a			;9ae9
	ret			;9aea
L_9AEB:
	ld a,(0d1c0h)		;9aeb
	cp 004h		;9aee
	jr nz,L_9AF9		;9af0
	ld a,(0d1d7h)		;9af2
	dec a			;9af5
	jp z,08370h		;9af6
L_9AF9:
	jp 082eeh		;9af9
L_9AFC:
	ld a,(0d233h)		;9afc
	or a			;9aff
	jr z,L_9B2D		;9b00
	ld a,(0d232h)		;9b02
	or a			;9b05
	jr z,L_9B33		;9b06
	ld a,(0d204h)		;9b08
	dec a			;9b0b
	jr z,L_9B1C		;9b0c
	ld b,a			;9b0e
	ld a,(0d233h)		;9b0f
	or a			;9b12
	jr z,L_9B39		;9b13
	ld hl,0d233h		;9b15
	xor a			;9b18
L_9B19:
	add a,(hl)			;9b19
	djnz L_9B19		;9b1a
L_9B1C:
	ld b,a			;9b1c
	ld a,(0d233h)		;9b1d
	or a			;9b20
	jr z,L_9B26		;9b21
	ld a,(0d205h)		;9b23
L_9B26:
	dec a			;9b26
	add a,b			;9b27
L_9B28:
	ld hl,(0d202h)		;9b28
	ld (hl),a			;9b2b
	ret			;9b2c
L_9B2D:
	ld a,(0d204h)		;9b2d
	dec a			;9b30
	jr L_9B28		;9b31
L_9B33:
	ld a,(0d205h)		;9b33
	dec a			;9b36
	jr L_9B28		;9b37
L_9B39:
	ld a,b			;9b39
	jr L_9B28		;9b3a
L_9B3C:
	ld a,(0d204h)		;9b3c
	dec a			;9b3f
	ret z			;9b40
	ld (0d204h),a		;9b41
	ld a,(09c20h)		;9b44
	or a			;9b47
	jr z,L_9AE0		;9b48
	ld a,(0d233h)		;9b4a
	ld (0d205h),a		;9b4d
	jr L_9AE0		;9b50
L_9B52:
	xor a			;9b52
	ld (09c20h),a		;9b53
	ld a,(0d205h)		;9b56
	dec a			;9b59
	ret z			;9b5a
	ld (0d205h),a		;9b5b
	jr L_9AE0		;9b5e
L_9B60:
	ld a,c			;9b60
	cp 004h		;9b61
	jr z,L_9B52		;9b63
	cp 008h		;9b65
	jp nz,L_9AE9		;9b67
	ld a,(0d205h)		;9b6a
	inc a			;9b6d
	ld b,a			;9b6e
	ld a,(0d204h)		;9b6f
	ld hl,0d232h		;9b72
	cp (hl)			;9b75
	ld a,(0d233h)		;9b76
	call z,L_9BA7		;9b79
	ld e,a			;9b7c
	ld a,b			;9b7d
	cp e			;9b7e
	jr z,L_9B9E		;9b7f
	inc e			;9b81
	cp e			;9b82
	jr nc,L_9B8F		;9b83
	ld (0d205h),a		;9b85
	xor a			;9b88
	ld (09c20h),a		;9b89
	jp L_9AE0		;9b8c
L_9B8F:
	ld a,(0d204h)		;9b8f
	ld hl,0d232h		;9b92
	cp (hl)			;9b95
	ret z			;9b96
	ld a,001h		;9b97
	ld (09c20h),a		;9b99
	or a			;9b9c
	ret			;9b9d
L_9B9E:
	ld (0d205h),a		;9b9e
	call L_9B8F		;9ba1
	jp L_9AE0		;9ba4
L_9BA7:
	push af			;9ba7
	ld a,(09c21h)		;9ba8
	ld e,a			;9bab
	pop af			;9bac
	sub e			;9bad
	ret			;9bae
L_9BAF:
	call L_9BBA		;9baf
	jp z,L_9AE9		;9bb2
	call 082f3h		;9bb5
	scf			;9bb8
	ret			;9bb9
L_9BBA:
	ld a,(0d1d6h)		;9bba
	cp 003h		;9bbd
	ret nz			;9bbf
	ld a,(0d1dah)		;9bc0
	cp 0feh		;9bc3
	ret			;9bc5

; ----------------------------------------------------------------------
; DATOS leido_9BC6: lo usa el codigo: 0x9A6F ld hl,09bc6h -> 0x826C (tabla de
;   palabras: la de A); 0x9A16 ld (09c20h),a (en +90); 0x9A41 ld (09c20h),a
;   (en +90); 0x99E5 ld (09c21h),a (en +91) (92 bytes)
;   0x9bc6..0x9c22  (92 bytes)
DATA_leido_9BC6:
	defb 0dah,09bh,0dfh,09bh,0e4h,09bh,0e9h,09bh,0f2h,09bh,0f7h,09bh,0fch,09bh,005h,09ch	; 9bc6  ................
	defb 00eh,09ch,017h,09ch,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; 9bd6  ................
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; 9be6  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; 9bf6  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; 9c06  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,0d5h,0d6h	; 9c16  ............

; ======================================================================
; CODIGO 0x9c22..0x9d54  (306 bytes)
; ======================================================================


L_9C22:
	ld (0dd00h),hl		;9c22
	ld (0dd02h),de		;9c25
	ld a,h			;9c29
	add a,008h		;9c2a
	ld h,a			;9c2c
	ld a,(0dd03h)		;9c2d
	sub 010h		;9c30
	ld b,a			;9c32
	ld a,(0dd02h)		;9c33
	ld c,a			;9c36
	xor a			;9c37
	ld d,000h		;9c38
	call 0829fh		;9c3a
	ld hl,(0dd00h)		;9c3d
	ld a,l			;9c40
	add a,008h		;9c41
	ld l,a			;9c43
	ld a,(0dd02h)		;9c44
	sub 010h		;9c47
	ld c,a			;9c49
	ld a,(0dd03h)		;9c4a
	ld b,a			;9c4d
	xor a			;9c4e
	ld d,000h		;9c4f
	call 0829fh		;9c51
	ld de,(0dd00h)		;9c54
	ld a,0c9h		;9c58
	call L_9D3E		;9c5a
	call 082a8h		;9c5d
	ex de,hl			;9c60
	ld a,(0dd03h)		;9c61
	sub 010h		;9c64
	ld b,a			;9c66
	ld c,00eh		;9c67
	call L_9CE5		;9c69
	ld de,(0dd00h)		;9c6c
	ld a,(0dd03h)		;9c70
	sub 008h		;9c73
	add a,d			;9c75
	ld d,a			;9c76
	ld a,0cah		;9c77
	call L_9D3E		;9c79
	ld hl,(0dd00h)		;9c7c
	ld a,008h		;9c7f
	add a,l			;9c81
	ld l,a			;9c82
	ld a,(0dd02h)		;9c83
	sub 010h		;9c86
	ld b,a			;9c88
	ld c,00eh		;9c89
	call L_9D11		;9c8b
	ld de,(0dd00h)		;9c8e
	ld a,(0dd02h)		;9c92
	sub 008h		;9c95
	add a,e			;9c97
	ld e,a			;9c98
	ld a,0cbh		;9c99
	call L_9D3E		;9c9b
	ld hl,(0dd00h)		;9c9e
	ld a,(0dd03h)		;9ca1
	dec a			;9ca4
	add a,h			;9ca5
	ld h,a			;9ca6
	ld a,008h		;9ca7
	add a,l			;9ca9
	ld l,a			;9caa
	ld a,(0dd02h)		;9cab
	sub 010h		;9cae
	ld b,a			;9cb0
	ld c,00eh		;9cb1
	call L_9D11		;9cb3
	ld de,(0dd00h)		;9cb6
	ld a,(0dd02h)		;9cba
	sub 008h		;9cbd
	add a,e			;9cbf
	ld e,a			;9cc0
	ld a,(0dd03h)		;9cc1
	sub 008h		;9cc4
	add a,d			;9cc6
	ld d,a			;9cc7
	ld a,0cch		;9cc8
	call L_9D3E		;9cca
	ld hl,(0dd00h)		;9ccd
	ld a,008h		;9cd0
	add a,h			;9cd2
	ld h,a			;9cd3
	ld a,(0dd02h)		;9cd4
	dec a			;9cd7
	add a,l			;9cd8
	ld l,a			;9cd9
	ld a,(0dd03h)		;9cda
	sub 010h		;9cdd
	ld b,a			;9cdf
	ld c,00eh		;9ce0
	jp L_9CE5		;9ce2
L_9CE5:
	ld a,024h		;9ce5
	ld (0d226h),a		;9ce7
	call 08287h		;9cea
	out (c),h		;9ced
	xor a			;9cef
	out (c),a		;9cf0
	out (c),l		;9cf2
	out (c),a		;9cf4
	ld hl,(0d227h)		;9cf6
	out (c),h		;9cf9
	xor a			;9cfb
	cp h			;9cfc
	jr nz,L_9D00		;9cfd
	inc a			;9cff
L_9D00:
	out (c),a		;9d00
	xor a			;9d02
	out (c),a		;9d03
	out (c),a		;9d05
	out (c),l		;9d07
	out (c),a		;9d09
	ld a,070h		;9d0b
	out (c),a		;9d0d
	ei			;9d0f
	ret			;9d10
L_9D11:
	ld a,024h		;9d11
	ld (0d226h),a		;9d13
	call 08287h		;9d16
	out (c),h		;9d19
	xor a			;9d1b
	out (c),a		;9d1c
	out (c),l		;9d1e
	out (c),a		;9d20
	ld hl,(0d227h)		;9d22
	out (c),h		;9d25
	xor a			;9d27
	cp h			;9d28
	jr nz,L_9D2C		;9d29
	inc a			;9d2b
L_9D2C:
	out (c),a		;9d2c
	xor a			;9d2e
	out (c),a		;9d2f
	out (c),a		;9d31
	out (c),l		;9d33
	inc a			;9d35
	out (c),a		;9d36
	ld a,070h		;9d38
	out (c),a		;9d3a
	ei			;9d3c
	ret			;9d3d
L_9D3E:
	push bc			;9d3e
	push hl			;9d3f
	push de			;9d40
	call 08281h		;9d41
	ld a,l			;9d44
	add a,080h		;9d45
	ld l,a			;9d47
	ld bc,00808h		;9d48
	ld a,048h		;9d4b
	call 0820ch		;9d4d
	pop de			;9d50
	pop hl			;9d51
	pop bc			;9d52
	ret			;9d53

; ----------------------------------------------------------------------
; DATOS leido_9D54: lo usa el codigo: 0x9D62 ld (09d54h),bc; 0x9D74 ld
;   a,(09d55h) -> 0x8266 (copia de la VRAM) (en +1); 0x9D87 ld a,(09d55h) ->
;   0x8224 (copia a la VRAM) (en +1); 0x9D66 ld (09d56h),hl (en +2) (6 bytes)
;   0x9d54..0x9d5a  (6 bytes)
DATA_leido_9D54:
	defb 002h,000h,084h,002h,003h,001h	; 9d54

; ======================================================================
; CODIGO 0x9d5a..0x9dd8  (126 bytes)
; ======================================================================


L_9D5A:
	srl b		;9d5a
	ex de,hl			;9d5c
	push hl			;9d5d
	call L_9DCC		;9d5e
	pop de			;9d61
	ld (09d54h),bc		;9d62
	ld (09d56h),hl		;9d66
	ld (09d58h),de		;9d69
L_9D6D:
	push bc			;9d6d
	ld hl,(09d56h)		;9d6e
	ld de,0d300h		;9d71
	ld a,(09d55h)		;9d74
	ld c,a			;9d77
	ld b,000h		;9d78
	call 08266h		;9d7a
	call L_9DA0		;9d7d
	ld de,(09d56h)		;9d80
	ld hl,0d300h		;9d84
	ld a,(09d55h)		;9d87
	ld c,a			;9d8a
	ld b,000h		;9d8b
	call 08224h		;9d8d
	ld hl,(09d56h)		;9d90
	ld a,080h		;9d93
	call 08221h		;9d95
	ld (09d56h),hl		;9d98
	pop bc			;9d9b
	dec c			;9d9c
	jr nz,L_9D6D		;9d9d
	ret			;9d9f
L_9DA0:
	ld hl,0d300h		;9da0
	ld de,(09d58h)		;9da3
	ld a,(09d55h)		;9da7
	ld b,a			;9daa
L_9DAB:
	ld a,(hl)			;9dab
	rra			;9dac
	rra			;9dad
	rra			;9dae
	rra			;9daf
	and 00fh		;9db0
	cp d			;9db2
	jr nz,L_9DB6		;9db3
	ld a,e			;9db5
L_9DB6:
	rla			;9db6
	rla			;9db7
	rla			;9db8
	rla			;9db9
	and 0f0h		;9dba
	ld c,a			;9dbc
	ld a,(hl)			;9dbd
	and 00fh		;9dbe
	cp d			;9dc0
	jr nz,L_9DC4		;9dc1
	ld a,e			;9dc3
L_9DC4:
	and 00fh		;9dc4
	or c			;9dc6
	ld (hl),a			;9dc7
	inc hl			;9dc8
	djnz L_9DAB		;9dc9
	ret			;9dcb
L_9DCC:
	srl e		;9dcc
	rr d		;9dce
	ld h,e			;9dd0
	ld l,d			;9dd1
	ld de,(0d223h)		;9dd2
	add hl,de			;9dd6
	ret			;9dd7

; ----------------------------------------------------------------------
; DATOS resto_9DD8: nadie lo lee; son los mismos bytes que p20, p23 en esta
;   misma direccion: lo que habia en la memoria al grabar (40 bytes)
;   0x9dd8..0x9e00  (40 bytes)
DATA_resto_9DD8:
	defb 082h,0c7h,00fh,008h,000h,081h,060h,007h,0e0h,08ah,008h,010h,020h,040h,000h,000h	; 9dd8  ......`..... @..
	defb 008h,010h,028h,070h,006h,000h,094h,070h,030h,000h,010h,001h,051h,030h,050h,030h	; 9de8  ..(p...p0...Q0P0
	defb 050h,031h,051h,030h,050h,030h,050h,007h	; 9df8  P1Q0P0P.
