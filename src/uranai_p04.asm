; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p04 (se ejecuta en 0x9C00)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09c00


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l9de7h:	equ 0x09de7
l9e34h:	equ 0x09e34
la888h:	equ 0x0a888

; ======================================================================
; CODIGO 0x9c00..0x9c84  (132 bytes)
; ======================================================================


L_9C00:
	jp L_9C89		;9c00
L_9C03:
	jp L_9D3D		;9c03
L_9C06:
	jp L_A568		;9c06
L_9C09:
	jp L_A667		;9c09
L_9C0C:
	jp L_A68C		;9c0c
L_9C0F:
	jp L_A75F		;9c0f
L_9C12:
	jp L_A796		;9c12
L_9C15:
	jp L_9D46		;9c15
L_9C18:
	jp L_A814		;9c18
L_9C1B:
	jp L_A7A1		;9c1b
L_9C1E:
	jp 0960ch		;9c1e
L_9C21:
	jp L_A850		;9c21
L_9C24:
	jp L_A8A8		;9c24
L_9C27:
	jp L_A8BD		;9c27
L_9C2A:
	jp L_A94C		;9c2a
L_9C2D:
	jp L_9E09		;9c2d
L_9C30:
	jp L_A03A		;9c30
L_9C33:
	jp L_A882		;9c33
L_9C36:
	jp L_A04C		;9c36
L_9C39:
	jp L_A07E		;9c39
L_9C3C:
	jp L_A09A		;9c3c
L_9C3F:
	jp L_A019		;9c3f
L_9C42:
	jp L_A138		;9c42
L_9C45:
	jp L_A874		;9c45
L_9C48:
	jp L_A923		;9c48
L_9C4B:
	jp L_9DBE		;9c4b
L_9C4E:
	jp L_A031		;9c4e
L_9C51:
	jp L_A869		;9c51
L_9C54:
	jp L_A8FA		;9c54
L_9C57:
	jp L_9D96		;9c57
L_9C5A:
	jp L_A028		;9c5a
L_9C5D:
	jp L_A85E		;9c5d
L_9C60:
	jp L_A8C7		;9c60
L_9C63:
	jp L_9D5E		;9c63
L_9C66:
	jp L_A01F		;9c66
L_9C69:
	jp L_A13E		;9c69
L_9C6C:
	jp L_A150		;9c6c
L_9C6F:
	jp L_A556		;9c6f
L_9C72:
	jp L_A54B		;9c72
L_9C75:
	jp L_A551		;9c75
L_9C78:
	jp L_A543		;9c78
L_9C7B:
	jp L_A53B		;9c7b
L_9C7E:
	jp L_A53E		;9c7e
L_9C81:
	jp L_A533		;9c81

; ----------------------------------------------------------------------
; DATOS vars_9C84: tres variables de la parte (0x9C84, 0x9C85, 0x9C86) justo
;   detras de la tabla de saltos; empiezan valiendo c3 84 a2, que parece un jp
;   0xA284 y no lo es (3 bytes)
;   0x9c84..0x9c87  (3 bytes)
DATA_vars_9C84:
	defb 0c3h,084h,0a2h	; 9c84

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c87..0x9c89  (2 bytes)
DATA_9C87:
	defb 0c3h,0ffh	; 9c87

; ======================================================================
; CODIGO 0x9c89..0x9ecf  (582 bytes)
; ======================================================================


L_9C89:
	call L_A844		;9c89
	call 08212h		;9c8c
	call 0826fh		;9c8f
	call 08260h		;9c92
	ld a,002h		;9c95
	call 09600h		;9c97
	ld a,0ffh		;9c9a
	call 09603h		;9c9c
	call L_9CE6		;9c9f
	call L_9CD9		;9ca2
	call L_9CEC		;9ca5
	ld hl,05040h		;9ca8
	ld de,08818h		;9cab
	call L_AD28		;9cae
	ld hl,0a3c4h		;9cb1
	call 08275h		;9cb4
	ld a,003h		;9cb7
	call 09600h		;9cb9
	ld a,0feh		;9cbc
	call 09603h		;9cbe
	ld a,004h		;9cc1
	call 08248h		;9cc3
	call 08251h		;9cc6
	call L_9CCF		;9cc9
	jp 08209h		;9ccc
L_9CCF:
	ld hl,0a505h		;9ccf
	ld de,01088h		;9cd2
	ld c,004h		;9cd5
	jr L_9CE1		;9cd7
L_9CD9:
	ld hl,0a168h		;9cd9
	ld de,00000h		;9cdc
	ld c,020h		;9cdf
L_9CE1:
	ld a,001h		;9ce1
	jp 08218h		;9ce3
L_9CE6:
	ld hl,0a300h		;9ce6
	jp 082dbh		;9ce9
L_9CEC:
	call L_9D03		;9cec
	ld a,(0d22fh)		;9cef
	ld hl,0a39ch		;9cf2
	call 0826ch		;9cf5
	ld de,00878h		;9cf8
	ld bc,01810h		;9cfb
	ld a,048h		;9cfe
	jp 0820ch		;9d00
L_9D03:
	ld hl,0a320h		;9d03
	ld de,00840h		;9d06
L_9D09:
	push de			;9d09
L_9D0A:
	ld a,(hl)			;9d0a
	inc hl			;9d0b
	ld c,a			;9d0c
	cp 080h		;9d0d
	jr z,L_9D25		;9d0f
	cp 081h		;9d11
	jr nz,L_9D1C		;9d13
	pop de			;9d15
	ld a,008h		;9d16
	add a,e			;9d18
	ld e,a			;9d19
	jr L_9D09		;9d1a
L_9D1C:
	ld a,c			;9d1c
	call L_9D27		;9d1d
	call 082a8h		;9d20
	jr L_9D0A		;9d23
L_9D25:
	pop de			;9d25
	ret			;9d26
L_9D27:
	push bc			;9d27
	push hl			;9d28
	push de			;9d29
	call 08281h		;9d2a
	ld a,040h		;9d2d
	add a,l			;9d2f
	ld l,a			;9d30
	ld bc,00808h		;9d31
	ld a,005h		;9d34
	call 08284h		;9d36
	pop de			;9d39
	pop hl			;9d3a
	pop bc			;9d3b
	ret			;9d3c
L_9D3D:
	ld a,(0d1d9h)		;9d3d
	cp 090h		;9d40
	ret nz			;9d42
	jp 0844ch		;9d43
L_9D46:
	call L_A730		;9d46
	call L_A5E2		;9d49
	ld b,004h		;9d4c
L_9D4E:
	xor a			;9d4e
	cp (hl)			;9d4f
	jr z,L_9D56		;9d50
	dec a			;9d52
	cp (hl)			;9d53
	jr nz,L_9DBC		;9d54
L_9D56:
	inc hl			;9d56
	djnz L_9D4E		;9d57
	call 082e9h		;9d59
	scf			;9d5c
	ret			;9d5d
L_9D5E:
	ld hl,06038h		;9d5e
	call L_9EE3		;9d61
	ld a,(0d1c8h)		;9d64
	cp 010h		;9d67
	jr z,L_9DB9		;9d69
	and 00ch		;9d6b
	jp z,L_9E3D		;9d6d
	push af			;9d70
	call L_A5E2		;9d71
	ld de,00015h		;9d74
	add hl,de			;9d77
	pop af			;9d78
	cp 004h		;9d79
	jr z,L_9D87		;9d7b
	inc (hl)			;9d7d
	ld a,(hl)			;9d7e
	cp 004h		;9d7f
	jr c,L_9D90		;9d81
	xor a			;9d83
	ld (hl),a			;9d84
	jr L_9D90		;9d85
L_9D87:
	ld a,(hl)			;9d87
	sub 001h		;9d88
	ld (hl),a			;9d8a
	jr nc,L_9D90		;9d8b
	ld a,003h		;9d8d
	ld (hl),a			;9d8f
L_9D90:
	call L_A8DB		;9d90
	jp L_9E3A		;9d93
L_9D96:
	ld hl,04840h		;9d96
	call L_9EFB		;9d99
	ld a,(0d1c8h)		;9d9c
	cp 010h		;9d9f
	jr z,L_9DB9		;9da1
	and 00ch		;9da3
	jp z,L_9E3D		;9da5
	call L_A5E2		;9da8
	ld de,00016h		;9dab
	add hl,de			;9dae
	ld a,(hl)			;9daf
	xor 001h		;9db0
	ld (hl),a			;9db2
	call L_A90E		;9db3
	jp L_9E3A		;9db6
L_9DB9:
	call 082f3h		;9db9
L_9DBC:
	and a			;9dbc
	ret			;9dbd
L_9DBE:
	call L_9ED5		;9dbe
	ld a,(0d1c8h)		;9dc1
	cp 010h		;9dc4
	jr z,L_9DEF		;9dc6
	cp 040h		;9dc8
	jr z,L_9DEF		;9dca
	push af			;9dcc
	call L_9E55		;9dcd
	ld hl,l9de7h		;9dd0
	jr nz,L_9E3F		;9dd3
	pop af			;9dd5
	and 00fh		;9dd6
	jr z,L_9E3D		;9dd8
	call L_9F11		;9dda
	call L_9F3B		;9ddd
	jr c,L_9E3D		;9de0
	call L_9FBB		;9de2
	jr c,L_9E3D		;9de5
L_9DE7:
	call L_A007		;9de7
	call L_A935		;9dea
	jr L_9E3A		;9ded
L_9DEF:
	ld a,0ffh		;9def
	ld (09c88h),a		;9df1
	call L_9FB8		;9df4
	jp c,L_9EBE		;9df7
	call 082f3h		;9dfa
	ld a,(0d20ah)		;9dfd
	inc a			;9e00
	ld (0d20ah),a		;9e01
	cp 005h		;9e04
	ret c			;9e06
	and a			;9e07
	ret			;9e08
L_9E09:
	call L_9ED5		;9e09
	ld a,(0d1c8h)		;9e0c
	cp 010h		;9e0f
	jp z,L_9EA2		;9e11
	cp 040h		;9e14
	jp z,L_9EA2		;9e16
	push af			;9e19
	call L_9E55		;9e1a
	ld hl,l9e34h		;9e1d
	jr nz,L_9E3F		;9e20
	pop af			;9e22
	and 00fh		;9e23
	jr z,L_9E3D		;9e25
	call L_9F11		;9e27
	call L_9F3B		;9e2a
	jr c,L_9E3D		;9e2d
	call L_9FBB		;9e2f
	jr c,L_9E3D		;9e32
L_9E34:
	call L_A007		;9e34
	call L_A95E		;9e37
L_9E3A:
	call 082eeh		;9e3a
L_9E3D:
	scf			;9e3d
	ret			;9e3e
L_9E3F:
	pop af			;9e3f
	push hl			;9e40
	push bc			;9e41
	call L_9F28		;9e42
	ld a,(09c85h)		;9e45
	rlca			;9e48
	rlca			;9e49
	rlca			;9e4a
	rlca			;9e4b
	and 0f0h		;9e4c
	pop bc			;9e4e
	or b			;9e4f
	ld (09c85h),a		;9e50
	pop hl			;9e53
	jp (hl)			;9e54
L_9E55:
	xor a			;9e55
	call 00141h		;9e56   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	ld bc,00800h		;9e59
L_9E5C:
	rrca			;9e5c
	jr nc,L_9E96		;9e5d
	inc c			;9e5f
	djnz L_9E5C		;9e60
	ld a,001h		;9e62
	call 00141h		;9e64   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	ld bc,00208h		;9e67
L_9E6A:
	rrca			;9e6a
	jr nc,L_9E96		;9e6b
	inc c			;9e6d
	djnz L_9E6A		;9e6e
	ld a,009h		;9e70
	call 00141h		;9e72   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	ld bc,00500h		;9e75
	rrca			;9e78
	rrca			;9e79
	rrca			;9e7a
L_9E7B:
	rrca			;9e7b
	jr nc,L_9E96		;9e7c
	inc c			;9e7e
	djnz L_9E7B		;9e7f
	ld a,00ah		;9e81
	call 00141h		;9e83   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	ld bc,00505h		;9e86
L_9E89:
	rrca			;9e89
	jr nc,L_9E96		;9e8a
	inc c			;9e8c
	djnz L_9E89		;9e8d
	ld a,0ffh		;9e8f
	ld (09c88h),a		;9e91
L_9E94:
	xor a			;9e94
	ret			;9e95
L_9E96:
	ld b,c			;9e96
	ld hl,09c88h		;9e97
	ld a,(hl)			;9e9a
	cp b			;9e9b
	jr z,L_9E94		;9e9c
	ld (hl),b			;9e9e
	or 0ffh		;9e9f
	ret			;9ea1
L_9EA2:
	ld a,0ffh		;9ea2
	ld (09c88h),a		;9ea4
	call L_9FB8		;9ea7
	jr c,L_9EBE		;9eaa
	call 082f3h		;9eac
	ld a,(0d20ah)		;9eaf
	call L_9EC3		;9eb2
	inc a			;9eb5
	ld (0d20ah),a		;9eb6
	cp 003h		;9eb9
	ret c			;9ebb
	and a			;9ebc
	ret			;9ebd
L_9EBE:
	call 082e9h		;9ebe
	scf			;9ec1
	ret			;9ec2
L_9EC3:
	push af			;9ec3
	call L_9EC9		;9ec4
	pop af			;9ec7
	ret			;9ec8
L_9EC9:
	cp 003h		;9ec9
	ret nc			;9ecb
	call 0822dh		;9ecc

; ----------------------------------------------------------------------
; DATOS saltos_9ECF: 3 destinos del despachador (call 0x822D en 0x9ECC) (5
;   bytes)
;   0x9ecf..0x9ed4  (5 bytes)
DATA_saltos_9ECF:
	defw 0b3f6h,0b45fh	; 9ecf  -> L_B3F6 L_B45F
	defb 0f0h	; 9ed3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ed4..0x9ed5  (1 bytes)
DATA_9ED4:
	defb 0b4h	; 9ed4

; ======================================================================
; CODIGO 0x9ed5..0xa0ce  (505 bytes)
; ======================================================================


L_9ED5:
	ld hl,0a3d6h		;9ed5
	ld a,(0d20ah)		;9ed8
	add a,a			;9edb
	call 08221h		;9edc
	ld a,(hl)			;9edf
	inc hl			;9ee0
	ld l,(hl)			;9ee1
	ld h,a			;9ee2
