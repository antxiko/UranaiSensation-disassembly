; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p05 (se ejecuta en 0x9C00)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09c00


; ======================================================================
; CODIGO 0x9c00..0x9c06  (6 bytes)
; ======================================================================


L_9C00:
	jp L_9C08		;9c00
L_9C03:
	jp L_9F09		;9c03

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c06..0x9c08  (2 bytes)
DATA_9C06:
	defb 0c3h,068h	; 9c06

; ======================================================================
; CODIGO 0x9c08..0x9f89  (897 bytes)
; ======================================================================


L_9C08:
	ld hl,08000h		;9c08
	ld (0d223h),hl		;9c0b
	xor a			;9c0e
	ld (0d225h),a		;9c0f
	ld (09c07h),a		;9c12
	call L_9C58		;9c15
	call L_9C62		;9c18
	call 08212h		;9c1b
	call 0826fh		;9c1e
	call 08260h		;9c21
	call 08251h		;9c24
	call L_9C9E		;9c27
	call L_9CA4		;9c2a
	call L_9CB1		;9c2d
	call L_9CD8		;9c30
	ld hl,0a232h		;9c33
	ld de,03820h		;9c36
	call L_9CEE		;9c39
	ld ix,(0d210h)		;9c3c
	call L_9D1C		;9c40
	call L_9DDC		;9c43
	call L_9E77		;9c46
	call L_9EAD		;9c49
	call 08406h		;9c4c
	ld hl,00000h		;9c4f
	ld (0d223h),hl		;9c52
	jp L_9ECE		;9c55
L_9C58:
	ld a,001h		;9c58
	call 09600h		;9c5a
	ld a,05fh		;9c5d
	jp 09603h		;9c5f
L_9C62:
	ld hl,00000h		;9c62
	ld bc,07830h		;9c65
	call L_9C98		;9c68
	ld hl,07800h		;9c6b
	ld bc,02010h		;9c6e
	call L_9C98		;9c71
	ld hl,09800h		;9c74
	ld bc,06830h		;9c77
	call L_9C98		;9c7a
	ld hl,07818h		;9c7d
	ld bc,02018h		;9c80
	call L_9C98		;9c83
	ld hl,00000h		;9c86
	call L_9C8F		;9c89
	ld hl,08000h		;9c8c
L_9C8F:
	ld bc,08030h		;9c8f
	ld de,00001h		;9c92
	jp 0960fh		;9c95
L_9C98:
	ld de,00e05h		;9c98
	jp 0960fh		;9c9b
L_9C9E:
	ld hl,0a1e7h		;9c9e
	jp 082dbh		;9ca1
L_9CA4:
	ld hl,09f89h		;9ca4
	ld de,00000h		;9ca7
	ld c,020h		;9caa
	ld a,001h		;9cac
	jp 08218h		;9cae
L_9CB1:
	ld b,005h		;9cb1
	ld hl,0a207h		;9cb3
L_9CB6:
	push bc			;9cb6
	push hl			;9cb7
	call L_9CCA		;9cb8
	ld bc,00808h		;9cbb
	call L_9CD3		;9cbe
	pop hl			;9cc1
	pop bc			;9cc2
	inc hl			;9cc3
	inc hl			;9cc4
	inc hl			;9cc5
	inc hl			;9cc6
	djnz L_9CB6		;9cc7
	ret			;9cc9
L_9CCA:
	ld e,(hl)			;9cca
	inc hl			;9ccb
	ld d,(hl)			;9ccc
	inc hl			;9ccd
	ld a,(hl)			;9cce
	inc hl			;9ccf
	ld h,(hl)			;9cd0
	ld l,a			;9cd1
	ret			;9cd2
L_9CD3:
	ld a,050h		;9cd3
	jp 0820ch		;9cd5
L_9CD8:
	ld de,02818h		;9cd8
	ld b,010h		;9cdb
