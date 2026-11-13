; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p28 (se ejecuta en 0x9A00)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09a00


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
la13ch:	equ 0x0a13c
la150h:	equ 0x0a150

; ======================================================================
; CODIGO 0x9a00..0x9a33  (51 bytes)
; ======================================================================


L_9A00:
	jp L_A069		;9a00
L_9A03:
	jp L_9EB1		;9a03
L_9A06:
	jp L_A09F		;9a06
L_9A09:
	jp L_A104		;9a09
L_9A0C:
	jp L_9A44		;9a0c
L_9A0F:
	jp L_A105		;9a0f
L_9A12:
	jp L_A106		;9a12
L_9A15:
	jp L_A107		;9a15
L_9A18:
	jp L_A108		;9a18
L_9A1B:
	jp L_A27D		;9a1b
L_9A1E:
	jp L_9FD3		;9a1e
L_9A21:
	jp L_A287		;9a21
L_9A24:
	jp L_A288		;9a24
L_9A27:
	jp L_A532		;9a27
L_9A2A:
	jp L_A5E6		;9a2a
L_9A2D:
	jp L_A60F		;9a2d
L_9A30:
	jp L_A63D		;9a30

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a33..0x9a44  (17 bytes)
DATA_9A33:
	defb 0fch,0d2h,018h,0edh,021h,03ah,09eh,022h,0fch,0d2h,018h,0e5h,021h,038h,09eh,022h	; 9a33  ....!:."....!8."
	defb 0fch	; 9a43

; ======================================================================
; CODIGO 0x9a44..0x9db7  (883 bytes)
; ======================================================================


L_9A44:
	di			;9a44
	or a			;9a45
	jp z,L_9A6A		;9a46
	dec a			;9a49
	jp z,L_9AD0		;9a4a
	dec a			;9a4d
	jr z,L_9A5F		;9a4e
	dec a			;9a50
	jr z,L_9A59		;9a51
	dec a			;9a53
	jp z,L_9A83		;9a54
	scf			;9a57
	ret			;9a58
L_9A59:
	ld a,b			;9a59
	ld (09e88h),a		;9a5a
	xor a			;9a5d
	ret			;9a5e
L_9A5F:
	xor a			;9a5f
	ld (04100h),a		;9a60
	ld (04192h),a		;9a63
	ld (04196h),a		;9a66
	ret			;9a69
L_9A6A:
	xor a			;9a6a
	ld (04194h),a		;9a6b
	ld (04198h),a		;9a6e
	ld (04192h),a		;9a71
	ld (04196h),a		;9a74
	call L_9A83		;9a77
	cp 001h		;9a7a
	scf			;9a7c
	ret z			;9a7d
	ld (04080h),a		;9a7e
	xor a			;9a81
	ret			;9a82
L_9A83:
	push hl			;9a83
	push bc			;9a84
	ld a,(04190h)		;9a85
	ld b,a			;9a88
	ld hl,04196h		;9a89
	ld c,(hl)			;9a8c
	xor a			;9a8d
	ld (hl),a			;9a8e
	ld a,(hl)			;9a8f
	and 002h		;9a90
	jr z,L_9AB6		;9a92
	ld a,(04194h)		;9a94
	ld (04194h),a		;9a97
	xor a			;9a9a
	call L_9AC5		;9a9b
	jr nz,L_9AB6		;9a9e
	ld a,001h		;9aa0
	call L_9AC5		;9aa2
	jr z,L_9AB6		;9aa5
	xor a			;9aa7
	call L_9AC5		;9aa8
	jr nz,L_9AB6		;9aab
	ld a,(hl)			;9aad
	and 008h		;9aae
	jr z,L_9AC0		;9ab0
	xor a			;9ab2
L_9AB3:
	pop bc			;9ab3
	pop hl			;9ab4
	ret			;9ab5
L_9AB6:
	ld (hl),c			;9ab6
	ld a,b			;9ab7
	ld (04190h),a		;9ab8
	ld a,001h		;9abb
	scf			;9abd
	jr L_9AB3		;9abe
L_9AC0:
	ld a,002h		;9ac0
	scf			;9ac2
	jr L_9AB3		;9ac3
L_9AC5:
	ld (04190h),a		;9ac5
	nop			;9ac8
	nop			;9ac9
	ld a,(04194h)		;9aca
	and 010h		;9acd
	ret			;9acf
L_9AD0:
	push bc			;9ad0
	push hl			;9ad1
	push ix		;9ad2
	exx			;9ad4
	push bc			;9ad5
	push de			;9ad6
	push hl			;9ad7
	exx			;9ad8
	push hl			;9ad9
	push bc			;9ada
	push hl			;9adb
	pop ix		;9adc
	ld h,b			;9ade
	ld l,c			;9adf
	add hl,hl			;9ae0
	ld d,h			;9ae1
	ld e,l			;9ae2
	add hl,bc			;9ae3
	add hl,hl			;9ae4
	ld b,h			;9ae5
	ld c,l			;9ae6
	ex de,hl			;9ae7
	add hl,hl			;9ae8
	add hl,hl			;9ae9
	add hl,hl			;9aea
	add hl,hl			;9aeb
	push hl			;9aec
	ld d,000h		;9aed
	ld e,d			;9aef
	ld h,d			;9af0
	ld l,d			;9af1
L_9AF2:
	push bc			;9af2
	ld b,008h		;9af3
	ld a,(ix+000h)		;9af5
	inc ix		;9af8
L_9AFA:
	rra			;9afa
	adc hl,de		;9afb
	djnz L_9AFA		;9afd
	pop bc			;9aff
	dec bc			;9b00
	ld a,b			;9b01
	or c			;9b02
	jr nz,L_9AF2		;9b03
	pop de			;9b05
	ld a,0ffh		;9b06
	sbc hl,de		;9b08
	jr c,L_9B0E		;9b0a
	ld a,055h		;9b0c
L_9B0E:
	ld (09e90h),a		;9b0e
	xor a			;9b11
	ld (09e92h),a		;9b12
	pop bc			;9b15
	pop hl			;9b16
	exx			;9b17
	ld bc,0ff01h		;9b18
	ld de,04194h		;9b1b
	ld hl,04190h		;9b1e
	exx			;9b21
	call L_9A83		;9b22
	jr c,L_9B8F		;9b25
	ld a,001h		;9b27
	ld (04196h),a		;9b29
	push hl			;9b2c
	push bc			;9b2d
	ld hl,02048h		;9b2e
	ld (09e85h),hl		;9b31
	xor a			;9b34
	ld (09e8fh),a		;9b35
	call L_9BA0		;9b38
	ld a,073h		;9b3b
	ld (09e87h),a		;9b3d
	ld b,000h		;9b40
	call L_9C0A		;9b42
	jr c,L_9B8D		;9b45
	ld hl,02048h		;9b47
	ld (09e8dh),hl		;9b4a
	ld b,012h		;9b4d
L_9B4F:
	ld hl,09e7fh		;9b4f
	call L_9BC2		;9b52
	jr c,L_9B8D		;9b55
	djnz L_9B4F		;9b57
	pop bc			;9b59
	pop hl			;9b5a
	ld a,002h		;9b5b
	ld (09e87h),a		;9b5d
L_9B60:
	call L_9BC2		;9b60
	jr c,L_9B8F		;9b63
	dec bc			;9b65
	ld a,b			;9b66
	or c			;9b67
	jr nz,L_9B60		;9b68
	ld de,0ffffh		;9b6a
	ld bc,(09e85h)		;9b6d
	ld a,b			;9b71
	or c			;9b72
	jr z,L_9B7D		;9b73
	ld hl,01136h		;9b75
L_9B78:
	inc de			;9b78
	sbc hl,bc		;9b79
	jr nc,L_9B78		;9b7b
L_9B7D:
	ld a,(09e8fh)		;9b7d
	cp 001h		;9b80
	ccf			;9b82
	exx			;9b83
	pop hl			;9b84
	pop de			;9b85
	pop bc			;9b86
	exx			;9b87
	pop ix		;9b88
	pop hl			;9b8a
	pop bc			;9b8b
	ret			;9b8c
L_9B8D:
	pop bc			;9b8d
	pop hl			;9b8e
L_9B8F:
	push af			;9b8f
	call L_9A5F		;9b90
	pop af			;9b93
	exx			;9b94
	pop hl			;9b95
	pop de			;9b96
	pop bc			;9b97
	exx			;9b98
	pop ix		;9b99
	pop hl			;9b9b
	pop bc			;9b9c
	jp L_A02F		;9b9d
L_9BA0:
	ld a,(09e88h)		;9ba0
	ld hl,09db7h		;9ba3
	or a			;9ba6
	jr z,L_9BBE		;9ba7
	ld hl,09ddfh		;9ba9
	dec a			;9bac
	jr z,L_9BBE		;9bad
	ld hl,09e07h		;9baf
	dec a			;9bb2
	jr z,L_9BBE		;9bb3
	ld hl,09e2fh		;9bb5
	dec a			;9bb8
	jr z,L_9BBE		;9bb9
	ld hl,09e57h		;9bbb
L_9BBE:
	ld (09e8bh),hl		;9bbe
	ret			;9bc1
L_9BC2:
	push bc			;9bc2
	call L_9BE0		;9bc3
	push hl			;9bc6
	ld b,004h		;9bc7
	call L_9C0A		;9bc9
	jr c,L_9BDD		;9bcc
	call L_9C6B		;9bce
	call L_9CD5		;9bd1
	ld a,c			;9bd4
	or a			;9bd5
	jr nz,L_9BDD		;9bd6
	ld b,000h		;9bd8
	call L_9C0A		;9bda