L_9EE3:
	push hl			;9ee3
	call L_9EFB		;9ee4
	pop hl			;9ee7
	ld a,008h		;9ee8
	add a,h			;9eea
	ld h,a			;9eeb
	ld (0d2ach),hl		;9eec
	ld de,0d2aeh		;9eef
	ld hl,0d2aah		;9ef2
	ld bc,00002h		;9ef5
	ldir		;9ef8
	ret			;9efa
L_9EFB:
	ld (0d2a8h),hl		;9efb
	ld a,00ch		;9efe
	ld (0d2aah),a		;9f00
	ld a,(0d1c3h)		;9f03
	and 010h		;9f06
	ld a,008h		;9f08
	jr z,L_9F0D		;9f0a
	xor a			;9f0c
L_9F0D:
	ld (0d2abh),a		;9f0d
	ret			;9f10
L_9F11:
	ld b,000h		;9f11
L_9F13:
	inc b			;9f13
	rra			;9f14
	jr nc,L_9F13		;9f15
	ld a,b			;9f17
	dec a			;9f18
	call L_9F20		;9f19
	ld (09c84h),a		;9f1c
	ret			;9f1f
L_9F20:
	ld hl,0a3e0h		;9f20
	call 08221h		;9f23
	ld a,(hl)			;9f26
	ret			;9f27
L_9F28:
	call L_A5E2		;9f28
	ld de,0000fh		;9f2b
	add hl,de			;9f2e
	ld a,(0d20ah)		;9f2f
	call 08221h		;9f32
	ld a,(hl)			;9f35
	ld hl,09c85h		;9f36
	ld (hl),a			;9f39
	ret			;9f3a
L_9F3B:
	call L_9F28		;9f3b
	ld a,(09c84h)		;9f3e
	bit 7,a		;9f41
	jr nz,L_9F49		;9f43
	add a,(hl)			;9f45
	daa			;9f46
	ld (hl),a			;9f47
	ret			;9f48
L_9F49:
	res 7,a		;9f49
	ld (09c86h),a		;9f4b
	and 00fh		;9f4e
	ld b,a			;9f50
	call L_9F75		;9f51
	ld a,(hl)			;9f54
	and 00fh		;9f55
	sub b			;9f57
	call L_9F7A		;9f58
	call L_9FA9		;9f5b
	sub c			;9f5e
	call L_9FB0		;9f5f
	push af			;9f62
	ld a,(09c86h)		;9f63
	call L_9FA9		;9f66
	ld b,a			;9f69
	pop af			;9f6a
	sub b			;9f6b
	call L_9FB0		;9f6c
	call L_9F8A		;9f6f
	rr c		;9f72
	ret			;9f74
L_9F75:
	xor a			;9f75
	ld (09c87h),a		;9f76
	ret			;9f79
L_9F7A:
	bit 7,a		;9f7a
	ld c,a			;9f7c
	jr z,L_9F82		;9f7d
	add a,00ah		;9f7f
	ld c,a			;9f81
L_9F82:
	ld a,(hl)			;9f82
	ld (hl),c			;9f83
	ld c,000h		;9f84
	ret z			;9f86
	ld c,001h		;9f87
	ret			;9f89
L_9F8A:
	ld c,a			;9f8a
	ld a,(09c87h)		;9f8b
	or a			;9f8e
	jr z,L_9FA3		;9f8f
	ld a,c			;9f91
	add a,00ah		;9f92
	ld c,a			;9f94
L_9F95:
	ld a,(hl)			;9f95
	sla c		;9f96
	sla c		;9f98
	sla c		;9f9a
	sla c		;9f9c
	or c			;9f9e
	ld (hl),a			;9f9f
	ld c,001h		;9fa0
	ret			;9fa2
L_9FA3:
	call L_9F95		;9fa3
	ld c,000h		;9fa6
	ret			;9fa8
L_9FA9:
	rlca			;9fa9
	rlca			;9faa
	rlca			;9fab
	rlca			;9fac
	and 00fh		;9fad
	ret			;9faf
L_9FB0:
	ret nc			;9fb0
	push hl			;9fb1
	ld hl,09c87h		;9fb2
	inc (hl)			;9fb5
	pop hl			;9fb6
	ret			;9fb7
L_9FB8:
	call L_9F28		;9fb8
L_9FBB:
	call L_9FC8		;9fbb
	ld hl,09c85h		;9fbe
	ld b,(hl)			;9fc1
	ld a,b			;9fc2
	cp e			;9fc3
	ret c			;9fc4
	ld a,d			;9fc5
	cp b			;9fc6
	ret			;9fc7
L_9FC8:
	call L_9FF9		;9fc8
	ld a,(0d20ah)		;9fcb
	cp 002h		;9fce
	ret nz			;9fd0
	push de			;9fd1
	call L_A5E2		;9fd2
	ld de,00010h		;9fd5
	add hl,de			;9fd8
	pop de			;9fd9
	ld a,(hl)			;9fda
	cp 010h		;9fdb
	jr c,L_9FE1		;9fdd
	sub 006h		;9fdf
L_9FE1:
	dec a			;9fe1
	ld b,a			;9fe2
	ld hl,0a3eeh		;9fe3
	call 08221h		;9fe6
	ld d,(hl)			;9fe9
	ld a,b			;9fea
	dec a			;9feb
	ret nz			;9fec
	push de			;9fed
	call L_A006		;9fee
	pop de			;9ff1
	ld a,(0d265h)		;9ff2
	and a			;9ff5
	ret nz			;9ff6
	dec d			;9ff7
	ret			;9ff8
L_9FF9:
	ld a,(0d20ah)		;9ff9
	ld hl,0a3e4h		;9ffc
	add a,a			;9fff
	call 08221h		;a000
	ld e,(hl)			;a003
	inc hl			;a004
	ld d,(hl)			;a005
L_A006:
	ret			;a006
L_A007:
	call L_A5E2		;a007
	ld de,0000fh		;a00a
	add hl,de			;a00d
	ld a,(0d20ah)		;a00e
	call 08221h		;a011
	ld a,(09c85h)		;a014
	ld (hl),a			;a017
	ret			;a018
L_A019:
	call L_A520		;a019
	jp L_A7F2		;a01c
L_A01F:
	call L_A511		;a01f
	call L_A043		;a022
	jp L_A7C8		;a025
L_A028:
	call L_A516		;a028
	call L_A043		;a02b
	jp L_A7D6		;a02e
L_A031:
	call L_A51B		;a031
	call L_A043		;a034
	jp L_A7E4		;a037
L_A03A:
	call L_A525		;a03a
	call L_A043		;a03d
	jp L_A800		;a040
L_A043:
	ld a,0e0h		;a043
	ld (0d2a8h),a		;a045
	ld (0d2ach),a		;a048
	ret			;a04b
L_A04C:
	call L_A065		;a04c
	call L_A072		;a04f
	ld hl,0a4e5h		;a052
	call 08275h		;a055
	ld de,02058h		;a058
	ld a,002h		;a05b
	ld (0d1cch),a		;a05d
	ld a,0cdh		;a060
	jp 082cfh		;a062
L_A065:
	ld hl,0a3fah		;a065
	ld de,05008h		;a068
	ld c,014h		;a06b
	ld a,001h		;a06d
	jp 08218h		;a06f
L_A072:
	call 082bah		;a072
	ld hl,00e50h		;a075
	ld de,03418h		;a078
	jp L_AD28		;a07b
L_A07E:
	call L_A5E2		;a07e
	ld de,00008h		;a081
	add hl,de			;a084
	ld c,(hl)			;a085
	inc hl			;a086
	ld b,(hl)			;a087
	ld l,c			;a088
	ld h,b			;a089
	ld (0d220h),hl		;a08a
L_A08D:
	ld hl,(0d220h)		;a08d
	ld (0d2a8h),hl		;a090
	ld hl,00808h		;a093
	ld (0d2aah),hl		;a096
	ret			;a099
L_A09A:
	call L_A0A6		;a09a
	push af			;a09d
	call L_A08D		;a09e
	call L_AE5D		;a0a1
	pop af			;a0a4
	ret			;a0a5
L_A0A6:
	ld a,(0d1c8h)		;a0a6
	and 010h		;a0a9
	jr nz,L_A0C6		;a0ab
	ld a,(0d1c9h)		;a0ad
	and 00fh		;a0b0
	jr nz,L_A0CB		;a0b2
L_A0B4:
	call L_A5E2		;a0b4
	ld de,00008h		;a0b7
	add hl,de			;a0ba
	ex de,hl			;a0bb
	ld hl,0d220h		;a0bc
	ld bc,00002h		;a0bf
	ldir		;a0c2
	scf			;a0c4
	ret			;a0c5
L_A0C6:
	call 082f3h		;a0c6
	and a			;a0c9
	ret			;a0ca
L_A0CB:
	call 0822dh		;a0cb

; ----------------------------------------------------------------------
; DATOS saltos_A0CE: 16 destinos del despachador (call 0x822D en 0xA0CB) (31
;   bytes)
;   0xa0ce..0xa0ed  (31 bytes)
DATA_saltos_A0CE:
	defw 0a0b4h,0a0eeh,0a0fdh,0a0b4h,0a109h,0a129h,0a124h,0a0b4h	; a0ce
	defw 0a118h,0a12eh,0a133h,0a0b4h,0a0b4h,0a0b4h,0a0b4h	; a0de
	defb 0b4h	; a0ec

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa0ed..0xa0ee  (1 bytes)
DATA_A0ED:
	defb 0a0h	; a0ed

; ======================================================================
; CODIGO 0xa0ee..0xa168  (122 bytes)
; ======================================================================


L_A0EE:
	ld a,(0d220h)		;a0ee
	dec a			;a0f1
	cp 010h		;a0f2
	jr nc,L_A0F8		;a0f4
	ld a,010h		;a0f6
L_A0F8:
	ld (0d220h),a		;a0f8
	jr $-71		;a0fb
L_A0FD:
	ld a,(0d220h)		;a0fd
	inc a			;a100
	cp 089h		;a101
	jr c,L_A0F8		;a103
	ld a,089h		;a105
	jr L_A0F8		;a107
L_A109:
	ld a,(0d221h)		;a109
	dec a			;a10c
	cp 052h		;a10d
	jr nc,L_A113		;a10f
	ld a,052h		;a111
L_A113:
	ld (0d221h),a		;a113
	jr $-98		;a116
L_A118:
	ld a,(0d221h)		;a118
	inc a			;a11b
	cp 0e0h		;a11c
	jr c,L_A113		;a11e
	ld a,0e0h		;a120
	jr L_A113		;a122
L_A124:
	call L_A109		;a124
	jr L_A0FD		;a127
L_A129:
	call L_A109		;a129
	jr L_A0EE		;a12c
L_A12E:
	call L_A118		;a12e
	jr L_A0EE		;a131
L_A133:
	call L_A118		;a133
	jr L_A0FD		;a136
L_A138:
	ld a,0e0h		;a138
	ld (0d2a8h),a		;a13a
	ret			;a13d
L_A13E:
	call 082bah		;a13e
	ld hl,04838h		;a141
	ld de,07828h		;a144
	call L_AD28		;a147
	ld hl,0a4eah		;a14a
	jp 08275h		;a14d
L_A150:
	ld a,(0d1d8h)		;a150
	or a			;a153
	jr z,L_A15D		;a154
	cp 002h		;a156
	jr z,L_A15D		;a158
	cp 015h		;a15a
	ret nc			;a15c
L_A15D:
	ld a,(0d1c8h)		;a15d
	and 080h		;a160
	jr z,L_A166		;a162
	scf			;a164
	ret			;a165
L_A166:
	or a			;a166
	ret			;a167

; ----------------------------------------------------------------------
; DATOS casillas_A168: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9CE3 (408 bytes)
;   0xa168..0xa300  (408 bytes)
DATA_casillas_A168:
	defb 005h,001h,083h,002h,003h,003h,003h,004h,082h,005h,006h,005h,001h,087h,002h,004h	; a168  ................
	defb 003h,004h,003h,004h,007h,00ah,001h,083h,002h,008h,009h,006h,014h,087h,00ah,00bh	; a178  ................
	defb 00bh,00ch,00dh,011h,017h,005h,014h,085h,00fh,010h,008h,011h,012h,005h,001h,081h	; a188  ................
	defb 013h,01ah,014h,081h,015h,003h,001h,082h,016h,017h,01ah,014h,085h,018h,019h,001h	; a198  ................
	defb 001h,01ah,01ah,014h,086h,018h,01bh,01ch,001h,001h,01ah,01ah,014h,086h,01eh,01fh	; a1a8  ................
	defb 020h,001h,001h,01ah,01ah,014h,086h,021h,01fh,019h,001h,001h,01dh,01ah,014h,086h	; a1b8   ......!........
	defb 021h,01fh,022h,001h,001h,023h,01ah,014h,086h,024h,01fh,022h,001h,001h,01ah,01ah	; a1c8  !."..#...$."....
	defb 014h,086h,025h,026h,027h,001h,028h,029h,01bh,014h,084h,01eh,02ah,020h,01ah,006h	; a1d8  ..%&'.()....* ..
	defb 014h,002h,02eh,014h,014h,091h,02bh,02ch,02dh,01ah,014h,014h,02eh,014h,014h,02fh	; a1e8  ......+,-....../
	defb 030h,031h,032h,033h,034h,035h,035h,00fh,014h,092h,024h,02ch,036h,01ah,033h,02fh	; a1f8  0123455...$,6.3/
	defb 037h,032h,02fh,038h,039h,03ah,03bh,03ch,03dh,03eh,03fh,032h,00eh,014h,092h,025h	; a208  72/89:.<=>?2...%
	defb 01fh,01ch,040h,041h,042h,043h,044h,045h,046h,047h,048h,049h,04ah,04bh,04ch,04dh	; a218  ..@ABCDEFGHIJKLM
	defb 04eh,00eh,014h,093h,018h,01fh,020h,04fh,050h,051h,052h,050h,053h,054h,055h,056h	; a228  N..... OPQRPSTUV
	defb 057h,04ch,058h,059h,03ah,05ah,032h,00ch,014h,095h,05bh,02ch,022h,001h,001h,05ch	; a238  WLXY:Z2...[,"..\
	defb 05dh,05dh,05eh,05fh,060h,061h,062h,063h,064h,065h,066h,049h,03ah,03fh,032h,00bh	; a248  ]]^_`abcdefI:?2.
	defb 014h,083h,067h,068h,022h,007h,001h,08ch,069h,04bh,06ah,06bh,06ah,06ch,06dh,057h	; a258  ..gh"...iKjkjlmW
	defb 06eh,04dh,06fh,070h,00ah,014h,084h,025h,071h,01ch,001h,006h,072h,08ch,069h,04bh	; a268  nMop...%q...r.iK
	defb 073h,074h,06bh,075h,076h,077h,078h,079h,03fh,032h,008h,014h,086h,07ah,07bh,07ch	; a278  stkuvwxy?2...z{|
	defb 07dh,07eh,072h,006h,07fh,0b7h,080h,04bh,081h,082h,074h,083h,083h,084h,085h,03ah	; a288  }~r....K..t....:
	defb 04dh,04eh,086h,07bh,014h,014h,07ah,07bh,087h,088h,089h,08ah,07dh,08bh,08ch,07fh	; a298  MN.{..z{....}...
	defb 08dh,08dh,08eh,08fh,090h,091h,092h,092h,081h,081h,093h,094h,095h,096h,097h,098h	; a2a8  ................
	defb 099h,09ah,089h,03fh,086h,033h,088h,089h,09bh,07dh,0a8h,0a9h,0aah,003h,0b5h,08bh	; a2b8  ...?.3...}......
	defb 09ch,09dh,09eh,09fh,0a0h,0a1h,0a2h,0a3h,081h,081h,0a4h,006h,0b5h,089h,0a5h,0a6h	; a2c8  ................
	defb 0a6h,0a7h,08ah,07dh,0a8h,0a9h,0aah,006h,0b5h,005h,0abh,083h,0ach,09dh,0a0h,003h	; a2d8  ...}............
	defb 0adh,081h,0aeh,008h,0b5h,083h,0a5h,0a9h,0aah,009h,0b5h,004h,0afh,082h,0b0h,0b1h	; a2e8  ................
	defb 005h,0abh,082h,0b2h,0b3h,013h,0b4h,000h	; a2f8  ........

