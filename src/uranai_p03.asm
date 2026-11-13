; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p03 (se ejecuta en 0x9C00)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09c00


; ======================================================================
; CODIGO 0x9c00..0x9d86  (390 bytes)
; ======================================================================


L_9C00:
	jp L_9C8D		;9c00
L_9C03:
	jp L_AA54		;9c03
L_9C06:
	jp L_A0EA		;9c06
L_9C09:
	jp 0960ch		;9c09
L_9C0C:
	jp L_A10F		;9c0c
L_9C0F:
	jp L_A124		;9c0f
L_9C12:
	jp L_A12E		;9c12
L_9C15:
	jp L_A169		;9c15
L_9C18:
	jp L_A231		;9c18
L_9C1B:
	jp L_AB30		;9c1b
L_9C1E:
	jp L_A268		;9c1e
L_9C21:
	jp L_AA3E		;9c21
L_9C24:
	jp L_A98A		;9c24
L_9C27:
	jp L_A26F		;9c27
L_9C2A:
	jp L_A25A		;9c2a
L_9C2D:
	jp L_A0DF		;9c2d
L_9C30:
	jp L_A2E3		;9c30
L_9C33:
	jp L_A31E		;9c33
L_9C36:
	jp L_A2C0		;9c36
L_9C39:
	jp L_A738		;9c39
L_9C3C:
	jp L_A776		;9c3c
L_9C3F:
	jp L_A28F		;9c3f
L_9C42:
	jp L_A743		;9c42
L_9C45:
	jp L_A783		;9c45
L_9C48:
	jp L_A86C		;9c48
L_9C4B:
	jp L_A8D0		;9c4b
L_9C4E:
	jp L_A804		;9c4e
L_9C51:
	jp L_A8D9		;9c51
L_9C54:
	jp L_A818		;9c54
L_9C57:
	jp L_A837		;9c57
L_9C5A:
	jp L_A8F1		;9c5a
L_9C5D:
	jp L_A8FB		;9c5d
L_9C60:
	jp L_A8FE		;9c60
L_9C63:
	jp L_A21B		;9c63
L_9C66:
	jp L_A2B0		;9c66
L_9C69:
	jp L_A36B		;9c69
L_9C6C:
	jp L_A353		;9c6c
L_9C6F:
	jp L_A371		;9c6f
L_9C72:
	jp L_A399		;9c72
L_9C75:
	jp L_A3AC		;9c75
L_9C78:
	jp L_A3C9		;9c78
L_9C7B:
	jp L_A3D4		;9c7b
L_9C7E:
	jp L_A224		;9c7e
L_9C81:
	jp L_A0C1		;9c81
L_9C84:
	jp L_A284		;9c84
L_9C87:
	jp L_A385		;9c87
L_9C8A:
	jp L_A3DF		;9c8a
L_9C8D:
	call L_9CAF		;9c8d
	call L_9CA5		;9c90
	xor a			;9c93
	ld (0d22ch),a		;9c94
	ld a,(0d22ah)		;9c97
	cp 002h		;9c9a
	jr z,L_9CA2		;9c9c
	xor a			;9c9e
	ld (0d1d7h),a		;9c9f
L_9CA2:
	jp L_A98A		;9ca2
L_9CA5:
	ld a,(0d22ah)		;9ca5
	dec a			;9ca8
	jp nz,083deh		;9ca9
	jp 0844ch		;9cac
L_9CAF:
	ld de,09d86h		;9caf
	ld hl,0f800h		;9cb2
	call 0821bh		;9cb5
	ld de,09e42h		;9cb8
	ld hl,0fc80h		;9cbb
	call 0821bh		;9cbe
	ld ix,0a048h		;9cc1
	call L_AFBF		;9cc5
	ld de,0a06ch		;9cc8
	ld hl,0fa00h		;9ccb
	call 0821bh		;9cce
	call 082d2h		;9cd1
	xor a			;9cd4
	call 09606h		;9cd5
	xor a			;9cd8
	call 09600h		;9cd9
	ld a,0b9h		;9cdc
	call 09603h		;9cde
	call L_9D21		;9ce1
	call L_9D48		;9ce4
	call 08212h		;9ce7
	call 0826fh		;9cea
	call 08260h		;9ced
	call 08251h		;9cf0
	call L_AD69		;9cf3
	ld a,(0d1d7h)		;9cf6
	cp 003h		;9cf9
	call nc,L_AF33		;9cfb
	ld hl,09dfeh		;9cfe
	call 082dbh		;9d01
	call L_A0B4		;9d04
	call L_A98A		;9d07
	ld a,(0d1d7h)		;9d0a
	cp 003h		;9d0d
	jr c,L_9D1E		;9d0f
	ld a,(0d22ah)		;9d11
	cp 002h		;9d14
	jr nz,L_9D1E		;9d16
	call L_A14A		;9d18
	call L_AEFC		;9d1b
L_9D1E:
	jp 08209h		;9d1e
L_9D21:
	ld b,006h		;9d21
	ld hl,09e1eh		;9d23
L_9D26:
	push bc			;9d26
	push hl			;9d27
	call L_9D3B		;9d28
	ld a,050h		;9d2b
	call 0820ch		;9d2d
	pop hl			;9d30
	pop bc			;9d31
	inc hl			;9d32
	inc hl			;9d33
	inc hl			;9d34
	inc hl			;9d35
	inc hl			;9d36
	inc hl			;9d37
	djnz L_9D26		;9d38
	ret			;9d3a
L_9D3B:
	ld c,(hl)			;9d3b
	inc hl			;9d3c
	ld b,(hl)			;9d3d
	inc hl			;9d3e
	ld e,(hl)			;9d3f
	inc hl			;9d40
	ld d,(hl)			;9d41
	inc hl			;9d42
	ld a,(hl)			;9d43
	inc hl			;9d44
	ld h,(hl)			;9d45
	ld l,a			;9d46
	ret			;9d47
L_9D48:
	ld a,(0d26fh)		;9d48
	or a			;9d4b
	ret z			;9d4c
	ld hl,0daf0h		;9d4d
	ld de,0daf1h		;9d50
	ld bc,0000dh		;9d53
	ld (hl),0ffh		;9d56
	ldir		;9d58
	ld b,014h		;9d5a
	ld hl,0d700h		;9d5c
L_9D5F:
	push bc			;9d5f
	call L_9D6F		;9d60
	ld de,00030h		;9d63
	add hl,de			;9d66
	pop bc			;9d67
	djnz L_9D5F		;9d68
	xor a			;9d6a
	ld (0d26fh),a		;9d6b
	ret			;9d6e
L_9D6F:
	push hl			;9d6f
	ld e,l			;9d70
	ld d,h			;9d71
	inc de			;9d72
	ld bc,0001bh		;9d73
	ld (hl),0ffh		;9d76
	ldir		;9d78
	ld l,e			;9d7a
	ld h,d			;9d7b
	inc de			;9d7c
	ld bc,00013h		;9d7d
	ld (hl),000h		;9d80
	ldir		;9d82
	pop hl			;9d84
	ret			;9d85