L_9CDD:
	push de			;9cdd
	push bc			;9cde
	ld hl,0a21bh		;9cdf
	call L_9CEE		;9ce2
	pop bc			;9ce5
	pop de			;9ce6
	ld a,e			;9ce7
	add a,008h		;9ce8
	ld e,a			;9cea
	djnz L_9CDD		;9ceb
	ret			;9ced
L_9CEE:
	push de			;9cee
L_9CEF:
	ld a,(hl)			;9cef
	inc hl			;9cf0
	ld c,a			;9cf1
	inc a			;9cf2
	jr z,L_9D08		;9cf3
	inc a			;9cf5
	jr nz,L_9CFF		;9cf6
	pop de			;9cf8
	ld a,008h		;9cf9
	add a,e			;9cfb
	ld e,a			;9cfc
	jr L_9CEE		;9cfd
L_9CFF:
	ld a,c			;9cff
	call L_9D0A		;9d00
	call 082a8h		;9d03
	jr L_9CEF		;9d06
L_9D08:
	pop de			;9d08
	ret			;9d09
L_9D0A:
	push bc			;9d0a
	push hl			;9d0b
	push de			;9d0c
	call 08281h		;9d0d
	ld bc,00808h		;9d10
	ld a,005h		;9d13
	call 08284h		;9d15
	pop de			;9d18
	pop hl			;9d19
	pop bc			;9d1a
	ret			;9d1b
L_9D1C:
	push ix		;9d1c
	pop hl			;9d1e
	ld de,05020h		;9d1f
	call L_9D3D		;9d22
	ld de,07420h		;9d25
	call L_9D6E		;9d28
	ld hl,0402ah		;9d2b
	ld bc,02805h		;9d2e
	call L_9DAE		;9d31
	ld hl,0702ah		;9d34
	ld bc,02805h		;9d37
	jp L_9DAE		;9d3a
L_9D3D:
	ld a,(0d22fh)		;9d3d
	cp 013h		;9d40
	jr nc,L_9D62		;9d42
	cp 009h		;9d44
	jr nc,L_9D52		;9d46
	add a,037h		;9d48
	push af			;9d4a
	call 082a8h		;9d4b
	pop af			;9d4e
L_9D4F:
	jp L_9D0A		;9d4f
L_9D52:
	push af			;9d52
	ld a,037h		;9d53
	call L_9D0A		;9d55
	call 082a8h		;9d58
	pop af			;9d5b
	sub 009h		;9d5c
	add a,036h		;9d5e
	jr L_9D4F		;9d60
L_9D62:
	ld a,038h		;9d62
	call L_9D0A		;9d64
	call 082a8h		;9d67
	ld a,036h		;9d6a
	jr L_9D4F		;9d6c
L_9D6E:
	ld a,(09c07h)		;9d6e
	cp 008h		;9d71
	jr z,L_9DA2		;9d73
	ld a,(hl)			;9d75
	inc hl			;9d76
	cp 0ffh		;9d77
	jr z,L_9DA2		;9d79
	cp 043h		;9d7b
	jr z,L_9D8E		;9d7d
	cp 044h		;9d7f
	jr z,L_9D8E		;9d81
	call L_9D0A		;9d83
	call 082a8h		;9d86
	call L_9DA7		;9d89
	jr L_9D6E		;9d8c
L_9D8E:
	push af			;9d8e
	push hl			;9d8f
	push de			;9d90
	ex af,af'			;9d91
	ld a,e			;9d92
	sub 008h		;9d93
	ld e,a			;9d95
	ex af,af'			;9d96
	call L_9D0A		;9d97
	pop de			;9d9a
	pop hl			;9d9b
	pop af			;9d9c
	call L_9DA7		;9d9d
	jr L_9D6E		;9da0
L_9DA2:
	xor a			;9da2
	ld (09c07h),a		;9da3
	ret			;9da6
L_9DA7:
	push hl			;9da7
	ld hl,09c07h		;9da8
	inc (hl)			;9dab
	pop hl			;9dac
	ret			;9dad