; ----------------------------------------------------------------------
; DATOS paleta_A300: paleta: 16 colores de 2 bytes; lo usa 0x9CE9 (32 bytes)
;   0xa300..0xa320  (32 bytes)
DATA_paleta_A300:
	defb 000h,000h,040h,003h,000h,002h,004h,000h,007h,001h,011h,003h,033h,006h,030h,002h	; a300  ..@.........3.0.
	defb 070h,000h,070h,005h,060h,007h,000h,001h,055h,005h,020h,001h,077h,007h,000h,000h	; a310  p.p.`...U. .w...

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa320..0xa3c4  (164 bytes)
DATA_A320:
	defb 0b6h,0b7h,000h,0bah,0bbh,000h,0beh,0bfh,000h,0c2h,0c3h,000h,0c6h,0c7h,000h,0cah	; a320  ................
	defb 0cbh,000h,0ceh,0cfh,000h,0d2h,0d3h,000h,0d6h,0d7h,000h,0dah,0dbh,000h,081h,0b8h	; a330  ................
	defb 0b9h,0ffh,0bch,0bdh,0ffh,0c0h,0c1h,0ffh,0c4h,0c5h,0ffh,0c8h,0c9h,0ffh,0cch,0cdh	; a340  ................
	defb 0ffh,0d0h,0d1h,0ffh,0d4h,0d5h,0ffh,0d8h,0d9h,0ffh,0dch,0ddh,0ffh,081h,0deh,0dfh	; a350  ................
	defb 000h,0e1h,0e2h,000h,0e1h,0e4h,000h,0e6h,0e7h,000h,0eah,0ebh,000h,0eah,0eeh,000h	; a360  ................
	defb 0f1h,0f2h,000h,0e1h,0f5h,000h,0f8h,0f9h,000h,0fbh,0fch,000h,081h,0dch,0e0h,0ffh	; a370  ................
	defb 0dch,0e3h,0ffh,0dch,0e5h,0ffh,0e8h,0e9h,0ffh,0ech,0edh,0ffh,0efh,0f0h,0ffh,0f3h	; a380  ................
	defb 0f4h,0ffh,0f6h,0f7h,0ffh,0f3h,0fah,0ffh,0fdh,0feh,0ffh,080h,040h,008h,040h,020h	; a390  ............@.@
	defb 040h,038h,040h,050h,040h,068h,040h,080h,040h,098h,040h,0b0h,040h,0c8h,040h,0e0h	; a3a0  @8@P@h@.@.@.@.@.
	defb 050h,008h,050h,020h,050h,038h,050h,050h,050h,068h,050h,080h,050h,098h,050h,0b0h	; a3b0  P.P P8PPPhP.P.P.
	defb 050h,0c8h,050h,0e0h	; a3c0

; ----------------------------------------------------------------------
; DATOS texto_A3C4: texto: x, y y las letras hasta 0xFF; lo usa 0x9CB4 (18
;   bytes)
;   0xa3c4..0xa3d6  (18 bytes)
DATA_texto_A3C4:
	defb 058h,04ah,073h,074h,02dh,045h,002h,02eh,0d4h,032h,014h,00ch,013h,075h,00bh,002h	; a3c4  XJst-E...2...u..
	defb 046h,0ffh	; a3d4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa3d6..0xa3fa  (36 bytes)
DATA_A3D6:
	defb 048h,020h,048h,030h,048h,040h,060h,038h,080h,038h,010h,090h,081h,001h,001h,075h	; a3d6  H H0H@`8.8.....u
	defb 001h,012h,001h,031h,000h,023h,000h,059h,031h,029h,031h,030h,031h,030h,031h,031h	; a3e6  ...1.#.Y1)101011
	defb 030h,031h,030h,031h	; a3f6

; ----------------------------------------------------------------------
; DATOS casillas_A3FA: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0xA06F (235 bytes)
;   0xa3fa..0xa4e5  (235 bytes)
DATA_casillas_A3FA:
	defb 081h,0e9h,012h,0e6h,082h,0e7h,0e4h,003h,0deh,096h,08ah,0dfh,0d7h,0d8h,0d9h,0dah	; a3fa  ................
	defb 0dbh,0dch,0ddh,0d1h,0d2h,0d3h,0d4h,0d5h,0d6h,0e5h,0e4h,0deh,08dh,08ch,08bh,0dfh	; a40a  ................
	defb 009h,0deh,08bh,091h,092h,0deh,0deh,0e5h,0e4h,0deh,08eh,0deh,0deh,0dfh,009h,0deh	; a41a  ................
	defb 08bh,093h,094h,0deh,0deh,0e5h,0e4h,090h,08fh,0deh,0deh,0dfh,007h,0deh,088h,08dh	; a42a  ................
	defb 095h,096h,097h,098h,099h,0e5h,0e4h,004h,0e0h,081h,0e1h,007h,0deh,088h,09ah,09bh	; a43a  ................
	defb 09ch,09dh,09eh,09fh,0e5h,0e4h,00ch,0deh,088h,0a0h,0a1h,0a2h,0a3h,0deh,0deh,0e5h	; a44a  ................
	defb 0e4h,00bh,0deh,083h,0a4h,0a5h,0a6h,004h,0deh,082h,0e5h,0e4h,00ah,0deh,084h,0a7h	; a45a  ................
	defb 0a8h,0c2h,0a9h,004h,0deh,082h,0e5h,0e4h,008h,0deh,086h,0aah,0abh,0ach,0b7h,0adh	; a46a  ................
	defb 0aeh,004h,0deh,090h,0e5h,0e4h,0deh,0afh,0b0h,0b1h,0b2h,0b3h,0b4h,0b5h,0b6h,0b7h	; a47a  ................
	defb 0c2h,0b8h,0b9h,0e9h,004h,0e6h,0adh,0e7h,0e4h,0deh,0bah,0bbh,0bch,0bdh,0beh,0bfh	; a48a  ................
	defb 0c0h,0c1h,0c2h,0c2h,0c3h,0deh,0e4h,0fbh,0fch,0fdh,0feh,0e5h,0e4h,0deh,0c4h,0c5h	; a49a  ................
	defb 0c6h,0c7h,0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0deh,0e4h,0ebh,0ech,0edh,0eeh,0e5h	; a4aa  ................
	defb 0e4h,0deh,0cfh,0d0h,00ah,0deh,087h,0e4h,0efh,0f0h,0f1h,0f2h,0e5h,0e4h,00dh,0deh	; a4ba  ................
	defb 087h,0e4h,0f3h,0f4h,0f5h,0f6h,0e5h,0e4h,00dh,0deh,087h,0e4h,0f7h,0f8h,0f9h,0fah	; a4ca  ................
	defb 0e5h,0e2h,00dh,0e3h,081h,0e2h,004h,0e3h,081h,0e8h,000h	; a4da  ...........

; ----------------------------------------------------------------------
; DATOS texto_A4E5: texto: x, y y las letras hasta 0xFF; lo usa 0xA055 (5
;   bytes)
;   0xa4e5..0xa4ea  (5 bytes)
DATA_texto_A4E5:
	defb 010h,058h,05ah,071h,0ffh	; a4e5

; ----------------------------------------------------------------------
; DATOS texto_A4EA: texto: x, y y las letras hasta 0xFF; lo usa 0xA14D (27
;   bytes)
;   0xa4ea..0xa505  (27 bytes)
DATA_texto_A4EA:
	defb 050h,042h,006h,004h,010h,002h,05ah,01ah,045h,002h,02eh,0d4h,032h,014h,02dh,0feh	; a4ea  PB....Z.E...2.-.
	defb 050h,052h,00ch,015h,005h,00ch,013h,075h,00bh,002h,0ffh	; a4fa  PR.....u...

; ----------------------------------------------------------------------
; DATOS casillas_A505: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9CE3 (4 bytes)
;   0xa505..0xa509  (4 bytes)
DATA_casillas_A505:
	defb 080h,014h,076h,000h	; a505

; ======================================================================
; CODIGO 0xa509..0xa567  (94 bytes)
; ======================================================================


L_A509:
	call L_A50C		;a509
L_A50C:
	ld hl,0d1d8h		;a50c
	dec (hl)			;a50f
	ret			;a510
L_A511:
	ld hl,08820h		;a511
	jr L_A528		;a514
L_A516:
	ld hl,06820h		;a516
	jr L_A528		;a519
L_A51B:
	ld hl,04848h		;a51b
	jr L_A528		;a51e
L_A520:
	ld hl,08890h		;a520
	jr L_A528		;a523
L_A525:
	ld hl,01050h		;a525
L_A528:
	ld de,00880h		;a528
	ld bc,06028h		;a52b
	ld a,010h		;a52e
	jp 0820ch		;a530
L_A533:
	call L_A509		;a533
	ld de,08820h		;a536
	jr L_A55C		;a539
L_A53B:
	call L_A509		;a53b
L_A53E:
	ld de,06820h		;a53e
	jr L_A55C		;a541
L_A543:
	call L_A509		;a543
	ld de,04848h		;a546
	jr L_A55C		;a549
L_A54B:
	call 082bah		;a54b
	call L_A509		;a54e
L_A551:
	ld de,08890h		;a551
	jr L_A55C		;a554
L_A556:
	call L_A509		;a556
	ld de,01050h		;a559
L_A55C:
	ld hl,00880h		;a55c
	ld bc,06028h		;a55f
	ld a,040h		;a562
	jp 0820ch		;a564

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa567..0xa568  (1 bytes)
DATA_A567:
	defb 033h	; a567

; ======================================================================
; CODIGO 0xa568..0xa89f  (823 bytes)
; ======================================================================


L_A568:
	xor a			;a568
	ld (0d229h),a		;a569
	ld (0a567h),a		;a56c
	ld hl,01030h		;a56f
	ld de,03018h		;a572
	call L_AD28		;a575
	ld hl,04808h		;a578
	ld de,la888h		;a57b
	call L_AD28		;a57e
	ld hl,0a98bh		;a581
	xor a			;a584
	call 09609h		;a585
	ld hl,00101h		;a588
	ld (0d230h),hl		;a58b
	ld hl,0f838h		;a58e
	ld bc,00808h		;a591
	xor a			;a594
	ld d,001h		;a595
	call 0829fh		;a597
	call L_A5DB		;a59a
	push hl			;a59d
	call L_A5F5		;a59e
	pop hl			;a5a1
	ld a,(hl)			;a5a2
	inc a			;a5a3
	jr nz,L_A5BC		;a5a4
	ld de,00008h		;a5a6
	add hl,de			;a5a9
	ld (hl),062h		;a5aa
	inc hl			;a5ac
	ld (hl),084h		;a5ad
	ld de,00006h		;a5af
	add hl,de			;a5b2
	ex de,hl			;a5b3
	ld hl,0ab33h		;a5b4
	ld bc,00008h		;a5b7
	ldir		;a5ba
L_A5BC:
	call L_A635		;a5bc
L_A5BF:
	call L_A5DB		;a5bf
	inc hl			;a5c2
	ld a,(hl)			;a5c3
	inc a			;a5c4
	ret z			;a5c5
	ld de,0002eh		;a5c6
	add hl,de			;a5c9
	ld a,(hl)			;a5ca
	cp 004h		;a5cb
	ld e,000h		;a5cd
	jr nz,L_A5D3		;a5cf
	inc e			;a5d1
	dec a			;a5d2
L_A5D3:
	ld (0d229h),a		;a5d3
	ld a,e			;a5d6
	ld (0d22eh),a		;a5d7
	ret			;a5da
L_A5DB:
	call L_A5E2		;a5db
	ld de,0183ah		;a5de
	ret			;a5e1
L_A5E2:
	ld a,(0d22fh)		;a5e2
	ld l,a			;a5e5
	ld h,000h		;a5e6
	add hl,hl			;a5e8
	add hl,hl			;a5e9
	add hl,hl			;a5ea
	add hl,hl			;a5eb
	push hl			;a5ec
	pop bc			;a5ed
	add hl,hl			;a5ee
	add hl,bc			;a5ef
	ld de,0d700h		;a5f0
	add hl,de			;a5f3
	ret			;a5f4