; ----------------------------------------------------------------------
; DATOS vram_9D86: RLE a la VRAM hasta el 0; lo usa 0x9CB5 (120 bytes)
;   0x9d86..0x9dfe  (120 bytes)
DATA_vram_9D86:
	defb 088h,008h,00ch,00eh,0ffh,0ffh,00eh,00ch,008h,018h,000h,004h,018h,084h,0ffh,07eh	; 9d86  ...............~
	defb 03ch,018h,018h,000h,088h,07fh,03eh,01ch,018h,030h,060h,0c0h,080h,018h,000h,002h	; 9d96  <.....>..0`.....
	defb 000h,001h,0ffh,01dh,000h,001h,0ffh,00eh,080h,002h,0ffh,00eh,000h,002h,0ffh,00eh	; 9da6  ................
	defb 000h,002h,0ffh,00eh,001h,001h,0ffh,001h,0ffh,008h,080h,001h,0ffh,006h,000h,001h	; 9db6  ................
	defb 0c0h,008h,040h,001h,0c0h,006h,000h,001h,0ffh,00ch,080h,001h,0ffh,002h,000h,001h	; 9dc6  ..@.............
	defb 0c0h,00ch,040h,001h,0c0h,002h,000h,001h,0ffh,007h,080h,001h,0ffh,007h,000h,001h	; 9dd6  ..@.............
	defb 0ffh,007h,000h,001h,0ffh,007h,000h,001h,0ffh,007h,000h,001h,0ffh,007h,000h,001h	; 9de6  ................
	defb 0ffh,007h,001h,001h,0ffh,007h,000h,000h	; 9df6  ........

; ----------------------------------------------------------------------
; DATOS paleta_9DFE: paleta: 16 colores de 2 bytes; lo usa 0x9D01 (32 bytes)
;   0x9dfe..0x9e1e  (32 bytes)
DATA_paleta_9DFE:
	defb 000h,000h,074h,005h,044h,003h,005h,001h,027h,002h,066h,004h,061h,007h,074h,003h	; 9dfe  ..t.D...'.f.a.t.
	defb 070h,000h,002h,004h,073h,006h,051h,003h,055h,005h,031h,001h,077h,007h,000h,000h	; 9e0e  p...s.Q.U.1.w...

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e1e..0x9e42  (36 bytes)
DATA_9E1E:
	defb 008h,008h,020h,000h,018h,090h,018h,0f8h,020h,008h,050h,008h,018h,008h,028h,000h	; 9e1e  .. ..... .P...(.
	defb 058h,000h,008h,020h,038h,008h,068h,0b0h,008h,010h,038h,028h,048h,0b0h,008h,010h	; 9e2e  X.. 8.h...8(H...
	defb 038h,038h,048h,0c8h	; 9e3e

; ----------------------------------------------------------------------
; DATOS vram_9E42: RLE a la VRAM hasta el 0; lo usa 0x9CBE (518 bytes)
;   0x9e42..0xa048  (518 bytes)
DATA_vram_9E42:
	defb 00bh,000h,08bh,001h,003h,003h,007h,007h,000h,007h,01fh,03fh,07fh,07fh,00ah,0ffh	; 9e42  ...........?....
	defb 00dh,000h,08bh,001h,002h,002h,000h,000h,007h,00ch,018h,030h,020h,060h,003h,040h	; 9e52  ...........0 `.@
	defb 081h,080h,005h,000h,085h,0e0h,0f8h,0fch,0feh,0feh,00ah,0ffh,00bh,000h,088h,080h	; 9e62  ................
	defb 0c0h,0c0h,0e0h,0e0h,000h,000h,040h,01dh,000h,003h,00fh,004h,01fh,002h,01bh,002h	; 9e72  ......@.........
	defb 003h,085h,001h,007h,009h,010h,010h,00fh,0ffh,081h,03fh,005h,000h,084h,002h,004h	; 9e82  ..........?.....
	defb 000h,008h,003h,000h,084h,001h,006h,00fh,00fh,007h,000h,089h,001h,000h,001h,002h	; 9e92  ................
	defb 000h,001h,0cfh,03fh,0c0h,00fh,0ffh,081h,0fch,003h,0f0h,004h,0f8h,002h,0d8h,002h	; 9ea2  ...?............
	defb 0c0h,085h,080h,0e0h,090h,008h,008h,00ch,000h,084h,080h,0f1h,0feh,003h,005h,000h	; 9eb2  ................
	defb 084h,040h,020h,000h,010h,004h,000h,089h,060h,0f0h,0f0h,000h,0e0h,0f8h,0fch,0feh	; 9ec2  .@ .....`.......
	defb 0feh,00ah,0ffh,003h,000h,081h,060h,003h,070h,081h,078h,006h,0f8h,002h,0f0h,002h	; 9ed2  ......`.p.x.....
	defb 000h,081h,040h,011h,000h,002h,020h,00ah,000h,00fh,0ffh,083h,0fch,0f0h,0e0h,009h	; 9ee2  ..@... .........
	defb 0c0h,085h,080h,0e0h,090h,008h,008h,00ch,000h,084h,080h,0f1h,0feh,003h,00dh,000h	; 9ef2  ................
	defb 083h,060h,0f0h,0f0h,005h,000h,004h,001h,083h,000h,001h,001h,003h,000h,084h,001h	; 9f02  .`..............
	defb 00fh,03fh,07fh,006h,0ffh,087h,03fh,01fh,00fh,0cfh,01fh,0ffh,0ffh,009h,000h,081h	; 9f12  .?....?.........
	defb 001h,003h,003h,005h,000h,094h,038h,07ch,07ch,0feh,0deh,0deh,07eh,0fch,0e8h,0f0h	; 9f22  ......8||...~...
	defb 030h,0e0h,018h,0fch,0f0h,0f8h,0fch,0fch,0feh,0feh,00ah,0ffh,00fh,000h,086h,080h	; 9f32  0...............
	defb 000h,000h,010h,008h,008h,003h,004h,018h,000h,083h,001h,003h,003h,003h,007h,08ah	; 9f42  ................
	defb 00fh,01fh,00fh,007h,003h,003h,001h,000h,001h,001h,00dh,0ffh,081h,0c0h,003h,000h	; 9f52  ................
	defb 003h,001h,006h,003h,002h,001h,004h,000h,002h,0feh,00ah,0ffh,082h,0e0h,03fh,00fh	; 9f62  ..............?.
	defb 0ffh,083h,01ch,008h,008h,003h,080h,006h,0c0h,083h,0e0h,0c0h,080h,004h,000h,002h	; 9f72  ................
	defb 010h,002h,008h,08ch,088h,08ah,08ah,082h,042h,044h,024h,098h,003h,0ech,0f0h,0f0h	; 9f82  ........BD$.....
	defb 00bh,000h,081h,080h,005h,000h,086h,030h,008h,000h,000h,0c0h,081h,003h,001h,082h	; 9f92  .......0........
	defb 000h,001h,005h,000h,083h,00fh,03fh,07fh,006h,0ffh,08dh,07fh,03fh,01fh,09fh,03fh	; 9fa2  ......?.....?..?
	defb 0ffh,000h,030h,008h,000h,000h,0c0h,080h,003h,000h,081h,001h,003h,003h,005h,000h	; 9fb2  ..0.............
	defb 092h,030h,078h,078h,0fch,0bch,0bch,07ch,0f8h,0d0h,0e0h,060h,0c0h,000h,000h,0f0h	; 9fc2  .0xx...|...`....
	defb 0f8h,0fch,0fch,003h,0feh,008h,0ffh,002h,000h,087h,030h,040h,002h,000h,000h,018h	; 9fd2  ..........0@....
	defb 004h,009h,000h,084h,020h,010h,008h,008h,004h,004h,008h,000h,087h,030h,040h,002h	; 9fe2  .... ........0@.
	defb 000h,000h,018h,004h,009h,000h,002h,001h,007h,003h,003h,001h,082h,002h,000h,00eh	; 9ff2  ................
	defb 0ffh,082h,07fh,03ch,004h,000h,007h,001h,003h,000h,092h,001h,003h,060h,064h,0e4h	; a002  ...<.........`d.
	defb 0e0h,0c8h,0c0h,090h,020h,001h,001h,086h,0f8h,0e0h,060h,09ch,0c0h,00dh,0ffh,082h	; a012  .... .....`.....
	defb 0feh,0f8h,005h,080h,003h,0c0h,002h,0e0h,003h,0c0h,084h,0a0h,020h,040h,080h,006h	; a022  ............ @..
	defb 000h,002h,080h,004h,000h,002h,001h,082h,007h,07fh,008h,000h,088h,020h,040h,040h	; a032  ............. @@
	defb 080h,040h,0c0h,080h,000h,000h	; a042

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa048..0xa06c  (36 bytes)
DATA_A048:
	defb 002h,002h,0c0h,058h,002h,002h,0c8h,050h,002h,002h,0d0h,068h,002h,002h,0d8h,060h	; a048  ...X...P...h...`
	defb 002h,002h,0e0h,078h,002h,002h,0e8h,070h,002h,002h,0f0h,088h,002h,002h,0f8h,080h	; a058  ...x...p........
	defb 000h,000h,000h,000h	; a068

; ----------------------------------------------------------------------
; DATOS vram_A06C: RLE a la VRAM hasta el 0; lo usa 0x9CCE (71 bytes)
;   0xa06c..0xa0b3  (71 bytes)
DATA_vram_A06C:
	defb 005h,000h,083h,004h,002h,001h,007h,000h,083h,03ch,000h,000h,004h,001h,002h,000h	; a06c  .........<......
	defb 081h,080h,009h,000h,004h,080h,002h,000h,081h,001h,00ch,000h,083h,020h,040h,080h	; a07c  ............. @.
	defb 007h,000h,002h,03ch,007h,000h,083h,001h,002h,004h,00ch,000h,083h,080h,000h,000h	; a08c  ...<............
	defb 004h,001h,009h,000h,083h,001h,000h,000h,004h,080h,002h,000h,081h,03ch,007h,000h	; a09c  .............<..
	defb 083h,080h,040h,020h,005h,000h,000h	; a0ac

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa0b3..0xa0b4  (1 bytes)
DATA_A0B3:
	defb 0ffh	; a0b3

; ======================================================================
; CODIGO 0xa0b4..0xa3f2  (830 bytes)
; ======================================================================


L_A0B4:
	ld hl,0a3f2h		;a0b4
	ld de,00000h		;a0b7
	ld c,020h		;a0ba
	ld a,001h		;a0bc
	jp 08218h		;a0be
L_A0C1:
	ld a,0e0h		;a0c1
	ld (0d290h),a		;a0c3
	call L_A1DF		;a0c6
	call L_A1FA		;a0c9
	call L_A2FB		;a0cc
	ld hl,0a65fh		;a0cf
	jr L_A10C		;a0d2
L_A0D4:
	call L_A212		;a0d4
	call L_A304		;a0d7
	ld hl,0a712h		;a0da
	jr L_A10C		;a0dd
L_A0DF:
	call L_A173		;a0df
L_A0E2:
	call L_A20A		;a0e2
	ld hl,0a6c6h		;a0e5
	jr L_A10C		;a0e8
L_A0EA:
	xor a			;a0ea
	ld (09203h),a		;a0eb
	ld (0a0b3h),a		;a0ee
	ld (09204h),a		;a0f1
	ld (0d1d8h),a		;a0f4
	call L_AD69		;a0f7
	call L_AF11		;a0fa
	call L_A10F		;a0fd
	ld a,000h		;a100
	jr nz,L_A105		;a102
	inc a			;a104
L_A105:
	ld (0d22ah),a		;a105
L_A108:
	ld hl,0a624h		;a108
	xor a			;a10b
L_A10C:
	jp 09609h		;a10c
L_A10F:
	ld hl,0d700h		;a10f
	ld bc,01400h		;a112
	ld a,0ffh		;a115
L_A117:
	cp (hl)			;a117
	jr z,L_A11B		;a118
	inc c			;a11a
L_A11B:
	ld de,00030h		;a11b
	add hl,de			;a11e
	djnz L_A117		;a11f
	ld a,c			;a121
	or a			;a122
	ret			;a123
L_A124:
	call 082e9h		;a124
	ld a,001h		;a127
	ld (0d22ah),a		;a129
	jr L_A108		;a12c
L_A12E:
	ld a,(0d22ah)		;a12e
	ld hl,0a0b3h		;a131
	cp (hl)			;a134
	jr z,L_A140		;a135
	push af			;a137
	ld a,(hl)			;a138
	call L_A14F		;a139
	pop af			;a13c
	ld (0a0b3h),a		;a13d
L_A140:
	ld a,(0d1c3h)		;a140
	and 008h		;a143
	ld a,(0d22ah)		;a145
	jr z,L_A14F		;a148
L_A14A:
	ld hl,0a63bh		;a14a
	jr L_A152		;a14d
L_A14F:
	ld hl,0a64bh		;a14f
L_A152:
	ld de,0a65bh		;a152
	ld b,a			;a155
	call 08206h		;a156
	ld a,(de)			;a159
	ld d,a			;a15a
	ld e,070h		;a15b
	ld a,b			;a15d
	add a,a			;a15e
	add a,a			;a15f
	call 08221h		;a160
	ld c,006h		;a163
	xor a			;a165
	jp 08218h		;a166
L_A169:
	ld a,(0d1d8h)		;a169
	or a			;a16c
	jp z,L_AD2A		;a16d
	jp L_AD42		;a170
L_A173:
	ld hl,03070h		;a173
	ld de,07040h		;a176
	ld bc,09040h		;a179
L_A17C:
	ld a,010h		;a17c
	jp 0820ch		;a17e
L_A181:
	ld hl,04870h		;a181
	ld de,00840h		;a184
	ld bc,0a848h		;a187
	call L_A17C		;a18a
	ld hl,04870h		;a18d
	ld de,0a828h		;a190
	jp L_ABF6		;a193
L_A196:
	ld hl,048a0h		;a196
	ld de,03018h		;a199
	call L_ABF6		;a19c
	ld a,(0d1d6h)		;a19f
	or a			;a1a2
	ret nz			;a1a3
	ld hl,088a0h		;a1a4
	ld de,03018h		;a1a7
	jr L_A218		;a1aa
L_A1AC:
	ld hl,0b8a0h		;a1ac
	ld de,0b040h		;a1af
	ld bc,04818h		;a1b2
	call L_A17C		;a1b5
	ld hl,0bca0h		;a1b8
	ld de,03e18h		;a1bb
	jr L_A218		;a1be
L_A1C0:
	ld hl,08878h		;a1c0
	ld de,00840h		;a1c3
	ld bc,06818h		;a1c6
	call L_A17C		;a1c9
	ld hl,08878h		;a1cc
	ld de,06818h		;a1cf
	jr L_A218		;a1d2
L_A1D4:
	ld hl,01078h		;a1d4
	ld de,00840h		;a1d7
	ld bc,07038h		;a1da
	jr L_A17C		;a1dd
L_A1DF:
	ld hl,0a090h		;a1df
	ld de,08840h		;a1e2
	ld bc,05018h		;a1e5
	jr L_A17C		;a1e8
L_A1EA:
	ld hl,01880h		;a1ea
	ld de,06828h		;a1ed
	jr L_A218		;a1f0
L_A1F2:
	ld hl,01078h		;a1f2
	ld de,06838h		;a1f5
	jr L_A218		;a1f8
L_A1FA:
	ld hl,0a090h		;a1fa
	ld de,05018h		;a1fd
	jr L_A218		;a200
L_A202:
	ld hl,04870h		;a202
	ld de,07828h		;a205
	jr L_A218		;a208
L_A20A:
	ld hl,04870h		;a20a
	ld de,05828h		;a20d
	jr L_A218		;a210
L_A212:
	ld hl,03098h		;a212
	ld de,05018h		;a215
L_A218:
	jp L_ABF6		;a218
L_A21B:
	call L_A1C0		;a21b
	ld hl,0a72ah		;a21e
	jp L_A23D		;a221
L_A224:
	call L_A1D4		;a224
	call L_A1EA		;a227
	ld hl,0a677h		;a22a
	xor a			;a22d
	jp 09609h		;a22e
L_A231:
	call L_A1F2		;a231
L_A234:
	ld de,027a0h		;a234
	call L_A243		;a237
	ld hl,0a69eh		;a23a
L_A23D:
	ld bc,00504h		;a23d
	jp L_AAFA		;a240
L_A243:
	ld a,002h		;a243
	ld (0d1cch),a		;a245
	ld hl,00908h		;a248
	add hl,de			;a24b
	ld (0d290h),hl		;a24c
	ld a,0cdh		;a24f
	call 082cfh		;a251
	ld a,00ch		;a254
	ld (0d292h),a		;a256
	ret			;a259
L_A25A:
	call L_A202		;a25a
L_A25D:
	ld de,05f88h		;a25d
	call L_A243		;a260
	ld hl,0a6b6h		;a263
	jr L_A23D		;a266
L_A268:
	ld a,(0d22bh)		;a268
	ld (0d22fh),a		;a26b
	ret			;a26e
L_A26F:
	ld a,0e0h		;a26f
	ld (0d290h),a		;a271
	ld a,002h		;a274
	call L_A14F		;a276
	ld de,01078h		;a279
	ld hl,00840h		;a27c
	ld bc,07038h		;a27f
	jr L_A2D3		;a282
L_A284:
	ld de,0a090h		;a284
	ld hl,08840h		;a287
	ld bc,05018h		;a28a
	jr L_A2D3		;a28d
L_A28F:
	ld de,04870h		;a28f
	ld hl,00840h		;a292
	ld bc,0a848h		;a295
	jr L_A2D3		;a298
L_A29A:
	ld de,0b8a0h		;a29a
	ld hl,0b040h		;a29d
	ld bc,04818h		;a2a0
	jr L_A2D3		;a2a3
L_A2A5:
	ld de,04898h		;a2a5
	ld hl,00868h		;a2a8
	ld bc,0a820h		;a2ab
	jr L_A2D3		;a2ae
L_A2B0:
	ld a,001h		;a2b0
	call L_A14F		;a2b2
	ld de,08878h		;a2b5
	ld hl,00840h		;a2b8
	ld bc,06818h		;a2bb
	jr L_A2D3		;a2be
L_A2C0:
	ld a,003h		;a2c0
	call L_A14F		;a2c2
L_A2C5:
	ld a,0e0h		;a2c5
	ld (0d290h),a		;a2c7
	ld de,03070h		;a2ca
	ld hl,07040h		;a2cd
	ld bc,09040h		;a2d0
L_A2D3:
	ld a,040h		;a2d3
	jp 0820ch		;a2d5
L_A2D8:
	ld de,03098h		;a2d8
	ld hl,07068h		;a2db
	ld bc,05018h		;a2de
	jr L_A2D3		;a2e1
L_A2E3:
	ld a,(0d22bh)		;a2e3
	ld (0d22fh),a		;a2e6
	call L_AA3E		;a2e9
	ld a,(de)			;a2ec
	cp 0ffh		;a2ed
	ret z			;a2ef
	ld a,0e0h		;a2f0
	ld (0d290h),a		;a2f2
	call L_A0D4		;a2f5
	or 0ffh		;a2f8
	ret			;a2fa
L_A2FB:
	ld de,030a0h		;a2fb
	ld (0a315h),de		;a2fe
	jr L_A30B		;a302
L_A304:
	ld de,06888h		;a304
	ld (0a315h),de		;a307
L_A30B:
	ld a,(0d22bh)		;a30b
	ld hl,0a6eah		;a30e
	call 0826ch		;a311
	ld de,06888h		;a314
	ld bc,00808h		;a317
	xor a			;a31a
	jp 0820ch		;a31b
L_A31E:
	call L_AA3E		;a31e
	push hl			;a321
	ex de,hl			;a322
	call L_A332		;a323
	pop hl			;a326
	call L_A349		;a327
	ld a,001h		;a32a
	ld (0d1e2h),a		;a32c
	jp 08442h		;a32f
L_A332:
	push hl			;a332
	ld e,l			;a333
	ld d,h			;a334
	inc de			;a335
	ld bc,0001bh		;a336
	ld (hl),0ffh		;a339
	ldir		;a33b
	ld l,e			;a33d
	ld h,d			;a33e
	inc de			;a33f
	ld bc,00013h		;a340
	ld (hl),000h		;a343
	ldir		;a345
	pop hl			;a347
	ret			;a348
L_A349:
	ld a,l			;a349
	sub 008h		;a34a
	ld l,a			;a34c
	ld bc,02410h		;a34d
	jp 082b7h		;a350
L_A353:
	ld a,(0d1d8h)		;a353
	or a			;a356
	jr z,L_A360		;a357
	cp 002h		;a359
	jr z,L_A360		;a35b
	cp 015h		;a35d
	ret nc			;a35f
L_A360:
	ld a,(0d1c8h)		;a360
	and 080h		;a363
	jr z,L_A369		;a365
	scf			;a367
	ret			;a368
L_A369:
	or a			;a369
	ret			;a36a
L_A36B:
	call 082e9h		;a36b
L_A36E:
	jp L_A25D		;a36e
L_A371:
	call L_A377		;a371
	jp L_AA54		;a374
L_A377:
	ld a,(0d1c3h)		;a377
	and 010h		;a37a
	ld a,008h		;a37c
	jr nz,L_A381		;a37e
	xor a			;a380
L_A381:
	ld (0d293h),a		;a381
	ret			;a384
L_A385:
	ld hl,030a0h		;a385
	ld bc,00808h		;a388
	call 082b7h		;a38b
	call L_A284		;a38e
	ld a,002h		;a391
	ld (0d1d8h),a		;a393
	jp L_A234		;a396
L_A399:
	ld hl,06888h		;a399
	ld bc,00808h		;a39c
	call 082b7h		;a39f
	call L_A2D8		;a3a2
	ld a,002h		;a3a5
	ld (0d1d8h),a		;a3a7
	jr L_A36E		;a3aa
L_A3AC:
	call L_A2C5		;a3ac
	call L_A10F		;a3af
	jr z,L_A3BD		;a3b2
	call L_A0E2		;a3b4
	ld a,001h		;a3b7
	ld (0d1d8h),a		;a3b9
	ret			;a3bc
L_A3BD:
	xor a			;a3bd
	ld (0d1d7h),a		;a3be
	ld (0d1d8h),a		;a3c1
	ld a,003h		;a3c4
	jp L_A14F		;a3c6
L_A3C9:
	ld a,(0d1c8h)		;a3c9
	and 080h		;a3cc
	jp nz,09205h		;a3ce
	jp 0960ch		;a3d1
L_A3D4:
	ld a,(0d1c8h)		;a3d4
	and 080h		;a3d7
	jp nz,09205h		;a3d9
	jp L_AB30		;a3dc
L_A3DF:
	call L_AA3E		;a3df
	push de			;a3e2
	pop ix		;a3e3
	ld a,(ix+000h)		;a3e5
	cp 0ffh		;a3e8
	ret z			;a3ea
	ld (0d210h),ix		;a3eb
	or 0ffh		;a3ef
	ret			;a3f1

; ----------------------------------------------------------------------
; DATOS casillas_A3F2: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0xA0BE (562 bytes)
;   0xa3f2..0xa624  (562 bytes)
DATA_casillas_A3F2:
	defb 0c2h,001h,002h,003h,004h,005h,002h,003h,004h,005h,002h,003h,004h,005h,002h,003h	; a3f2  ................
	defb 004h,005h,002h,003h,004h,005h,002h,003h,004h,005h,002h,003h,004h,005h,002h,003h	; a402  ................
	defb 006h,007h,008h,009h,00ah,00bh,00ch,009h,00ah,00bh,00ch,009h,00ah,00bh,00ch,009h	; a412  ................
	defb 00ah,00bh,00ch,009h,00ah,00bh,00ch,009h,00ah,00bh,00ch,009h,00ah,00bh,00ch,014h	; a422  ................
	defb 015h,00dh,00eh,01ch,0b5h,085h,016h,017h,00fh,010h,0a1h,006h,0b5h,081h,0a6h,006h	; a432  ................
	defb 0b5h,081h,0abh,006h,0b5h,081h,0b0h,006h,0b5h,084h,018h,019h,011h,012h,01ch,0b5h	; a442  ................
	defb 085h,01ah,01bh,007h,013h,0a2h,006h,0b5h,081h,0a7h,006h,0b5h,081h,0ach,006h,0b5h	; a452  ................
	defb 081h,0b1h,006h,0b5h,084h,01ch,015h,00dh,00eh,01ch,0b5h,085h,016h,017h,00fh,010h	; a462  ................
	defb 0a3h,006h,0b5h,081h,0a8h,006h,0b5h,081h,0adh,006h,0b5h,081h,0b2h,006h,0b5h,084h	; a472  ................
	defb 018h,019h,011h,012h,01ch,0b5h,085h,01ah,01bh,007h,013h,0a4h,006h,0b5h,081h,0a9h	; a482  ................
	defb 006h,0b5h,081h,0aeh,006h,0b5h,081h,0b3h,006h,0b5h,084h,01ch,015h,00dh,00eh,01ch	; a492  ................
	defb 0b5h,085h,016h,017h,00fh,010h,0a5h,006h,0b5h,081h,0aah,006h,0b5h,081h,0afh,006h	; a4a2  ................
	defb 0b5h,081h,0b4h,006h,0b5h,084h,018h,019h,011h,012h,01ch,0b5h,0ffh,01ah,01bh,007h	; a4b2  ................
	defb 01dh,01eh,01fh,020h,021h,01eh,01fh,020h,021h,01eh,01fh,020h,021h,01eh,01fh,020h	; a4c2  ... !.. !.. !..
	defb 021h,01eh,01fh,020h,021h,01eh,01fh,020h,021h,01eh,01fh,020h,021h,01eh,015h,022h	; a4d2  !.. !.. !.. !.."
	defb 041h,042h,043h,044h,045h,046h,023h,024h,089h,08ah,08bh,08ch,08dh,08eh,023h,024h	; a4e2  ABCDEF#$......#$
	defb 071h,072h,073h,074h,075h,076h,023h,024h,059h,05ah,05bh,05ch,05dh,05eh,025h,02dh	; a4f2  qrstuv#$YZ[\]^%-
	defb 047h,048h,049h,04ah,04bh,04ch,033h,02dh,08fh,090h,091h,092h,093h,094h,033h,02dh	; a502  GHIJKL3-......3-
	defb 077h,078h,079h,07ah,07bh,07ch,033h,02dh,05fh,060h,061h,062h,063h,064h,033h,02eh	; a512  wxyz{|3-_`abcd3.
	defb 02fh,02dh,034h,02eh,035h,02dh,034h,02eh,02fh,02dh,034h,02eh,035h,02dh,034h,02eh	; a522  /-4.5-4./-4.5-4.
	defb 02fh,02dh,034h,02eh,035h,02dh,034h,02eh,02fh,02dh,034h,02eh,0ffh,035h,02dh,034h	; a532  /-4.5-4./-4..5-4
	defb 030h,031h,02dh,036h,037h,038h,02dh,034h,030h,031h,02dh,036h,037h,038h,02dh,034h	; a542  01-678-401-678-4
	defb 030h,031h,02dh,036h,037h,038h,02dh,034h,030h,031h,02dh,036h,037h,038h,02dh,034h	; a552  01-678-401-678-4
	defb 032h,033h,02eh,039h,03ah,033h,02eh,02fh,032h,033h,02eh,039h,03ah,033h,02eh,02fh	; a562  23.9:3./23.9:3./
	defb 032h,033h,02eh,039h,03ah,033h,02eh,02fh,032h,033h,02eh,039h,03ah,033h,02eh,02fh	; a572  23.9:3./23.9:3./
	defb 02dh,034h,030h,03bh,03ch,034h,030h,031h,02dh,034h,030h,03bh,03ch,034h,030h,031h	; a582  -40.<401-40.<401
	defb 02dh,034h,030h,03bh,03ch,034h,030h,031h,02dh,034h,030h,03bh,03ch,034h,030h,031h	; a592  -40.<401-40.<401
	defb 02eh,02fh,032h,03dh,03eh,02fh,032h,033h,02eh,02fh,032h,03dh,03eh,02fh,032h,033h	; a5a2  ./2=>/23./2=>/23
	defb 02eh,02fh,032h,03dh,03eh,02fh,032h,033h,02eh,02fh,032h,03dh,0e4h,03eh,02fh,032h	; a5b2  ./2=>/23./2=.>/2
	defb 033h,030h,031h,02dh,03fh,040h,031h,02dh,034h,030h,031h,02dh,03fh,040h,031h,02dh	; a5c2  301-?@1-401-?@1-
	defb 034h,030h,031h,02dh,03fh,040h,031h,02dh,034h,030h,031h,02dh,03fh,040h,031h,02dh	; a5d2  401-?@1-401-?@1-
	defb 034h,020h,021h,026h,01fh,020h,021h,026h,01fh,020h,021h,026h,01fh,020h,021h,026h	; a5e2  4 !&. !&. !&. !&
	defb 01fh,020h,021h,026h,01fh,020h,021h,026h,01fh,020h,021h,026h,01fh,020h,021h,026h	; a5f2  . !&. !&. !&. !&
	defb 01fh,029h,02ah,02bh,02ch,029h,02ah,02bh,02ch,029h,02ah,02bh,02ch,029h,02ah,02bh	; a602  .)*+,)*+,)*+,)*+
	defb 02ch,029h,02ah,02bh,02ch,029h,02ah,02bh,02ch,029h,02ah,02bh,02ch,029h,02ah,02bh	; a612  ,)*+,)*+,)*+,)*+
	defb 02ch,000h	; a622

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa624..0xa738  (276 bytes)
DATA_A624:
	defb 02ch,0a6h,038h,0a6h,02ah,0d2h,000h,004h,000h,000h,001h,000h,000h,001h,000h,000h	; a624  ,.8.*...........
	defb 001h,000h,000h,001h,000h,000h,0ffh,080h,00ch,08dh,000h,080h,00ch,0d5h,000h,080h	; a634  ................
	defb 00ch,0bdh,000h,080h,00ch,0a5h,000h,080h,00ch,081h,000h,080h,00ch,0c9h,000h,080h	; a644  ................
	defb 00ch,0b1h,000h,080h,00ch,099h,000h,008h,048h,088h,0c8h,067h,0a6h,06dh,0a6h,0cdh	; a654  ........H..g.m..
	defb 0d1h,000h,002h,098h,0a8h,000h,098h,0c8h,000h,0b0h,098h,01ah,002h,000h,000h,002h	; a664  ................
	defb 002h,004h,0ffh,07fh,0a6h,085h,0a6h,0cdh,0d1h,000h,002h,09ah,028h,000h,09ah,050h	; a674  ............(..P
	defb 000h,020h,08ah,0cbh,04bh,010h,04bh,02dh,045h,020h,01fh,00dh,006h,051h,0feh,030h	; a684  . ..K.K-E ...Q.0
	defb 09ah,01ah,002h,000h,000h,000h,002h,002h,004h,0ffh,018h,082h,065h,066h,019h,067h	; a694  ............ef.g
	defb 019h,000h,0cbh,04bh,010h,04bh,02dh,0feh,018h,092h,020h,010h,002h,0cbh,00dh,006h	; a6a4  ...K.K-... .....
	defb 051h,0ffh,050h,07ah,065h,066h,02dh,045h,0cbh,028h,04bh,014h,00ch,01fh,00dh,006h	; a6b4  Q.Pzef-E.(K.....
	defb 051h,0ffh,0ceh,0a6h,0d4h,0a6h,0cdh,0d1h,000h,002h,08ah,050h,000h,08ah,070h,000h	; a6c4  Q..........P..p.
	defb 050h,07ah,0cbh,028h,04bh,014h,00ch,01fh,00dh,006h,051h,0feh,058h,08ah,01ah,002h	; a6d4  Pz.(K.....Q.X...
	defb 000h,000h,002h,002h,004h,0ffh,018h,010h,028h,010h,038h,010h,048h,010h,058h,010h	; a6e4  ........(.8.H.X.
	defb 018h,048h,028h,048h,038h,048h,048h,048h,058h,048h,018h,080h,028h,080h,038h,080h	; a6f4  .H(H8HHHXH..(.8.
	defb 048h,080h,058h,080h,018h,0b8h,028h,0b8h,038h,0b8h,048h,0b8h,058h,0b8h,01ah,0a7h	; a704  H.X...(.8.H.X...
	defb 020h,0a7h,0cdh,0d1h,000h,002h,0a0h,038h,000h,0a0h,058h,000h,040h,0a0h,01ah,002h	; a714   ......8..X.@...
	defb 000h,000h,002h,002h,004h,0ffh,090h,082h,065h,066h,016h,000h,068h,069h,00ch,01fh	; a724  ........ef..hi..
	defb 00dh,006h,051h,0ffh	; a734

; ======================================================================
; CODIGO 0xa738..0xa8cc  (404 bytes)
; ======================================================================


L_A738:
	call L_A181		;a738
L_A73B:
	ld hl,0a90fh		;a73b
	ld a,001h		;a73e
	jp 09609h		;a740
L_A743:
	ld a,(0d1ceh)		;a743
	or a			;a746
	jr nz,L_A777		;a747
	ld hl,0d1c2h		;a749
	set 5,(hl)		;a74c
	ld a,002h		;a74e
	ld (0d20ah),a		;a750
	ld hl,0d700h		;a753
	ld c,000h		;a756
	ld a,0ffh		;a758
	ld b,014h		;a75a
L_A75C:
	cp (hl)			;a75c
	jr z,L_A760		;a75d
	inc c			;a75f
L_A760:
	ld de,00030h		;a760
	add hl,de			;a763
	djnz L_A75C		;a764
	ld a,c			;a766
	cp 002h		;a767
	ret nc			;a769
	call 082e9h		;a76a
	ld a,001h		;a76d
	ld (0d1d8h),a		;a76f
	call L_A73B		;a772
	scf			;a775
L_A776:
	ret			;a776
L_A777:
	ld hl,0d1c2h		;a777
	res 5,(hl)		;a77a
	ld a,001h		;a77c
	ld (0d20ah),a		;a77e
	and a			;a781
	ret			;a782
L_A783:
	call L_A7BB		;a783
	call L_A196		;a786
	call L_A804		;a789
	ld a,(0d20ah)		;a78c
	push af			;a78f
	ld a,(0d1c2h)		;a790
	bit 5,a		;a793
	ld a,002h		;a795
	jr nz,L_A79A		;a797
	dec a			;a799
L_A79A:
	ld (0d20ah),a		;a79a
	call L_A818		;a79d
	cp 0ffh		;a7a0
	call nz,L_A83A		;a7a2
	ld a,(0d20ah)		;a7a5
	dec a			;a7a8
	jr z,L_A7B6		;a7a9
	ld (0d20ah),a		;a7ab
	call L_A818		;a7ae
	cp 0ffh		;a7b1
	call nz,L_A83A		;a7b3
L_A7B6:
	pop af			;a7b6
	ld (0d20ah),a		;a7b7
	ret			;a7ba
L_A7BB:
	ld a,(0d1ceh)		;a7bb
	ld hl,0a94eh		;a7be
	call 08221h		;a7c1
	ld a,(hl)			;a7c4
	ld (0d1d6h),a		;a7c5
	ld hl,00007h		;a7c8
	ld de,00e0fh		;a7cb
L_A7CE:
	ld (0a7dbh),hl		;a7ce
	ld (0a7e3h),de		;a7d1
	call L_A7E8		;a7d5
	push hl			;a7d8
	push bc			;a7d9
	ld de,00007h		;a7da
	call 0960fh		;a7dd
	pop bc			;a7e0
	pop hl			;a7e1
	ld de,00e0fh		;a7e2
	jp 0960fh		;a7e5
L_A7E8:
	ld hl,0a953h		;a7e8
	add a,a			;a7eb
	add a,a			;a7ec
	call 08221h		;a7ed
	ld c,(hl)			;a7f0
	inc hl			;a7f1
	ld b,(hl)			;a7f2
	inc hl			;a7f3
	ld a,(hl)			;a7f4
	inc hl			;a7f5
	ld h,(hl)			;a7f6
	ld l,a			;a7f7
	ret			;a7f8
L_A7F9:
	ld a,(0d1d6h)		;a7f9
	ld hl,00700h		;a7fc
	ld de,00f0eh		;a7ff
	jr L_A7CE		;a802
L_A804:
	ld hl,0a967h		;a804
	call L_A818		;a807
	ld bc,00504h		;a80a
	cp 0ffh		;a80d
	jr nz,L_A812		;a80f
	xor a			;a811
L_A812:
	ld (0d22bh),a		;a812
	jp L_AAFA		;a815
L_A818:
	push hl			;a818
	ld hl,0a96ah		;a819
	ld a,(0d1d6h)		;a81c
	call 0826ch		;a81f
	ld a,(0d1c2h)		;a822
	bit 5,a		;a825
	jr z,L_A831		;a827
	ld a,(0d20ah)		;a829
	cp 002h		;a82c
	jr z,L_A831		;a82e
	inc hl			;a830
L_A831:
	ld a,(hl)			;a831
	push hl			;a832
	pop ix		;a833
	pop hl			;a835
	ret			;a836
L_A837:
	call L_A8D9		;a837
L_A83A:
	call L_AA41		;a83a
	push de			;a83d
	call L_A8BE		;a83e
	call L_A85E		;a841
	pop hl			;a844
	call L_A84B		;a845
	jp L_A9AE		;a848
L_A84B:
	ld de,050aah		;a84b
	ld a,(0d1c2h)		;a84e
	bit 5,a		;a851
	ret z			;a853
	ld a,(0d20ah)		;a854
	cp 002h		;a857
	ret z			;a859
	ld de,090aah		;a85a
	ret			;a85d
L_A85E:
	call L_A84B		;a85e
	ld a,e			;a861
	sub 008h		;a862
	ld e,a			;a864
	ex de,hl			;a865
	ld bc,02010h		;a866
	jp 082b7h		;a869
L_A86C:
	ld a,(0d1c3h)		;a86c
	and 004h		;a86f
	jr z,L_A8BE		;a871
	ld hl,0a8ceh		;a873
	ld a,(0d1ceh)		;a876
	or a			;a879
	jr nz,L_A87F		;a87a
	ld hl,0a8cch		;a87c
L_A87F:
	ld a,(0d20ah)		;a87f
	dec a			;a882
	add a,a			;a883
	call 08221h		;a884
	ld de,0d2a8h		;a887
	ld b,002h		;a88a
L_A88C:
	ld a,(hl)			;a88c
	ld (de),a			;a88d
	inc hl			;a88e
	inc de			;a88f
	djnz L_A88C		;a890
	ld a,00ch		;a892
	ld (de),a			;a894
	inc de			;a895
	ld a,008h		;a896
	ld (de),a			;a898
	ld de,0d2ach		;a899
	ld b,003h		;a89c
L_A89E:
	push bc			;a89e
	ld bc,00004h		;a89f
	ld hl,0d2a8h		;a8a2
	ldir		;a8a5
	pop bc			;a8a7
	djnz L_A89E		;a8a8
	ld hl,0d2adh		;a8aa
	ld bc,00308h		;a8ad
L_A8B0:
	ld a,(hl)			;a8b0
	add a,c			;a8b1
	ld (hl),a			;a8b2
	ld de,00004h		;a8b3
	add hl,de			;a8b6
	ld a,008h		;a8b7
	add a,c			;a8b9
	ld c,a			;a8ba
	djnz L_A8B0		;a8bb
	ret			;a8bd
L_A8BE:
	ld hl,0d2a8h		;a8be
	ld b,004h		;a8c1
L_A8C3:
	ld (hl),0e0h		;a8c3
	ld de,00004h		;a8c5
	add hl,de			;a8c8
	djnz L_A8C3		;a8c9
	ret			;a8cb

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa8cc..0xa8d0  (4 bytes)
DATA_A8CC:
	defb 0b1h,090h,0b1h,050h	; a8cc

; ======================================================================
; CODIGO 0xa8d0..0xa90f  (63 bytes)
; ======================================================================


L_A8D0:
	ld a,(0d22bh)		;a8d0
	call L_AA41		;a8d3
	ld a,(de)			;a8d6
	inc a			;a8d7
	ret			;a8d8
L_A8D9:
	call L_A818		;a8d9
	ld a,(0d22bh)		;a8dc
	ld (ix+000h),a		;a8df
	ld b,a			;a8e2
	ld a,(0d1c2h)		;a8e3
	bit 5,a		;a8e6
	ld a,b			;a8e8
	ret z			;a8e9
	ld a,(0d20ah)		;a8ea
	cp 002h		;a8ed
	ld a,b			;a8ef
	ret			;a8f0
L_A8F1:
	call L_A1AC		;a8f1
	ld hl,0a972h		;a8f4
	xor a			;a8f7
	jp 09609h		;a8f8
L_A8FB:
	call L_A29A		;a8fb
L_A8FE:
	call L_A2A5		;a8fe
	call L_A8BE		;a901
	call L_A7F9		;a904
	ld a,001h		;a907
	ld (0d1d8h),a		;a909
	jp L_A73B		;a90c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa90f..0xa98a  (123 bytes)
DATA_A90F:
	defb 017h,0a9h,029h,0a9h,0ceh,0d1h,002h,003h,07ah,050h,000h,07ah,098h,000h,07ah,0c8h	; a90f  ..).....zP.z..z.
	defb 000h,08ah,050h,000h,08ah,098h,000h,08ah,098h,000h,058h,07ah,061h,062h,063h,06ah	; a91f  ..P.......Xzabcj
	defb 064h,06bh,002h,000h,000h,005h,020h,008h,0c4h,000h,000h,022h,002h,0d1h,0feh,058h	; a92f  dk.... ...."...X
	defb 08ah,06ch,06dh,06bh,06eh,06fh,000h,000h,000h,000h,070h,06ah,06bh,002h,0ffh,000h	; a93f  .lmkno....pjk...
	defb 003h,004h,001h,002h,00ah,03ah,079h,058h,00ah,02ah,089h,058h,00ah,022h,089h,0a0h	; a94f  .....:yX.*.X."..
	defb 00ch,022h,077h,0a0h,010h,01ah,073h,0d0h,000h,000h,0ffh,0f2h,0dah,0f1h,0dah,0f0h	; a95f  ."w...s.........
	defb 0dah,0f6h,0dah,07ah,0a9h,080h,0a9h,0cdh,0d1h,000h,002h,0a8h,0beh,000h,0a8h,0d6h	; a96f  ...z............
	defb 000h,0c7h,0a8h,01ah,002h,000h,002h,002h,004h,0ffh,0ffh	; a97f  ...........

; ======================================================================
; CODIGO 0xa98a..0xa9ee  (100 bytes)
; ======================================================================


L_A98A:
	xor a			;a98a
	ld (0a989h),a		;a98b
	xor a			;a98e
	ld b,014h		;a98f
L_A991:
	push af			;a991
	push bc			;a992
	call L_A99C		;a993
	pop bc			;a996
	pop af			;a997
	inc a			;a998
	djnz L_A991		;a999
	ret			;a99b
L_A99C:
	ld hl,0a9eeh		;a99c
	add a,a			;a99f
	add a,a			;a9a0
	call 08221h		;a9a1
	ld e,(hl)			;a9a4
	inc hl			;a9a5
	ld d,(hl)			;a9a6
	inc hl			;a9a7
	ld c,(hl)			;a9a8
	inc hl			;a9a9
	ld b,(hl)			;a9aa
	ld l,c			;a9ab
	ld h,b			;a9ac
	ex de,hl			;a9ad
L_A9AE:
	ld a,(0a989h)		;a9ae
	cp 008h		;a9b1
	jr z,L_A9E2		;a9b3
	ld a,(hl)			;a9b5
	inc hl			;a9b6
	cp 0ffh		;a9b7
	jr z,L_A9E2		;a9b9
	cp 043h		;a9bb
	jr z,L_A9CE		;a9bd
	cp 044h		;a9bf
	jr z,L_A9CE		;a9c1
	call 0827eh		;a9c3
	call 082a8h		;a9c6
	call L_A9E7		;a9c9
	jr L_A9AE		;a9cc
L_A9CE:
	push af			;a9ce
	push hl			;a9cf
	push de			;a9d0
	ex af,af'			;a9d1
	ld a,e			;a9d2
	sub 008h		;a9d3
	ld e,a			;a9d5
	ex af,af'			;a9d6
	call 0827eh		;a9d7
	pop de			;a9da
	pop hl			;a9db
	pop af			;a9dc
	call L_A9E7		;a9dd
	jr L_A9AE		;a9e0
L_A9E2:
	xor a			;a9e2
	ld (0a989h),a		;a9e3
	ret			;a9e6
L_A9E7:
	push hl			;a9e7
	ld hl,0a989h		;a9e8
	inc (hl)			;a9eb
	pop hl			;a9ec
	ret			;a9ed

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa9ee..0xaa3e  (80 bytes)
DATA_A9EE:
	defb 000h,0d7h,018h,020h,030h,0d7h,028h,020h,060h,0d7h,038h,020h,090h,0d7h,048h,020h	; a9ee  ... 0.( `.8 ..H
	defb 0c0h,0d7h,058h,020h,0f0h,0d7h,018h,058h,020h,0d8h,028h,058h,050h,0d8h,038h,058h	; a9fe  ..X ...X .(XP.8X
	defb 080h,0d8h,048h,058h,0b0h,0d8h,058h,058h,0e0h,0d8h,018h,090h,010h,0d9h,028h,090h	; aa0e  ..HX..XX......(.
	defb 040h,0d9h,038h,090h,070h,0d9h,048h,090h,0a0h,0d9h,058h,090h,0d0h,0d9h,018h,0c8h	; aa1e  @.8.p.H...X.....
	defb 000h,0dah,028h,0c8h,030h,0dah,038h,0c8h,060h,0dah,048h,0c8h,090h,0dah,058h,0c8h	; aa2e  ..(.0.8.`.H...X.

; ======================================================================
; CODIGO 0xaa3e..0xaa52  (20 bytes)
; ======================================================================


L_AA3E:
	ld a,(0d22fh)		;aa3e
L_AA41:
	add a,a			;aa41
	add a,a			;aa42
	ld hl,0a9eeh		;aa43
	call 08221h		;aa46
	ld e,(hl)			;aa49
	inc hl			;aa4a
	ld d,(hl)			;aa4b
	inc hl			;aa4c
	ld a,(hl)			;aa4d
	inc hl			;aa4e
	ld h,(hl)			;aa4f
	ld l,a			;aa50
	ret			;aa51

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa52..0xaa54  (2 bytes)
DATA_AA52:
	defb 000h,000h	; aa52

; ======================================================================
; CODIGO 0xaa54..0xaa7e  (42 bytes)
; ======================================================================


L_AA54:
	ld hl,09203h		;aa54
	ld a,(0d22bh)		;aa57
	cp (hl)			;aa5a
	call nz,L_AAC1		;aa5b
	call L_AAD0		;aa5e
	ld a,(0d22bh)		;aa61
	ld de,0020dh		;aa64
L_AA67:
	push de			;aa67
	call L_AA72		;aa68
	pop de			;aa6b
	ld bc,00808h		;aa6c
	jp 0960fh		;aa6f
L_AA72:
	ld hl,0aa99h		;aa72
	add a,a			;aa75
	call 08221h		;aa76
	ld e,(hl)			;aa79
	inc hl			;aa7a
	ld d,(hl)			;aa7b
	ex de,hl			;aa7c
	ret			;aa7d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa7e..0xaac1  (67 bytes)
DATA_AA7E:
	defb 00eh,000h,006h,014h,0afh,011h,002h,00dh,0f5h,0c5h,0cbh,041h,020h,004h,021h,02bh	; aa7e  ...........A .!+
	defb 0d2h,0beh,0c4h,067h,0aah,0c1h,0f1h,03ch,010h,0ebh,0c9h,018h,010h,028h,010h,038h	; aa8e  ...g...<.....(.8
	defb 010h,048h,010h,058h,010h,018h,048h,028h,048h,038h,048h,048h,048h,058h,048h,018h	; aa9e  .H.X..H(H8HHHXH.
	defb 080h,028h,080h,038h,080h,048h,080h,058h,080h,018h,0b8h,028h,0b8h,038h,0b8h,048h	; aaae  .(.8.H.X...(.8.H
	defb 0b8h,058h,0b8h	; aabe

; ======================================================================
; CODIGO 0xaac1..0xad28  (615 bytes)
; ======================================================================


L_AAC1:
	push af			;aac1
	ld a,(09203h)		;aac2
	ld de,00d02h		;aac5
	call L_AA67		;aac8
	pop af			;aacb
	ld (09203h),a		;aacc
	ret			;aacf
L_AAD0:
	ld a,(0d22bh)		;aad0
	call L_ABEA		;aad3
	ld a,l			;aad6
	inc a			;aad7
	ld (0d280h),a		;aad8
	ld (0d284h),a		;aadb
	ld a,h			;aade
	ld (0d281h),a		;aadf
	add a,010h		;aae2
	ld (0d285h),a		;aae4
	ld a,010h		;aae7
	ld (0d282h),a		;aae9
	add a,004h		;aaec
	ld (0d286h),a		;aaee
	ld a,008h		;aaf1
	ld (0d283h),a		;aaf3
	ld (0d287h),a		;aaf6
	ret			;aaf9
L_AAFA:
	ld ix,0aa52h		;aafa
	push bc			;aafe
	call 08275h		;aaff
	pop bc			;ab02
	call L_AB0C		;ab03
	ld a,0ffh		;ab06
	ld (0d20ch),a		;ab08
	ret			;ab0b
L_AB0C:
	ld a,b			;ab0c
	ld (0aa52h),a		;ab0d
	ld a,c			;ab10
	ld (0aa53h),a		;ab11
	ld c,000h		;ab14
	ld a,(0d22bh)		;ab16
	inc a			;ab19
L_AB1A:
	sub (ix+000h)		;ab1a
	jr z,L_AB24		;ab1d
	jr c,L_AB24		;ab1f
	inc c			;ab21
	jr L_AB1A		;ab22
L_AB24:
	add a,(ix+000h)		;ab24
	dec a			;ab27
	ld (0d204h),a		;ab28
	ld a,c			;ab2b
	ld (0d205h),a		;ab2c
	ret			;ab2f
L_AB30:
	ld ix,0aa52h		;ab30
	ld a,(0d1c8h)		;ab34
	cp 010h		;ab37
	jp z,L_ABE5		;ab39
	ld c,a			;ab3c
	push bc			;ab3d
	call L_ABC5		;ab3e
	pop bc			;ab41
	ld a,c			;ab42
	cp 001h		;ab43
	jp z,L_AB85		;ab45
	cp 002h		;ab48
	jr nz,L_AB6E		;ab4a
	ld a,(0d204h)		;ab4c
	inc a			;ab4f
	ld (0d204h),a		;ab50
	cp (ix+000h)		;ab53
	call nc,L_AB70		;ab56
	ld hl,0d22bh		;ab59
	ld a,(hl)			;ab5c
	inc a			;ab5d
	ld (hl),a			;ab5e
	cp 014h		;ab5f
	jr c,L_AB6B		;ab61
	xor a			;ab63
	ld (hl),a			;ab64
	ld (0d204h),a		;ab65
	ld (0d205h),a		;ab68
L_AB6B:
	call 082eeh		;ab6b
L_AB6E:
	xor a			;ab6e
	ret			;ab6f
L_AB70:
	xor a			;ab70
	ld (0d204h),a		;ab71
	ld hl,0d205h		;ab74
	inc (hl)			;ab77
	ret			;ab78
L_AB79:
	ld a,(ix+000h)		;ab79
	dec a			;ab7c
	ld (0d204h),a		;ab7d
	ld hl,0d205h		;ab80
	dec (hl)			;ab83
	ret			;ab84
L_AB85:
	ld a,(0d204h)		;ab85
	sub 001h		;ab88
	ld (0d204h),a		;ab8a
	call c,L_AB79		;ab8d
	ld hl,0d22bh		;ab90
	ld a,(hl)			;ab93
	sub 001h		;ab94
	ld (hl),a			;ab96
	jr nc,L_ABAC		;ab97
	ld a,013h		;ab99
	ld (0d22bh),a		;ab9b
	ld a,(ix+000h)		;ab9e
	dec a			;aba1
	ld (0d204h),a		;aba2
	ld a,(ix+001h)		;aba5
	dec a			;aba8
	ld (0d205h),a		;aba9
L_ABAC:
	jp L_AB6B		;abac
L_ABAF:
	ld hl,0d22bh		;abaf
	ld a,(0d205h)		;abb2
	sub 001h		;abb5
	jp c,L_AB6E		;abb7
	ld (0d205h),a		;abba
	ld a,(hl)			;abbd
	sub (ix+000h)		;abbe
	ld (hl),a			;abc1
	jp L_AB6B		;abc2
L_ABC5:
	ld a,c			;abc5
	cp 004h		;abc6
	jr z,L_ABAF		;abc8
	cp 008h		;abca
	jp nz,L_AB6E		;abcc
	ld hl,0d22bh		;abcf
	ld a,(0d205h)		;abd2
	inc a			;abd5
	cp (ix+001h)		;abd6
	ret nc			;abd9
	ld (0d205h),a		;abda
	ld a,(hl)			;abdd
	add a,(ix+000h)		;abde
	ld (hl),a			;abe1
	jp L_AB6B		;abe2
L_ABE5:
	call 082f3h		;abe5
	scf			;abe8
	ret			;abe9
L_ABEA:
	call L_AA72		;abea
	ld a,h			;abed
	add a,010h		;abee
	ld h,a			;abf0
	ld a,l			;abf1
	sub 007h		;abf2
	ld l,a			;abf4
	ret			;abf5
L_ABF6:
	ld (0dd00h),hl		;abf6
	ld (0dd02h),de		;abf9
	ld a,h			;abfd
	add a,008h		;abfe
	ld h,a			;ac00
	ld a,(0dd03h)		;ac01
	sub 010h		;ac04
	ld b,a			;ac06
	ld a,(0dd02h)		;ac07
	ld c,a			;ac0a
	xor a			;ac0b
	ld d,000h		;ac0c
	call 0829fh		;ac0e
	ld hl,(0dd00h)		;ac11
	ld a,l			;ac14
	add a,008h		;ac15
	ld l,a			;ac17
	ld a,(0dd02h)		;ac18
	sub 010h		;ac1b
	ld c,a			;ac1d
	ld a,(0dd03h)		;ac1e
	ld b,a			;ac21
	xor a			;ac22
	ld d,000h		;ac23
	call 0829fh		;ac25
	ld de,(0dd00h)		;ac28
	ld a,0c9h		;ac2c
	call L_AD12		;ac2e
	call 082a8h		;ac31
	ex de,hl			;ac34
	ld a,(0dd03h)		;ac35
	sub 010h		;ac38
	ld b,a			;ac3a
	ld c,00eh		;ac3b
	call L_ACB9		;ac3d
	ld de,(0dd00h)		;ac40
	ld a,(0dd03h)		;ac44
	sub 008h		;ac47
	add a,d			;ac49
	ld d,a			;ac4a
	ld a,0cah		;ac4b
	call L_AD12		;ac4d
	ld hl,(0dd00h)		;ac50
	ld a,008h		;ac53
	add a,l			;ac55
	ld l,a			;ac56
	ld a,(0dd02h)		;ac57
	sub 010h		;ac5a
	ld b,a			;ac5c
	ld c,00eh		;ac5d
	call L_ACE5		;ac5f
	ld de,(0dd00h)		;ac62
	ld a,(0dd02h)		;ac66
	sub 008h		;ac69
	add a,e			;ac6b
	ld e,a			;ac6c
	ld a,0cbh		;ac6d
	call L_AD12		;ac6f
	ld hl,(0dd00h)		;ac72
	ld a,(0dd03h)		;ac75
	dec a			;ac78
	add a,h			;ac79
	ld h,a			;ac7a
	ld a,008h		;ac7b
	add a,l			;ac7d
	ld l,a			;ac7e
	ld a,(0dd02h)		;ac7f
	sub 010h		;ac82
	ld b,a			;ac84
	ld c,00eh		;ac85
	call L_ACE5		;ac87
	ld de,(0dd00h)		;ac8a
	ld a,(0dd02h)		;ac8e
	sub 008h		;ac91
	add a,e			;ac93
	ld e,a			;ac94
	ld a,(0dd03h)		;ac95
	sub 008h		;ac98
	add a,d			;ac9a
	ld d,a			;ac9b
	ld a,0cch		;ac9c
	call L_AD12		;ac9e
	ld hl,(0dd00h)		;aca1
	ld a,008h		;aca4
	add a,h			;aca6
	ld h,a			;aca7
	ld a,(0dd02h)		;aca8
	dec a			;acab
	add a,l			;acac
	ld l,a			;acad
	ld a,(0dd03h)		;acae
	sub 010h		;acb1
	ld b,a			;acb3
	ld c,00eh		;acb4
	jp L_ACB9		;acb6
L_ACB9:
	ld a,024h		;acb9
	ld (0d226h),a		;acbb
	call 08287h		;acbe
	out (c),h		;acc1
	xor a			;acc3
	out (c),a		;acc4
	out (c),l		;acc6
	out (c),a		;acc8
	ld hl,(0d227h)		;acca
	out (c),h		;accd
	xor a			;accf
	cp h			;acd0
	jr nz,L_ACD4		;acd1
	inc a			;acd3
L_ACD4:
	out (c),a		;acd4
	xor a			;acd6
	out (c),a		;acd7
	out (c),a		;acd9
	out (c),l		;acdb
	out (c),a		;acdd
	ld a,070h		;acdf
	out (c),a		;ace1
	ei			;ace3
	ret			;ace4
L_ACE5:
	ld a,024h		;ace5
	ld (0d226h),a		;ace7
	call 08287h		;acea
	out (c),h		;aced
	xor a			;acef
	out (c),a		;acf0
	out (c),l		;acf2
	out (c),a		;acf4
	ld hl,(0d227h)		;acf6
	out (c),h		;acf9
	xor a			;acfb
	cp h			;acfc
	jr nz,L_AD00		;acfd
	inc a			;acff
L_AD00:
	out (c),a		;ad00
	xor a			;ad02
	out (c),a		;ad03
	out (c),a		;ad05
	out (c),l		;ad07
	inc a			;ad09
	out (c),a		;ad0a
	ld a,070h		;ad0c
	out (c),a		;ad0e
	ei			;ad10
	ret			;ad11
L_AD12:
	push bc			;ad12
	push hl			;ad13
	push de			;ad14
	call 08281h		;ad15
	ld a,l			;ad18
	add a,080h		;ad19
	ld l,a			;ad1b
	ld bc,00808h		;ad1c
	ld a,048h		;ad1f
	call 0820ch		;ad21
	pop de			;ad24
	pop hl			;ad25
	pop bc			;ad26
	ret			;ad27

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad28..0xad2a  (2 bytes)
DATA_AD28:
	defb 000h,000h	; ad28

; ======================================================================
; CODIGO 0xad2a..0xad48  (30 bytes)
; ======================================================================


L_AD2A:
	call L_AD54		;ad2a
	ld hl,0d267h		;ad2d
	ld de,0d268h		;ad30
	ld (hl),000h		;ad33
	ld bc,00005h		;ad35
	ldir		;ad38
	call L_AD8E		;ad3a
	ld hl,0d1d8h		;ad3d
	inc (hl)			;ad40
	ret			;ad41
L_AD42:
	ld a,(0ad28h)		;ad42
	call 0822dh		;ad45

; ----------------------------------------------------------------------
; DATOS saltos_AD48: 6 destinos del despachador (call 0x822D en 0xAD45) (11
;   bytes)
;   0xad48..0xad53  (11 bytes)
DATA_saltos_AD48:
	defw 0adbeh,0ae4ah,0ae83h,0aee5h,0af45h	; ad48
	defb 08ch	; ad52

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad53..0xad54  (1 bytes)
DATA_AD53:
	defb 0afh	; ad53

; ======================================================================
; CODIGO 0xad54..0xadb6  (98 bytes)
; ======================================================================


L_AD54:
	ld a,0ffh		;ad54
	ld (0ad28h),a		;ad56
L_AD59:
	ld hl,0ad28h		;ad59
	inc (hl)			;ad5c
	or a			;ad5d
	ret			;ad5e
L_AD5F:
	ld (0ad29h),a		;ad5f
	or a			;ad62
	ret			;ad63
L_AD64:
	ld hl,0ad29h		;ad64
	dec (hl)			;ad67
	ret			;ad68
L_AD69:
	ld hl,0d2a0h		;ad69
	ld de,07090h		;ad6c
	ld a,004h		;ad6f
	ld (0d26ch),a		;ad71
	ld a,090h		;ad74
	call L_AEB8		;ad76
	ld hl,0d2a4h		;ad79
	ld de,07090h		;ad7c
	ld a,01ah		;ad7f
	ld (0d26ch),a		;ad81
	ld a,094h		;ad84
	call L_AEB8		;ad86
	ld a,005h		;ad89
	call L_AD5F		;ad8b
L_AD8E:
	ld hl,0adb6h		;ad8e
	ld a,(0d22ah)		;ad91
	ld b,a			;ad94
	call 08221h		;ad95
	ld a,(hl)			;ad98
	ld (0d267h),a		;ad99
	ld a,b			;ad9c
	ld hl,0adbah		;ad9d
	call 08221h		;ada0
	ld a,(hl)			;ada3
	ld (0d268h),a		;ada4
	ld hl,0d269h		;ada7
	ld a,b			;adaa
	cp 002h		;adab
	jr c,L_ADB2		;adad
	ld (hl),001h		;adaf
	ret			;adb1
L_ADB2:
	or a			;adb2
	ld (hl),000h		;adb3
	ret			;adb5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xadb6..0xadbe  (8 bytes)
DATA_ADB6:
	defb 01ah,00ah,006h,016h,0fch,0fch,004h,004h	; adb6  ........

; ======================================================================
; CODIGO 0xadbe..0xae44  (134 bytes)
; ======================================================================


L_ADBE:
	ld a,(0d1c8h)		;adbe
	cp 010h		;adc1
	jr z,L_AE20		;adc3
	or a			;adc5
	call L_AD64		;adc6
	ret nz			;adc9
	ld a,(0d267h)		;adca
	and 001h		;adcd
	call z,083ach		;adcf
	ld hl,0ae44h		;add2
	ld a,(0d269h)		;add5
	and a			;add8
	jr z,L_ADDD		;add9
	ld a,003h		;addb
L_ADDD:
	call 08221h		;addd
	ld a,(0d267h)		;ade0
	and 001h		;ade3
	call 08221h		;ade5
	ld a,(hl)			;ade8
	cp 0ffh		;ade9
	jr nz,L_ADF0		;adeb
	dec hl			;aded
	dec hl			;adee
	ld a,(hl)			;adef
L_ADF0:
	ld (0d26bh),a		;adf0
	ld ix,0d2a0h		;adf3
	ld a,004h		;adf7
	call L_AE2C		;adf9
	ld ix,0d2a4h		;adfc
	ld a,(0d26bh)		;ae00
	add a,004h		;ae03
	ld (0d26bh),a		;ae05
	ld a,01ah		;ae08
	call L_AE2C		;ae0a
	ld a,005h		;ae0d
	call L_AD5F		;ae0f
	or a			;ae12
	ld hl,0d267h		;ae13
	dec (hl)			;ae16
	ret nz			;ae17
	ld a,008h		;ae18
	call L_AD5F		;ae1a
	jp L_AD59		;ae1d
L_AE20:
	ld a,008h		;ae20
	call L_AD5F		;ae22
	ld a,004h		;ae25
	ld (0ad28h),a		;ae27
	or a			;ae2a
	ret			;ae2b
L_AE2C:
	ld (0d26ch),a		;ae2c
	ld hl,0d268h		;ae2f
	ld b,(hl)			;ae32
	ld e,(ix+000h)		;ae33
	ld a,(ix+001h)		;ae36
	add a,b			;ae39
	ld d,a			;ae3a
	ld a,(0d26bh)		;ae3b
	push ix		;ae3e
	pop hl			;ae40
	jp L_AEB8		;ae41

; ----------------------------------------------------------------------
; DATOS sin identificar  0xae44..0xae4a  (6 bytes)
DATA_AE44:
	defb 0e0h,0c0h,0ffh,070h,050h,0ffh	; ae44

; ======================================================================
; CODIGO 0xae4a..0xaf27  (221 bytes)
; ======================================================================


L_AE4A:
	or a			;ae4a
	call L_AD64		;ae4b
	ret nz			;ae4e
	call 083ach		;ae4f
	ld ix,0d2a0h		;ae52
	ld e,(ix+000h)		;ae56
	ld d,(ix+001h)		;ae59
	call L_AF33		;ae5c
	push ix		;ae5f
	pop hl			;ae61
	push de			;ae62
	ld a,004h		;ae63
	ld (0d26ch),a		;ae65
	ld a,090h		;ae68
	call L_AEB8		;ae6a
	ld hl,0d2a4h		;ae6d
	pop de			;ae70
	ld a,01ah		;ae71
	ld (0d26ch),a		;ae73
	ld a,094h		;ae76
	call L_AEB8		;ae78
	ld a,020h		;ae7b
	call L_AD5F		;ae7d
	jp L_AD59		;ae80
L_AE83:
	or a			;ae83
	call L_AD64		;ae84
	ret nz			;ae87
	call 083b6h		;ae88
	ld hl,0d2aah		;ae8b
	ld bc,0b004h		;ae8e
	call L_AEB1		;ae91
	ld bc,0b41ah		;ae94
	call L_AEB1		;ae97
	ld hl,0d2bah		;ae9a
	ld bc,0b804h		;ae9d
	call L_AEB1		;aea0
	ld bc,0bc1ah		;aea3
	call L_AEB1		;aea6
	ld a,02ah		;aea9
	call L_AD5F		;aeab
	jp L_AD59		;aeae
L_AEB1:
	ld (hl),b			;aeb1
	inc hl			;aeb2
	ld (hl),c			;aeb3
	inc hl			;aeb4
	inc hl			;aeb5
	inc hl			;aeb6
	ret			;aeb7
L_AEB8:
	push af			;aeb8
	ld a,010h		;aeb9
	add a,d			;aebb
	ld b,a			;aebc
	ld a,010h		;aebd
	add a,e			;aebf
	ld c,a			;aec0
	pop af			;aec1
	push bc			;aec2
	push de			;aec3
	call L_AED1		;aec4
	ld d,b			;aec7
	call L_AED1		;aec8
	pop de			;aecb
	ld e,c			;aecc
	call L_AED1		;aecd
	pop de			;aed0
L_AED1:
	ld (hl),e			;aed1
	inc hl			;aed2
	ld (hl),d			;aed3
	inc hl			;aed4
	ld (hl),a			;aed5
	inc hl			;aed6
	push af			;aed7
	ld a,(0d26ch)		;aed8
	ld (hl),a			;aedb
	pop af			;aedc
	inc hl			;aedd
	inc hl			;aede
	inc hl			;aedf
	inc hl			;aee0
	inc hl			;aee1
	add a,008h		;aee2
	ret			;aee4
L_AEE5:
	call L_AEFC		;aee5
	ld a,(0d22ah)		;aee8
	call L_A14A		;aeeb
	call L_AD64		;aeee
	ld a,(hl)			;aef1
	or a			;aef2
	ret nz			;aef3
	call L_AF33		;aef4
	call L_AD54		;aef7
	scf			;aefa
	ret			;aefb
L_AEFC:
	ld a,(0d22ah)		;aefc
	ld hl,0af27h		;aeff
	call 08221h		;af02
	ld d,(hl)			;af05
	ld e,088h		;af06
	ld hl,0af2bh		;af08
L_AF0B:
	ld c,002h		;af0b
	xor a			;af0d
	jp 08218h		;af0e
L_AF11:
	ld hl,0af27h		;af11
	ld b,004h		;af14
L_AF16:
	push hl			;af16
	push bc			;af17
	ld d,(hl)			;af18
	ld e,088h		;af19
	ld hl,0af2fh		;af1b
	call L_AF0B		;af1e
	pop bc			;af21
	pop hl			;af22
	inc hl			;af23
	djnz L_AF16		;af24
	ret			;af26

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaf27..0xaf2b  (4 bytes)
DATA_AF27:
	defb 018h,058h,098h,0d8h	; af27

; ----------------------------------------------------------------------
; DATOS casillas_AF2B: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0xAF0E (4 bytes)
;   0xaf2b..0xaf2f  (4 bytes)
DATA_casillas_AF2B:
	defb 080h,004h,0e1h,000h	; af2b

; ----------------------------------------------------------------------
; DATOS casillas_AF2F: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0xAF0E (4 bytes)
;   0xaf2f..0xaf33  (4 bytes)
DATA_casillas_AF2F:
	defb 080h,004h,0e5h,000h	; af2f

; ======================================================================
; CODIGO 0xaf33..0xafb9  (134 bytes)
; ======================================================================


L_AF33:
	ld hl,0d2a0h		;af33
	ld b,010h		;af36
L_AF38:
	xor a			;af38
	ld (hl),0e0h		;af39
	inc hl			;af3b
	ld (hl),a			;af3c
	inc hl			;af3d
	ld (hl),a			;af3e
	inc hl			;af3f
	ld (hl),a			;af40
	inc hl			;af41
	djnz L_AF38		;af42
	ret			;af44
L_AF45:
	or a			;af45
	call L_AD64		;af46
	ret nz			;af49
	ld ix,0d2a0h		;af4a
	ld e,(ix+000h)		;af4e
	ld d,(ix+001h)		;af51
	call L_AF33		;af54
	push ix		;af57
	pop hl			;af59
	ld a,040h		;af5a
	call L_AF82		;af5c
	ld a,d			;af5f
	add a,010h		;af60
	ld d,a			;af62
	ld a,044h		;af63
	call L_AF82		;af65
	ld a,e			;af68
	add a,010h		;af69
	ld e,a			;af6b
	ld a,04ch		;af6c
	call L_AF82		;af6e
	ld a,d			;af71
	sub 010h		;af72
	ld d,a			;af74
	ld a,048h		;af75
	call L_AF82		;af77
	ld a,008h		;af7a
	call L_AD5F		;af7c
	jp L_AD59		;af7f
L_AF82:
	ld (hl),e			;af82
	inc hl			;af83
	ld (hl),d			;af84
	inc hl			;af85
	ld (hl),a			;af86
	inc hl			;af87
	ld (hl),00eh		;af88
	inc hl			;af8a
	ret			;af8b
L_AF8C:
	or a			;af8c
	call L_AD64		;af8d
	ret nz			;af90
	call L_AF33		;af91
	ld a,(0d22ah)		;af94
	ld hl,0af27h		;af97
	call 08221h		;af9a
	ld a,(hl)			;af9d
	sub 010h		;af9e
	ld d,a			;afa0
	ld e,090h		;afa1
	ld ix,0d2a0h		;afa3
	ld (ix+000h),e		;afa7
	ld (ix+001h),d		;afaa
	ld a,008h		;afad
	call L_AD5F		;afaf
	ld a,001h		;afb2
	ld (0ad28h),a		;afb4
	or a			;afb7
	ret			;afb8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xafb9..0xafbf  (6 bytes)
DATA_AFB9:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; afb9

; ======================================================================
; CODIGO 0xafbf..0xb088  (201 bytes)
; ======================================================================


L_AFBF:
	ld a,(ix+000h)		;afbf
	dec a			;afc2
	ret m			;afc3
	push af			;afc4
	call z,L_AFD3		;afc5
	pop af			;afc8
	call nz,L_B048		;afc9
	ld bc,00004h		;afcc
	add ix,bc		;afcf
	jr L_AFBF		;afd1
L_AFD3:
	ld a,(ix+001h)		;afd3
	or a			;afd6
	ret z			;afd7
	call L_AFFE		;afd8
	call L_B01D		;afdb
	call L_AFE4		;afde
	call L_B029		;afe1
L_AFE4:
	ld hl,0d300h		;afe4
	ld de,0d32fh		;afe7
	ld b,010h		;afea
	call L_AFF7		;afec
	ld hl,0d310h		;afef
	ld de,0d33fh		;aff2
	ld b,010h		;aff5
L_AFF7:
	ld a,(hl)			;aff7
	ld (de),a			;aff8
	inc hl			;aff9
	dec de			;affa
	djnz L_AFF7		;affb
	ret			;affd
L_AFFE:
	ld (0afb9h),a		;affe
	ld l,(ix+002h)		;b001
	ld h,000h		;b004
	add hl,hl			;b006
	add hl,hl			;b007
	add hl,hl			;b008
	ld bc,0f800h		;b009
	add hl,bc			;b00c
	ld (0afbbh),hl		;b00d
	ld l,(ix+003h)		;b010
	ld h,000h		;b013
	add hl,hl			;b015
	add hl,hl			;b016
	add hl,hl			;b017
	add hl,bc			;b018
	ld (0afbdh),hl		;b019
	ret			;b01c
L_B01D:
	ld hl,(0afbbh)		;b01d
	ld de,0d300h		;b020
	ld bc,00020h		;b023
	jp 08266h		;b026
L_B029:
	ld de,(0afbdh)		;b029
	ld hl,0d320h		;b02d
	ld bc,00020h		;b030
	call 08224h		;b033
	ld bc,00020h		;b036
	ld hl,(0afbbh)		;b039
	add hl,bc			;b03c
	ld (0afbbh),hl		;b03d
	ld hl,(0afbdh)		;b040
	add hl,bc			;b043
	ld (0afbdh),hl		;b044
	ret			;b047
L_B048:
	ld a,(ix+001h)		;b048
	or a			;b04b
	ret z			;b04c
	call L_AFFE		;b04d
L_B050:
	call L_B01D		;b050
	call L_B060		;b053
	call L_B029		;b056
	ld hl,0afb9h		;b059
	dec (hl)			;b05c
	jr nz,L_B050		;b05d
	ret			;b05f
L_B060:
	ld hl,0d300h		;b060
	ld de,0d330h		;b063
	ld b,010h		;b066
	call L_B073		;b068
	ld hl,0d310h		;b06b
	ld de,0d320h		;b06e
	ld b,010h		;b071
L_B073:
	ld a,(hl)			;b073
	call L_B07D		;b074
	ld (de),a			;b077
	inc hl			;b078
	inc de			;b079
	djnz L_B073		;b07a
	ret			;b07c
L_B07D:
	push bc			;b07d
	ld c,a			;b07e
	ld b,008h		;b07f
L_B081:
	rr c		;b081
	rla			;b083
	djnz L_B081		;b084
	pop bc			;b086
	ret			;b087

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb088..0xb200  (376 bytes)
DATA_B088:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b088  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b098  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b0a8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b0b8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b0c8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b0d8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b0e8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h,000h,000h,000h,000h	; b0f8  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b108  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b118  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b128  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b138  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b148  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b158  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b168  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b178  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b188  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b198  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b1a8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b1b8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b1c8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b1d8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b1e8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b1f8  ........