L_9DAE:
	ld a,024h		;9dae
	ld (0d226h),a		;9db0
	call 08287h		;9db3
	out (c),h		;9db6
	xor a			;9db8
	out (c),a		;9db9
	out (c),l		;9dbb
	ld a,001h		;9dbd
	out (c),a		;9dbf
	ld hl,(0d227h)		;9dc1
	out (c),h		;9dc4
	xor a			;9dc6
	cp h			;9dc7
	jr nz,L_9DCB		;9dc8
	inc a			;9dca
L_9DCB:
	out (c),a		;9dcb
	xor a			;9dcd
	out (c),a		;9dce
	out (c),a		;9dd0
	out (c),l		;9dd2
	out (c),a		;9dd4
	ld a,070h		;9dd6
	out (c),a		;9dd8
	ei			;9dda
	ret			;9ddb
L_9DDC:
	call L_9E14		;9ddc
	ld hl,0604ah		;9ddf
	ld bc,01005h		;9de2
	call L_9DAE		;9de5
	ld a,05ah		;9de8
	ld de,07040h		;9dea
	call L_9D0A		;9ded
	ld hl,0784ah		;9df0
	ld bc,01005h		;9df3
	call L_9DAE		;9df6
	ld a,058h		;9df9
	ld de,08840h		;9dfb
	call L_9D0A		;9dfe
	push ix		;9e01
	pop hl			;9e03
	ld de,00012h		;9e04
	add hl,de			;9e07
	ld de,06040h		;9e08
	call L_9E5D		;9e0b
	call 082a8h		;9e0e
	jp L_9E5D		;9e11
L_9E14:
	ld hl,0703ah		;9e14
	ld bc,01005h		;9e17
	call L_9DAE		;9e1a
	ld a,05eh		;9e1d
	ld de,08030h		;9e1f
	call L_9D0A		;9e22
	ld hl,0883ah		;9e25
	ld bc,01005h		;9e28
	call L_9DAE		;9e2b
	ld a,05fh		;9e2e
	ld de,09830h		;9e30
	call L_9D0A		;9e33
	ld hl,0a03ah		;9e36
	ld bc,01005h		;9e39
	call L_9DAE		;9e3c
	ld a,055h		;9e3f
	ld de,0b030h		;9e41
	call L_9D0A		;9e44
	push ix		;9e47
	pop hl			;9e49
	ld de,0000fh		;9e4a
	add hl,de			;9e4d
	ld de,07030h		;9e4e
	call L_9E5D		;9e51
	ld de,08830h		;9e54
	call L_9E5D		;9e57
	ld de,0a030h		;9e5a
L_9E5D:
	ld a,(hl)			;9e5d
	rrca			;9e5e
	rrca			;9e5f
	rrca			;9e60
	rrca			;9e61
	and 00fh		;9e62
	call L_9E6F		;9e64
	ld a,(hl)			;9e67
	and 00fh		;9e68
	call L_9E6F		;9e6a
	inc hl			;9e6d
	ret			;9e6e
L_9E6F:
	add a,036h		;9e6f
	call L_9D0A		;9e71
	jp 082a8h		;9e74
L_9E77:
	ld hl,0585ah		;9e77
	ld bc,01005h		;9e7a
	call L_9DAE		;9e7d
	ld a,063h		;9e80
	ld de,06850h		;9e82
	call L_9D0A		;9e85
	ld a,(ix+015h)		;9e88
	push af			;9e8b
	ld hl,0a265h		;9e8c
	add a,a			;9e8f
	call 08221h		;9e90
	pop af			;9e93
	ld de,05850h		;9e94
	ld b,002h		;9e97
	cp 003h		;9e99
	jr z,L_9EA2		;9e9b
	ld de,05c50h		;9e9d
	ld b,001h		;9ea0
L_9EA2:
	ld a,(hl)			;9ea2
	call L_9D0A		;9ea3
	inc hl			;9ea6
	call 082a8h		;9ea7
	djnz L_9EA2		;9eaa
	ret			;9eac