L_A5F5:
	ld a,(0a567h)		;a5f5
	cp 008h		;a5f8
	jr z,L_A629		;a5fa
	ld a,(hl)			;a5fc
	inc hl			;a5fd
	cp 0ffh		;a5fe
	jr z,L_A629		;a600
	cp 043h		;a602
	jr z,L_A615		;a604
	cp 044h		;a606
	jr z,L_A615		;a608
	call 0827eh		;a60a
	call 082a8h		;a60d
	call L_A62E		;a610
	jr L_A5F5		;a613
L_A615:
	push af			;a615
	push hl			;a616
	push de			;a617
	ex af,af'			;a618
	ld a,e			;a619
	sub 008h		;a61a
	ld e,a			;a61c
	ex af,af'			;a61d
	call 0827eh		;a61e
	pop de			;a621
	pop hl			;a622
	pop af			;a623
	call L_A62E		;a624
	jr L_A5F5		;a627
L_A629:
	xor a			;a629
	ld (0a567h),a		;a62a
	ret			;a62d
L_A62E:
	push hl			;a62e
	ld hl,0a567h		;a62f
	inc (hl)			;a632
	pop hl			;a633
	ret			;a634
L_A635:
	xor a			;a635
	ld (0d229h),a		;a636
	ld (0d22eh),a		;a639
	ld (0d22ch),a		;a63c
	call L_A5E2		;a63f
	push hl			;a642
	ld de,0d300h		;a643
	ld b,004h		;a646
L_A648:
	ld a,(hl)			;a648
	inc hl			;a649
	cp 043h		;a64a
	jr z,L_A655		;a64c
	cp 044h		;a64e
	jr z,L_A655		;a650
	ld a,0ffh		;a652
	dec hl			;a654
L_A655:
	ld (de),a			;a655
	inc de			;a656
	ld a,(hl)			;a657
	ld (de),a			;a658
	inc de			;a659
	inc hl			;a65a
	djnz L_A648		;a65b
	pop de			;a65d
	ld hl,0d300h		;a65e
	ld bc,00008h		;a661
	ldir		;a664
	ret			;a666
L_A667:
	call L_B175		;a667
	ret c			;a66a
	ld a,(0d230h)		;a66b
	dec a			;a66e
	ld b,a			;a66f
	ld a,000h		;a670
	jr z,L_A67A		;a672
	ld hl,0d233h		;a674
L_A677:
	add a,(hl)			;a677
	djnz L_A677		;a678
L_A67A:
	ld hl,0d231h		;a67a
	add a,(hl)			;a67d
	dec a			;a67e
	cp 04fh		;a67f
	jr c,L_A685		;a681
	ld a,04eh		;a683
L_A685:
	ld hl,(0d202h)		;a685
	ld (hl),a			;a688
	jp 09612h		;a689
L_A68C:
	call L_A6ED		;a68c
	ld a,(0d1c8h)		;a68f
	cp 020h		;a692
	ret nz			;a694
	ld a,(0d22eh)		;a695
	or a			;a698
	jr z,L_A6A6		;a699
	cp 002h		;a69b
	jr z,L_A6AF		;a69d
	ld a,(0d229h)		;a69f
	cp 003h		;a6a2
	jr nc,L_A6AF		;a6a4
L_A6A6:
	call L_A6B2		;a6a6
	cp 003h		;a6a9
	call c,L_A6CC		;a6ab
	ret			;a6ae
L_A6AF:
	call L_A6CC		;a6af
L_A6B2:
	ld a,(0d229h)		;a6b2
	sub 001h		;a6b5
	jr nc,L_A6BA		;a6b7
	xor a			;a6b9
L_A6BA:
	ld (0d229h),a		;a6ba
	ld a,(0d22eh)		;a6bd
	or a			;a6c0
	ret z			;a6c1
	ld a,003h		;a6c2
	ld (0d229h),a		;a6c4
	xor a			;a6c7
	ld (0d22eh),a		;a6c8
	ret			;a6cb
L_A6CC:
	call L_A71E		;a6cc
	push hl			;a6cf
	ld a,0ffh		;a6d0
	ld (hl),a			;a6d2
	inc hl			;a6d3
	ld (hl),a			;a6d4
	pop hl			;a6d5
L_A6D6:
	ld a,(hl)			;a6d6
	inc hl			;a6d7
	call L_A6DF		;a6d8
	ld a,(hl)			;a6db
	jp 0827eh		;a6dc
L_A6DF:
	push de			;a6df
	push hl			;a6e0
	ex af,af'			;a6e1
	ld a,e			;a6e2
	sub 008h		;a6e3
	ld e,a			;a6e5
	ex af,af'			;a6e6
	call 0827eh		;a6e7
	pop hl			;a6ea
	pop de			;a6eb
	ret			;a6ec
L_A6ED:
	ld hl,0d22eh		;a6ed
	ld a,(0d229h)		;a6f0
	add a,(hl)			;a6f3
	push af			;a6f4
	call L_A5DB		;a6f5
	pop af			;a6f8
	ld de,0002fh		;a6f9
	add hl,de			;a6fc
	ld (hl),a			;a6fd
	ld a,(0d1c3h)		;a6fe
	and 010h		;a701
	jr nz,L_A719		;a703
	ld a,(0d229h)		;a705
	ld hl,0ab3bh		;a708
	add a,a			;a70b
	add a,a			;a70c
	call 08221h		;a70d
	ld de,0d2a0h		;a710
	ld bc,00004h		;a713
	ldir		;a716
	ret			;a718
L_A719:
	xor a			;a719
	ld (0d2a3h),a		;a71a
	ret			;a71d
L_A71E:
	call L_A5DB		;a71e
	ld a,(0d229h)		;a721
	ld c,a			;a724
	add a,a			;a725
	call 08221h		;a726
	ld a,c			;a729
	add a,a			;a72a
	add a,a			;a72b
	add a,a			;a72c
	add a,d			;a72d
	ld d,a			;a72e
	ret			;a72f
L_A730:
	ld hl,0d300h		;a730
	ld de,0d301h		;a733
	ld bc,00007h		;a736
	ld (hl),0ffh		;a739
	ldir		;a73b
	call L_A5E2		;a73d
	push hl			;a740
	ld b,008h		;a741
	ld de,0d300h		;a743
L_A746:
	ld a,(hl)			;a746
	cp 0ffh		;a747
	jr z,L_A74D		;a749
	ld (de),a			;a74b
	inc de			;a74c
L_A74D:
	inc hl			;a74d
	djnz L_A746		;a74e
	pop de			;a750
	ld hl,0d300h		;a751
	ld bc,00008h		;a754
	ldir		;a757
	ld a,0e0h		;a759
	ld (0d2a0h),a		;a75b
	ret			;a75e
L_A75F:
	call L_A767		;a75f
	xor a			;a762
	ld (0d22eh),a		;a763
	ret			;a766
L_A767:
	call L_A71E		;a767
	push de			;a76a
	push hl			;a76b
	call L_A783		;a76c
	pop hl			;a76f
	push hl			;a770
	ld a,(0d22ch)		;a771
	ld (hl),a			;a774
	inc hl			;a775
	ld a,(0d22dh)		;a776
	ld (hl),a			;a779
	pop hl			;a77a
	ld a,b			;a77b
	ld (0d22ch),a		;a77c
	pop de			;a77f
	jp L_A6D6		;a780
L_A783:
	ld hl,0d22ch		;a783
	ld a,(hl)			;a786
	ld b,a			;a787
	ld de,0ab4bh		;a788
	add a,a			;a78b
	call 08206h		;a78c
	ld a,(de)			;a78f
	ld (hl),a			;a790
	inc de			;a791
	inc hl			;a792
	ld a,(de)			;a793
	ld (hl),a			;a794
	ret			;a795
L_A796:
	ld a,003h		;a796
	ld (0d229h),a		;a798
	ld a,001h		;a79b
	ld (0d22eh),a		;a79d
	ret			;a7a0
L_A7A1:
	call L_A635		;a7a1
	call L_A5BF		;a7a4
	ld a,(09204h)		;a7a7
	or a			;a7aa
	jr nz,L_A7B6		;a7ab
	ld hl,04808h		;a7ad
	ld de,la888h		;a7b0
	call L_AD28		;a7b3
L_A7B6:
	xor a			;a7b6
	ld (09204h),a		;a7b7
	ld hl,0a98bh		;a7ba
	xor a			;a7bd
	call 09609h		;a7be
	ld hl,00101h		;a7c1
	ld (0d230h),hl		;a7c4
	ret			;a7c7
L_A7C8:
	ld hl,08820h		;a7c8
	call L_A80E		;a7cb
	ld hl,0983ah		;a7ce
	ld de,0b83ah		;a7d1
	jr L_A820		;a7d4
L_A7D6:
	ld hl,06820h		;a7d6
	call L_A80E		;a7d9
	ld hl,0783ah		;a7dc
	ld de,0983ah		;a7df
	jr L_A820		;a7e2
L_A7E4:
	ld hl,04848h		;a7e4
	call L_A80E		;a7e7
	ld hl,05862h		;a7ea
	ld de,07862h		;a7ed
	jr L_A820		;a7f0
L_A7F2:
	ld hl,08890h		;a7f2
	call L_A80E		;a7f5
	ld hl,098aah		;a7f8
	ld de,0b8aah		;a7fb
	jr L_A820		;a7fe
L_A800:
	ld hl,01050h		;a800
	call L_A80E		;a803
	ld hl,0206ah		;a806
	ld de,0406ah		;a809
	jr L_A820		;a80c
L_A80E:
	ld de,06028h		;a80e
	jp L_AD28		;a811
L_A814:
	ld hl,03050h		;a814
	call L_A80E		;a817
	ld hl,0406ah		;a81a
	ld de,0606ah		;a81d
L_A820:
	ld (0abefh),hl		;a820
	ld (0abf2h),de		;a823
	ld a,h			;a827
	sub 008h		;a828
	ld (0abf5h),a		;a82a
	ld a,l			;a82d
	sub 010h		;a82e
	ld (0abf6h),a		;a830
	ld a,h			;a833
	add a,008h		;a834
	ld (0ac02h),a		;a836
	ld a,l			;a839
	ld (0ac03h),a		;a83a
	ld hl,0abe7h		;a83d
	xor a			;a840
	jp 09609h		;a841
L_A844:
	call L_A5DB		;a844
	ld de,0d235h		;a847
L_A84A:
	ld bc,00030h		;a84a
	ldir		;a84d
	ret			;a84f
L_A850:
	ld a,016h		;a850
	ld (0d1d8h),a		;a852
	call L_A5DB		;a855
	ld de,0d235h		;a858
	ex de,hl			;a85b
	jr L_A84A		;a85c
L_A85E:
	call L_A892		;a85e
	ld hl,0ace5h		;a861
	ld de,0305ah		;a864
	jr $+74		;a867
L_A869:
	call L_A89A		;a869
	ld hl,0acbch		;a86c
	ld de,0305ah		;a86f
	jr $+63		;a872
L_A874:
	call L_A138		;a874
	call L_A88D		;a877
	ld hl,0ac89h		;a87a
	ld de,0305ah		;a87d
	jr $+49		;a880
L_A882:
	call L_A892		;a882
	ld hl,0ac57h		;a885
L_A888:
	ld de,0305ah		;a888
	jr $+38		;a88b
L_A88D:
	ld de,0c028h		;a88d
	jr L_A895		;a890
L_A892:
	ld de,0b828h		;a892
L_A895:
	ld hl,02850h		;a895
	jr $+13		;a898
L_A89A:
	ld de,0b028h		;a89a
	jr L_A895		;a89d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa89f..0xa8a5  (6 bytes)
DATA_A89F:
	defb 011h,028h,0c8h,021h,038h,028h	; a89f

; ======================================================================
; CODIGO 0xa8a5..0xa98b  (230 bytes)
; ======================================================================


L_A8A5:
	jp L_AD28		;a8a5
L_A8A8:
	call L_A88D		;a8a8
	ld hl,0ac0ch		;a8ab
	ld de,0305ah		;a8ae
L_A8B1:
	push de			;a8b1
	xor a			;a8b2
	call 09609h		;a8b3
	call L_A5DB		;a8b6
	pop de			;a8b9
	jp L_A5F5		;a8ba
L_A8BD:
	ld a,(0d1cdh)		;a8bd
	ld b,a			;a8c0
	xor a			;a8c1
	ld (0d1cdh),a		;a8c2
	ld a,b			;a8c5
	ret			;a8c6
L_A8C7:
	call 082bah		;a8c7
	ld hl,05828h		;a8ca
	ld de,02818h		;a8cd
	call L_AD28		;a8d0
	ld a,063h		;a8d3
	ld de,07030h		;a8d5
	call 0827eh		;a8d8
L_A8DB:
	call L_A5DB		;a8db
	ld de,00015h		;a8de
	add hl,de			;a8e1
	ld a,(hl)			;a8e2
	add a,a			;a8e3
	ld hl,0ad20h		;a8e4
	call 08221h		;a8e7
	ld de,06030h		;a8ea
	ld b,002h		;a8ed
L_A8EF:
	ld a,(hl)			;a8ef
	call 0827eh		;a8f0
	call 082a8h		;a8f3
	inc hl			;a8f6
	djnz L_A8EF		;a8f7
	ret			;a8f9
L_A8FA:
	call 082bah		;a8fa
	ld hl,04030h		;a8fd
	ld de,02018h		;a900
	call L_AD28		;a903
	ld a,064h		;a906
	ld de,05038h		;a908
	call 0827eh		;a90b
L_A90E:
	call L_A5DB		;a90e
	ld de,00016h		;a911
	add hl,de			;a914
	ld a,(hl)			;a915
	or a			;a916
	ld a,05ch		;a917
	jr z,L_A91D		;a919
	ld a,05dh		;a91b
L_A91D:
	ld de,04838h		;a91d
	jp 0827eh		;a920
L_A923:
	call 082bah		;a923
	ld hl,05828h		;a926
	ld de,04818h		;a929
	call L_AD28		;a92c
	ld hl,0ac4fh		;a92f
	call 08275h		;a932
L_A935:
	call L_A5DB		;a935
	ld de,00012h		;a938
	add hl,de			;a93b
	ld de,06030h		;a93c
	ld b,002h		;a93f
L_A941:
	call L_A977		;a941
	inc hl			;a944
	ld a,018h		;a945
	add a,d			;a947
	ld d,a			;a948
	djnz L_A941		;a949
	ret			;a94b
