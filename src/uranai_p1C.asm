; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p1C (se ejecuta en 0x9A00)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09a00


; ======================================================================
; CODIGO 0x9a00..0x9a33  (51 bytes)
; ======================================================================


L_9A00:
	jp L_9A58		;9a00
L_9A03:
	jp L_9B3D		;9a03
L_9A06:
	jp L_9BE3		;9a06
L_9A09:
	jp L_9BED		;9a09
L_9A0C:
	jp L_9BF5		;9a0c
L_9A0F:
	jp L_9C13		;9a0f
L_9A12:
	jp L_9C1F		;9a12
L_9A15:
	jp L_9C3A		;9a15
L_9A18:
	jp L_9C47		;9a18
L_9A1B:
	jp L_9E45		;9a1b
L_9A1E:
	jp L_9ED5		;9a1e
L_9A21:
	jp L_9EEF		;9a21
L_9A24:
	jp L_9EF0		;9a24
L_9A27:
	jp L_A1E2		;9a27
L_9A2A:
	jp L_A29A		;9a2a
L_9A2D:
	jp L_9A99		;9a2d
L_9A30:
	jp L_9AE8		;9a30

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a33..0x9a58  (37 bytes)
DATA_9A33:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9a33  ................
	defb 000h,01bh,054h,031h,036h,00dh,00ah,0ffh,01bh,053h,030h,030h,033h,034h,0ffh,01bh	; 9a43  ..T16....S0034..
	defb 049h,030h,031h,037h,0ffh	; 9a53

; ======================================================================
; CODIGO 0x9a58..0x9b2d  (213 bytes)
; ======================================================================


L_9A58:
	ld a,001h		;9a58
	ld (09bc5h),a		;9a5a
	ld a,001h		;9a5d
	call L_A2F2		;9a5f
	ld hl,05800h		;9a62
	ld a,(0d1eeh)		;9a65
	ld b,000h		;9a68
	cp 004h		;9a6a
	jr z,L_9A6F		;9a6c
	inc b			;9a6e
L_9A6F:
	ld a,b			;9a6f
	call 0826ch		;9a70
	or a			;9a73
	ld de,03800h		;9a74
	sbc hl,de		;9a77
	ld (0a2dfh),hl		;9a79
	ld (0a2e7h),hl		;9a7c
	xor a			;9a7f
	ld (09b8ch),a		;9a80
	ld hl,00080h		;9a83
	call L_9ACF		;9a86
	call L_9B31		;9a89
	ld c,080h		;9a8c
	ld a,(0d1eeh)		;9a8e
	cp 004h		;9a91
	jp z,L_A2E6		;9a93
	jp L_A2D9		;9a96
L_9A99:
	ld a,001h		;9a99
	ld (09bc5h),a		;9a9b
	ld b,002h		;9a9e
	ld a,(0d1eeh)		;9aa0
	cp 004h		;9aa3
	jr z,L_9AA8		;9aa5
	inc b			;9aa7
L_9AA8:
	ld a,b			;9aa8
	call L_A2F2		;9aa9
	ld hl,05800h		;9aac
	ld (0a2dfh),hl		;9aaf
	ld (0a2e7h),hl		;9ab2
	xor a			;9ab5
	ld (09b8ch),a		;9ab6
	ld hl,000ach		;9ab9
	call L_9ACF		;9abc
	call L_9B31		;9abf
	ld c,0ach		;9ac2
	ld a,(0d1eeh)		;9ac4
	cp 004h		;9ac7
	jp z,L_A2E6		;9ac9
	jp L_A2D9		;9acc
L_9ACF:
	push af			;9acf
	push bc			;9ad0
	ld a,(0d1eeh)		;9ad1
	cp 002h		;9ad4
	jr nz,L_9AE5		;9ad6
	ld bc,000a0h		;9ad8
	ld a,(09bc5h)		;9adb
	or a			;9ade
	jr z,L_9AE4		;9adf
	ld bc,000f0h		;9ae1
L_9AE4:
	add hl,bc			;9ae4
L_9AE5:
	pop bc			;9ae5
	pop af			;9ae6
	ret			;9ae7
L_9AE8:
	ld a,001h		;9ae8
	ld (09bc5h),a		;9aea
	ld b,004h		;9aed
	ld a,(0d1eeh)		;9aef
	cp 004h		;9af2
	jr z,L_9AF8		;9af4
	ld b,008h		;9af6
L_9AF8:
	ld a,(0d1d6h)		;9af8
	add a,b			;9afb
	call L_A2F2		;9afc
	ld hl,05800h		;9aff
	ld (0a2dfh),hl		;9b02
	ld (0a2e7h),hl		;9b05
	xor a			;9b08
	ld (09b8ch),a		;9b09
	ld hl,09b2dh		;9b0c
	ld a,(0d1d6h)		;9b0f
	call 08221h		;9b12
	ld a,(hl)			;9b15
	push af			;9b16
	ld l,a			;9b17
	ld h,000h		;9b18
	call L_9ACF		;9b1a
	call L_9B31		;9b1d
	pop af			;9b20
	ld c,a			;9b21
	ld a,(0d1eeh)		;9b22
	cp 004h		;9b25
	jp z,L_A2E6		;9b27
	jp L_A2D9		;9b2a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9b2d..0x9b31  (4 bytes)
DATA_9B2D:
	defb 0b8h,0a0h,094h,094h	; 9b2d

; ======================================================================
; CODIGO 0x9b31..0x9bc5  (148 bytes)
; ======================================================================