L_9BDD:
	pop hl			;9bdd
	pop bc			;9bde
	ret			;9bdf
L_9BE0:
	ld ix,09e99h		;9be0
	ld b,006h		;9be4
L_9BE6:
	ld a,(ix-006h)		;9be6
	cpl			;9be9
	ld e,a			;9bea
	ld a,(ix+000h)		;9beb
	ld (ix-006h),a		;9bee
	cpl			;9bf1
	ld d,a			;9bf2
	ld c,(hl)			;9bf3
	ld (ix+000h),c		;9bf4
	or e			;9bf7
	and c			;9bf8
	ld (ix+006h),a		;9bf9
	and d			;9bfc
	ld (ix+00ch),a		;9bfd
	and e			;9c00
	ld (ix+012h),a		;9c01
	inc hl			;9c04
	inc ix		;9c05
	djnz L_9BE6		;9c07
	ret			;9c09
L_9C0A:
	push hl			;9c0a
	push de			;9c0b
	push bc			;9c0c
	ld hl,00000h		;9c0d
	ld de,0000ah		;9c10
	ld c,000h		;9c13
L_9C15:
	in a,(0aah)		;9c15
	and 0f0h		;9c17
	or 007h		;9c19
	out (0aah),a		;9c1b
	in a,(0a9h)		;9c1d
	and 010h		;9c1f
	jr z,L_9C45		;9c21
	ld a,(04196h)		;9c23
	bit 3,a		;9c26
	jr z,L_9C49		;9c28
	and 006h		;9c2a
	cp b			;9c2c
	jr z,L_9C4E		;9c2d
	add hl,de			;9c2f
	jr nc,L_9C15		;9c30
	push hl			;9c32
	ld hl,02048h		;9c33
	ld (09e8dh),hl		;9c36
	pop hl			;9c39
	inc c			;9c3a
	ld a,(09e87h)		;9c3b
	cp c			;9c3e
	jr nc,L_9C15		;9c3f
	ld a,004h		;9c41
	jr L_9C4B		;9c43
L_9C45:
	ld a,005h		;9c45
	jr L_9C4B		;9c47
L_9C49:
	ld a,002h		;9c49
L_9C4B:
	scf			;9c4b
	jr L_9C67		;9c4c
L_9C4E:
	ld bc,00017h		;9c4e
	add hl,bc			;9c51
	srl h		;9c52
	rr l		;9c54
	srl h		;9c56
	rr l		;9c58
	srl h		;9c5a
	rr l		;9c5c
	ld de,(09e8dh)		;9c5e
	add hl,de			;9c62
	ld (09e8dh),hl		;9c63
	xor a			;9c66
L_9C67:
	pop bc			;9c67
	pop de			;9c68
	pop hl			;9c69
	ret			;9c6a
L_9C6B:
	push de			;9c6b
	push hl			;9c6c
	ld de,(09e8dh)		;9c6d
	ld hl,(09e85h)		;9c71
	xor a			;9c74
	sbc hl,de		;9c75
	ex de,hl			;9c77
	jp nc,L_9C7E		;9c78
	xor a			;9c7b
	jr L_9C81		;9c7c
L_9C7E:
	ld (09e85h),hl		;9c7e
L_9C81:
	ld de,0007eh		;9c81
	xor a			;9c84
	sbc hl,de		;9c85
	jr c,L_9CBB		;9c87
	ld a,(09e92h)		;9c89
	or a			;9c8c
	jr z,L_9C99		;9c8d
	dec a			;9c8f
	ld (09e92h),a		;9c90
	jr nz,L_9C99		;9c93
	exx			;9c95
	ld b,0ffh		;9c96
	exx			;9c98
L_9C99:
	ld de,0003eh		;9c99
	add hl,de			;9c9c
	ld a,h			;9c9d
	or a			;9c9e
	jr nz,L_9CCB		;9c9f
	add hl,hl			;9ca1
	add hl,hl			;9ca2
	add hl,hl			;9ca3
	ld a,h			;9ca4
	add a,a			;9ca5
	add a,a			;9ca6
	add a,h			;9ca7
	ld d,000h		;9ca8
	ld e,a			;9caa
L_9CAB:
	ld hl,(09e8bh)		;9cab
	add hl,de			;9cae
	ld (09e89h),hl		;9caf
	ld hl,00012h		;9cb2
	ld (09e8dh),hl		;9cb5
	pop hl			;9cb8
	pop de			;9cb9
	ret			;9cba
L_9CBB:
	ld de,00000h		;9cbb
	exx			;9cbe
	ld a,(09e90h)		;9cbf
	ld b,a			;9cc2
	exx			;9cc3
	ld a,00ah		;9cc4
	ld (09e92h),a		;9cc6
	jr L_9CAB		;9cc9
L_9CCB:
	ld de,00023h		;9ccb
	inc hl			;9cce
	ld a,000h		;9ccf
	push hl			;9cd1
	pop hl			;9cd2
	jr L_9CAB		;9cd3
L_9CD5:
	ld c,000h		;9cd5
	ld hl,(09e89h)		;9cd7
	ld de,09e9eh		;9cda
	call L_9D48		;9cdd
	inc hl			;9ce0
	ld de,09ea4h		;9ce1
	call L_9D48		;9ce4
	inc hl			;9ce7
	ld de,09eaah		;9ce8
	call L_9D48		;9ceb
	inc hl			;9cee
	ld de,09eb0h		;9cef
	call L_9D48		;9cf2
	xor a			;9cf5
	ld (04192h),a		;9cf6
	ld hl,(09e89h)		;9cf9
	ld de,09e9bh		;9cfc
	call L_9D55		;9cff
	inc hl			;9d02
	ld de,09ea1h		;9d03
	call L_9D55		;9d06
	inc hl			;9d09
	ld de,09ea7h		;9d0a
	call L_9D55		;9d0d
	inc hl			;9d10
	ld de,09eadh		;9d11
	call L_9D55		;9d14
	xor a			;9d17
	ld (04192h),a		;9d18
	inc hl			;9d1b
	ld e,(hl)			;9d1c
	ld d,000h		;9d1d
	ld hl,(09e8dh)		;9d1f
	add hl,de			;9d22
	ld (09e8dh),hl		;9d23
	jp L_9D29		;9d26
L_9D29:
	ld a,c			;9d29
	or a			;9d2a
	ld a,(04196h)		;9d2b
	jr z,L_9D3B		;9d2e
	and 004h		;9d30
	jr z,L_9D3F		;9d32
	ld a,003h		;9d34
	ld (09e8fh),a		;9d36
	ld c,a			;9d39
	ret			;9d3a
L_9D3B:
	and 004h		;9d3b
	jr z,L_9D43		;9d3d
L_9D3F:
	add ix,de		;9d3f
	ld a,c			;9d41
	ret			;9d42
L_9D43:
	ld a,001h		;9d43
	ld c,001h		;9d45
	ret			;9d47
L_9D48:
	ld a,(hl)			;9d48
	or a			;9d49
	jr z,L_9D29		;9d4a
	call L_9D94		;9d4c
	call L_9DAA		;9d4f
	jp L_9D62		;9d52
L_9D55:
	ld a,(hl)			;9d55
	or a			;9d56
	jr z,L_9D29		;9d57
	call L_9DAA		;9d59
	call L_9D94		;9d5c
	jp L_9D62		;9d5f
L_9D62:
	ld a,001h		;9d62
	ld (04198h),a		;9d64
	xor a			;9d67
	ld (04198h),a		;9d68
	inc a			;9d6b
	ld (04192h),a		;9d6c
	ld b,(hl)			;9d6f
L_9D70:
	ld a,c			;9d70
	or a			;9d71
	ld a,(04196h)		;9d72
	jr z,L_9D84		;9d75
	and 004h		;9d77
	jr z,L_9D8C		;9d79
	ld a,003h		;9d7b
	ld (09e8fh),a		;9d7d
	ld c,a			;9d80
L_9D81:
	djnz L_9D70		;9d81
	ret			;9d83
L_9D84:
	and 004h		;9d84
	jr nz,L_9D90		;9d86
	ld c,001h		;9d88
	jr L_9D81		;9d8a
L_9D8C:
	ld a,000h		;9d8c
	jr L_9D81		;9d8e
L_9D90:
	ld a,c			;9d90
	jp L_9D81		;9d91
L_9D94:
	ld a,(de)			;9d94
	dec de			;9d95
	exx			;9d96
	and b			;9d97
	ld (de),a			;9d98
	ld (hl),c			;9d99
	exx			;9d9a
	ld a,(de)			;9d9b
	dec de			;9d9c
	exx			;9d9d
	and b			;9d9e
	ld (de),a			;9d9f
	ld (hl),c			;9da0
	exx			;9da1
	ld a,(de)			;9da2
	dec de			;9da3
	exx			;9da4
	and b			;9da5
	ld (de),a			;9da6
	ld (hl),c			;9da7
	exx			;9da8
	ret			;9da9
L_9DAA:
	xor a			;9daa
	exx			;9dab
	ld (de),a			;9dac
	ld (hl),c			;9dad
	nop			;9dae
	ld (de),a			;9daf
	ld (hl),c			;9db0
	nop			;9db1
	ld (de),a			;9db2
	ld (hl),c			;9db3
	nop			;9db4
	exx			;9db5
	ret			;9db6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9db7..0x9eb1  (250 bytes)