L_A94C:
	call 082bah		;a94c
	ld hl,03010h		;a94f
	ld de,03838h		;a952
	call L_AD28		;a955
	ld hl,0ac3fh		;a958
	call 08275h		;a95b
L_A95E:
	call L_A5DB		;a95e
	ld de,0000fh		;a961
	add hl,de			;a964
	ld b,003h		;a965
	ld de,04818h		;a967
L_A96A:
	push de			;a96a
	call L_A977		;a96b
	pop de			;a96e
	inc hl			;a96f
	ld a,010h		;a970
	add a,e			;a972
	ld e,a			;a973
	djnz L_A96A		;a974
	ret			;a976
L_A977:
	ld a,(hl)			;a977
	rrca			;a978
	rrca			;a979
	rrca			;a97a
	rrca			;a97b
	call L_A984		;a97c
	ld a,008h		;a97f
	add a,d			;a981
	ld d,a			;a982
	ld a,(hl)			;a983
L_A984:
	and 00fh		;a984
	add a,036h		;a986
	jp 0827eh		;a988

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa98b..0xac3f  (692 bytes)
DATA_A98B:
	defb 093h,0a9h,083h,0aah,02ch,0d2h,008h,00ah,00fh,04fh,002h,00fh,05fh,002h,00fh,06fh	; a98b  ....,....O.._..o
	defb 002h,00fh,07fh,002h,00fh,08fh,002h,00fh,09fh,002h,00fh,0afh,002h,00fh,0bfh,002h	; a99b  ................
	defb 00fh,0cfh,002h,00fh,0dfh,002h,01fh,04fh,002h,01fh,05fh,002h,01fh,06fh,002h,01fh	; a9ab  .......O.._..o..
	defb 07fh,002h,01fh,08fh,002h,01fh,09fh,002h,01fh,0afh,002h,01fh,0bfh,002h,01fh,0cfh	; a9bb  ................
	defb 002h,01fh,0dfh,002h,02fh,04fh,002h,02fh,05fh,002h,02fh,06fh,002h,02fh,07fh,002h	; a9cb  ..../O./_./o./..
	defb 02fh,08fh,002h,02fh,09fh,004h,02fh,0afh,004h,02fh,0bfh,004h,02fh,0cfh,004h,02fh	; a9db  /../../../../../
	defb 0dfh,004h,03fh,04fh,002h,03fh,05fh,002h,03fh,06fh,002h,03fh,07fh,002h,03fh,08fh	; a9eb  ..?O.?_.?o.?..?.
	defb 002h,03fh,09fh,004h,03fh,0afh,004h,03fh,0bfh,004h,03fh,0cfh,004h,03fh,0dfh,004h	; a9fb  .?..?..?..?..?..
	defb 04fh,04fh,002h,04fh,05fh,002h,04fh,06fh,002h,04fh,07fh,002h,04fh,08fh,002h,04fh	; aa0b  OO.O_.Oo.O..O..O
	defb 09fh,004h,04fh,0afh,004h,04fh,0bfh,004h,04fh,0cfh,004h,04fh,0dfh,004h,05fh,04fh	; aa1b  ..O..O..O..O.._O
	defb 002h,05fh,05fh,002h,05fh,06fh,002h,05fh,07fh,002h,05fh,08fh,002h,05fh,09fh,004h	; aa2b  .__._o._.._.._..
	defb 05fh,0afh,004h,05fh,0bfh,004h,05fh,0cfh,004h,05fh,0dfh,004h,06fh,04fh,002h,06fh	; aa3b  _.._.._.._..oO.o
	defb 05fh,002h,06fh,06fh,002h,06fh,07fh,002h,06fh,08fh,002h,06fh,09fh,004h,06fh,0afh	; aa4b  _.oo.o..o..o..o.
	defb 004h,06fh,0bfh,004h,06fh,0cfh,004h,06fh,0dfh,004h,07fh,04fh,002h,07fh,05fh,002h	; aa5b  .o..o..o...O.._.
	defb 07fh,06fh,002h,07fh,07fh,002h,07fh,08fh,002h,07fh,09fh,002h,07fh,0afh,002h,07fh	; aa6b  .o..............
	defb 0bfh,002h,07fh,0cfh,003h,07fh,0cfh,003h,050h,010h,001h,000h,002h,000h,003h,000h	; aa7b  ........P.......
	defb 004h,000h,005h,000h,027h,000h,028h,000h,029h,000h,02ah,000h,02bh,0feh,050h,020h	; aa8b  ....'.(.).*.+.P
	defb 006h,000h,007h,000h,008h,000h,009h,000h,00ah,000h,02ch,000h,02dh,000h,02eh,000h	; aa9b  ..........,.-...
	defb 04fh,000h,04bh,0feh,050h,030h,00bh,000h,00ch,000h,00dh,000h,00eh,000h,00fh,000h	; aaab  O.K.P0..........
	defb 0beh,000h,0bfh,000h,0c0h,000h,0c1h,000h,0c2h,0feh,050h,040h,010h,000h,011h,000h	; aabb  ..........P@....
	defb 012h,000h,013h,000h,014h,000h,0c3h,000h,0c4h,000h,0c5h,000h,0c6h,000h,0c7h,0feh	; aacb  ................
	defb 050h,050h,015h,000h,016h,000h,017h,000h,018h,000h,019h,000h,0c8h,000h,0c9h,000h	; aadb  PP..............
	defb 0cah,000h,0cbh,000h,0cch,0feh,050h,060h,01ah,000h,01bh,000h,01ch,000h,01dh,000h	; aaeb  ......P`........
	defb 01eh,000h,0cdh,000h,0ceh,000h,0cfh,000h,0d0h,000h,0d1h,0feh,050h,070h,01fh,000h	; aafb  ............Pp..
	defb 020h,000h,021h,000h,022h,000h,023h,000h,0d2h,000h,0d3h,000h,0d4h,000h,0d5h,000h	; ab0b   .!.".#.........
	defb 0d6h,0feh,050h,080h,024h,000h,025h,000h,026h,000h,02fh,000h,030h,000h,031h,000h	; ab1b  ..P.$.%.&./.0.1.
	defb 032h,000h,04eh,000h,005h,02ch,028h,0ffh,001h,001h,001h,012h,000h,000h,001h,000h	; ab2b  2.N..,(.........
	defb 042h,018h,00ch,008h,042h,020h,00ch,008h,042h,028h,00ch,008h,042h,030h,00ch,008h	; ab3b  B...B ..B(..B0..
	defb 0ffh,001h,0ffh,002h,0ffh,003h,0ffh,004h,0ffh,005h,0ffh,027h,0ffh,028h,0ffh,029h	; ab4b  ...........'.(.)
	defb 0ffh,02ah,0ffh,02bh,0ffh,006h,0ffh,007h,0ffh,008h,0ffh,009h,0ffh,00ah,0ffh,02ch	; ab5b  .*.+...........,
	defb 0ffh,02dh,0ffh,02eh,0ffh,04fh,0ffh,04bh,0ffh,00bh,0ffh,00ch,0ffh,00dh,0ffh,00eh	; ab6b  .-...O.K........
	defb 0ffh,00fh,043h,006h,043h,007h,043h,008h,043h,009h,043h,00ah,0ffh,010h,0ffh,011h	; ab7b  ..C.C.C.C.C.....
	defb 0ffh,012h,0ffh,013h,0ffh,014h,043h,00bh,043h,00ch,043h,00dh,043h,00eh,043h,00fh	; ab8b  ......C.C.C.C.C.
	defb 0ffh,015h,0ffh,016h,0ffh,017h,0ffh,018h,0ffh,019h,043h,010h,043h,011h,043h,012h	; ab9b  ..........C.C.C.
	defb 043h,013h,043h,014h,0ffh,01ah,0ffh,01bh,0ffh,01ch,0ffh,01dh,0ffh,01eh,043h,01ah	; abab  C.C...........C.
	defb 043h,01bh,043h,01ch,043h,01dh,043h,01eh,0ffh,01fh,0ffh,020h,0ffh,021h,0ffh,022h	; abbb  C.C.C.C.... .!."
	defb 0ffh,023h,044h,01ah,044h,01bh,044h,01ch,044h,01dh,044h,01eh,0ffh,024h,0ffh,025h	; abcb  .#D.D.D.D.D..$.%
	defb 0ffh,026h,0ffh,02fh,0ffh,030h,0ffh,031h,0ffh,032h,0ffh,000h,0efh,0abh,0f5h,0abh	; abdb  .&./.0.1.2......
	defb 0cdh,0d1h,000h,002h,06ah,038h,000h,06ah,060h,000h,038h,05ah,00ah,02ah,0cbh,000h	; abeb  ....j8.j`.8Z.*..
	defb 002h,002h,0cbh,00dh,006h,051h,0feh,040h,06ah,01ah,002h,000h,000h,002h,002h,004h	; abfb  .....Q.@j.......
	defb 0ffh,0edh,0ach,014h,0ach,0cdh,0d1h,000h,003h,050h,05ah,019h,060h,05eh,05fh,055h	; ac0b  .........PZ.`^_U
	defb 02dh,045h,002h,02eh,0d4h,032h,014h,00ch,013h,075h,00bh,002h,046h,0feh,040h,06ah	; ac1b  -E...2...u..F.@j
	defb 002h,02eh,0d4h,032h,014h,0feh,080h,06ah,02ch,006h,027h,015h,002h,0feh,0c0h,06ah	; ac2b  ...2...j,.'....j
	defb 024h,022h,029h,0ffh	; ac3b

; ----------------------------------------------------------------------
; DATOS texto_AC3F: texto: x, y y las letras hasta 0xFF; lo usa 0xA95B (16
;   bytes)
;   0xac3f..0xac4f  (16 bytes)
DATA_texto_AC3F:
	defb 038h,018h,056h,057h,000h,000h,05eh,0feh,058h,028h,05fh,0feh,058h,038h,055h,0ffh	; ac3f  8.VW..^.X(_.X8U.

; ----------------------------------------------------------------------
; DATOS texto_AC4F: texto: x, y y las letras hasta 0xFF; lo usa 0xA932 (8
;   bytes)
;   0xac4f..0xac57  (8 bytes)
DATA_texto_AC4F:
	defb 070h,030h,05ah,000h,000h,000h,058h,0ffh	; ac4f  p0Z...X.

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac57..0xad28  (209 bytes)
DATA_AC57:
	defb 0edh,0ach,05fh,0ach,0cdh,0d1h,000h,003h,050h,05ah,019h,059h,060h,076h,02dh,045h	; ac57  .._.....PZ.Y`v-E
	defb 002h,02eh,0d4h,032h,014h,00ch,013h,075h,00bh,002h,046h,0feh,040h,06ah,002h,02eh	; ac67  ...2...u..F.@j..
	defb 0d4h,032h,014h,0feh,080h,06ah,02ch,006h,027h,015h,002h,0feh,0c0h,06ah,024h,022h	; ac77  .2...j,.'....j$"
	defb 029h,0ffh,0edh,0ach,091h,0ach,0cdh,0d1h,000h,003h,050h,05ah,019h,059h,060h,05ah	; ac87  ).........PZ.Y`Z
	defb 05bh,02dh,045h,002h,02eh,0d4h,032h,014h,00ch,013h,075h,00bh,002h,046h,0feh,040h	; ac97  [-E...2...u..F.@
	defb 06ah,002h,02eh,0d4h,032h,014h,0feh,080h,06ah,02ch,006h,027h,015h,002h,0feh,0c0h	; aca7  j...2...j,.'....
	defb 06ah,024h,022h,029h,0ffh,0edh,0ach,0c4h,0ach,0cdh,0d1h,000h,002h,050h,05ah,019h	; acb7  j$").........PZ.
	defb 064h,080h,02dh,045h,002h,02eh,0d4h,032h,014h,00ch,013h,075h,00bh,002h,046h,0feh	; acc7  d.-E...2...u..F.
	defb 040h,06ah,002h,02eh,0d4h,032h,014h,0feh,080h,06ah,024h,022h,029h,0ffh,0edh,0ach	; acd7  @j...2...j$")...
	defb 0f6h,0ach,0cdh,0d1h,000h,003h,06ah,038h,000h,06ah,078h,000h,06ah,0b8h,000h,050h	; ace7  ......j8.jx.j..P
	defb 05ah,019h,061h,062h,063h,02dh,045h,002h,02eh,0d4h,032h,014h,00ch,013h,075h,00bh	; acf7  Z.abc-E...2...u.
	defb 002h,046h,0feh,040h,06ah,002h,02eh,0d4h,032h,014h,0feh,080h,06ah,02ch,006h,027h	; ad07  .F.@j...2...j,.'
	defb 015h,002h,0feh,0c0h,06ah,024h,022h,029h,0ffh,000h,042h,000h,040h,000h,041h,040h	; ad17  ....j$")..B.@.A@
	defb 041h	; ad27

; ======================================================================
; CODIGO 0xad28..0xae5a  (306 bytes)
; ======================================================================


L_AD28:
	ld (0dd00h),hl		;ad28
	ld (0dd02h),de		;ad2b
	ld a,h			;ad2f
	add a,008h		;ad30
	ld h,a			;ad32
	ld a,(0dd03h)		;ad33
	sub 010h		;ad36
	ld b,a			;ad38
	ld a,(0dd02h)		;ad39
	ld c,a			;ad3c
	xor a			;ad3d
	ld d,000h		;ad3e
	call 0829fh		;ad40
	ld hl,(0dd00h)		;ad43
	ld a,l			;ad46
	add a,008h		;ad47
	ld l,a			;ad49
	ld a,(0dd02h)		;ad4a
	sub 010h		;ad4d
	ld c,a			;ad4f
	ld a,(0dd03h)		;ad50
	ld b,a			;ad53
	xor a			;ad54
	ld d,000h		;ad55
	call 0829fh		;ad57
	ld de,(0dd00h)		;ad5a
	ld a,0c9h		;ad5e
	call L_AE44		;ad60
	call 082a8h		;ad63
	ex de,hl			;ad66
	ld a,(0dd03h)		;ad67
	sub 010h		;ad6a
	ld b,a			;ad6c
	ld c,00eh		;ad6d
	call L_ADEB		;ad6f
	ld de,(0dd00h)		;ad72
	ld a,(0dd03h)		;ad76
	sub 008h		;ad79
	add a,d			;ad7b
	ld d,a			;ad7c
	ld a,0cah		;ad7d
	call L_AE44		;ad7f
	ld hl,(0dd00h)		;ad82
	ld a,008h		;ad85
	add a,l			;ad87
	ld l,a			;ad88
	ld a,(0dd02h)		;ad89
	sub 010h		;ad8c
	ld b,a			;ad8e
	ld c,00eh		;ad8f
	call L_AE17		;ad91
	ld de,(0dd00h)		;ad94
	ld a,(0dd02h)		;ad98
	sub 008h		;ad9b
	add a,e			;ad9d
	ld e,a			;ad9e
	ld a,0cbh		;ad9f
	call L_AE44		;ada1
	ld hl,(0dd00h)		;ada4
	ld a,(0dd03h)		;ada7
	dec a			;adaa
	add a,h			;adab
	ld h,a			;adac
	ld a,008h		;adad
	add a,l			;adaf
	ld l,a			;adb0
	ld a,(0dd02h)		;adb1
	sub 010h		;adb4
	ld b,a			;adb6
	ld c,00eh		;adb7
	call L_AE17		;adb9
	ld de,(0dd00h)		;adbc
	ld a,(0dd02h)		;adc0
	sub 008h		;adc3
	add a,e			;adc5
	ld e,a			;adc6
	ld a,(0dd03h)		;adc7
	sub 008h		;adca
	add a,d			;adcc
	ld d,a			;adcd
	ld a,0cch		;adce
	call L_AE44		;add0
	ld hl,(0dd00h)		;add3
	ld a,008h		;add6
	add a,h			;add8
	ld h,a			;add9
	ld a,(0dd02h)		;adda
	dec a			;addd
	add a,l			;adde
	ld l,a			;addf
	ld a,(0dd03h)		;ade0
	sub 010h		;ade3
	ld b,a			;ade5
	ld c,00eh		;ade6
	jp L_ADEB		;ade8
L_ADEB:
	ld a,024h		;adeb
	ld (0d226h),a		;aded
	call 08287h		;adf0
	out (c),h		;adf3
	xor a			;adf5
	out (c),a		;adf6
	out (c),l		;adf8
	out (c),a		;adfa
	ld hl,(0d227h)		;adfc
	out (c),h		;adff
	xor a			;ae01
	cp h			;ae02
	jr nz,L_AE06		;ae03
	inc a			;ae05
L_AE06:
	out (c),a		;ae06
	xor a			;ae08
	out (c),a		;ae09
	out (c),a		;ae0b
	out (c),l		;ae0d
	out (c),a		;ae0f
	ld a,070h		;ae11
	out (c),a		;ae13
	ei			;ae15
	ret			;ae16
L_AE17:
	ld a,024h		;ae17
	ld (0d226h),a		;ae19
	call 08287h		;ae1c
	out (c),h		;ae1f
	xor a			;ae21
	out (c),a		;ae22
	out (c),l		;ae24
	out (c),a		;ae26
	ld hl,(0d227h)		;ae28
	out (c),h		;ae2b
	xor a			;ae2d
	cp h			;ae2e
	jr nz,L_AE32		;ae2f
	inc a			;ae31
L_AE32:
	out (c),a		;ae32
	xor a			;ae34
	out (c),a		;ae35
	out (c),a		;ae37
	out (c),l		;ae39
	inc a			;ae3b
	out (c),a		;ae3c
	ld a,070h		;ae3e
	out (c),a		;ae40
	ei			;ae42
	ret			;ae43
L_AE44:
	push bc			;ae44
	push hl			;ae45
	push de			;ae46
	call 08281h		;ae47
	ld a,l			;ae4a
	add a,080h		;ae4b
	ld l,a			;ae4d
	ld bc,00808h		;ae4e
	ld a,048h		;ae51
	call 0820ch		;ae53
	pop de			;ae56
	pop hl			;ae57
	pop bc			;ae58
	ret			;ae59

; ----------------------------------------------------------------------
; DATOS sin identificar  0xae5a..0xae5d  (3 bytes)
DATA_AE5A:
	defb 0afh,0ddh,0e5h	; ae5a

; ======================================================================
; CODIGO 0xae5d..0xafc4  (359 bytes)
; ======================================================================


L_AE5D:
	call L_AE63		;ae5d
	jp L_AEC5		;ae60
L_AE63:
	call L_AF46		;ae63
	jr nz,L_AEB7		;ae66
	call L_AF35		;ae68
	jr z,L_AEA6		;ae6b
	ld a,(0d221h)		;ae6d
	add a,004h		;ae70
	cp 052h		;ae72
	jr c,L_AEA6		;ae74
	cp 0e0h		;ae76
	jr nc,L_AEA6		;ae78
	sub 052h		;ae7a
	call L_AEC0		;ae7c
	ld c,a			;ae7f
	ld b,000h		;ae80
	ld de,0000ch		;ae82
	call L_AF12		;ae85
	ld a,(0d220h)		;ae88
	add a,004h		;ae8b
	cp 018h		;ae8d
	jp c,L_AEA6		;ae8f
	cp 078h		;ae92
	jp nc,L_AEA6		;ae94
	sub 018h		;ae97
	call L_AEBE		;ae99
	call 08221h		;ae9c
	ld de,0afc4h		;ae9f
	add hl,de			;aea2
	ld a,(hl)			;aea3
	jr L_AEA8		;aea4
L_AEA6:
	ld a,080h		;aea6
L_AEA8:
	ld (0d208h),a		;aea8
	call L_A5E2		;aeab
	ld de,00014h		;aeae
	add hl,de			;aeb1
	ld a,(0d208h)		;aeb2
	ld (hl),a			;aeb5
	ret			;aeb6
L_AEB7:
	xor a			;aeb7
	call L_AEA8		;aeb8
	ld a,07fh		;aebb
	ret			;aebd
L_AEBE:
	srl a		;aebe
L_AEC0:
	srl a		;aec0
	srl a		;aec2
	ret			;aec4
L_AEC5:
	ld hl,0ae5ah		;aec5
	ld (hl),0cah		;aec8
	cp 080h		;aeca
	jr z,L_AEF7		;aecc
	cp 07fh		;aece
	jr z,L_AEEB		;aed0
	bit 7,a		;aed2
	jr z,L_AEDA		;aed4
	neg		;aed6
	ld (hl),015h		;aed8
L_AEDA:
	push hl			;aeda
	ld l,a			;aedb
	ld c,00ah		;aedc
	call L_AF27		;aede
	ex de,hl			;aee1
	pop hl			;aee2
	push hl			;aee3
	inc hl			;aee4
	ld (hl),e			;aee5
	inc hl			;aee6
	ld (hl),d			;aee7
	pop hl			;aee8
	jr L_AEFF		;aee9
L_AEEB:
	push hl			;aeeb
	ld (hl),0d9h		;aeec
	inc hl			;aeee
	ld (hl),0e3h		;aeef
	inc hl			;aef1
	ld (hl),0dah		;aef2
	pop hl			;aef4
	jr L_AEFF		;aef5
L_AEF7:
	push hl			;aef7
	inc hl			;aef8
	ld (hl),0cdh		;aef9
	inc hl			;aefb
	ld (hl),0eah		;aefc
	pop hl			;aefe
L_AEFF:
	ld de,02858h		;aeff
	ld b,003h		;af02
L_AF04:
	ld a,(hl)			;af04
	add a,036h		;af05
	call 0827eh		;af07
	inc hl			;af0a
	ld a,008h		;af0b
	add a,d			;af0d
	ld d,a			;af0e
	djnz L_AF04		;af0f
	ret			;af11
L_AF12:
	ld hl,00000h		;af12
L_AF15:
	ld a,c			;af15
	or b			;af16
	jr z,L_AF26		;af17
	srl b		;af19
	rr c		;af1b
	jr nc,L_AF20		;af1d
	add hl,de			;af1f
L_AF20:
	sla e		;af20
	rl d		;af22
	jr L_AF15		;af24
L_AF26:
	ret			;af26
L_AF27:
	ld b,008h		;af27
	ld h,000h		;af29
L_AF2B:
	add hl,hl			;af2b
	ld a,h			;af2c
	sub c			;af2d
	jr c,L_AF32		;af2e
	inc l			;af30
	ld h,a			;af31
L_AF32:
	djnz L_AF2B		;af32
	ret			;af34
L_AF35:
	ld a,(0d220h)		;af35
	inc a			;af38
	ld l,a			;af39
	ld a,(0d221h)		;af3a
	add a,008h		;af3d
	ld h,a			;af3f
	call L_AF5A		;af40
	cp 004h		;af43
	ret			;af45
L_AF46:
	ld a,(0d221h)		;af46
	add a,040h		;af49
	cp 01eh		;af4b
	jr nc,L_AF58		;af4d
	ld a,(0d220h)		;af4f
	add a,098h		;af52
	cp 021h		;af54
	jr c,L_AF35		;af56
L_AF58:
	xor a			;af58
	ret			;af59
L_AF5A:
	ld a,020h		;af5a
	ld (0d226h),a		;af5c
	call 08287h		;af5f
	xor a			;af62
	out (c),h		;af63
	out (c),a		;af65
	out (c),l		;af67
	out (c),a		;af69
	dec c			;af6b
	dec c			;af6c
	out (c),a		;af6d
	ld a,0adh		;af6f
	out (c),a		;af71
	ld a,040h		;af73
	out (c),a		;af75
	ld a,0aeh		;af77
	out (c),a		;af79
	call 0828ah		;af7b
	ld a,007h		;af7e
	jp 0828dh		;af80
L_AF83:
	push bc			;af83
	call L_AFB3		;af84
	pop bc			;af87
	ld a,b			;af88
	add a,00fh		;af89
	call 08206h		;af8b
	ex de,hl			;af8e
	ld c,(hl)			;af8f
	ld a,b			;af90
	cp 005h		;af91
	jr nc,L_AF98		;af93
	call L_AF9A		;af95
L_AF98:
	ld a,c			;af98
	ret			;af99
L_AF9A:
	ld a,c			;af9a
	srl a		;af9b
	srl a		;af9d
	srl a		;af9f
	srl a		;afa1
	call L_AFAD		;afa3
	ld b,a			;afa6
	ld a,c			;afa7
	and 00fh		;afa8
	add a,b			;afaa
	ld c,a			;afab
	ret			;afac
L_AFAD:
	add a,a			;afad
	ld b,a			;afae
	add a,a			;afaf
	add a,a			;afb0
	add a,b			;afb1
	ret			;afb2
L_AFB3:
	ld l,a			;afb3
	ld h,000h		;afb4
	add hl,hl			;afb6
	add hl,hl			;afb7
	add hl,hl			;afb8
	add hl,hl			;afb9
	push hl			;afba
	pop bc			;afbb
	add hl,hl			;afbc
	add hl,bc			;afbd
	ld de,0d700h		;afbe
	add hl,de			;afc1
	ex de,hl			;afc2
	ret			;afc3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xafc4..0xb175  (433 bytes)
DATA_AFC4:
	defb 0e3h,0e3h,0e3h,0e3h,080h,080h,080h,080h,080h,080h,080h,080h,0e3h,0e3h,0e3h,0e3h	; afc4  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,0e3h,0e3h,0e3h,0e3h,080h,080h,080h,080h	; afd4  ................
	defb 0ebh,0efh,0efh,0efh,0e3h,0e3h,0e3h,0e3h,080h,080h,080h,080h,0edh,0f1h,0f1h,0efh	; afe4  ................
	defb 0e3h,0e3h,0e3h,0e3h,080h,080h,080h,080h,0edh,0f1h,0f1h,0f1h,0e3h,0e3h,0e3h,0e3h	; aff4  ................
	defb 080h,080h,080h,080h,0f1h,0f1h,0f1h,0f7h,0e3h,0e3h,0e3h,0e3h,080h,080h,080h,080h	; b004  ................
	defb 0f7h,0f5h,0f7h,0f7h,0e3h,0e3h,0e3h,0e3h,080h,080h,080h,080h,0f7h,0f7h,0f7h,0f7h	; b014  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,0f9h,0f9h,0f9h,0f9h,080h,080h,080h,080h	; b024  ................
	defb 080h,080h,080h,080h,0fbh,0f9h,0f9h,0f9h,080h,080h,080h,080h,080h,080h,080h,000h	; b034  ................
	defb 0fbh,0fbh,0f9h,0f9h,080h,080h,080h,080h,080h,080h,080h,000h,0fdh,0fdh,0fdh,0fdh	; b044  ................
	defb 080h,080h,080h,080h,080h,080h,080h,000h,000h,000h,000h,000h,080h,080h,080h,080h	; b054  ................
	defb 080h,080h,080h,001h,001h,001h,001h,080h,080h,080h,080h,080h,080h,080h,080h,003h	; b064  ................
	defb 003h,003h,003h,080h,080h,080h,080h,080h,080h,080h,080h,003h,003h,003h,003h,080h	; b074  ................
	defb 080h,080h,080h,080h,080h,080h,080h,005h,007h,007h,007h,080h,080h,080h,080h,080h	; b084  ................
	defb 080h,080h,080h,005h,007h,009h,009h,080h,080h,080h,080h,080h,080h,080h,080h,005h	; b094  ................
	defb 007h,00bh,00bh,080h,080h,080h,080h,080h,080h,080h,080h,007h,009h,00dh,00dh,080h	; b0a4  ................
	defb 080h,080h,080h,080h,080h,080h,00dh,009h,00dh,00fh,00fh,080h,080h,080h,080h,080h	; b0b4  ................
	defb 080h,080h,00dh,00dh,00fh,011h,011h,080h,080h,080h,080h,080h,080h,00dh,00fh,00fh	; b0c4  ................
	defb 011h,011h,013h,080h,080h,080h,080h,080h,080h,00dh,00fh,011h,013h,017h,017h,080h	; b0d4  ................
	defb 080h,080h,017h,017h,017h,017h,017h,017h,017h,080h,080h,080h,080h,080h,017h,017h	; b0e4  ................
	defb 017h,017h,017h,017h,017h,080h,080h,080h,080h,080h,017h,017h,017h,019h,019h,019h	; b0f4  ................
	defb 080h,080h,080h,080h,080h,080h,017h,017h,017h,019h,019h,019h,080h,080h,080h,080h	; b104  ................
	defb 080h,080h,019h,019h,019h,080h,080h,080h,080h,080h,080h,080h,080h,017h,019h,019h	; b114  ................
	defb 019h,080h,080h,080h,080h,080h,080h,080h,080h,019h,01eh,01eh,01eh,080h,080h,080h	; b124  ................
	defb 080h,080h,080h,080h,080h,01eh,021h,021h,021h,080h,080h,080h,080h,080h,080h,080h	; b134  ......!!!.......
	defb 080h,080h,025h,025h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,025h,025h	; b144  ..%%..........%%
	defb 080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,02bh,02bh,080h,080h,080h,080h	; b154  ..........++....
	defb 080h,080h,080h,080h,080h,080h,02bh,02bh,080h,080h,080h,080h,080h,080h,080h,080h	; b164  ......++........
	defb 0d2h	; b174

; ======================================================================
; CODIGO 0xb175..0xb1ce  (89 bytes)
; ======================================================================


L_B175:
	ld a,(0d1c8h)		;b175
	ld b,a			;b178
	cp 010h		;b179
	jr z,$+102		;b17b
	ld a,b			;b17d
	and 00fh		;b17e
	ld c,a			;b180
	jr nz,L_B19B		;b181
	ld hl,0b174h		;b183
	ld a,(hl)			;b186
	and a			;b187
	jp nz,L_B1F6		;b188
	ld a,(0d1c3h)		;b18b
	and 00fh		;b18e
	jr nz,L_B1CC		;b190
	ld a,(0d1c9h)		;b192
	and 00fh		;b195
	jr z,L_B1CC		;b197
	jr L_B1A1		;b199
L_B19B:
	ld a,010h		;b19b
	ld (0b174h),a		;b19d
	ld a,c			;b1a0
L_B1A1:
	ld hl,0b1e6h		;b1a1
	call 08221h		;b1a4
	ld a,(hl)			;b1a7
	ld hl,0b1ceh		;b1a8
	push hl			;b1ab
	ld hl,0d231h		;b1ac
	ld de,0d232h		;b1af
	cp 008h		;b1b2
	jp z,L_B1F8		;b1b4
	cp 004h		;b1b7
	jp z,L_B221		;b1b9
	ld hl,0d230h		;b1bc
	ld de,0d233h		;b1bf
	cp 001h		;b1c2
	jp z,L_B24B		;b1c4
	cp 002h		;b1c7
	jp z,L_B273		;b1c9
L_B1CC:
	or a			;b1cc
	ret			;b1cd

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb1ce..0xb1e1  (19 bytes)
DATA_B1CE:
	defb 03ah,030h,0d2h,0feh,008h,020h,007h,03ah,031h,0d2h,0feh,00ah,028h,003h,0cdh,0eeh	; b1ce  :0... .:1...(...
	defb 082h,0b7h,0c9h	; b1de

; ======================================================================
; CODIGO 0xb1e1..0xb1e6  (5 bytes)
; ======================================================================


L_B1E1:
	call 082f3h		;b1e1
	scf			;b1e4
	ret			;b1e5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb1e6..0xb1f6  (16 bytes)
DATA_B1E6:
	defb 000h,001h,002h,000h,004h,000h,000h,000h,008h,000h,000h,000h,000h,000h,000h,000h	; b1e6  ................

; ======================================================================
; CODIGO 0xb1f6..0xb2cb  (213 bytes)
; ======================================================================


L_B1F6:
	dec (hl)			;b1f6
	ret			;b1f7
L_B1F8:
	call L_B20B		;b1f8
	ld a,(0d233h)		;b1fb
	inc (hl)			;b1fe
	cp (hl)			;b1ff
	ret nc			;b200
	ld a,001h		;b201
	ld (hl),a			;b203
	ld hl,0d230h		;b204
	inc (hl)			;b207
	jp L_B2B7		;b208
L_B20B:
	ld a,(0d230h)		;b20b
	ld b,a			;b20e
	ld a,(de)			;b20f
	cp b			;b210
	ret nz			;b211
	ld a,(0d233h)		;b212
	dec a			;b215
	cp (hl)			;b216
	ret nz			;b217
	ld a,001h		;b218
	ld (hl),a			;b21a
	ld (0d230h),a		;b21b
	pop hl			;b21e
	or a			;b21f
	ret			;b220
L_B221:
	call L_B231		;b221
	dec (hl)			;b224
	ret nz			;b225
	ld a,(0d233h)		;b226
	ld (hl),a			;b229
	ld hl,0d230h		;b22a
	dec (hl)			;b22d
	jp L_B2B7		;b22e
L_B231:
	ld a,001h		;b231
	cp (hl)			;b233
	ret nz			;b234
	ld a,(0d230h)		;b235
	cp 001h		;b238
	ret nz			;b23a
	ld a,(0d233h)		;b23b
	dec a			;b23e
	ld (0d231h),a		;b23f
	ld a,(0d232h)		;b242
	ld (0d230h),a		;b245
	pop hl			;b248
	or a			;b249
	ret			;b24a
L_B24B:
	call L_B25B		;b24b
	dec (hl)			;b24e
	ret nz			;b24f
	ld a,(0d232h)		;b250
	ld (hl),a			;b253
	ld hl,0d231h		;b254
	dec (hl)			;b257
	jp L_B2B7		;b258
L_B25B:
	ld a,001h		;b25b
	cp (hl)			;b25d
	ret nz			;b25e
	ld a,(0d231h)		;b25f
	cp 001h		;b262
	ret nz			;b264
	ld a,(de)			;b265
	dec a			;b266
	ld (0d231h),a		;b267
	ld a,(0d232h)		;b26a
	ld (0d230h),a		;b26d
	pop hl			;b270
	or a			;b271
	ret			;b272
L_B273:
	call L_B289		;b273
	call L_B2A2		;b276
	ld a,(0d232h)		;b279
	inc (hl)			;b27c
	cp (hl)			;b27d
	ret nc			;b27e
	ld a,001h		;b27f
	ld (hl),a			;b281
	ld hl,0d231h		;b282
	inc (hl)			;b285
	jp L_B2B7		;b286
L_B289:
	ld a,(0d232h)		;b289
	dec a			;b28c
	cp (hl)			;b28d
	ret nz			;b28e
	ld a,(de)			;b28f
	ld b,a			;b290
	ld a,(0d231h)		;b291
	cp b			;b294
	ret nz			;b295
	ld a,(de)			;b296
	dec a			;b297
	ld (0d231h),a		;b298
	ld a,(0d232h)		;b29b
	ld (hl),a			;b29e
	pop hl			;b29f
	or a			;b2a0
	ret			;b2a1
L_B2A2:
	ld a,(0d232h)		;b2a2
	cp (hl)			;b2a5
	ret nz			;b2a6
	ld a,(de)			;b2a7
	dec a			;b2a8
	ld b,a			;b2a9
	ld a,(0d231h)		;b2aa
	cp b			;b2ad
	ret nz			;b2ae
	ld a,001h		;b2af
	ld (0d231h),a		;b2b1
	ld (hl),a			;b2b4
	pop hl			;b2b5
	ret			;b2b6
L_B2B7:
	ld b,(hl)			;b2b7
	ex de,hl			;b2b8
	ld a,(hl)			;b2b9
	inc a			;b2ba
	cp b			;b2bb
	jp z,L_B2C6		;b2bc
	ld a,b			;b2bf
	and a			;b2c0
	ret nz			;b2c1
	ld a,(hl)			;b2c2
	ex de,hl			;b2c3
	ld (hl),a			;b2c4
	ret			;b2c5
L_B2C6:
	ld a,001h		;b2c6
	ex de,hl			;b2c8
	ld (hl),a			;b2c9
	ret			;b2ca

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb2cb..0xb2ea  (31 bytes)
DATA_B2CB:
	defb 0b0h,0d2h,020h,0eah,009h,040h,070h,0fbh,002h,073h,062h,0feh,001h,0e9h,009h,0eah	; b2cb  .. ..@p..sb.....
	defb 00bh,0edh,00ah,0ebh,087h,070h,0f2h,010h,0f1h,042h,0d2h,023h,021h,021h,041h	; b2db  .....p...B.#!!A

; ======================================================================
; CODIGO 0xb2ea..0xb32c  (66 bytes)
; ======================================================================


L_B2EA:
	xor a			;b2ea
	ld (0d265h),a		;b2eb
	ld hl,0b2cbh		;b2ee
	ld (hl),000h		;b2f1
	ld de,0b2cch		;b2f3
	ld bc,0001eh		;b2f6
	ldir		;b2f9
	call L_B320		;b2fb
L_B2FE:
	ld b,000h		;b2fe
	call L_B31A		;b300
	ld hl,00785h		;b303
	call 08221h		;b306
	ld (0b2cbh),hl		;b309
	ld b,001h		;b30c
	call L_B31A		;b30e
	ld (0b2cdh),a		;b311
	call L_B338		;b314
	jp L_B3BA		;b317
L_B31A:
	ld a,(0d22fh)		;b31a
	jp L_AF83		;b31d
L_B320:
	ld hl,0b32ch		;b320
	ld de,0b2d0h		;b323
	ld bc,0000ch		;b326
	ldir		;b329
	ret			;b32b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb32c..0xb338  (12 bytes)
DATA_B32C:
	defb 01fh,01ch,01fh,01eh,01fh,01eh,01fh,01fh,01eh,01fh,01eh,01fh	; b32c  ............

; ======================================================================
; CODIGO 0xb338..0xb530  (504 bytes)
; ======================================================================


L_B338:
	ld de,(0b2cbh)		;b338
	ld (0b2ceh),de		;b33c
	ld bc,00004h		;b340
	call L_B382		;b343
	add hl,de			;b346
	ld (0b2ceh),hl		;b347
	ld bc,00064h		;b34a
	call L_B382		;b34d
	or a			;b350
	sbc hl,de		;b351
	ld (0b2ceh),hl		;b353
	ld bc,00190h		;b356
	call L_B382		;b359
	add hl,de			;b35c
	ld (0b2ceh),hl		;b35d
	ld bc,00004h		;b360
	call L_B38E		;b363
	ld bc,00064h		;b366
	call L_B38E		;b369
	ld bc,00190h		;b36c
	call L_B38E		;b36f
	ld a,(0b2dch)		;b372
	cp 001h		;b375
	jr z,L_B37C		;b377
	cp 003h		;b379
	ret nz			;b37b
L_B37C:
	ld hl,0b2d1h		;b37c
	ld (hl),01dh		;b37f
	ret			;b381
L_B382:
	ld de,(0b2cbh)		;b382
	dec de			;b386
	call L_B69F		;b387
	ld hl,(0b2ceh)		;b38a
	ret			;b38d
L_B38E:
	ld de,(0b2cbh)		;b38e
	call L_B69F		;b392
	ld a,h			;b395
	or l			;b396
	jr nz,L_B3A3		;b397
	ld hl,0d265h		;b399
	ld (hl),001h		;b39c
	ld hl,0b2dch		;b39e
	ld (hl),001h		;b3a1
L_B3A3:
	push hl			;b3a3
	push de			;b3a4
	push bc			;b3a5
	push af			;b3a6
	ld a,(0d22fh)		;b3a7
	call L_AFB3		;b3aa
	ld hl,00017h		;b3ad
	add hl,de			;b3b0
	ld a,(0d265h)		;b3b1
	ld (hl),a			;b3b4
	pop af			;b3b5
	pop bc			;b3b6
	pop de			;b3b7
	pop hl			;b3b8
	ret			;b3b9
L_B3BA:
	ld a,(0b2cdh)		;b3ba
	cp 001h		;b3bd
	jr z,L_B3D7		;b3bf
	dec a			;b3c1
	ld b,a			;b3c2
	ld de,00000h		;b3c3
	ld hl,0b2d0h		;b3c6
L_B3C9:
	ld a,(hl)			;b3c9
	inc hl			;b3ca
	call 08206h		;b3cb
	djnz L_B3C9		;b3ce
	ld hl,(0b2ceh)		;b3d0
	add hl,de			;b3d3
	ld (0b2ceh),hl		;b3d4
L_B3D7:
	ld de,(0b2ceh)		;b3d7
	ld bc,00007h		;b3db
	call L_B69F		;b3de
	ld (0b2ceh),hl		;b3e1
	ld a,l			;b3e4
	ld (0b2ddh),a		;b3e5
	ld hl,0b2cfh		;b3e8
	ld a,(0b2cdh)		;b3eb
	call 08221h		;b3ee
	ld a,(hl)			;b3f1
	ld (0b2deh),a		;b3f2
	ret			;b3f5
L_B3F6:
	call L_B2EA		;b3f6
	ld hl,0b545h		;b3f9
	ld de,07810h		;b3fc
	ld c,00fh		;b3ff
	ld a,001h		;b401
	call 08218h		;b403
	ld a,001h		;b406
	ld (0d1cch),a		;b408
	ld b,000h		;b40b
	call L_B31A		;b40d
	call L_B712		;b410
	ld c,025h		;b413
	add a,c			;b415
	daa			;b416
	ld c,a			;b417
	ld b,019h		;b418
	ld a,000h		;b41a
	adc a,b			;b41c
	daa			;b41d
	ld b,a			;b41e
	ld de,09038h		;b41f
	ld a,b			;b422
	call L_B454		;b423
	call L_B439		;b426
	ld a,b			;b429
	and 00fh		;b42a
	call L_B439		;b42c
	ld a,c			;b42f
	call L_B454		;b430
	call L_B439		;b433
	ld a,c			;b436
	and 00fh		;b437
L_B439:
	and a			;b439
	jr nz,L_B43E		;b43a
	ld a,00ah		;b43c
L_B43E:
	sla a		;b43e
	add a,026h		;b440
	push af			;b442
	call 082cfh		;b443
	ld e,040h		;b446
	pop af			;b448
	inc a			;b449
	call 082cfh		;b44a
	ld a,d			;b44d
	add a,008h		;b44e
	ld d,a			;b450
	ld e,038h		;b451
	ret			;b453
L_B454:
	and 0f0h		;b454
	srl a		;b456
	srl a		;b458
	srl a		;b45a
	srl a		;b45c
	ret			;b45e
L_B45F:
	call L_B2FE		;b45f
	ld hl,0b5bah		;b462
	ld de,07810h		;b465
	ld c,00fh		;b468
	ld a,001h		;b46a
	call 08218h		;b46c
	ld a,(0b2cdh)		;b46f
	ld b,03bh		;b472
	add a,b			;b474
	ld de,0b818h		;b475
	call 082cfh		;b478
	ld a,(0b2ddh)		;b47b
	ld (0b2e8h),a		;b47e
	ld hl,0b2dfh		;b481
	call 08221h		;b484
L_B487:
	ld de,0b2e6h		;b487
	ld a,(0b2deh)		;b48a
	ld b,a			;b48d
	ld a,(de)			;b48e
	cp b			;b48f
	jp nc,L_B4BA		;b490
	inc a			;b493
	ld (hl),a			;b494
	inc hl			;b495
	ld (de),a			;b496
L_B497:
	ld a,(0b2e8h)		;b497
	inc a			;b49a
	ld (0b2e8h),a		;b49b
	cp 007h		;b49e
	jp nz,L_B487		;b4a0
	xor a			;b4a3
	ld (0b2e8h),a		;b4a4
	call L_B4C3		;b4a7
	ld hl,0b2dfh		;b4aa
	ld a,(0b2e7h)		;b4ad
	inc a			;b4b0
	ld (0b2e7h),a		;b4b1
	cp 006h		;b4b4
	jp nz,L_B487		;b4b6
	ret			;b4b9
L_B4BA:
	ld b,000h		;b4ba
	inc a			;b4bc
	ld (hl),b			;b4bd
	inc hl			;b4be
	ld (de),a			;b4bf
	jp L_B497		;b4c0
L_B4C3:
	ld a,(0b2e7h)		;b4c3
	ld hl,0b530h		;b4c6
	call 08221h		;b4c9
	ld e,(hl)			;b4cc
	ld d,070h		;b4cd
	ld hl,0b2dfh		;b4cf
	ld b,007h		;b4d2
	ld a,001h		;b4d4
	ld (0d1cch),a		;b4d6
L_B4D9:
	ld a,010h		;b4d9
	add a,d			;b4db
	ld d,a			;b4dc
	ld a,(hl)			;b4dd
	inc hl			;b4de
	and a			;b4df
	jp nz,L_B4E8		;b4e0
	ld a,068h		;b4e3
	jp L_B4EA		;b4e5
L_B4E8:
	add a,048h		;b4e8
L_B4EA:
	call 082cfh		;b4ea
	djnz L_B4D9		;b4ed
	ret			;b4ef
L_B4F0:
	ld b,002h		;b4f0
	call L_B31A		;b4f2
	ld (0b2e9h),a		;b4f5
	push af			;b4f8
	call L_B53D		;b4f9
	pop af			;b4fc
	dec a			;b4fd
	ld b,a			;b4fe
	ld a,(0b2ddh)		;b4ff
	add a,b			;b502
	ld l,a			;b503
	ld c,007h		;b504
	call L_B704		;b506
	ld a,l			;b509
	ld de,0b530h		;b50a
	call 08206h		;b50d
	ld a,(de)			;b510
	ld b,a			;b511
	ld a,h			;b512
	ld de,0b536h		;b513
	call 08206h		;b516
	ld a,(de)			;b519
	ld d,a			;b51a
	ld e,b			;b51b
	ex de,hl			;b51c
	ld bc,00808h		;b51d
	ld de,00308h		;b520
	push hl			;b523
	push bc			;b524
	call 0960fh		;b525
	pop bc			;b528
	pop hl			;b529
	ld de,00408h		;b52a
	jp 0960fh		;b52d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb530..0xb53d  (13 bytes)
DATA_B530:
	defb 028h,038h,048h,058h,068h,078h,080h,090h,0a0h,0b0h,0c0h,0d0h,0e0h	; b530  (8HXhx.......

; ======================================================================
; CODIGO 0xb53d..0xb545  (8 bytes)
; ======================================================================


L_B53D:
	ld b,a			;b53d
	ld a,(0b2deh)		;b53e
	cp b			;b541
	ret nc			;b542
	pop de			;b543
	ret			;b544

; ----------------------------------------------------------------------
; DATOS casillas_B545: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0xB403 (117 bytes)
;   0xb545..0xb5ba  (117 bytes)
DATA_casillas_B545:
	defb 00eh,001h,081h,017h,00eh,002h,081h,016h,00eh,002h,08ah,016h,002h,003h,004h,005h	; b545  ................
	defb 006h,007h,008h,009h,00ah,005h,002h,081h,016h,00eh,002h,084h,016h,002h,00bh,00dh	; b555  ................
	defb 004h,06ch,081h,00eh,005h,00ch,084h,00fh,016h,002h,010h,00bh,06eh,084h,011h,016h	; b565  .l..........n...
	defb 002h,010h,00bh,06eh,084h,011h,016h,002h,010h,00bh,06eh,084h,011h,016h,002h,010h	; b575  ...n......n.....
	defb 008h,06eh,087h,019h,01ah,01bh,011h,016h,002h,010h,007h,06eh,088h,01ch,01dh,01eh	; b585  .n.........n....
	defb 01fh,011h,016h,002h,010h,007h,06eh,088h,020h,021h,022h,023h,011h,016h,002h,074h	; b595  ......n. !"#...t
	defb 007h,075h,087h,024h,025h,026h,027h,06fh,016h,012h,00dh,002h,083h,016h,013h,014h	; b5a5  .u.$%&'o........
	defb 00ch,015h,081h,018h,000h	; b5b5

; ----------------------------------------------------------------------
; DATOS casillas_B5BA: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0xB46C (88 bytes)
;   0xb5ba..0xb612  (88 bytes)
DATA_casillas_B5BA:
	defb 00eh,001h,082h,017h,00bh,006h,00ch,084h,00dh,06ch,048h,00eh,003h,00ch,082h,070h	; b5ba  .........lH....p
	defb 010h,00dh,06eh,082h,06dh,010h,00dh,06eh,083h,06dh,010h,069h,00ch,06eh,082h,06dh	; b5ca  ..n.m..n.m.i.n.m
	defb 010h,00dh,06eh,083h,06dh,010h,069h,00ch,06eh,082h,06dh,010h,00dh,06eh,083h,06dh	; b5da  ..n.m.i.n.m..n.m
	defb 010h,069h,00ch,06eh,082h,06dh,010h,00dh,06eh,083h,06dh,010h,069h,00ch,06eh,082h	; b5ea  .i.n.m..n.m.i.n.
	defb 06dh,010h,00dh,06eh,083h,06dh,010h,069h,00ch,06eh,082h,06dh,071h,00dh,06eh,083h	; b5fa  m..n.m.i.n.mq.n.
	defb 06dh,072h,06ah,00ch,06bh,081h,073h,000h	; b60a  mrj.k.s.

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb612..0xb69f  (141 bytes)
DATA_B612:
	defb 002h,000h,093h,028h,000h,02ah,000h,02ch,000h,02eh,000h,030h,000h,032h,000h,034h	; b612  ...(.*.,...0.2.4
	defb 000h,036h,000h,038h,000h,03ah,00dh,000h,093h,029h,000h,02bh,000h,02dh,000h,02fh	; b622  .6.8.:...).+.-./
	defb 000h,031h,000h,033h,000h,035h,000h,037h,000h,039h,000h,03bh,02dh,000h,09dh,03ch	; b632  .1.3.5.7.9..-..<
	defb 000h,03dh,000h,03eh,000h,03fh,000h,040h,000h,041h,000h,042h,000h,043h,000h,044h	; b642  .=.>.?.@.A.B.C.D
	defb 000h,045h,000h,046h,000h,047h,000h,049h,000h,04ah,000h,04bh,023h,000h,09dh,04ch	; b652  .E.F.G.I.J.K#..L
	defb 000h,04dh,000h,04eh,000h,04fh,000h,050h,000h,051h,000h,052h,000h,053h,000h,054h	; b662  .M.N.O.P.Q.R.S.T
	defb 000h,055h,000h,056h,000h,057h,000h,058h,000h,059h,000h,05ah,023h,000h,09bh,05bh	; b672  .U.V.W.X.Y.Z#..[
	defb 000h,05ch,000h,05dh,000h,05eh,000h,05fh,000h,060h,000h,061h,000h,062h,000h,063h	; b682  .\.].^._.`.a.b.c
	defb 000h,064h,000h,065h,000h,066h,000h,067h,000h,068h,013h,000h,000h	; b692  .d.e.f.g.h...