L_9B31:
	ld a,(0d1eeh)		;9b31
	bit 0,a		;9b34
	jp z,L_9E9D		;9b36
	add hl,hl			;9b39
	jp L_9E9D		;9b3a
L_9B3D:
	call L_9C13		;9b3d
	ld a,c			;9b40
	ld (09a33h),a		;9b41
	ld a,(0d1eeh)		;9b44
	cp 002h		;9b47
	call z,L_9B67		;9b49
L_9B4C:
	ld a,(hl)			;9b4c
	inc hl			;9b4d
	ld b,a			;9b4e
	and a			;9b4f
	jr z,L_9BA5		;9b50
	jp p,L_9B7C		;9b52
	res 7,b		;9b55
L_9B57:
	ld a,(hl)			;9b57
	inc hl			;9b58
	call L_9BF5		;9b59
	call L_9BC6		;9b5c
	dec c			;9b5f
	call z,L_9B8C		;9b60
	djnz L_9B57		;9b63
	jr L_9B4C		;9b65
L_9B67:
	push bc			;9b67
	push af			;9b68
	ld b,0a0h		;9b69
	ld a,(09bc5h)		;9b6b
	or a			;9b6e
	jr z,L_9B73		;9b6f
	ld b,0f0h		;9b71
L_9B73:
	xor a			;9b73
	call L_9BF5		;9b74
	djnz L_9B73		;9b77
	pop af			;9b79
	pop bc			;9b7a
	ret			;9b7b
L_9B7C:
	ld a,(hl)			;9b7c
	call L_9BF5		;9b7d
	call L_9BC6		;9b80
	dec c			;9b83
	call z,L_9B8C		;9b84
	djnz L_9B7C		;9b87
	inc hl			;9b89
	jr L_9B4C		;9b8a
L_9B8C:
	nop			;9b8c
	ld a,(0d1eeh)		;9b8d
	cp 004h		;9b90
	call nz,L_9BE3		;9b92
	call L_9C13		;9b95
	ld a,(0d1eeh)		;9b98
	cp 002h		;9b9b
	call z,L_9B67		;9b9d
	ld a,(09a33h)		;9ba0
	ld c,a			;9ba3
	ret			;9ba4
L_9BA5:
	ld a,(0d1eeh)		;9ba5
	or a			;9ba8
	jr z,L_9BB6		;9ba9
	dec a			;9bab
	jr z,L_9BB6		;9bac
	dec a			;9bae
	jr z,L_9BB6		;9baf
	dec a			;9bb1
	jr z,L_9BB6		;9bb2
	ld a,00fh		;9bb4
L_9BB6:
	call L_9BF5		;9bb6
	call L_9BC6		;9bb9
	ld a,(09a34h)		;9bbc
	or a			;9bbf
	call z,L_9BE3		;9bc0
	xor a			;9bc3
	ret			;9bc4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9bc5..0x9bc6  (1 bytes)
DATA_9BC5:
	defb 000h	; 9bc5

; ======================================================================
; CODIGO 0x9bc6..0x9d8d  (455 bytes)
; ======================================================================


L_9BC6:
	push bc			;9bc6
	ld b,a			;9bc7
	ld a,(09bc5h)		;9bc8
	or a			;9bcb
	jr z,L_9BD9		;9bcc
	ld a,(0d1eeh)		;9bce
	bit 0,a		;9bd1
	ld a,b			;9bd3
	call nz,L_9BF5		;9bd4
	pop bc			;9bd7
	ret			;9bd8
L_9BD9:
	ld a,(0d1eeh)		;9bd9
	dec a			;9bdc
	ld a,b			;9bdd
	call z,L_9BF5		;9bde
	pop bc			;9be1
	ret			;9be2
L_9BE3:
	ld a,00dh		;9be3
	call L_9BF5		;9be5
	ld a,00ah		;9be8
	jp L_9BF5		;9bea
L_9BED:
	ld b,008h		;9bed
L_9BEF:
	call L_9BE3		;9bef
	djnz L_9BEF		;9bf2
	ret			;9bf4
L_9BF5:
	push ix		;9bf5
	push hl			;9bf7
	push de			;9bf8
	push bc			;9bf9
	push af			;9bfa
	push af			;9bfb
L_9BFC:
	call 09803h		;9bfc
	call 000a8h		;9bff   ; BIOS LPTSTT - Tests printer status
	jr z,L_9BFC		;9c02
	cp 0ffh		;9c04
	jr nz,L_9BFC		;9c06
	pop af			;9c08
	call 000a5h		;9c09   ; BIOS LPTOUT - Sends one character to printer
	pop af			;9c0c
	pop bc			;9c0d
	pop de			;9c0e
	pop hl			;9c0f
	pop ix		;9c10
	ret			;9c12
L_9C13:
	push af			;9c13
	push hl			;9c14
	push de			;9c15
	push bc			;9c16
	call L_9C3A		;9c17
	pop bc			;9c1a
	pop de			;9c1b
	pop hl			;9c1c
	pop af			;9c1d
	ret			;9c1e
L_9C1F:
	ld a,(0d1eeh)		;9c1f
	cp 004h		;9c22
	ret nc			;9c24
	ld de,03234h		;9c25
	cp 002h		;9c28
	jr z,L_9C2F		;9c2a
	ld de,03136h		;9c2c
L_9C2F:
	ld a,d			;9c2f
	ld (09a46h),a		;9c30
	ld a,e			;9c33
	ld (09a47h),a		;9c34
	ld de,09a44h		;9c37