L_9EAD:
	ld hl,0506ah		;9ead
	ld bc,00805h		;9eb0
	call L_9DAE		;9eb3
	ld a,064h		;9eb6
	ld de,05860h		;9eb8
	call L_9D0A		;9ebb
	ld a,(ix+016h)		;9ebe
	or a			;9ec1
	ld a,05dh		;9ec2
	jr nz,L_9EC8		;9ec4
	ld a,05ch		;9ec6
L_9EC8:
	ld de,05060h		;9ec8
	jp L_9D0A		;9ecb
L_9ECE:
	xor a			;9ece
	ld (09c06h),a		;9ecf
	inc a			;9ed2
	ld (0d1dbh),a		;9ed3
	ld (0d1d9h),a		;9ed6
	call L_9F09		;9ed9
	ld a,(09c06h)		;9edc
	add a,020h		;9edf
	ld l,a			;9ee1
	ld de,02888h		;9ee2
	ld h,d			;9ee5
	ld bc,0b010h		;9ee6
	ld a,040h		;9ee9
	call 0820ch		;9eeb
	call 0828ah		;9eee
	ld de,00502h		;9ef1
	call L_9F77		;9ef4
	ld de,0010ah		;9ef7
	call L_9F77		;9efa
	ld de,00802h		;9efd
	call L_9F77		;9f00
	call 08209h		;9f03
	or 0ffh		;9f06
	ret			;9f08
L_9F09:
	ld a,(09c06h)		;9f09
	cp 01ch		;9f0c
	jr nc,L_9F19		;9f0e
	call L_9F72		;9f10
	ret nz			;9f13
	ld a,003h		;9f14
	ld (0d1d9h),a		;9f16
L_9F19:
	ld a,(09c06h)		;9f19
	inc a			;9f1c
	inc a			;9f1d
	cp 069h		;9f1e
	jr nc,L_9F6D		;9f20
	ld (09c06h),a		;9f22
	ld c,a			;9f25
	ld a,080h		;9f26
	sub c			;9f28
	ld e,a			;9f29
	ld d,028h		;9f2a
	ld hl,02818h		;9f2c
	ld b,0b0h		;9f2f
	ld a,040h		;9f31
	call 0820ch		;9f33
	ld hl,0288ah		;9f36
	ld de,02888h		;9f39
	ld bc,0b00eh		;9f3c
	xor a			;9f3f
	call 0820ch		;9f40
	call 0828ah		;9f43
	ld a,(09c06h)		;9f46
	add a,02eh		;9f49
	ld l,a			;9f4b
	ld de,02896h		;9f4c
	ld h,d			;9f4f
	ld bc,0b002h		;9f50
	ld a,040h		;9f53
	call 0820ch		;9f55
	call 0828ah		;9f58
	ld de,00502h		;9f5b
	call L_9F80		;9f5e
	ld de,0010ah		;9f61
	call L_9F80		;9f64
	ld de,00802h		;9f67
	jp L_9F80		;9f6a
L_9F6D:
	xor a			;9f6d
	ld (0d1dbh),a		;9f6e
	ret			;9f71
L_9F72:
	ld hl,0d1d9h		;9f72
	dec (hl)			;9f75
	ret			;9f76
L_9F77:
	ld hl,02888h		;9f77
	ld bc,0b010h		;9f7a
	jp 0960fh		;9f7d
L_9F80:
	ld hl,02896h		;9f80
	ld bc,0b002h		;9f83
	jp 0960fh		;9f86