; ======================================================================
; CODIGO 0xb69f..0xb6f5  (86 bytes)
; ======================================================================


L_B69F:
	call L_B6C9		;b69f
	push af			;b6a2
	ld l,c			;b6a3
	ld h,b			;b6a4
	call L_B6BD		;b6a5
	ld c,l			;b6a8
	ld b,h			;b6a9
	ex de,hl			;b6aa
	call L_B6BD		;b6ab
	ex de,hl			;b6ae
	call L_B6DB		;b6af
	pop af			;b6b2
	jr c,L_B6BC		;b6b3
	ld a,d			;b6b5
	cpl			;b6b6
	ld d,a			;b6b7
	ld a,e			;b6b8
	cpl			;b6b9
	ld e,a			;b6ba
	inc de			;b6bb
L_B6BC:
	ret			;b6bc
L_B6BD:
	ld a,h			;b6bd
	or a			;b6be
	jp p,L_B6C8		;b6bf
	cpl			;b6c2
	ld h,a			;b6c3
	ld l,a			;b6c4
	cpl			;b6c5
	ld l,a			;b6c6
	inc hl			;b6c7
L_B6C8:
	ret			;b6c8
L_B6C9:
	ld a,b			;b6c9
	or a			;b6ca
	jp m,L_B6D4		;b6cb
	ld a,d			;b6ce
	or a			;b6cf
	jp p,L_B6D9		;b6d0
	ret			;b6d3