L_9C3A:
	ld a,(de)			;9c3a
	inc a			;9c3b
	ld (09a40h),a		;9c3c
	ret z			;9c3f
	dec a			;9c40
	call L_9BF5		;9c41
	inc de			;9c44
	jr L_9C3A		;9c45
L_9C47:
	ld hl,06a00h		;9c47
	ld (09cedh),hl		;9c4a
L_9C4D:
	xor a			;9c4d
	ld (09a3fh),a		;9c4e
	ld (09bc5h),a		;9c51
	ld hl,0d300h		;9c54
	ld (09a3ch),hl		;9c57
L_9C5A:
	ld hl,(09a3ch)		;9c5a
	ld de,(09a38h)		;9c5d
	ld a,(de)			;9c61
	inc a			;9c62
	ld (hl),a			;9c63
	ld (09a37h),a		;9c64
	ret z			;9c67
	call L_9CC6		;9c68
	jp z,L_9CFE		;9c6b
	inc a			;9c6e
	ld (hl),a			;9c6f
	ret z			;9c70
	inc a			;9c71
	jp z,L_9CF6		;9c72
	inc a			;9c75
	jp z,L_9D0A		;9c76
	inc a			;9c79
	jp z,L_9CFE		;9c7a
	ld b,00ch		;9c7d
	ld a,(0d1eeh)		;9c7f
	cp 001h		;9c82
	jr z,L_9C8C		;9c84
	cp 004h		;9c86
	jr z,L_9C8C		;9c88
	ld b,018h		;9c8a
L_9C8C:
	ld a,(09a3fh)		;9c8c
	cp b			;9c8f
	ld a,000h		;9c90
	ld (hl),a			;9c92
	ret nc			;9c93
	ld a,090h		;9c94
	ld (hl),a			;9c96
	inc hl			;9c97
	ld (09a3ch),hl		;9c98
	ld a,(de)			;9c9b
	push af			;9c9c
	call L_9DD5		;9c9d
	pop af			;9ca0
	inc de			;9ca1
	ld (09a38h),de		;9ca2
	ld b,a			;9ca6
	ld a,(0d1ffh)		;9ca7
	or a			;9caa
	jr nz,L_9CBA		;9cab
	ld a,b			;9cad
	add a,042h		;9cae
	cp 019h		;9cb0
	jp c,L_9D5C		;9cb2
	cp 03dh		;9cb5
	jp c,L_9D62		;9cb7
L_9CBA:
	ld a,b			;9cba
	call L_9CE4		;9cbb
	ld de,00000h		;9cbe
L_9CC1:
	call L_9DF6		;9cc1
	jr L_9C5A		;9cc4
L_9CC6:
	ld b,a			;9cc6
	ld a,(0d1eeh)		;9cc7
	cp 001h		;9cca
	jr z,L_9CDD		;9ccc
	cp 004h		;9cce
	jr z,L_9CDD		;9cd0
	ld a,b			;9cd2
	cp 0ffh		;9cd3
	ret nz			;9cd5
	ld a,(09a3fh)		;9cd6
	cp 00dh		;9cd9
	jr c,L_9CE1		;9cdb
L_9CDD:
	or 0ffh		;9cdd
	ld a,b			;9cdf
	ret			;9ce0
L_9CE1:
	xor a			;9ce1
	ld a,b			;9ce2
	ret			;9ce3
L_9CE4:
	push hl			;9ce4
	ld hl,04006h		;9ce5
	cp 053h		;9ce8
	jr c,L_9CF1		;9cea
	ld hl,06a00h		;9cec
	sub 053h		;9cef
L_9CF1:
	ld (09cbfh),hl		;9cf1
	pop hl			;9cf4
	ret			;9cf5
L_9CF6:
	ld a,(0d1ffh)		;9cf6
	xor 001h		;9cf9
	ld (0d1ffh),a		;9cfb
L_9CFE:
	ld de,(09a38h)		;9cfe
	inc de			;9d02
	ld (09a38h),de		;9d03
	jp L_9C5A		;9d07
L_9D0A:
	ld a,002h		;9d0a
	ld (09a3eh),a		;9d0c
	ld b,004h		;9d0f
	ld hl,0d218h		;9d11
L_9D14:
	push bc			;9d14
	ld a,(hl)			;9d15
	inc hl			;9d16
	cp 043h		;9d17
	jr z,L_9D3D		;9d19
	cp 044h		;9d1b
	jr z,L_9D3D		;9d1d
	cp 0ffh		;9d1f
	jr nz,L_9D24		;9d21
	xor a			;9d23
L_9D24:
	ld de,04006h		;9d24
L_9D27:
	push hl			;9d27
	push af			;9d28
	ld hl,(09a3ch)		;9d29
	ld a,090h		;9d2c
	ld (hl),a			;9d2e
	inc hl			;9d2f
	ld (09a3ch),hl		;9d30
	pop af			;9d33
	call L_9DF6		;9d34
	pop hl			;9d37
	pop bc			;9d38
	djnz L_9D14		;9d39
	jr L_9CFE		;9d3b
L_9D3D:
	cp 044h		;9d3d
	jr z,L_9D51		;9d3f
	ld a,(hl)			;9d41
	inc hl			;9d42
	cp 01ah		;9d43
	jr nc,L_9D4B		;9d45
	sub 006h		;9d47
	jr L_9D57		;9d49
L_9D4B:
	sub 01ah		;9d4b
	add a,00fh		;9d4d
	jr L_9D57		;9d4f