; ----------------------------------------------------------------------
; DATOS casillas_9F89: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9CAE (606 bytes)
;   0x9f89..0xa1e7  (606 bytes)
DATA_casillas_9F89:
	defb 008h,057h,081h,018h,003h,033h,083h,016h,057h,018h,003h,033h,083h,016h,057h,018h	; 9f89  .W...3..W..3..W.
	defb 003h,033h,081h,016h,00fh,057h,081h,025h,003h,057h,083h,025h,057h,025h,003h,057h	; 9f99  .3...W.%.W.%W%.W
	defb 083h,025h,057h,025h,003h,057h,081h,025h,00ah,057h,081h,05ah,004h,033h,081h,026h	; 9fa9  .%W%.W.%.W.Z.3.&
	defb 003h,033h,083h,026h,033h,026h,003h,033h,083h,026h,033h,026h,003h,033h,081h,026h	; 9fb9  .3.&3&.3.&3&.3.&
	defb 003h,033h,081h,034h,006h,057h,082h,023h,05bh,003h,001h,081h,002h,003h,001h,083h	; 9fc9  .3.4.W.#[.......
	defb 002h,001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,085h,002h,001h,001h,05bh	; 9fd9  ...............[
	defb 029h,004h,057h,084h,058h,059h,030h,031h,003h,001h,081h,002h,003h,001h,083h,002h	; 9fe9  ).W.XY01........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,036h,01ah	; 9ff9  ..............6.
	defb 01fh,059h,059h,057h,021h,022h,027h,048h,003h,001h,081h,002h,003h,001h,083h,002h	; a009  .YYW!"'H........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,01dh,02dh	; a019  ...............-
	defb 02eh,02bh,02ch,057h,021h,022h,027h,032h,003h,003h,081h,004h,003h,003h,083h,004h	; a029  .+,W!"'2........
	defb 003h,004h,003h,003h,083h,004h,003h,004h,003h,003h,08dh,004h,003h,003h,035h,02dh	; a039  ..............5-
	defb 02eh,02bh,02ch,057h,021h,022h,027h,024h,003h,001h,081h,002h,003h,001h,083h,002h	; a049  .+,W!"'$........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,019h,02dh	; a059  ...............-
	defb 02eh,02bh,02ch,057h,021h,022h,027h,024h,003h,001h,081h,002h,003h,001h,083h,002h	; a069  .+,W!"'$........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,019h,02dh	; a079  ...............-
	defb 02eh,02bh,02ch,057h,021h,022h,027h,024h,003h,001h,081h,002h,003h,001h,083h,002h	; a089  .+,W!"'$........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,019h,02dh	; a099  ...............-
	defb 02eh,02bh,02ch,057h,021h,022h,027h,02fh,003h,003h,081h,004h,003h,003h,083h,004h	; a0a9  .+,W!"'/........
	defb 003h,004h,003h,003h,083h,004h,003h,004h,003h,003h,08dh,004h,003h,003h,028h,02dh	; a0b9  ..............(-
	defb 02eh,02bh,02ch,057h,021h,022h,027h,048h,003h,001h,081h,002h,003h,001h,083h,002h	; a0c9  .+,W!"'H........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,01dh,02dh	; a0d9  ...............-
	defb 02eh,02bh,02ch,057h,01ah,01bh,02eh,048h,003h,001h,081h,002h,003h,001h,083h,002h	; a0e9  .+,W...H........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,01dh,02dh	; a0f9  ...............-
	defb 02eh,02bh,02ch,057h,02dh,05dh,02eh,048h,003h,001h,081h,002h,003h,001h,083h,002h	; a109  .+,W-].H........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,01dh,02dh	; a119  ...............-
	defb 02eh,02bh,02ch,057h,02dh,05dh,02eh,048h,003h,001h,081h,002h,003h,001h,083h,002h	; a129  .+,W-].H........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,01dh,02dh	; a139  ...............-
	defb 02eh,02bh,02ch,057h,02dh,05dh,02eh,048h,003h,001h,081h,002h,003h,001h,083h,002h	; a149  .+,W-].H........
	defb 001h,002h,003h,001h,083h,002h,001h,002h,003h,001h,08dh,002h,001h,001h,01dh,02dh	; a159  ...............-
	defb 02eh,02bh,02ch,057h,02dh,05dh,039h,03ah,016h,03bh,08eh,04fh,039h,05fh,02bh,02ch	; a169  .+,W-]9:...O9_+,
	defb 057h,02dh,05dh,039h,039h,011h,012h,012h,014h,003h,012h,083h,014h,012h,014h,003h	; a179  W-]99...........
	defb 012h,083h,014h,012h,014h,003h,012h,091h,014h,012h,015h,051h,039h,05fh,02bh,02ch	; a189  ...........Q9_+,
	defb 057h,02dh,05dh,039h,039h,011h,012h,012h,013h,003h,012h,083h,013h,012h,013h,003h	; a199  W-]99...........
	defb 012h,083h,013h,012h,013h,003h,012h,08bh,013h,012h,015h,051h,039h,05fh,02bh,02ch	; a1a9  ...........Q9_+,
	defb 057h,02dh,05dh,01ah,049h,086h,02ah,01bh,01bh,057h,02dh,05dh,01ah,03ch,086h,02ah	; a1b9  W-].I.*..W-].<.*
	defb 044h,044h,057h,02dh,05dh,01ah,04ch,086h,05fh,056h,054h,057h,02dh,05dh,01ah,03eh	; a1c9  DDW-].L._VTW-].>
	defb 086h,05fh,053h,055h,057h,02dh,05dh,01ah,039h,083h,05fh,053h,055h,000h	; a1d9  ._SUW-].9._SU.