L_B6D4:
	ld a,d			;b6d4
	or a			;b6d5
	jp p,L_B6DA		;b6d6
L_B6D9:
	scf			;b6d9
L_B6DA:
	ret			;b6da
L_B6DB:
	ld hl,00000h		;b6db
	exx			;b6de
	ld b,010h		;b6df
L_B6E1:
	exx			;b6e1
	sla e		;b6e2
	rl d		;b6e4
	adc hl,hl		;b6e6
	sbc hl,bc		;b6e8
	jr c,L_B6EF		;b6ea
	inc e			;b6ec
	jr L_B6F0		;b6ed
L_B6EF:
	add hl,bc			;b6ef
L_B6F0:
	exx			;b6f0
	djnz L_B6E1		;b6f1
	exx			;b6f3
	ret			;b6f4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb6f5..0xb704  (15 bytes)
DATA_B6F5:
	defb 0afh,00ch,00dh,028h,009h,0cbh,039h,030h,001h,080h,0cbh,020h,018h,0f3h,0c9h	; b6f5  ...(..90... ...

; ======================================================================
; CODIGO 0xb704..0xb729  (37 bytes)
; ======================================================================


L_B704:
	ld b,008h		;b704
	ld h,000h		;b706
L_B708:
	add hl,hl			;b708
	ld a,h			;b709
	sub c			;b70a
	jr c,L_B70F		;b70b
	inc l			;b70d
	ld h,a			;b70e
L_B70F:
	djnz L_B708		;b70f
	ret			;b711
L_B712:
	push hl			;b712
	push bc			;b713
	ld l,a			;b714
	ld c,00ah		;b715
	call L_B704		;b717
	ld a,l			;b71a
	and 00fh		;b71b
	sla a		;b71d
	sla a		;b71f
	sla a		;b721
	sla a		;b723
	or h			;b725
	pop bc			;b726
	pop hl			;b727
	ret			;b728

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb729..0xb800  (215 bytes)
DATA_B729:
	defb 093h,0eah,00bh,0c3h,0bbh,0eah,007h,0b3h,0ebh,001h,070h,0f0h,0d0h,0eah,00ah,0b7h	; b729  ..........p.....
	defb 0eah,009h,0bbh,0f2h,020h,0f1h,041h,0ebh,007h,043h,0eah,00bh,0d1h,073h,0eah,007h	; b739  .... .A..C...s..
	defb 073h,0eah,00bh,0c3h,073h,077h,073h,0eah,006h,077h,0eah,009h,073h,0ebh,002h,031h	; b749  s...sws..w..s..1
	defb 0eah,00bh,057h,043h,057h,0e9h,004h,0ebh,004h,020h,027h,0eah,004h,025h,0e9h,002h	; b759  ..WCW.... '..%..
	defb 0eah,00bh,0ebh,007h,022h,0f2h,013h,0f1h,041h,0c7h,0d1h,043h,0eah,007h,047h,0eah	; b769  ...."...A..C..G.
	defb 00bh,043h,05bh,057h,043h,0d1h,027h,0d2h,073h,0eah,007h,077h,0eah,00bh,0d1h,023h	; b779  .C[WC.'.s..w...#
	defb 0eah,007h,027h,0eah,00bh,0f2h,042h,0ebh,007h,010h,04fh,0eah,007h,047h,0eah,00bh	; b789  ..'...B...O..G..
	defb 0ebh,007h,022h,0f1h,041h,043h,0eah,007h,047h,0eah,00bh,043h,097h,0bbh,0d0h,003h	; b799  ..".AC..G..C....
	defb 0d1h,0b7h,023h,0eah,007h,027h,0eah,00bh,0e9h,004h,0ebh,007h,010h,04bh,0eah,008h	; b7a9  ..#..'.......K..
	defb 041h,0feh,001h,0f9h,009h,068h,0eah,00bh,0d1h,053h,0eah,007h,057h,0eah,00bh,053h	; b7b9  A....h...S..W..S
	defb 077h,093h,077h,053h,047h,0eah,008h,043h,0eah,00bh,047h,07fh,0eah,005h,07bh,0f9h	; b7c9  w.wSG..C..G...{.
	defb 009h,068h,0eah,00bh,0ebh,004h,030h,0d1h,063h,0eah,007h,067h,0eah,00bh,063h,067h	; b7d9  .h....0.c..g..cg
	defb 023h,047h,063h,0ebh,004h,073h,077h,053h,0eah,007h,057h,0eah,00bh,023h,0eah,007h	; b7e9  #Gc..swS..W..#..
	defb 027h,0eah,00bh,0f1h,041h,0ebh,004h	; b7f9