L_9D51:
	ld a,(hl)			;9d51
	inc hl			;9d52
	sub 01ah		;9d53
	add a,014h		;9d55
L_9D57:
	ld de,04a66h		;9d57
	jr L_9D27		;9d5a
L_9D5C:
	ld de,04a66h		;9d5c
	jp L_9CC1		;9d5f
L_9D62:
	sub 019h		;9d62
	ld hl,09d8dh		;9d64
	add a,a			;9d67
	call 08221h		;9d68
	ld c,(hl)			;9d6b
	inc hl			;9d6c
	ld b,(hl)			;9d6d
	push bc			;9d6e
	ld a,c			;9d6f
	cp 0beh		;9d70
	ld de,04006h		;9d72
	jr c,L_9D7C		;9d75
	sub 0beh		;9d77
	ld de,04a66h		;9d79
L_9D7C:
	call L_9DF6		;9d7c
	ld hl,(09a3ch)		;9d7f
	ld a,090h		;9d82
	ld (hl),a			;9d84
	inc hl			;9d85
	ld (09a3ch),hl		;9d86
	pop bc			;9d89
	jp L_9CBA		;9d8a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d8d..0x9dd5  (72 bytes)
DATA_9D8D:
	defb 007h,02fh,007h,030h,007h,031h,00ch,02fh,00ch,030h,00ch,031h,011h,02fh,011h,030h	; 9d8d  ./.0.1./.0.1./.0
	defb 011h,031h,016h,02fh,016h,030h,016h,031h,01bh,02fh,01bh,030h,01bh,031h,020h,02fh	; 9d9d  .1./.0.1./.0.1 /
	defb 020h,030h,020h,031h,028h,02fh,028h,030h,028h,031h,0bfh,02fh,0bfh,030h,0bfh,031h	; 9dad   0 1(/(0(1./.0.1
	defb 0c4h,02fh,0c4h,030h,0c4h,031h,0c9h,02fh,0c9h,030h,0c9h,031h,0ceh,02fh,0ceh,030h	; 9dbd  ./.0.1./.0.1./.0
	defb 0ceh,031h,0d3h,02fh,0d3h,030h,0d3h,031h	; 9dcd  .1./.0.1

; ======================================================================
; CODIGO 0x9dd5..0xa044  (623 bytes)
; ======================================================================


L_9DD5:
	ld c,008h		;9dd5
	sub 04fh		;9dd7
	cp 004h		;9dd9
	jr c,L_9DDF		;9ddb
	ld c,001h		;9ddd
L_9DDF:
	ld a,c			;9ddf
	ld (09a3eh),a		;9de0
	ret			;9de3
L_9DE4:
	call L_9DE9		;9de4
	add hl,hl			;9de7
	ret			;9de8
L_9DE9:
	ld l,a			;9de9
	ld h,000h		;9dea
	add hl,hl			;9dec
	add hl,hl			;9ded
	add hl,hl			;9dee
	add hl,hl			;9def
	ld a,l			;9df0
	inc a			;9df1
	ld (L_9EEA+1),a		;9df2
	ret			;9df5
L_9DF6:
	call L_9DE4		;9df6
	add hl,de			;9df9
	ld a,(09a36h)		;9dfa
	or a			;9dfd
	jr z,L_9E04		;9dfe
	ld de,00010h		;9e00
	add hl,de			;9e03
L_9E04:
	ld a,(0d1eeh)		;9e04
	cp 004h		;9e07
	jr nc,L_9E1D		;9e09
	ld de,(09a3ch)		;9e0b
	ld bc,00010h		;9e0f
	ldir		;9e12
	ld (09a3ch),de		;9e14
L_9E18:
	ld hl,09a3fh		;9e18
	inc (hl)			;9e1b
	ret			;9e1c
L_9E1D:
	ld b,010h		;9e1d
	ld de,(09a3ch)		;9e1f
L_9E23:
	push bc			;9e23
	push de			;9e24
	ld a,(09a35h)		;9e25
	ld b,a			;9e28
	ld a,(hl)			;9e29
L_9E2A:
	rra			;9e2a
	push af			;9e2b
	pop de			;9e2c
	djnz L_9E2A		;9e2d
	ld a,00fh		;9e2f
	bit 0,e		;9e31
	jr z,L_9E38		;9e33
	ld a,(09a3eh)		;9e35
L_9E38:
	pop de			;9e38
	ld (de),a			;9e39
	inc de			;9e3a
	ld (09a3ch),de		;9e3b
	inc hl			;9e3f
	pop bc			;9e40
	djnz L_9E23		;9e41
	jr L_9E18		;9e43
L_9E45:
	ld a,(09a3fh)		;9e45
	call L_9E91		;9e48
	call L_9ACF		;9e4b
	call L_9E9D		;9e4e
	ld h,032h		;9e51
	ld a,(0d1eeh)		;9e53
	dec a			;9e56
	jr z,L_9E5A		;9e57
	dec h			;9e59
L_9E5A:
	ld a,l			;9e5a
	add a,h			;9e5b
	cp 03ah		;9e5c
	jr nc,L_9E67		;9e5e
	ld (09a50h),a		;9e60
	ld (09a56h),a		;9e63
	ret			;9e66
L_9E67:
	sub 00ah		;9e67
	ld (09a50h),a		;9e69
	ld (09a56h),a		;9e6c
	ld a,(09a4fh)		;9e6f
	inc a			;9e72
	cp 03ah		;9e73
	jr nc,L_9E7E		;9e75
	ld (09a4fh),a		;9e77
	ld (09a55h),a		;9e7a
	ret			;9e7d
L_9E7E:
	sub 00ah		;9e7e
	ld (09a4fh),a		;9e80
	ld (09a55h),a		;9e83
	ld a,(09a4eh)		;9e86
	inc a			;9e89
	ld (09a4eh),a		;9e8a
	ld (09a54h),a		;9e8d
	ret			;9e90
L_9E91:
	ld b,a			;9e91
	ld a,(0d1eeh)		;9e92
	dec a			;9e95
	ld a,b			;9e96
	jp z,L_9DE4		;9e97
	jp L_9DE9		;9e9a
L_9E9D:
	ld c,000h		;9e9d
L_9E9F:
	ld de,00064h		;9e9f
	xor a			;9ea2
	sbc hl,de		;9ea3
	jr c,L_9EAA		;9ea5
	inc c			;9ea7
	jr L_9E9F		;9ea8
L_9EAA:
	add hl,de			;9eaa
	ld a,c			;9eab
	add a,030h		;9eac
	ld (09a4eh),a		;9eae
	ld (09a54h),a		;9eb1
	ld c,000h		;9eb4
L_9EB6:
	ld de,0000ah		;9eb6
	xor a			;9eb9
	sbc hl,de		;9eba
	jr c,L_9EC1		;9ebc
	inc c			;9ebe
	jr L_9EB6		;9ebf
L_9EC1:
	add hl,de			;9ec1
	ld a,c			;9ec2
	add a,030h		;9ec3
	ld (09a4fh),a		;9ec5
	ld (09a55h),a		;9ec8
	ld a,l			;9ecb
	add a,030h		;9ecc
	ld (09a50h),a		;9ece
	ld (09a56h),a		;9ed1
	ret			;9ed4
L_9ED5:
	ld a,0c9h		;9ed5
	ld (09b8ch),a		;9ed7
	ld hl,0d300h		;9eda
	ld de,09a4bh		;9edd
	ld a,(0d1eeh)		;9ee0
	cp 004h		;9ee3
	jr c,L_9EEA		;9ee5
	ld de,09a52h		;9ee7
L_9EEA:
	ld c,000h		;9eea
	jp L_9B3D		;9eec
L_9EEF:
	ret			;9eef
L_9EF0:
	xor a			;9ef0
	ld (09bc5h),a		;9ef1
	ld hl,0a0afh		;9ef4
	ld de,0a064h		;9ef7
	ld bc,0004bh		;9efa
	ldir		;9efd
	call L_9F8B		;9eff
	ld hl,0a064h		;9f02
	ld (09f1ah),hl		;9f05
	ld hl,04d86h		;9f08
	ld (L_9F32+1),hl		;9f0b
L_9F0E:
	call L_9C1F		;9f0e
	xor a			;9f11
	ld (09a36h),a		;9f12
	inc a			;9f15
	ld (09a37h),a		;9f16
	ld hl,0a064h		;9f19
	ld (09a38h),hl		;9f1c
	ld (09a3ah),hl		;9f1f
	ld a,(0d1eeh)		;9f22
	cp 004h		;9f25
	ld a,001h		;9f27
	jr nc,L_9F2C		;9f29
	xor a			;9f2b
L_9F2C:
	ld (09a34h),a		;9f2c
	ld (09a35h),a		;9f2f
L_9F32:
	ld hl,04d86h		;9f32
	ld (09cedh),hl		;9f35
	call L_9C4D		;9f38
	call L_9E45		;9f3b
	call L_9ED5		;9f3e
	ld a,(0d1eeh)		;9f41
	cp 004h		;9f44
	jr c,L_9F58		;9f46
	ld a,(09a35h)		;9f48
	inc a			;9f4b
	cp 009h		;9f4c
	ld (09a35h),a		;9f4e
	jr c,L_9F62		;9f51
	ld a,001h		;9f53
	ld (09a35h),a		;9f55
L_9F58:
	ld a,(09a36h)		;9f58
	xor 001h		;9f5b
	ld (09a36h),a		;9f5d
	jr z,L_9F6A		;9f60
L_9F62:
	ld hl,(09a3ah)		;9f62
	ld (09a38h),hl		;9f65
	jr L_9F32		;9f68
L_9F6A:
	ld a,(0d1eeh)		;9f6a
	cp 004h		;9f6d
	call nc,L_9BE3		;9f6f
	call L_9BE3		;9f72
	ld hl,(09a38h)		;9f75
	ld a,(hl)			;9f78
	cp 0feh		;9f79
	jr nz,L_9F7E		;9f7b
	inc hl			;9f7d
L_9F7E:
	ld (09a3ah),hl		;9f7e
	ld (09a38h),hl		;9f81
	ld a,(09a37h)		;9f84
	or a			;9f87
	jr nz,L_9F32		;9f88
	ret			;9f8a
L_9F8B:
	xor a			;9f8b
	ld (09a41h),a		;9f8c
	ld hl,0d218h		;9f8f
	ld de,0a068h		;9f92
L_9F95:
	ld a,(09a41h)		;9f95
	cp 004h		;9f98
	jr nc,L_9FB0		;9f9a
	ld a,(hl)			;9f9c
	cp 0ffh		;9f9d
	jr z,L_9FB0		;9f9f
	call L_A007		;9fa1
	ld (de),a			;9fa4
	ld a,(09a41h)		;9fa5
	inc a			;9fa8
	ld (09a41h),a		;9fa9
	inc hl			;9fac
	inc de			;9fad
	jr L_9F95		;9fae
L_9FB0:
	call L_A026		;9fb0
	ld de,0000fh		;9fb3
	add hl,de			;9fb6
	push hl			;9fb7
	ld de,0a081h		;9fb8
	call L_A05B		;9fbb
	pop hl			;9fbe
	inc hl			;9fbf
	push hl			;9fc0
	ld de,0a084h		;9fc1
	call L_A05B		;9fc4
	pop hl			;9fc7
	inc hl			;9fc8
	push hl			;9fc9
	ld de,0a087h		;9fca
	call L_A05B		;9fcd
	pop hl			;9fd0
	inc hl			;9fd1
	push hl			;9fd2
	ld de,0a092h		;9fd3
	call L_A05B		;9fd6
	pop hl			;9fd9
	inc hl			;9fda
	push hl			;9fdb
	ld de,0a095h		;9fdc
	call L_A05B		;9fdf
	pop hl			;9fe2
	inc hl			;9fe3
	inc hl			;9fe4
	push hl			;9fe5
	ld a,(hl)			;9fe6
	ld hl,0a0fah		;9fe7
	add a,a			;9fea
	call 08221h		;9feb
	ld de,0a0a1h		;9fee
	ld b,002h		;9ff1
L_9FF3:
	ld a,(hl)			;9ff3
	ld (de),a			;9ff4
	inc hl			;9ff5
	inc de			;9ff6
	djnz L_9FF3		;9ff7
	pop hl			;9ff9
	inc hl			;9ffa
	ld a,(hl)			;9ffb
	or a			;9ffc
	ld a,063h		;9ffd
	jr z,L_A003		;9fff
	ld a,064h		;a001
L_A003:
	ld (0a0ach),a		;a003
	ret			;a006
L_A007:
	inc hl			;a007
	ld b,a			;a008
	cp 043h		;a009
	jr z,L_A014		;a00b
	cp 044h		;a00d
	jr z,L_A020		;a00f
	ld a,b			;a011
	dec hl			;a012
	ret			;a013
L_A014:
	ld a,(hl)			;a014
	sub 006h		;a015
	cp 014h		;a017
	jr c,L_A01D		;a019
	sub 005h		;a01b
L_A01D:
	add a,0beh		;a01d
	ret			;a01f
L_A020:
	ld a,(hl)			;a020
	sub 01ah		;a021
	add a,0d2h		;a023
	ret			;a025
L_A026:
	call L_A036		;a026
	add hl,hl			;a029
	add hl,hl			;a02a
	add hl,hl			;a02b
	add hl,hl			;a02c
	push hl			;a02d
	pop bc			;a02e
	add hl,hl			;a02f
	add hl,bc			;a030
	ld de,0d700h		;a031
	add hl,de			;a034
	ret			;a035
L_A036:
	ld a,(0d1d6h)		;a036
	ld hl,0a044h		;a039
	call 0826ch		;a03c
	ld a,(hl)			;a03f
	ld l,a			;a040
	ld h,000h		;a041
	ret			;a043

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa044..0xa04c  (8 bytes)
DATA_A044:
	defb 0f2h,0dah,0f1h,0dah,0f0h,0dah,0f6h,0dah	; a044  ........

; ======================================================================
; CODIGO 0xa04c..0xa064  (24 bytes)
; ======================================================================


L_A04C:
	rlca			;a04c
	rlca			;a04d
	rlca			;a04e
	rlca			;a04f
	and 00fh		;a050
	jr z,L_A058		;a052
L_A054:
	and 00fh		;a054
	add a,036h		;a056
L_A058:
	ld (hl),a			;a058
	inc hl			;a059
	ret			;a05a
L_A05B:
	ld a,(hl)			;a05b
	ex de,hl			;a05c
	push af			;a05d
	call L_A04C		;a05e
	pop af			;a061
	jr L_A054		;a062

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa064..0xa1e2  (382 bytes)
DATA_A064:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh	; a064  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a074  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h	; a084  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh	; a094  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,053h,054h,055h,000h,000h	; a0a4  ...........STU..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0feh,056h	; a0b4  ...............V
	defb 057h,058h,059h,055h,000h,0feh,065h,066h,000h,000h,057h,000h,000h,058h,000h,000h	; a0c4  WXYU..ef..W..X..
	defb 059h,0feh,05ah,056h,05bh,05ch,055h,000h,0feh,000h,000h,05bh,000h,000h,05dh,000h	; a0d4  Y.ZV[\U....[..].
	defb 000h,000h,0feh,05eh,05fh,060h,055h,000h,000h,000h,060h,000h,000h,000h,0feh,061h	; a0e4  ...^_`U...`....a
	defb 062h,055h,000h,000h,061h,0ffh,000h,042h,000h,040h,000h,041h,040h,041h,053h,054h	; a0f4  bU..a..B.@.A@AST
	defb 055h,056h,057h,058h,059h,05ah,05bh,05ch,05dh,05eh,05fh,060h,060h,061h,062h,063h	; a104  UVWXYZ[\]^_``abc
	defb 064h,065h,066h,067h,068h,069h,06ah,06bh,06ch,06dh,06eh,063h,06fh,070h,071h,072h	; a114  defghijklmncopqr
	defb 073h,072h,074h,075h,076h,077h,05fh,078h,079h,07ah,046h,0a1h,052h,0a1h,05bh,0a1h	; a124  srtuvw_xyzF.R.[.
	defb 068h,0a1h,06fh,0a1h,079h,0a1h,087h,0a1h,092h,0a1h,0c2h,0a1h,0a8h,0a1h,09dh,0a1h	; a134  h.o.y...........
	defb 0b4h,0a1h,00bh,007h,027h,02ch,02ah,015h,002h,010h,022h,016h,01ah,0ffh,008h,054h	; a144  ....',*..."....T
	defb 02dh,000h,012h,0c1h,029h,07ch,0ffh,00ch,0cch,02eh,015h,000h,07fh,000h,080h,016h	; a154  -...)|..........
	defb 015h,029h,006h,0ffh,006h,038h,067h,019h,081h,05bh,0ffh,009h,056h,0cch,023h,019h	; a164  .)...8g..[..V.#.
	defb 00ch,012h,009h,079h,0ffh,00dh,024h,029h,082h,02dh,000h,06fh,00bh,00eh,029h,079h	; a174  ...y..$).-.o..)y
	defb 083h,052h,0ffh,00ah,0c5h,0cdh,028h,000h,055h,056h,019h,081h,05bh,0ffh,00ah,020h	; a184  .R....(.UV..[..
	defb 014h,022h,013h,023h,027h,003h,016h,01ah,0ffh,00ah,084h,085h,019h,000h,003h,028h	; a194  .".#'..........(
	defb 00ah,020h,079h,0ffh,00bh,07dh,088h,016h,068h,086h,02dh,07eh,003h,07ch,01ah,0ffh	; a1a4  . y..}..h.-~.|..
	defb 00dh,087h,088h,02dh,089h,08ah,016h,012h,006h,003h,079h,083h,052h,0ffh,00bh,089h	; a1b4  ...-......y.R...
	defb 08ah,015h,087h,088h,019h,00ch,006h,028h,079h,0ffh,0ffh,0ffh,000h,000h,000h,000h	; a1c4  .......(y.......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh	; a1d4  ..............

; ======================================================================
; CODIGO 0xa1e2..0xa23d  (91 bytes)
; ======================================================================


L_A1E2:
	xor a			;a1e2
	ld (09bc5h),a		;a1e3
	call L_A237		;a1e6
	ld a,(0a1e0h)		;a1e9
	call L_A1FE		;a1ec
	ld hl,0a1ceh		;a1ef
	ld (09f1ah),hl		;a1f2
	ld hl,05006h		;a1f5
	ld (09f33h),hl		;a1f8
	jp L_9F0E		;a1fb
L_A1FE:
	ld hl,0a102h		;a1fe
	call 0826ch		;a201
	ld de,0a1ceh		;a204
	ld a,l			;a207
	ld (de),a			;a208
	inc de			;a209
	ld a,h			;a20a
	ld (de),a			;a20b
	inc de			;a20c
	ld a,07bh		;a20d
	ld (de),a			;a20f
	inc de			;a210
	ld a,0ffh		;a211
	ld (de),a			;a213
	ld a,(0d1d6h)		;a214
	or a			;a217
	ret nz			;a218
	ld a,(0d217h)		;a219
	cp 004h		;a21c
	ret z			;a21e
	ld a,0feh		;a21f
	ld (de),a			;a221
	inc de			;a222
	ld a,(0a1e1h)		;a223
	push de			;a226
	ld hl,0a12eh		;a227
	call 0826ch		;a22a
	pop de			;a22d
	ld b,(hl)			;a22e
	inc hl			;a22f
L_A230:
	ld a,(hl)			;a230
	ld (de),a			;a231
	inc hl			;a232
	inc de			;a233
	djnz L_A230		;a234
	ret			;a236
L_A237:
	ld a,(0d1d6h)		;a237
	call 0822dh		;a23a

; ----------------------------------------------------------------------
; DATOS saltos_A23D: 4 destinos del despachador (call 0x822D en 0xA23A) (8
;   bytes)
;   0xa23d..0xa245  (8 bytes)
DATA_saltos_A23D:
	defw 0a245h,0a264h,0a276h,0a282h	; a23d  -> L_A245 L_A264 L_A276 L_A282

; ======================================================================
; CODIGO 0xa245..0xa272  (45 bytes)
; ======================================================================


L_A245:
	ld a,(0d217h)		;a245
	dec a			;a248
	ld (0a1e0h),a		;a249
	ld c,a			;a24c
	ld b,003h		;a24d
	dec a			;a24f
	jr z,L_A259		;a250
	ld b,005h		;a252
	dec a			;a254
	jr z,L_A259		;a255
	ld b,000h		;a257
L_A259:
	ld a,c			;a259
	add a,b			;a25a
	ld b,a			;a25b
	ld a,(0d234h)		;a25c
	add a,b			;a25f
	ld (0a1e1h),a		;a260
	ret			;a263
L_A264:
	ld hl,0a272h		;a264
L_A267:
	ld a,(0d217h)		;a267
L_A26A:
	call 08221h		;a26a
	ld a,(hl)			;a26d
	ld (0a1e0h),a		;a26e
	ret			;a271

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa272..0xa276  (4 bytes)
DATA_A272:
	defb 004h,000h,005h,006h	; a272

; ======================================================================
; CODIGO 0xa276..0xa27b  (5 bytes)
; ======================================================================


L_A276:
	ld hl,0a27bh		;a276
	jr $-18		;a279

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa27b..0xa282  (7 bytes)
DATA_A27B:
	defb 006h,005h,000h,007h,000h,004h,008h	; a27b

; ======================================================================
; CODIGO 0xa282..0xa28a  (8 bytes)
; ======================================================================


L_A282:
	ld hl,0a28ah		;a282
	ld a,(09a43h)		;a285
	jr $-30		;a288

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa28a..0xa29a  (16 bytes)
DATA_A28A:
	defb 007h,009h,00ah,00bh,00ch,00dh,00eh,000h,00fh,010h,011h,012h,013h,014h,005h,015h	; a28a  ................

; ======================================================================
; CODIGO 0xa29a..0xa2ef  (85 bytes)
; ======================================================================


L_A29A:
	ld a,001h		;a29a
	ld (09bc5h),a		;a29c
	xor a			;a29f
	call L_A2F2		;a2a0
	ld hl,05800h		;a2a3
	ld a,(0d1eeh)		;a2a6
	cp 004h		;a2a9
	jr z,L_A2B1		;a2ab
	ld de,00010h		;a2ad
	add hl,de			;a2b0
L_A2B1:
	ld a,(09223h)		;a2b1
	call 0826ch		;a2b4
	or a			;a2b7
	ld de,03800h		;a2b8
	sbc hl,de		;a2bb
	ld (0a2dfh),hl		;a2bd
	ld (L_A2E6+1),hl		;a2c0
	xor a			;a2c3
	ld (09b8ch),a		;a2c4
	ld hl,00028h		;a2c7
	call L_9ACF		;a2ca
	call L_9B31		;a2cd
	ld c,028h		;a2d0
	ld a,(0d1eeh)		;a2d2
	cp 004h		;a2d5
	jr z,L_A2E6		;a2d7
L_A2D9:
	push bc			;a2d9
	call L_9C1F		;a2da
	pop bc			;a2dd
	ld hl,05800h		;a2de
	ld de,09a4bh		;a2e1
	jr L_A2EC		;a2e4
L_A2E6:
	ld hl,05800h		;a2e6
	ld de,09a52h		;a2e9
L_A2EC:
	jp L_9B3D		;a2ec

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa2ef..0xa2f2  (3 bytes)
DATA_A2EF:
	defb 000h,0ffh,0ffh	; a2ef

; ======================================================================
; CODIGO 0xa2f2..0xa32c  (58 bytes)
; ======================================================================


L_A2F2:
	ld (0a2f1h),a		;a2f2
L_A2F5:
	ld a,(0a2f1h)		;a2f5
	ld hl,0a32ch		;a2f8
	add a,a			;a2fb
	add a,a			;a2fc
	call 08221h		;a2fd
	ld c,(hl)			;a300
	inc hl			;a301
	ld b,(hl)			;a302
	inc hl			;a303
	ld e,(hl)			;a304
	inc hl			;a305
	ld d,(hl)			;a306
	ex de,hl			;a307
	call L_A325		;a308
	ld de,0b000h		;a30b
	call 08215h		;a30e
	jr c,L_A2F5		;a311
	ld a,0ffh		;a313
	ld (0e0fdh),a		;a315
	ld hl,0b000h		;a318
	ld de,05800h		;a31b
	ld bc,(0a2efh)		;a31e
	ldir		;a322
	ret			;a324
L_A325:
	push hl			;a325
	add hl,hl			;a326
	ld (0a2efh),hl		;a327
	pop hl			;a32a
	ret			;a32b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa32c..0xa400  (212 bytes)
DATA_A32C:
	defb 0b8h,004h,000h,005h,0b7h,004h,000h,001h,0b1h,004h,000h,004h,0b5h,004h,000h,002h	; a32c  ................
	defb 0a8h,004h,000h,007h,0a1h,004h,000h,005h,09ch,004h,000h,004h,097h,004h,000h,004h	; a33c  ................
	defb 0afh,004h,000h,002h,0a6h,004h,000h,002h,0a0h,004h,000h,001h,09bh,004h,000h,001h	; a34c  ................
	defb 000h,000h,000h,000h,0ffh,0ffh,0cbh,038h,0ebh,0e5h,0cdh,0d4h,0a3h,0d1h,0edh,043h	; a35c  .......8.......C
	defb 05ch,0a3h,022h,05eh,0a3h,0edh,053h,060h,0a3h,0c5h,02ah,05eh,0a3h,011h,000h,0d3h	; a36c  \."^..S`..*^....
	defb 03ah,05dh,0a3h,04fh,006h,000h,0cdh,066h,082h,0cdh,0a8h,0a3h,0edh,05bh,05eh,0a3h	; a37c  :].O...f.....[^.
	defb 021h,000h,0d3h,03ah,05dh,0a3h,04fh,006h,000h,0cdh,024h,082h,02ah,05eh,0a3h,03eh	; a38c  !..:].O...$.*^.>
	defb 080h,0cdh,021h,082h,022h,05eh,0a3h,0c1h,00dh,020h,0ceh,0c9h,021h,000h,0d3h,0edh	; a39c  ..!."^... ..!...
	defb 05bh,060h,0a3h,03ah,05dh,0a3h,047h,07eh,01fh,01fh,01fh,01fh,0e6h,00fh,0bah,020h	; a3ac  [`.:].G~.......
	defb 001h,07bh,017h,017h,017h,017h,0e6h,0f0h,04fh,07eh,0e6h,00fh,0bah,020h,001h,07bh	; a3bc  .{......O~... .{
	defb 0e6h,00fh,0b1h,077h,023h,010h,0e0h,0c9h,0cbh,03bh,0cbh,01ah,063h,06ah,0edh,05bh	; a3cc  ...w#.......cj.[
	defb 023h,0d2h,019h,0c9h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3dc  #...............
	defb 0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a3ec  ................
	defb 000h,000h,000h,000h	; a3fc