DATA_9DB7:
	defb 00dh,000h,000h,000h,025h,00fh,001h,001h,001h,03ah,011h,001h,003h,000h,03ah,013h	; 9db7  ....%....:....:.
	defb 001h,001h,000h,03ah,015h,003h,000h,000h,03ah,017h,001h,000h,000h,03ah,01bh,000h	; 9dc7  ...:....:....:..
	defb 000h,000h,03ah,01bh,000h,000h,000h,03ah,00dh,000h,000h,000h,025h,012h,001h,001h	; 9dd7  ..:....:....%...
	defb 001h,03fh,014h,001h,003h,000h,03fh,016h,001h,001h,000h,03fh,018h,003h,000h,000h	; 9de7  .?....?....?....
	defb 03fh,01ah,001h,000h,000h,03fh,01eh,000h,000h,000h,03fh,01eh,000h,000h,000h,03fh	; 9df7  ?....?....?....?
	defb 00dh,000h,000h,000h,025h,01ah,003h,001h,000h,048h,01ch,005h,000h,000h,048h,01dh	; 9e07  ....%....H....H.
	defb 005h,000h,000h,04ah,01fh,003h,000h,000h,04ah,022h,001h,000h,000h,04bh,026h,000h	; 9e17  ...J....J"...K&.
	defb 000h,000h,04bh,026h,000h,000h,000h,04bh,00dh,000h,000h,000h,025h,01ah,004h,002h	; 9e27  ..K&...K....%...
	defb 000h,04bh,020h,004h,003h,000h,056h,023h,003h,001h,000h,056h,027h,003h,000h,000h	; 9e37  .K ...V#...V'...
	defb 056h,029h,001h,000h,000h,056h,02eh,000h,000h,000h,058h,02eh,000h,000h,000h,058h	; 9e47  V)...V....X....X
	defb 00dh,000h,000h,000h,025h,01ah,004h,002h,000h,04bh,020h,004h,003h,000h,056h,023h	; 9e57  ....%....K ...V#
	defb 003h,001h,003h,05fh,025h,004h,001h,001h,061h,029h,004h,002h,000h,063h,02eh,005h	; 9e67  ..._%...a)...c..
	defb 000h,000h,064h,036h,000h,000h,000h,064h,000h,000h,000h,000h,000h,000h,0c3h,047h	; 9e77  ..d6...d.......G
	defb 09fh,0edh,05bh,06eh,092h,021h,01dh,000h,0e7h,030h,006h,001h,000h,000h,000h,000h	; 9e87  ..[n.!...0......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9e97  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9ea7  ..........

; ======================================================================
; CODIGO 0x9eb1..0xa063  (434 bytes)
; ======================================================================


L_9EB1:
	call L_9EC2		;9eb1
	jr nc,L_9EBC		;9eb4
	ld (0e0fbh),a		;9eb6
	xor a			;9eb9
	jr L_9EBE		;9eba
L_9EBC:
	ld a,001h		;9ebc
L_9EBE:
	ld (0e100h),a		;9ebe
	ret			;9ec1
L_9EC2:
	ld bc,00400h		;9ec2
	ld hl,0fcc1h		;9ec5
L_9EC8:
	push bc			;9ec8
	push hl			;9ec9
	ld a,(hl)			;9eca
	bit 7,a		;9ecb
	jr nz,L_9EDB		;9ecd
	ld a,c			;9ecf
	call L_9EF0		;9ed0
L_9ED3:
	pop hl			;9ed3
	pop bc			;9ed4
	ret c			;9ed5
	inc hl			;9ed6
	inc c			;9ed7
	djnz L_9EC8		;9ed8
	ret			;9eda
L_9EDB:
	and 080h		;9edb
	or c			;9edd
	call L_9EE3		;9ede
	jr L_9ED3		;9ee1
L_9EE3:
	ld b,004h		;9ee3
L_9EE5:
	push bc			;9ee5
	call L_9EF0		;9ee6
	pop bc			;9ee9
	ret c			;9eea
	add a,004h		;9eeb
	djnz L_9EE5		;9eed
	ret			;9eef
L_9EF0:
	push af			;9ef0
	ld hl,04000h		;9ef1
	call 00024h		;9ef4   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,004h		;9ef7
	call L_9A44		;9ef9
	jr nc,L_9F01		;9efc
	dec a			;9efe
	jr z,L_9F04		;9eff
L_9F01:
	pop af			;9f01
	scf			;9f02
	ret			;9f03
L_9F04:
	pop af			;9f04
	and a			;9f05
	ret			;9f06
L_9F07:
	push hl			;9f07
	pop ix		;9f08
	xor a			;9f0a
	ld (0a8bah),a		;9f0b
	ld b,010h		;9f0e
L_9F10:
	push bc			;9f10
	call L_9F1A		;9f11
	pop bc			;9f14
	inc ix		;9f15
	djnz L_9F10		;9f17
	ret			;9f19
L_9F1A:
	ld a,(ix+000h)		;9f1a
	call L_9F23		;9f1d
	ld a,(ix+010h)		;9f20
L_9F23:
	ld b,008h		;9f23
L_9F25:
	push bc			;9f25
	push af			;9f26
	call L_9F30		;9f27
	pop af			;9f2a
	pop bc			;9f2b
	rrca			;9f2c
	djnz L_9F25		;9f2d
	ret			;9f2f
L_9F30:
	rrca			;9f30
	ld a,0e0h		;9f31
	jr c,L_9F36		;9f33
	xor a			;9f35
L_9F36:
	ld b,003h		;9f36
L_9F38:
	ld hl,(0a8bbh)		;9f38
	rla			;9f3b
	rr (hl)		;9f3c
	ld c,a			;9f3e
	ld a,(0a8bah)		;9f3f
	inc a			;9f42
	and 007h		;9f43
	ld (0a8bah),a		;9f45
	jr nz,L_9F51		;9f48
	ld hl,(0a8bbh)		;9f4a
	inc hl			;9f4d
	ld (0a8bbh),hl		;9f4e
L_9F51:
	ld a,c			;9f51
	djnz L_9F38		;9f52
	ret			;9f54
L_9F55:
	xor a			;9f55
	ld (0a8c1h),a		;9f56
	ld hl,0c000h		;9f59
	ld (0a8bbh),hl		;9f5c
	ld de,0c001h		;9f5f
	ld bc,008ffh		;9f62
	ld (hl),000h		;9f65
	ldir		;9f67
	ld a,(0a8bfh)		;9f69
	ld b,a			;9f6c
	ld hl,0c000h		;9f6d
L_9F70:
	push bc			;9f70
	push hl			;9f71
	call L_9F85		;9f72
	ld hl,0a8c1h		;9f75
	inc (hl)			;9f78
	pop hl			;9f79
	ld de,00006h		;9f7a
	add hl,de			;9f7d
	ld (0a8bbh),hl		;9f7e
	pop bc			;9f81
	djnz L_9F70		;9f82
	ret			;9f84
L_9F85:
	ld de,0c900h		;9f85
	ld hl,(0a8bdh)		;9f88
	ld a,(0a8bfh)		;9f8b
	ld c,a			;9f8e
	ld a,c			;9f8f
	ld (09a33h),a		;9f90
L_9F93:
	ld a,(hl)			;9f93
	inc hl			;9f94
	ld b,a			;9f95
	and a			;9f96
	jr z,L_9FB6		;9f97
	jp p,L_9FAA		;9f99
	res 7,b		;9f9c
L_9F9E:
	ld a,(hl)			;9f9e
	inc hl			;9f9f
	ld (de),a			;9fa0
	inc de			;9fa1
	dec c			;9fa2
	call z,L_9FB6		;9fa3
	djnz L_9F9E		;9fa6
	jr L_9F93		;9fa8
L_9FAA:
	ld a,(hl)			;9faa
	ld (de),a			;9fab
	inc de			;9fac
	dec c			;9fad
	call z,L_9FB6		;9fae
	djnz L_9FAA		;9fb1
	inc hl			;9fb3
	jr L_9F93		;9fb4
L_9FB6:
	push hl			;9fb6
	ld hl,0c900h		;9fb7
	ld a,(0a8c1h)		;9fba
	ld e,a			;9fbd
	ld d,000h		;9fbe
	add hl,de			;9fc0
	ld a,(hl)			;9fc1
	ld hl,(0a8bbh)		;9fc2
	ld (hl),a			;9fc5
	inc hl			;9fc6
	ld (0a8bbh),hl		;9fc7
	pop hl			;9fca
	ld de,0c900h		;9fcb
	ld a,(09a33h)		;9fce
	ld c,a			;9fd1
	ret			;9fd2
L_9FD3:
	ld hl,0c000h		;9fd3
	ld (0a8bdh),hl		;9fd6
L_9FD9:
	ld a,(0fd9ah)		;9fd9
	ld (0e0f3h),a		;9fdc
	ld a,0c9h		;9fdf
	ld (0fd9ah),a		;9fe1
	ld a,(0e0fbh)		;9fe4
	ld hl,04000h		;9fe7
	call 00024h		;9fea   ; BIOS ENASLT - Switches to specified slot and page definitively
	di			;9fed
	ld a,000h		;9fee
	call L_9A44		;9ff0
	jr c,L_A019		;9ff3
	ld b,004h		;9ff5
	ld a,003h		;9ff7
	call L_9A44		;9ff9
	ld bc,0ea60h		;9ffc
L_9FFF:
	ld a,004h		;9fff
	call L_9A44		;a001
	jr nc,L_A00D		;a004
	dec bc			;a006
	ld a,b			;a007
	or c			;a008
	jr nz,L_9FFF		;a009
	jr L_A034		;a00b
L_A00D:
	ld hl,(0a8bdh)		;a00d
	ld bc,(0a8bfh)		;a010
	ld a,001h		;a014
	call L_9A44		;a016
L_A019:
	push af			;a019
	ld a,002h		;a01a
	call L_9A44		;a01c
	pop af			;a01f
L_A020:
	ld a,(0e0fch)		;a020
	ld h,040h		;a023
	call 00024h		;a025   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,(0e0f3h)		;a028
	ld (0fd9ah),a		;a02b
	ret			;a02e
L_A02F:
	call L_A020		;a02f
	jr L_A037		;a032
L_A034:
	call L_A019		;a034
L_A037:
	call L_A040		;a037
	ld sp,(0e0feh)		;a03a
	scf			;a03e
	ret			;a03f
L_A040:
	call L_A69F		;a040
	ld a,(0d1d6h)		;a043
	or a			;a046
	jr z,L_A053		;a047
	dec a			;a049
	ld hl,0a063h		;a04a
	call 0826ch		;a04d
	jp 08275h		;a050
L_A053:
	ld hl,0a78ch		;a053
	ld a,(0d217h)		;a056
	cp 002h		;a059
	jr nz,L_A060		;a05b
	ld hl,0a7a1h		;a05d
L_A060:
	jp 08275h		;a060

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa063..0xa069  (6 bytes)
DATA_A063:
	defb 0fah,0a7h,053h,0a8h,0a7h,0a8h	; a063

; ======================================================================
; CODIGO 0xa069..0xa0d8  (111 bytes)
; ======================================================================


L_A069:
	ld a,001h		;a069
	call L_A8C5		;a06b
	ld hl,05800h		;a06e
	ld a,001h		;a071
	call 0826ch		;a073
	or a			;a076
	ld de,03800h		;a077
	sbc hl,de		;a07a
	call L_A696		;a07c
	ld hl,0bc00h		;a07f
	ld (0a8bdh),hl		;a082
	ld bc,00080h		;a085
	ld (0a8bfh),bc		;a088
	call L_9F55		;a08c
	ld hl,0c1aah		;a08f
	ld (0a8bdh),hl		;a092
	ld bc,00039h		;a095
	ld (0a8bfh),bc		;a098
	jp L_9FD9		;a09c
L_A09F:
	call 000c0h		;a09f   ; BIOS BEEP - Generates beep
	call L_A69F		;a0a2
	call L_A0DE		;a0a5
	ld bc,0fde8h		;a0a8
L_A0AB:
	push bc			;a0ab
	call 09803h		;a0ac
	pop bc			;a0af
	dec bc			;a0b0
	ld a,b			;a0b1
	or c			;a0b2
	jr nz,L_A0AB		;a0b3
	call L_A69F		;a0b5
	ld a,(0d1d6h)		;a0b8
	or a			;a0bb
	jr z,L_A0C8		;a0bc
	dec a			;a0be
	ld hl,0a0d8h		;a0bf
	call 0826ch		;a0c2
	jp 08275h		;a0c5
L_A0C8:
	ld hl,0a704h		;a0c8
	ld a,(0d217h)		;a0cb
	cp 002h		;a0ce
	jr nz,L_A0D5		;a0d0
	ld hl,0a719h		;a0d2
L_A0D5:
	jp 08275h		;a0d5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa0d8..0xa0de  (6 bytes)
DATA_A0D8:
	defb 0b6h,0a7h,00fh,0a8h,068h,0a8h	; a0d8

; ======================================================================
; CODIGO 0xa0de..0xa0fe  (32 bytes)
; ======================================================================


L_A0DE:
	ld a,(0d1d6h)		;a0de
	or a			;a0e1
	jr z,L_A0EE		;a0e2
	dec a			;a0e4
	ld hl,0a0feh		;a0e5
	call 0826ch		;a0e8
	jp 08275h		;a0eb
L_A0EE:
	ld hl,0a72eh		;a0ee
	ld a,(0d217h)		;a0f1
	cp 002h		;a0f4
	jr nz,L_A0FB		;a0f6
	ld hl,0a746h		;a0f8
L_A0FB:
	jp 08275h		;a0fb

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa0fe..0xa104  (6 bytes)
DATA_A0FE:
	defb 0cbh,0a7h,024h,0a8h,07bh,0a8h	; a0fe

; ======================================================================
; CODIGO 0xa104..0xa228  (292 bytes)
; ======================================================================


L_A104:
	ret			;a104
L_A105:
	ret			;a105
L_A106:
	ret			;a106
L_A107:
	ret			;a107
L_A108:
	ld hl,06a00h		;a108
	ld (0a197h),hl		;a10b
	ld hl,la13ch		;a10e
	ld de,la13ch+1		;a111
	ld bc,00005h		;a114
	ld (hl),000h		;a117
	ldir		;a119
	ld hl,la150h		;a11b
	ld de,la150h+1		;a11e
	ld bc,00005h		;a121
	ld (hl),000h		;a124
	ldir		;a126
L_A128:
	xor a			;a128
	ld (09a3fh),a		;a129
	ld hl,0c000h		;a12c
	ld (0a8bbh),hl		;a12f
L_A132:
	ld de,(09a38h)		;a132
	ld a,(de)			;a136
	inc a			;a137
	ld (09a37h),a		;a138
	ret z			;a13b
L_A13C:
	call L_A17C		;a13c
	jp z,L_A1B4		;a13f
	inc a			;a142
	ret z			;a143
	inc a			;a144
	jp z,L_A1AC		;a145
	inc a			;a148
	jp z,L_A1C0		;a149
	inc a			;a14c
	jp z,L_A1B4		;a14d
L_A150:
	ld a,(09a3fh)		;a150
	cp 018h		;a153
	ret nc			;a155
	ld a,(de)			;a156
	inc de			;a157
	ld (09a38h),de		;a158
	ld b,a			;a15c
	ld a,(0d1ffh)		;a15d
	or a			;a160
	jr nz,L_A170		;a161
	ld a,b			;a163
	add a,042h		;a164
	cp 019h		;a166
	jp c,L_A201		;a168
	cp 03dh		;a16b
	jp c,L_A207		;a16d
L_A170:
	ld a,b			;a170
	call L_A18E		;a171
	ld de,00000h		;a174
L_A177:
	call L_A1A0		;a177
	jr L_A132		;a17a
L_A17C:
	ld b,a			;a17c
	cp 0ffh		;a17d
	ret nz			;a17f
	ld a,(09a3fh)		;a180
	cp 00dh		;a183
	jr c,L_A18B		;a185
	or 0ffh		;a187
	ld a,b			;a189
	ret			;a18a
L_A18B:
	xor a			;a18b
	ld a,b			;a18c
	ret			;a18d
L_A18E:
	push hl			;a18e
	ld hl,04006h		;a18f
	cp 053h		;a192
	jr c,L_A19B		;a194
	ld hl,06a00h		;a196
	sub 053h		;a199
L_A19B:
	ld (0a175h),hl		;a19b
	pop hl			;a19e
	ret			;a19f
L_A1A0:
	call L_A270		;a1a0
	add hl,de			;a1a3
	call L_9F07		;a1a4
	ld hl,09a3fh		;a1a7
	inc (hl)			;a1aa
	ret			;a1ab
L_A1AC:
	ld a,(0d1ffh)		;a1ac
	xor 001h		;a1af
	ld (0d1ffh),a		;a1b1
L_A1B4:
	ld de,(09a38h)		;a1b4
	inc de			;a1b8
	ld (09a38h),de		;a1b9
	jp L_A132		;a1bd
L_A1C0:
	ld b,004h		;a1c0
	ld hl,0d218h		;a1c2
L_A1C5:
	push bc			;a1c5
	ld a,(hl)			;a1c6
	inc hl			;a1c7
	cp 043h		;a1c8
	jr z,L_A1E2		;a1ca
	cp 044h		;a1cc
	jr z,L_A1E2		;a1ce
	cp 0ffh		;a1d0
	jr nz,L_A1D5		;a1d2
	xor a			;a1d4
L_A1D5:
	ld de,04006h		;a1d5
L_A1D8:
	push hl			;a1d8
	call L_A1A0		;a1d9
	pop hl			;a1dc
	pop bc			;a1dd
	djnz L_A1C5		;a1de
	jr L_A1B4		;a1e0
L_A1E2:
	cp 044h		;a1e2
	jr z,L_A1F6		;a1e4
	ld a,(hl)			;a1e6
	inc hl			;a1e7
	cp 01ah		;a1e8
	jr nc,L_A1F0		;a1ea
	sub 006h		;a1ec
	jr L_A1FC		;a1ee
L_A1F0:
	sub 01ah		;a1f0
	add a,00fh		;a1f2
	jr L_A1FC		;a1f4
L_A1F6:
	ld a,(hl)			;a1f6
	inc hl			;a1f7
	sub 01ah		;a1f8
	add a,014h		;a1fa
L_A1FC:
	ld de,04a66h		;a1fc
	jr L_A1D8		;a1ff
L_A201:
	ld de,04a66h		;a201
	jp L_A177		;a204
L_A207:
	sub 019h		;a207
	ld hl,0a228h		;a209
	add a,a			;a20c
	call 08221h		;a20d
	ld c,(hl)			;a210
	inc hl			;a211
	ld b,(hl)			;a212
	push bc			;a213
	ld a,c			;a214
	cp 0beh		;a215
	ld de,04006h		;a217
	jr c,L_A221		;a21a
	sub 0beh		;a21c
	ld de,04a66h		;a21e
L_A221:
	call L_A1A0		;a221
	pop bc			;a224
	jp L_A170		;a225

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa228..0xa270  (72 bytes)
DATA_A228:
	defb 007h,02fh,007h,030h,007h,031h,00ch,02fh,00ch,030h,00ch,031h,011h,02fh,011h,030h	; a228  ./.0.1./.0.1./.0
	defb 011h,031h,016h,02fh,016h,030h,016h,031h,01bh,02fh,01bh,030h,01bh,031h,020h,02fh	; a238  .1./.0.1./.0.1 /
	defb 020h,030h,020h,031h,028h,02fh,028h,030h,028h,031h,0bfh,02fh,0bfh,030h,0bfh,031h	; a248   0 1(/(0(1./.0.1
	defb 0c4h,02fh,0c4h,030h,0c4h,031h,0c9h,02fh,0c9h,030h,0c9h,031h,0ceh,02fh,0ceh,030h	; a258  ./.0.1./.0.1./.0
	defb 0ceh,031h,0d3h,02fh,0d3h,030h,0d3h,031h	; a268  .1./.0.1

; ======================================================================
; CODIGO 0xa270..0xa394  (292 bytes)
; ======================================================================


L_A270:
	call L_A275		;a270
	add hl,hl			;a273
	ret			;a274
L_A275:
	ld l,a			;a275
	ld h,000h		;a276
	add hl,hl			;a278
	add hl,hl			;a279
	add hl,hl			;a27a
	add hl,hl			;a27b
	ret			;a27c
L_A27D:
	ld a,(09a3fh)		;a27d
	call L_A275		;a280
	ld (0a8bfh),hl		;a283
	ret			;a286
L_A287:
	ret			;a287
L_A288:
	ld hl,0a3ffh		;a288
	ld de,0a3b4h		;a28b
	ld bc,0004bh		;a28e
	ldir		;a291
	call L_A2DB		;a293
	ld hl,0a3b4h		;a296
	ld (0a2abh),hl		;a299
	ld hl,04d86h		;a29c
	ld (L_A2B3+1),hl		;a29f
L_A2A2:
	xor a			;a2a2
	ld (09a36h),a		;a2a3
	inc a			;a2a6
	ld (09a37h),a		;a2a7
	ld hl,0a3b4h		;a2aa
	ld (09a38h),hl		;a2ad
	ld (09a3ah),hl		;a2b0
L_A2B3:
	ld hl,04d86h		;a2b3
	ld (0a197h),hl		;a2b6
	call L_A128		;a2b9
	call L_A27D		;a2bc
	call L_9FD3		;a2bf
	call L_A09F		;a2c2
	ld hl,(09a38h)		;a2c5
	ld a,(hl)			;a2c8
	cp 0feh		;a2c9
	jr nz,L_A2CE		;a2cb
	inc hl			;a2cd
L_A2CE:
	ld (09a3ah),hl		;a2ce
	ld (09a38h),hl		;a2d1
	ld a,(09a37h)		;a2d4
	or a			;a2d7
	jr nz,L_A2B3		;a2d8
	ret			;a2da
L_A2DB:
	xor a			;a2db
	ld (09a41h),a		;a2dc
	ld hl,0d218h		;a2df
	ld de,0a3b8h		;a2e2
L_A2E5:
	ld a,(09a41h)		;a2e5
	cp 004h		;a2e8
	jr nc,L_A300		;a2ea
	ld a,(hl)			;a2ec
	cp 0ffh		;a2ed
	jr z,L_A300		;a2ef
	call L_A357		;a2f1
	ld (de),a			;a2f4
	ld a,(09a41h)		;a2f5
	inc a			;a2f8
	ld (09a41h),a		;a2f9
	inc hl			;a2fc
	inc de			;a2fd
	jr L_A2E5		;a2fe
L_A300:
	call L_A376		;a300
	ld de,0000fh		;a303
	add hl,de			;a306
	push hl			;a307
	ld de,0a3d1h		;a308
	call L_A3AB		;a30b
	pop hl			;a30e
	inc hl			;a30f
	push hl			;a310
	ld de,0a3d4h		;a311
	call L_A3AB		;a314
	pop hl			;a317
	inc hl			;a318
	push hl			;a319
	ld de,0a3d7h		;a31a
	call L_A3AB		;a31d
	pop hl			;a320
	inc hl			;a321
	push hl			;a322
	ld de,0a3e2h		;a323
	call L_A3AB		;a326
	pop hl			;a329
	inc hl			;a32a
	push hl			;a32b
	ld de,0a3e5h		;a32c
	call L_A3AB		;a32f
	pop hl			;a332
	inc hl			;a333
	inc hl			;a334
	push hl			;a335
	ld a,(hl)			;a336
	ld hl,0a44ah		;a337
	add a,a			;a33a
	call 08221h		;a33b
	ld de,0a3f1h		;a33e
	ld b,002h		;a341
L_A343:
	ld a,(hl)			;a343
	ld (de),a			;a344
	inc hl			;a345
	inc de			;a346
	djnz L_A343		;a347
	pop hl			;a349
	inc hl			;a34a
	ld a,(hl)			;a34b
	or a			;a34c
	ld a,063h		;a34d
	jr z,L_A353		;a34f
	ld a,064h		;a351
L_A353:
	ld (0a3fch),a		;a353
	ret			;a356
L_A357:
	inc hl			;a357
	ld b,a			;a358
	cp 043h		;a359
	jr z,L_A364		;a35b
	cp 044h		;a35d
	jr z,L_A370		;a35f
	ld a,b			;a361
	dec hl			;a362
	ret			;a363
L_A364:
	ld a,(hl)			;a364
	sub 006h		;a365
	cp 014h		;a367
	jr c,L_A36D		;a369
	sub 005h		;a36b
L_A36D:
	add a,0beh		;a36d
	ret			;a36f
L_A370:
	ld a,(hl)			;a370
	sub 01ah		;a371
	add a,0d2h		;a373
	ret			;a375
L_A376:
	call L_A386		;a376
	add hl,hl			;a379
	add hl,hl			;a37a
	add hl,hl			;a37b
	add hl,hl			;a37c
	push hl			;a37d
	pop bc			;a37e
	add hl,hl			;a37f
	add hl,bc			;a380
	ld de,0d700h		;a381
	add hl,de			;a384
	ret			;a385
L_A386:
	ld a,(0d1d6h)		;a386
	ld hl,0a394h		;a389
	call 0826ch		;a38c
	ld a,(hl)			;a38f
	ld l,a			;a390
	ld h,000h		;a391
	ret			;a393

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa394..0xa39c  (8 bytes)
DATA_A394:
	defb 0f2h,0dah,0f1h,0dah,0f0h,0dah,0f6h,0dah	; a394  ........

; ======================================================================
; CODIGO 0xa39c..0xa3b4  (24 bytes)
; ======================================================================


L_A39C:
	rlca			;a39c
	rlca			;a39d
	rlca			;a39e
	rlca			;a39f
	and 00fh		;a3a0
	jr z,L_A3A8		;a3a2
L_A3A4:
	and 00fh		;a3a4
	add a,036h		;a3a6
L_A3A8:
	ld (hl),a			;a3a8
	inc hl			;a3a9
	ret			;a3aa
L_A3AB:
	ld a,(hl)			;a3ab
	ex de,hl			;a3ac
	push af			;a3ad
	call L_A39C		;a3ae
	pop af			;a3b1
	jr L_A3A4		;a3b2

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa3b4..0xa532  (382 bytes)
DATA_A3B4:
	defb 0ech,0a3h,0f5h,0a3h,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; a3b4  ................
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; a3c4  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; a3d4  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; a3e4  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,001h,053h,054h,055h,000h,000h	; a3f4  ...........STU..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0feh,056h	; a404  ...............V
	defb 057h,058h,059h,055h,000h,0feh,065h,066h,000h,000h,057h,000h,000h,058h,000h,000h	; a414  WXYU..ef..W..X..
	defb 059h,0feh,05ah,056h,05bh,05ch,055h,000h,0feh,000h,000h,05bh,000h,000h,05dh,000h	; a424  Y.ZV[\U....[..].
	defb 000h,000h,0feh,05eh,05fh,060h,055h,000h,000h,000h,060h,000h,000h,000h,0feh,061h	; a434  ...^_`U...`....a
	defb 062h,055h,000h,000h,061h,0ffh,000h,042h,000h,040h,000h,041h,040h,041h,053h,054h	; a444  bU..a..B.@.A@AST
	defb 055h,056h,057h,058h,059h,05ah,05bh,05ch,05dh,05eh,05fh,060h,060h,061h,062h,063h	; a454  UVWXYZ[\]^_``abc
	defb 064h,065h,066h,067h,068h,069h,06ah,06bh,06ch,06dh,06eh,063h,06fh,070h,071h,072h	; a464  defghijklmncopqr
	defb 073h,072h,074h,075h,076h,077h,05fh,078h,079h,07ah,096h,0a4h,0a2h,0a4h,0abh,0a4h	; a474  srtuvw_xyz......
	defb 0b8h,0a4h,0bfh,0a4h,0c9h,0a4h,0d7h,0a4h,0e2h,0a4h,012h,0a5h,0f8h,0a4h,0edh,0a4h	; a484  ................
	defb 004h,0a5h,00bh,007h,027h,02ch,02ah,015h,002h,010h,022h,016h,01ah,0ffh,008h,054h	; a494  ....',*..."....T
	defb 02dh,000h,012h,0c1h,029h,07ch,0ffh,00ch,0cch,02eh,015h,000h,07fh,000h,080h,016h	; a4a4  -...)|..........
	defb 015h,029h,006h,0ffh,006h,038h,067h,019h,081h,05bh,0ffh,009h,056h,0cch,023h,019h	; a4b4  .)...8g..[..V.#.
	defb 00ch,012h,009h,079h,0ffh,00dh,024h,029h,082h,02dh,000h,06fh,00bh,00eh,029h,079h	; a4c4  ...y..$).-.o..)y
	defb 083h,052h,0ffh,00ah,0c5h,0cdh,028h,000h,055h,056h,019h,081h,05bh,0ffh,00ah,020h	; a4d4  .R....(.UV..[..
	defb 014h,022h,013h,023h,027h,003h,016h,01ah,0ffh,00ah,084h,085h,019h,000h,003h,028h	; a4e4  .".#'..........(
	defb 00ah,020h,079h,0ffh,00bh,07dh,088h,016h,068h,086h,02dh,07eh,003h,07ch,01ah,0ffh	; a4f4  . y..}..h.-~.|..
	defb 00dh,087h,088h,02dh,089h,08ah,016h,012h,006h,003h,079h,083h,052h,0ffh,00bh,089h	; a504  ...-......y.R...
	defb 08ah,015h,087h,088h,019h,00ch,006h,028h,079h,0ffh,050h,093h,060h,084h,070h,092h	; a514  .......(y.P.`.p.
	defb 080h,082h,090h,090h,090h,080h,090h,08dh,090h,082h,090h,090h,080h,084h	; a524  ..............

; ======================================================================
; CODIGO 0xa532..0xa589  (87 bytes)
; ======================================================================


L_A532:
	call L_A583		;a532
	ld a,(0a530h)		;a535
	call L_A54A		;a538
	ld hl,0a51eh		;a53b
	ld (0a2abh),hl		;a53e
	ld hl,05006h		;a541
	ld (0a2b4h),hl		;a544
	jp L_A2A2		;a547
L_A54A:
	ld hl,0a452h		;a54a
	call 0826ch		;a54d
	ld de,0a51eh		;a550
	ld a,l			;a553
	ld (de),a			;a554
	inc de			;a555
	ld a,h			;a556
	ld (de),a			;a557
	inc de			;a558
	ld a,07bh		;a559
	ld (de),a			;a55b
	inc de			;a55c
	ld a,0ffh		;a55d
	ld (de),a			;a55f
	ld a,(0d1d6h)		;a560
	or a			;a563
	ret nz			;a564
	ld a,(0d217h)		;a565
	cp 004h		;a568
	ret z			;a56a
	ld a,0feh		;a56b
	ld (de),a			;a56d
	inc de			;a56e
	ld a,(0a531h)		;a56f
	push de			;a572
	ld hl,0a47eh		;a573
	call 0826ch		;a576
	pop de			;a579
	ld b,(hl)			;a57a
	inc hl			;a57b
L_A57C:
	ld a,(hl)			;a57c
	ld (de),a			;a57d
	inc hl			;a57e
	inc de			;a57f
	djnz L_A57C		;a580
	ret			;a582
L_A583:
	ld a,(0d1d6h)		;a583
	call 0822dh		;a586

; ----------------------------------------------------------------------
; DATOS saltos_A589: 4 destinos del despachador (call 0x822D en 0xA586) (7
;   bytes)
;   0xa589..0xa590  (7 bytes)
DATA_saltos_A589:
	defw 0a591h,0a5b0h,0a5c2h	; a589  -> L_A591 L_A5B0 L_A5C2
	defb 0ceh	; a58f

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa590..0xa591  (1 bytes)
DATA_A590:
	defb 0a5h	; a590

; ======================================================================
; CODIGO 0xa591..0xa5be  (45 bytes)
; ======================================================================


L_A591:
	ld a,(0d217h)		;a591
	dec a			;a594
	ld (0a530h),a		;a595
	ld c,a			;a598
	ld b,003h		;a599
	dec a			;a59b
	jr z,L_A5A5		;a59c
	ld b,005h		;a59e
	dec a			;a5a0
	jr z,L_A5A5		;a5a1
	ld b,000h		;a5a3
L_A5A5:
	ld a,c			;a5a5
	add a,b			;a5a6
	ld b,a			;a5a7
	ld a,(0d234h)		;a5a8
	add a,b			;a5ab
	ld (0a531h),a		;a5ac
	ret			;a5af
L_A5B0:
	ld hl,0a5beh		;a5b0
L_A5B3:
	ld a,(0d217h)		;a5b3
L_A5B6:
	call 08221h		;a5b6
	ld a,(hl)			;a5b9
	ld (0a530h),a		;a5ba
	ret			;a5bd

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa5be..0xa5c2  (4 bytes)
DATA_A5BE:
	defb 004h,000h,005h,006h	; a5be

; ======================================================================
; CODIGO 0xa5c2..0xa5c7  (5 bytes)
; ======================================================================


L_A5C2:
	ld hl,0a5c7h		;a5c2
	jr $-18		;a5c5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa5c7..0xa5ce  (7 bytes)
DATA_A5C7:
	defb 006h,005h,000h,007h,000h,004h,008h	; a5c7

; ======================================================================
; CODIGO 0xa5ce..0xa5d6  (8 bytes)
; ======================================================================


L_A5CE:
	ld hl,0a5d6h		;a5ce
	ld a,(09a43h)		;a5d1
	jr $-30		;a5d4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa5d6..0xa5e6  (16 bytes)
DATA_A5D6:
	defb 007h,009h,00ah,00bh,00ch,00dh,00eh,000h,00fh,010h,011h,012h,013h,014h,005h,015h	; a5d6  ................

; ======================================================================
; CODIGO 0xa5e6..0xa686  (160 bytes)
; ======================================================================


L_A5E6:
	xor a			;a5e6
	call L_A8C5		;a5e7
	ld hl,05810h		;a5ea
	ld a,(09223h)		;a5ed
	call 0826ch		;a5f0
	or a			;a5f3
	ld de,03800h		;a5f4
	sbc hl,de		;a5f7
	call L_A696		;a5f9
	ld hl,0bc00h		;a5fc
	ld (0a8bdh),hl		;a5ff
	ld bc,00028h		;a602
	ld (0a8bfh),bc		;a605
	call L_9F55		;a609
	jp L_9FD3		;a60c
L_A60F:
	ld a,003h		;a60f
	call L_A8C5		;a611
	call L_A09F		;a614
	ld hl,05800h		;a617
	call L_A696		;a61a
	ld hl,0bc00h		;a61d
	ld (0a8bdh),hl		;a620
	ld bc,000ach		;a623
	ld (0a8bfh),bc		;a626
	call L_9F55		;a62a
	ld hl,0c0a8h		;a62d
	ld (0a8bdh),hl		;a630
	ld bc,00090h		;a633
	ld (0a8bfh),bc		;a636
	jp L_9FD9		;a63a
L_A63D:
	ld b,008h		;a63d
	ld a,(0d1d6h)		;a63f
	add a,b			;a642
	call L_A8C5		;a643
	ld hl,05800h		;a646
	call L_A696		;a649
	ld hl,0bc00h		;a64c
	ld (0a8bdh),hl		;a64f
	ld hl,0a686h		;a652
	ld a,(0d1d6h)		;a655
	call 08221h		;a658
	ld a,(hl)			;a65b
	ld c,a			;a65c
	ld b,000h		;a65d
	ld (0a8bfh),bc		;a65f
	call L_9F55		;a663
	ld hl,0a68eh		;a666
	ld a,(0d1d6h)		;a669
	call 0826ch		;a66c
	ld (0a8bdh),hl		;a66f
	ld hl,0a68ah		;a672
	ld a,(0d1d6h)		;a675
	call 08221h		;a678
	ld a,(hl)			;a67b
	ld c,a			;a67c
	ld b,000h		;a67d
	ld (0a8bfh),bc		;a67f
	jp L_9FD9		;a683

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa686..0xa696  (16 bytes)
DATA_A686:
	defb 0b8h,0a0h,094h,094h,0a8h,078h,060h,060h,060h,0c0h,0f0h,0c0h,038h,0c1h,038h,0c1h	; a686  .....x```...8.8.

; ======================================================================
; CODIGO 0xa696..0xa6a5  (15 bytes)
; ======================================================================


L_A696:
	ld de,0bc00h		;a696
	ld bc,00400h		;a699
	ldir		;a69c
	ret			;a69e
L_A69F:
	ld a,(0d1d6h)		;a69f
	call 0822dh		;a6a2

; ----------------------------------------------------------------------
; DATOS saltos_A6A5: 4 destinos del despachador (call 0x822D en 0xA6A2) (7
;   bytes)
;   0xa6a5..0xa6ac  (7 bytes)
DATA_saltos_A6A5:
	defw 0a6b6h,0a6adh,0a6c9h	; a6a5  -> L_A6B6 L_A6AD L_A6C9
	defb 0d2h	; a6ab

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6ac..0xa6ad  (1 bytes)
DATA_A6AC:
	defb 0a6h	; a6ac

; ======================================================================
; CODIGO 0xa6ad..0xa6db  (46 bytes)
; ======================================================================


L_A6AD:
	ld hl,01890h		;a6ad
	ld bc,06020h		;a6b0
	jp 082b4h		;a6b3
L_A6B6:
	ld hl,0903ah		;a6b6
	ld a,(0d217h)		;a6b9
	cp 002h		;a6bc
	jr nz,L_A6C3		;a6be
	ld hl,0908ah		;a6c0
L_A6C3:
	ld bc,06020h		;a6c3
	jp 082b4h		;a6c6
L_A6C9:
	ld hl,08092h		;a6c9
	ld bc,06020h		;a6cc
	jp 082b4h		;a6cf
L_A6D2:
	ld hl,0109bh		;a6d2
	ld bc,09810h		;a6d5
	jp 082b4h		;a6d8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6db..0xa704  (41 bytes)
DATA_A6DB:
	defb 0cdh,09fh,0a6h,03ah,0d6h,0d1h,0b7h,028h,00ah,03dh,021h,0feh,0a6h,0cdh,06ch,082h	; a6db  ...:...(.=!...l.
	defb 0c3h,075h,082h,021h,05eh,0a7h,03ah,017h,0d2h,0feh,002h,020h,003h,021h,075h,0a7h	; a6eb  .u.!^.:.... .!u.
	defb 0c3h,075h,082h,0e3h,0a7h,03ch,0a8h,091h,0a8h	; a6fb  .u...<...

; ----------------------------------------------------------------------
; DATOS texto_A704: texto: x, y y las letras hasta 0xFF; lo usa 0xA0D5 (21
;   bytes)
;   0xa704..0xa719  (21 bytes)
DATA_texto_A704:
	defb 090h,042h,0d4h,028h,02eh,010h,04bh,02dh,0feh,090h,052h,003h,0c2h,006h,00ch,013h	; a704  .B.(..K-..R.....
	defb 008h,0c8h,00bh,002h,0ffh	; a714

; ----------------------------------------------------------------------
; DATOS texto_A719: texto: x, y y las letras hasta 0xFF; lo usa 0xA0D5 (21
;   bytes)
;   0xa719..0xa72e  (21 bytes)
DATA_texto_A719:
	defb 090h,092h,0d4h,028h,02eh,010h,04bh,02dh,0feh,090h,0a2h,003h,0c2h,006h,00ch,013h	; a719  ...(..K-........
	defb 008h,0c8h,00bh,002h,0ffh	; a729

; ----------------------------------------------------------------------
; DATOS texto_A72E: texto: x, y y las letras hasta 0xFF; lo usa 0xA0FB (24
;   bytes)
;   0xa72e..0xa746  (24 bytes)
DATA_texto_A72E:
	defb 090h,042h,0d4h,028h,02eh,014h,00ch,010h,002h,014h,00ah,02bh,016h,0feh,090h,052h	; a72e  .B.(.......+...R
	defb 005h,002h,013h,008h,0c8h,00bh,002h,0ffh	; a73e  ........

; ----------------------------------------------------------------------
; DATOS texto_A746: texto: x, y y las letras hasta 0xFF; lo usa 0xA0FB (24
;   bytes)
;   0xa746..0xa75e  (24 bytes)
DATA_texto_A746:
	defb 090h,092h,0d4h,028h,02eh,014h,00ch,010h,002h,014h,00ah,02bh,016h,0feh,090h,0a2h	; a746  ...(.......+....
	defb 005h,002h,013h,008h,0c8h,00bh,002h,0ffh	; a756  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa75e..0xa78c  (46 bytes)
DATA_A75E:
	defb 090h,042h,010h,0c8h,002h,01fh,000h,0d4h,028h,02eh,014h,0feh,090h,052h,001h,003h	; a75e  .B......(....R..
	defb 014h,05dh,0cbh,00dh,052h,052h,0ffh,090h,092h,010h,0c8h,002h,01fh,000h,0d4h,028h	; a76e  .]..RR.........(
	defb 02eh,014h,0feh,090h,0a2h,001h,003h,014h,05dh,0cbh,00dh,052h,052h,0ffh	; a77e  ........]..RR.

; ----------------------------------------------------------------------
; DATOS texto_A78C: texto: x, y y las letras hasta 0xFF; lo usa 0xA060 (21
;   bytes)
;   0xa78c..0xa7a1  (21 bytes)
DATA_texto_A78C:
	defb 090h,042h,0d4h,028h,02eh,014h,001h,003h,014h,02dh,0feh,090h,052h,024h,022h,01fh	; a78c  .B.(.....-..R$".
	defb 00ch,010h,052h,052h,0ffh	; a79c

; ----------------------------------------------------------------------
; DATOS texto_A7A1: texto: x, y y las letras hasta 0xFF; lo usa 0xA060 (21
;   bytes)
;   0xa7a1..0xa7b6  (21 bytes)
DATA_texto_A7A1:
	defb 090h,092h,0d4h,028h,02eh,014h,001h,003h,014h,02dh,0feh,090h,0a2h,024h,022h,01fh	; a7a1  ...(.....-...$".
	defb 00ch,010h,052h,052h,0ffh	; a7b1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa7b6..0xa8c5  (271 bytes)
DATA_A7B6:
	defb 018h,098h,0d4h,028h,02eh,010h,04bh,02dh,0feh,018h,0a8h,003h,0c2h,006h,00ch,013h	; a7b6  ...(..K-........
	defb 008h,0c8h,00bh,002h,0ffh,018h,098h,0d4h,028h,02eh,014h,00ch,010h,002h,014h,00ah	; a7c6  ........(.......
	defb 02bh,016h,0feh,018h,0a8h,005h,002h,013h,008h,0c8h,00bh,002h,0ffh,018h,098h,010h	; a7d6  +...............
	defb 0c8h,002h,01fh,000h,0d4h,028h,02eh,014h,0feh,018h,0a8h,001h,003h,014h,08ah,0cbh	; a7e6  .....(..........
	defb 00dh,052h,052h,0ffh,018h,098h,0d4h,028h,02eh,014h,001h,003h,014h,02dh,0feh,018h	; a7f6  .RR....(.....-..
	defb 0a8h,024h,022h,01fh,00ch,010h,052h,052h,0ffh,080h,09ah,0d4h,028h,02eh,010h,04bh	; a806  .$"...RR....(..K
	defb 02dh,0feh,080h,0aah,003h,0c2h,006h,00ch,013h,008h,0c8h,00bh,002h,0ffh,080h,09ah	; a816  -...............
	defb 0d4h,028h,02eh,014h,00ch,010h,002h,014h,00ah,02bh,016h,0feh,080h,0aah,005h,002h	; a826  .(.......+......
	defb 013h,008h,0c8h,00bh,002h,0ffh,080h,09ah,010h,0c8h,002h,01fh,000h,0d4h,028h,02eh	; a836  ..............(.
	defb 014h,0feh,080h,0aah,001h,003h,014h,060h,0cbh,00dh,052h,052h,0ffh,080h,09ah,0d4h	; a846  .......`..RR....
	defb 028h,02eh,014h,001h,003h,014h,02dh,0feh,080h,0aah,024h,022h,01fh,00ch,010h,052h	; a856  (.....-...$"...R
	defb 052h,0ffh,018h,0a2h,0d4h,028h,02eh,010h,04bh,02dh,000h,003h,0c2h,006h,00ch,013h	; a866  R....(..K-......
	defb 008h,0c8h,00bh,002h,0ffh,010h,0a2h,0d4h,028h,02eh,014h,00ch,010h,002h,014h,00ah	; a876  ........(.......
	defb 02bh,016h,000h,005h,002h,013h,008h,0c8h,00bh,002h,0ffh,018h,0a2h,010h,0c8h,002h	; a886  +...............
	defb 01fh,000h,0d4h,028h,02eh,014h,001h,003h,014h,0fdh,0dbh,0fdh,0cbh,00dh,052h,052h	; a896  ...(..........RR
	defb 0ffh,018h,0a2h,0d4h,028h,02eh,014h,001h,003h,014h,02dh,000h,024h,022h,01fh,00ch	; a8a6  ....(.....-.$"..
	defb 010h,052h,052h,0ffh,050h,054h,040h,02ah,030h,054h,020h,02ah,020h,054h,010h	; a8b6  .RR.PT@*0T * T.

; ======================================================================
; CODIGO 0xa8c5..0xa8ff  (58 bytes)
; ======================================================================


L_A8C5:
	ld (0a8c4h),a		;a8c5
L_A8C8:
	ld a,(0a8c4h)		;a8c8
	ld hl,0a8ffh		;a8cb
	add a,a			;a8ce
	add a,a			;a8cf
	call 08221h		;a8d0
	ld c,(hl)			;a8d3
	inc hl			;a8d4
	ld b,(hl)			;a8d5
	inc hl			;a8d6
	ld e,(hl)			;a8d7
	inc hl			;a8d8
	ld d,(hl)			;a8d9
	ex de,hl			;a8da
	call L_A8F8		;a8db
	ld de,0b000h		;a8de
	call 08215h		;a8e1
	jr c,L_A8C8		;a8e4
	ld a,0ffh		;a8e6
	ld (0e0fdh),a		;a8e8
	ld hl,0b000h		;a8eb
	ld de,05800h		;a8ee
	ld bc,(0a8c2h)		;a8f1
	ldir		;a8f5
	ret			;a8f7
L_A8F8:
	push hl			;a8f8
	add hl,hl			;a8f9
	ld (0a8c2h),hl		;a8fa
	pop hl			;a8fd
	ret			;a8fe

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa8ff..0xac00  (769 bytes)
DATA_A8FF:
	defb 0b8h,004h,000h,005h,0b7h,004h,000h,001h,0b1h,004h,000h,004h,0b5h,004h,000h,002h	; a8ff  ................
	defb 0a8h,004h,000h,007h,0a1h,004h,000h,005h,09ch,004h,000h,004h,097h,004h,000h,004h	; a90f  ................
	defb 0afh,004h,000h,002h,0a6h,004h,000h,002h,0a0h,004h,000h,001h,09bh,004h,000h,001h	; a91f  ................
	defb 0b4h,090h,0e2h,001h,0b4h,030h,0b3h,0f0h,0a3h,0b0h,0a3h,050h,0a3h,030h,0a3h,000h	; a92f  .....0.....P.0..
	defb 092h,0b0h,082h,070h,072h,030h,052h,010h,032h,000h,0ffh,0feh,002h,0e2h,003h,050h	; a93f  ...pr0R.2......P
	defb 020h,060h,021h,070h,022h,080h,023h,090h,024h,090h,025h,090h,026h,090h,027h,090h	; a94f   `!p".#.$.%.&.'.
	defb 028h,080h,029h,070h,02ah,060h,02bh,060h,02ch,050h,02dh,050h,02eh,050h,02fh,040h	; a95f  (.)p*`+`,P-P.P/@
	defb 030h,040h,031h,030h,032h,020h,033h,010h,034h,0ffh,0feh,002h,0e3h,001h,0e4h,000h	; a96f  0@102 3.4.......
	defb 090h,04fh,0a0h,04bh,0e2h,001h,0a0h,040h,0b0h,03bh,0b0h,038h,0b0h,000h,0b0h,028h	; a97f  .O.K...@...8...(
	defb 0b0h,024h,0b0h,020h,0b0h,01bh,0a0h,01ah,090h,019h,0e2h,002h,090h,024h,080h,020h	; a98f  .$. .........$.
	defb 070h,01bh,060h,01ah,050h,019h,040h,01ah,040h,019h,030h,01ah,020h,019h,0ffh,0feh	; a99f  p.`.P.@.@.0. ...
	defb 002h,0f9h,0cdh,07bh,0feh,002h,0eeh,060h,0e0h,001h,0f9h,0cdh,07bh,0feh,002h,0e2h	; a9af  ...{...`....{...
	defb 002h,0c5h,000h,0c6h,000h,0b5h,0f0h,0a5h,0e0h,084h,000h,045h,000h,0ffh,0e2h,002h	; a9bf  ...........E....
	defb 0c3h,000h,0c5h,000h,0b4h,0f0h,0a4h,0e0h,0e2h,001h,0a4h,080h,0a4h,040h,0a4h,000h	; a9cf  .............@..
	defb 0a3h,0a0h,0a3h,080h,0a3h,050h,093h,000h,082h,0c0h,072h,080h,062h,050h,052h,030h	; a9df  .....P....r.bPR0
	defb 0feh,002h,0e2h,001h,073h,000h,075h,000h,074h,0f0h,074h,0e0h,074h,080h,074h,040h	; a9ef  ....s.u.t.t.t.t@
	defb 074h,000h,073h,0a0h,073h,080h,063h,050h,063h,000h,062h,0c0h,052h,080h,042h,050h	; a9ff  t.s.s.cPc.b.R.BP
	defb 043h,000h,032h,0c0h,032h,080h,032h,050h,0e2h,001h,023h,000h,022h,0c0h,012h,080h	; aa0f  C.2.2.2P..#."...
	defb 012h,050h,0ffh,0feh,002h,0e2h,001h,090h,095h,040h,030h,030h,092h,000h,093h,000h	; aa1f  .P.......@00....
	defb 094h,090h,0c5h,050h,046h,030h,0d0h,0ffh,0feh,002h,0e2h,002h,0a0h,023h,090h,023h	; aa2f  ...PF0.......#.#
	defb 0b0h,02ah,0a0h,02ah,0a0h,02ah,0a0h,023h,090h,023h,090h,023h,0b0h,02ah,0a0h,02ah	; aa3f  .*.*.*.#.#.#.*.*
	defb 0a0h,02ah,0e2h,003h,090h,023h,0f5h,080h,080h,070h,070h,060h,060h,050h,050h,040h	; aa4f  .*...#...pp``PP@
	defb 030h,020h,010h,0f6h,0ffh,0feh,002h,0e2h,002h,0c4h,020h,0b4h,040h,0b4h,040h,054h	; aa5f  0 ........ .@.@T
	defb 053h,0e2h,001h,0a2h,0cah,0b2h,0b4h,0b2h,09fh,0b2h,08ah,0a2h,076h,0a2h,063h,092h	; aa6f  S...........v.c.
	defb 050h,092h,03eh,092h,0cah,0a2h,0b4h,0a2h,09fh,0a2h,08ah,092h,076h,092h,063h,082h	; aa7f  P.>.........v.c.
	defb 050h,082h,03eh,072h,0cah,082h,0b4h,082h,09fh,082h,08ah,072h,076h,072h,063h,062h	; aa8f  P.>r.......rvrcb
	defb 050h,052h,03eh,042h,0cah,052h,0b4h,052h,09fh,052h,0bah,042h,076h,042h,063h,032h	; aa9f  PR>B.R.R.R.BvBc2
	defb 050h,022h,03eh,0e0h,00fh,0e0h,00fh,0e0h,00fh,0e0h,00ch,0ffh,0f9h,01fh,072h,0feh	; aaaf  P">...........r.
	defb 002h,0e1h,001h,0e4h,002h,008h,002h,0e1h,003h,0e4h,000h,007h,006h,005h,004h,003h	; aabf  ................
	defb 002h,002h,001h,001h,001h,001h,001h,000h,000h,0ffh,0feh,002h,0eeh,001h,0e0h,001h	; aacf  ................
	defb 0e2h,001h,080h,020h,030h,01bh,0e2h,002h,0a0h,019h,070h,015h,090h,016h,080h,015h	; aadf  ... 0.....p.....
	defb 080h,016h,080h,015h,070h,016h,070h,015h,060h,016h,060h,015h,050h,016h,050h,015h	; aaef  ....p.p.`.`.P.P.
	defb 040h,016h,040h,015h,030h,016h,030h,015h,020h,016h,010h,015h,010h,016h,000h,015h	; aaff  @.@.0.0. .......
	defb 000h,016h,000h,015h,0ffh,0feh,002h,0e2h,003h,0f9h,02dh,07dh,0feh,002h,0e0h,006h	; ab0f  ..........-}....
	defb 0e2h,003h,0f9h,02dh,07dh,0feh,002h,0e0h,009h,0e2h,003h,0f9h,02dh,07dh,013h,057h	; ab1f  ...-}.......-}.W
	defb 022h,0ceh,032h,05dh,041h,0e0h,051h,0abh,061h,067h,071h,02eh,080h,0f0h,080h,0d5h	; ab2f  ".2]A.Q.agq.....
	defb 090h,0b3h,090h,097h,080h,078h,080h,06ah,080h,059h,080h,04bh,080h,03ch,070h,035h	; ab3f  .....x.j.Y.K.<p5
	defb 060h,02ch,050h,025h,050h,01eh,040h,035h,030h,02ch,020h,025h,020h,01eh,010h,035h	; ab4f  `,P%P.@50, % ..5
	defb 010h,02ch,010h,025h,010h,021h,010h,035h,010h,02ch,000h,025h,000h,01eh,0ffh,0feh	; ab5f  .,.%.!.5.,.%....
	defb 001h,0e9h,002h,0d2h,0f9h,0d5h,07dh,0feh,001h,0eeh,002h,0e9h,002h,0d2h,0eah,001h	; ab6f  ......}.........
	defb 026h,0eah,002h,041h,0eah,003h,061h,0eah,004h,081h,0eah,005h,0a1h,0eah,006h,021h	; ab7f  &..A..a........!
	defb 0eah,007h,041h,0eah,008h,061h,0eah,009h,081h,0a1h,021h,041h,061h,081h,0a1h,0eah	; ab8f  ..A..a....!Aa...
	defb 00ah,021h,041h,061h,081h,0a1h,0eah,009h,021h,041h,061h,0eah,007h,081h,0a1h,0eah	; ab9f  .!Aa....!Aa.....
	defb 005h,021h,041h,061h,0eah,003h,081h,0a1h,0eah,002h,021h,041h,061h,081h,0eah,001h	; abaf  .!Aa......!Aa...
	defb 0a1h,021h,0eah,000h,041h,061h,081h,0a1h,0ffh,0feh,001h,0eeh,001h,0e9h,002h,0d1h	; abbf  .!..Aa..........
	defb 0eah,002h,021h,0f9h,0d5h,07dh,0eah,002h,021h,0eah,003h,041h,0eah,004h,061h,0eah	; abcf  ..!..}..!..A..a.
	defb 005h,081h,0eah,006h,0a1h,0eah,007h,021h,0eah,008h,041h,0eah,009h,061h,0eah,00ah	; abdf  .......!..A..a..
	defb 081h,0a1h,021h,041h,061h,081h,0a1h,0eah,00bh,021h,041h,061h,081h,0a1h,0eah,00ah	; abef  ..!Aa....!Aa....
	defb 021h	; abff