; ----------------------------------------------------------------------
; DATOS paleta_A1E7: paleta: 16 colores de 2 bytes; lo usa 0x9CA1 (32 bytes)
;   0xa1e7..0xa207  (32 bytes)
DATA_paleta_A1E7:
	defb 000h,000h,067h,006h,051h,003h,057h,004h,033h,003h,007h,000h,071h,006h,004h,000h	; a1e7  ..g.Q.W.3...q...
	defb 070h,000h,056h,002h,075h,006h,053h,005h,055h,005h,022h,002h,077h,007h,000h,000h	; a1f7  p.V.u.S.U.".w...

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa207..0xa400  (505 bytes)
DATA_A207:
	defb 018h,0d8h,040h,008h,018h,0e0h,040h,030h,018h,0e8h,040h,068h,018h,0f0h,040h,070h	; a207  ..@...@0..@h..@p
	defb 018h,0f8h,040h,078h,07fh,07ch,07bh,07bh,07bh,07bh,07bh,07bh,07bh,07bh,07bh,07bh	; a217  ..@x.|{{{{{{{{{{
	defb 07bh,07bh,07bh,07bh,07bh,07bh,07bh,07bh,07dh,07eh,0ffh,000h,053h,054h,0feh,0feh	; a227  {{{{{{{{}~..ST..
	defb 060h,05eh,05fh,055h,000h,056h,057h,0feh,0feh,059h,060h,05ah,05bh,0feh,0feh,061h	; a237  `^_U.VW..Y`Z[..a
	defb 062h,063h,0feh,0feh,064h,080h,0feh,000h,044h,000h,000h,000h,000h,000h,044h,0feh	; a247  bc..d...D.....D.
	defb 000h,01ch,032h,00ch,030h,000h,00dh,01dh,04bh,00dh,000h,007h,04bh,0ffh,042h,000h	; a257  ..2.0...K...K.B.
	defb 040h,000h,041h,000h,040h,041h,014h,084h,025h,071h,01ch,001h,006h,072h,08ch,069h	; a267  @.A.@A..%q...r.i
	defb 04bh,073h,074h,06bh,075h,076h,077h,078h,079h,03fh,032h,008h,014h,086h,07ah,07bh	; a277  Kstkuvwxy?2...z{
	defb 07ch,07dh,07eh,072h,006h,07fh,0b7h,080h,04bh,081h,082h,074h,083h,083h,084h,085h	; a287  |}~r....K..t....
	defb 03ah,04dh,04eh,086h,07bh,014h,014h,07ah,07bh,087h,088h,089h,08ah,07dh,08bh,08ch	; a297  :MN.{..z{....}..
	defb 07fh,08dh,08dh,08eh,08fh,090h,091h,092h,092h,081h,081h,093h,094h,095h,096h,097h	; a2a7  ................
	defb 098h,099h,09ah,089h,03fh,086h,033h,088h,089h,09bh,07dh,0a8h,0a9h,0aah,003h,0b5h	; a2b7  ....?.3...}.....
	defb 08bh,09ch,09dh,09eh,09fh,0a0h,0a1h,0a2h,0a3h,081h,081h,0a4h,006h,0b5h,089h,0a5h	; a2c7  ................
	defb 0a6h,0a6h,0a7h,08ah,07dh,0a8h,0a9h,0aah,006h,0b5h,005h,0abh,083h,0ach,09dh,0a0h	; a2d7  ....}...........
	defb 003h,0adh,081h,0aeh,008h,0b5h,083h,0a5h,0a9h,0aah,009h,0b5h,004h,0afh,082h,0b0h	; a2e7  ................
	defb 0b1h,005h,0abh,082h,0b2h,0b3h,013h,0b4h,000h,000h,000h,040h,003h,000h,002h,004h	; a2f7  ...........@....
	defb 000h,007h,001h,011h,003h,033h,006h,030h,002h,070h,000h,070h,005h,060h,007h,000h	; a307  .....3.0.p.p.`..
	defb 001h,055h,005h,020h,001h,077h,007h,000h,000h,0b6h,0b7h,000h,0bah,0bbh,000h,0beh	; a317  .U. .w..........
	defb 0bfh,000h,0c2h,0c3h,000h,0c6h,0c7h,000h,0cah,0cbh,000h,0ceh,0cfh,000h,0d2h,0d3h	; a327  ................
	defb 000h,0d6h,0d7h,000h,0dah,0dbh,000h,081h,0b8h,0b9h,0ffh,0bch,0bdh,0ffh,0c0h,0c1h	; a337  ................
	defb 0ffh,0c4h,0c5h,0ffh,0c8h,0c9h,0ffh,0cch,0cdh,0ffh,0d0h,0d1h,0ffh,0d4h,0d5h,0ffh	; a347  ................
	defb 0d8h,0d9h,0ffh,0dch,0ddh,0ffh,081h,0deh,0dfh,000h,0e1h,0e2h,000h,0e1h,0e4h,000h	; a357  ................
	defb 0e6h,0e7h,000h,0eah,0ebh,000h,0eah,0eeh,000h,0f1h,0f2h,000h,0e1h,0f5h,000h,0f8h	; a367  ................
	defb 0f9h,000h,0fbh,0fch,000h,081h,0dch,0e0h,0ffh,0dch,0e3h,0ffh,0dch,0e5h,0ffh,0e8h	; a377  ................
	defb 0e9h,0ffh,0ech,0edh,0ffh,0efh,0f0h,0ffh,0f3h,0f4h,0ffh,0f6h,0f7h,0ffh,0f3h,0fah	; a387  ................
	defb 0ffh,0fdh,0feh,0ffh,080h,040h,008h,040h,020h,040h,038h,040h,050h,040h,068h,040h	; a397  .....@.@ @8@P@h@
	defb 080h,040h,098h,040h,0b0h,040h,0c8h,040h,0e0h,050h,008h,050h,020h,050h,038h,050h	; a3a7  .@.@.@.@.P.P P8P
	defb 050h,050h,068h,050h,080h,050h,098h,050h,0b0h,050h,0c8h,050h,0e0h,058h,04ah,073h	; a3b7  PPhP.P.P.P.P.XJs
	defb 074h,02dh,045h,002h,02eh,0d4h,032h,014h,00ch,013h,075h,00bh,002h,046h,0ffh,048h	; a3c7  t-E...2...u..F.H
	defb 020h,048h,030h,048h,040h,060h,038h,080h,038h,010h,090h,081h,001h,001h,075h,001h	; a3d7   H0H@`8.8.....u.
	defb 012h,001h,031h,000h,023h,000h,059h,031h,029h,031h,030h,031h,030h,031h,031h,030h	; a3e7  ..1.#.Y1)1010110
	defb 031h,030h,031h,081h,0e9h,012h,0e6h,082h,0e7h	; a3f7  101......
