; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p25 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l9820h:	equ 0x09820
l9828h:	equ 0x09828

; ======================================================================
; CODIGO 0x9800..0x98fb  (251 bytes)
; ======================================================================


L_9800:
	jp L_9812		;9800
L_9803:
	jp L_9833		;9803
L_9806:
	jp L_983C		;9806
L_9809:
	jp L_A0C3		;9809
L_980C:
	jp L_9E10		;980c
L_980F:
	jp L_98C6		;980f
L_9812:
	push bc			;9812
	ld a,c			;9813
	add a,048h		;9814
	cp 002h		;9816
	jr nc,L_9831		;9818
	pop bc			;981a
	ex af,af'			;981b
	ld a,e			;981c
	sub 008h		;981d
	ld e,a			;981f
L_9820:
	ex af,af'			;9820
	ld b,044h		;9821
	push af			;9823
	ld a,b			;9824
	call 0827eh		;9825
L_9828:
	ld a,e			;9828
	add a,008h		;9829
	ld e,a			;982b
	pop af			;982c
	add a,0b8h		;982d
	ld c,a			;982f
	ret			;9830
L_9831:
	pop bc			;9831
	ret			;9832
L_9833:
	ld hl,l9828h		;9833
	ld (09ae6h),hl		;9836
	jp L_9ABC		;9839
L_983C:
	ld a,001h		;983c
	call 09209h		;983e
	call L_9850		;9841
	ld hl,0ca03h		;9844
	ld de,0181ah		;9847
	ld bc,00a07h		;984a
	jp L_9DDA		;984d
L_9850:
	ld a,(0d209h)		;9850
	cp 003h		;9853
	jp c,083a7h		;9855
	cp 03dh		;9858
	jp z,083a7h		;985a
	ld a,(0d1e6h)		;985d
	call 0822dh		;9860
	rst 30h			;9863
	add a,e			;9864
	ld bc,0fc84h		;9865
	add a,e			;9868
L_9869:
	ld a,(0d1d7h)		;9869
	cp 005h		;986c
	ret z			;986e
	call 08251h		;986f
	call 0826fh		;9872
	ld hl,l9820h		;9875
	ld bc,04050h		;9878
	call 082b4h		;987b
	ld hl,09028h		;987e
	ld bc,05040h		;9881
	call 082b7h		;9884
	call L_98AF		;9887
	ld bc,06878h		;988a
	ld hl,01010h		;988d
	ld de,00000h		;9890
	ld a,030h		;9893
	call 0820ch		;9895
	ld hl,01010h		;9898
	ld de,06878h		;989b
	jp L_A175		;989e
L_98A1:
	ld bc,0684ah		;98a1
	ld de,00866h		;98a4
	ld hl,05028h		;98a7
	ld a,080h		;98aa
	jp 0820ch		;98ac
L_98AF:
	call L_98A1		;98af
	ld bc,04858h		;98b2
	ld de,00808h		;98b5
	ld hl,0b800h		;98b8
	ld a,0c0h		;98bb
	jp 0820ch		;98bd
L_98C0:
	ld hl,0993eh		;98c0
	jp L_98FD		;98c3
L_98C6:
	call L_9B7D		;98c6
	call L_9869		;98c9
	call L_98C0		;98cc
	ld a,(0d1d7h)		;98cf
	cp 005h		;98d2
	ret z			;98d4
	ld hl,0ca00h		;98d5
	ld de,0d1e6h		;98d8
	ld bc,00003h		;98db
	ldir		;98de
	ld hl,0b600h		;98e0
	ld (0d212h),hl		;98e3
	ld hl,0c000h		;98e6
	ld (0d214h),hl		;98e9
	xor a			;98ec
	ld (0d216h),a		;98ed
	call L_99F9		;98f0
	ld a,001h		;98f3
	ld (0d216h),a		;98f5
	jp L_99F9		;98f8

; ----------------------------------------------------------------------
; DATOS leido_98FB: lo usa el codigo: 0x990E ld (098fbh),hl -> 0x8215 (leer
;   sectores); 0x9921 ld hl,(098fbh) (2 bytes)
;   0x98fb..0x98fd  (2 bytes)
DATA_leido_98FB:
	defb 0ffh,0ffh	; 98fb

; ======================================================================
; CODIGO 0x98fd..0x993e  (65 bytes)
; ======================================================================


L_98FD:
	push hl			;98fd
	ld a,(0d209h)		;98fe
	ld l,a			;9901
	ld h,000h		;9902
	ld e,l			;9904
	ld d,h			;9905
	add hl,hl			;9906
	add hl,de			;9907
	pop de			;9908
	add hl,de			;9909
	ld c,(hl)			;990a
	inc hl			;990b
	ld b,(hl)			;990c
	inc hl			;990d
	ld (098fbh),hl		;990e
	ld de,0d300h		;9911
	ld hl,00200h		;9914
	call 08215h		;9917
	jr c,L_98FD		;991a
	ld a,0ffh		;991c
	ld (0e0fdh),a		;991e
	ld hl,(098fbh)		;9921
	ld b,(hl)			;9924
	dec b			;9925
	ld de,0d300h		;9926
	jr z,L_9932		;9929
L_992B:
	ld a,(de)			;992b
	inc de			;992c
	inc a			;992d
	jr nz,L_992B		;992e
	djnz L_992B		;9930
L_9932:
	ld hl,0ca00h		;9932
L_9935:
	ld a,(de)			;9935
	cp 0ffh		;9936
	ld (hl),a			;9938
	ret z			;9939
	inc de			;993a
	inc hl			;993b
	jr L_9935		;993c

; ----------------------------------------------------------------------
; DATOS leido_993E: lo usa el codigo: 0x98C0 ld hl,0993eh; 0x9A06 ld
;   (099f8h),a (en +186); 0x9A38 ld a,(099f8h) (en +186) (187 bytes)
;   0x993e..0x99f9  (187 bytes)
DATA_leido_993E:
	defb 026h,001h,001h,026h,001h,002h,026h,001h,003h,026h,001h,004h,026h,001h,005h,026h	; 993e  &..&..&..&..&..&
	defb 001h,006h,026h,001h,007h,026h,001h,008h,026h,001h,009h,026h,001h,00ah,026h,001h	; 994e  ..&..&..&..&..&.
	defb 00bh,026h,001h,00ch,026h,001h,00dh,026h,001h,00eh,026h,001h,00fh,026h,001h,010h	; 995e  .&..&..&..&..&..
	defb 024h,001h,001h,024h,001h,002h,024h,001h,003h,024h,001h,004h,024h,001h,005h,024h	; 996e  $..$..$..$..$..$
	defb 001h,006h,024h,001h,007h,024h,001h,008h,024h,001h,009h,024h,001h,00ah,024h,001h	; 997e  ..$..$..$..$..$.
	defb 00bh,024h,001h,00ch,024h,001h,00dh,024h,001h,00eh,022h,001h,001h,022h,001h,002h	; 998e  .$..$..$..".."..
	defb 022h,001h,003h,022h,001h,004h,022h,001h,005h,022h,001h,006h,022h,001h,007h,022h	; 999e  ".."..".."..".."
	defb 001h,008h,020h,001h,001h,020h,001h,002h,020h,001h,003h,020h,001h,004h,020h,001h	; 99ae  .. .. .. .. .. .
	defb 005h,020h,001h,006h,020h,001h,007h,020h,001h,008h,020h,001h,009h,020h,001h,00ah	; 99be  . .. .. .. .. ..
	defb 020h,001h,00bh,020h,001h,00ch,020h,001h,00dh,020h,001h,00eh,020h,001h,00fh,01eh	; 99ce   .. .. .. .. ...
	defb 001h,001h,01eh,001h,002h,01eh,001h,003h,01eh,001h,004h,01eh,001h,005h,01eh,001h	; 99de  ................
	defb 006h,01eh,001h,007h,01eh,001h,008h,01eh,001h,009h,0ffh	; 99ee  ...........

; ======================================================================
; CODIGO 0x99f9..0x9aef  (246 bytes)
; ======================================================================


L_99F9:
	ld hl,0d1e7h		;99f9
	ld a,(0d216h)		;99fc
	or a			;99ff
	jr z,L_9A05		;9a00
	ld hl,0d1e8h		;9a02
L_9A05:
	ld a,(hl)			;9a05
	ld (099f8h),a		;9a06
	cp 080h		;9a09
	ret z			;9a0b
	ld hl,09b26h		;9a0c
	add a,a			;9a0f
	call 08221h		;9a10
	ld c,(hl)			;9a13
	inc hl			;9a14
	ld b,(hl)			;9a15
	call L_9AAC		;9a16
	ld hl,00500h		;9a19
	call 08215h		;9a1c
	jr c,L_99F9		;9a1f
	ld a,0ffh		;9a21
	ld (0e0fdh),a		;9a23
	ld a,(0d1d6h)		;9a26
	ld b,a			;9a29
	dec a			;9a2a
	ret z			;9a2b
	ld a,b			;9a2c
	or a			;9a2d
	jr z,L_9A92		;9a2e
	ld de,078e8h		;9a30
	call L_9A9C		;9a33
	ld b,000h		;9a36
L_9A38:
	ld a,(099f8h)		;9a38
	cp 007h		;9a3b
	jr c,L_9A40		;9a3d
	inc b			;9a3f
L_9A40:
	ld a,b			;9a40
	push hl			;9a41
	ld hl,09afah		;9a42
	call 0826ch		;9a45
	push hl			;9a48
	pop ix		;9a49
	pop hl			;9a4b
	ld de,00043h		;9a4c
	add hl,de			;9a4f
	ld b,(ix+000h)		;9a50
	inc ix		;9a53
L_9A55:
	push bc			;9a55
	push hl			;9a56
	call L_9A63		;9a57
	pop hl			;9a5a
	pop bc			;9a5b
	inc ix		;9a5c
	inc ix		;9a5e
	djnz L_9A55		;9a60
	ret			;9a62
L_9A63:
	ld d,(ix+000h)		;9a63
	ld e,(ix+001h)		;9a66
	ld bc,008e0h		;9a69
L_9A6C:
	push bc			;9a6c
	ld a,(hl)			;9a6d
	rra			;9a6e
	rra			;9a6f
	rra			;9a70
	rra			;9a71
	and 00fh		;9a72
	cp d			;9a74
	jr nz,L_9A78		;9a75
	ld a,e			;9a77
L_9A78:
	rla			;9a78
	rla			;9a79
	rla			;9a7a
	rla			;9a7b
	and 0f0h		;9a7c
	ld c,a			;9a7e
	ld a,(hl)			;9a7f
	and 00fh		;9a80
	cp d			;9a82
	jr nz,L_9A86		;9a83
	ld a,e			;9a85
L_9A86:
	and 00fh		;9a86
	or c			;9a88
	ld (hl),a			;9a89
	inc hl			;9a8a
	pop bc			;9a8b
	dec bc			;9a8c
	ld a,b			;9a8d
	or c			;9a8e
	jr nz,L_9A6C		;9a8f
	ret			;9a91
L_9A92:
	ld de,040e0h		;9a92
	call L_9A9C		;9a95
	ld b,002h		;9a98
	jr L_9A38		;9a9a
L_9A9C:
	push de			;9a9c
	call L_9AAC		;9a9d
	ex de,hl			;9aa0
	pop de			;9aa1
	push hl			;9aa2
	ld a,(hl)			;9aa3
	add a,e			;9aa4
	ld (hl),a			;9aa5
	inc hl			;9aa6
	ld a,(hl)			;9aa7
	add a,d			;9aa8
	ld (hl),a			;9aa9
	pop hl			;9aaa
	ret			;9aab
L_9AAC:
	ld hl,0d212h		;9aac
	ld a,(0d216h)		;9aaf
	or a			;9ab2
	jr z,L_9AB8		;9ab3
	ld hl,0d214h		;9ab5
L_9AB8:
	ld e,(hl)			;9ab8
	inc hl			;9ab9
	ld d,(hl)			;9aba
	ret			;9abb
L_9ABC:
	xor a			;9abc
	ld (0dcf3h),a		;9abd
	ld hl,0d212h		;9ac0
	ld a,(0d216h)		;9ac3
	or a			;9ac6
	jr z,L_9ACC		;9ac7
	ld hl,0d214h		;9ac9
L_9ACC:
	ld e,(hl)			;9acc
	inc hl			;9acd
	ld d,(hl)			;9ace
	ex de,hl			;9acf
	ld de,0dcb0h		;9ad0
	ld bc,00043h		;9ad3
	ldir		;9ad6
	ld (09af3h),hl		;9ad8
	ld ix,09aefh		;9adb
	call 09212h		;9adf
	ld hl,09af6h		;9ae2
	ld de,02040h		;9ae5
	ld c,008h		;9ae8
	ld a,001h		;9aea
	jp 08218h		;9aec

; ----------------------------------------------------------------------
; DATOS leido_9AEF: lo usa el codigo: 0x9ADB ld ix,09aefh; 0x9AD8 ld
;   (09af3h),hl (en +4) (7 bytes)
;   0x9aef..0x9af6  (7 bytes)
DATA_leido_9AEF:
	defb 020h,047h,004h,0a0h,000h,000h,080h	; 9aef

; ----------------------------------------------------------------------
; DATOS casillas_9AF6: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9AEC (4 bytes)
;   0x9af6..0x9afa  (4 bytes)
DATA_casillas_9AF6:
	defb 080h,040h,001h,000h	; 9af6

; ----------------------------------------------------------------------
; DATOS leido_9AFA: lo usa el codigo: 0x9A42 ld hl,09afah -> 0x826C (tabla de
;   palabras: la de A); 0x9A0C ld hl,09b26h -> 0x8221 (tabla de bytes: HL + A)
;   (en +44); 0x9B95 ld hl,09b44h (en +74); 0x9BA3 ld hl,09b44h (en +74) (131
;   bytes)
;   0x9afa..0x9b7d  (131 bytes)
DATA_leido_9AFA:
	defb 002h,09bh,00bh,09bh,014h,09bh,01dh,09bh,004h,00ah,007h,004h,008h,005h,004h,006h	; 9afa  ................
	defb 00fh,004h,004h,00fh,006h,004h,007h,003h,00bh,00ah,004h,004h,007h,006h,004h,00ah	; 9b0a  ................
	defb 00dh,005h,003h,004h,00bh,00ah,007h,003h,004h,007h,006h,004h,02ah,002h,02fh,002h	; 9b1a  ............*./.
	defb 034h,002h,039h,002h,03eh,002h,043h,002h,048h,002h,04dh,002h,052h,002h,057h,002h	; 9b2a  4.9.>.C.H.M.R.W.
	defb 05ch,002h,061h,002h,066h,002h,06bh,002h,070h,002h,000h,000h,000h,000h,000h,000h	; 9b3a  \.a.f.k.p.......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9b4a  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9b5a  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9b6a  ................
	defb 000h,000h,000h	; 9b7a

; ======================================================================
; CODIGO 0x9b7d..0x9bda  (93 bytes)
; ======================================================================


L_9B7D:
	call L_9B8F		;9b7d
	call L_9BA3		;9b80
	call L_9BE0		;9b83
	call L_9D64		;9b86
	call L_9D72		;9b89
	jp L_9D8B		;9b8c
L_9B8F:
	ld hl,00000h		;9b8f
	ld (09b7bh),hl		;9b92
	ld hl,09b44h		;9b95
	ld de,09b45h		;9b98
	ld bc,00036h		;9b9b
	ld (hl),0ffh		;9b9e
	ldir		;9ba0
	ret			;9ba2
L_9BA3:
	ld hl,09b44h		;9ba3
	ld de,0921bh		;9ba6
	ld bc,00600h		;9ba9
L_9BAC:
	ld a,(de)			;9bac
	call L_9BCB		;9bad
	ld (hl),a			;9bb0
	inc hl			;9bb1
	inc c			;9bb2
	inc de			;9bb3
	djnz L_9BAC		;9bb4
	ld hl,09b4ah		;9bb6
	ld de,09222h		;9bb9
	ld bc,00c2ah		;9bbc
L_9BBF:
	ld a,(de)			;9bbf
	or a			;9bc0
	jr z,L_9BC6		;9bc1
	ld a,c			;9bc3
	ld (hl),a			;9bc4
	inc hl			;9bc5
L_9BC6:
	inc de			;9bc6
	inc c			;9bc7
	djnz L_9BBF		;9bc8
	ret			;9bca
L_9BCB:
	push hl			;9bcb
	push bc			;9bcc
	ld b,a			;9bcd
	ld a,c			;9bce
	ld hl,09bdah		;9bcf
	call 08221h		;9bd2
	ld a,(hl)			;9bd5
	add a,b			;9bd6
	pop bc			;9bd7
	pop hl			;9bd8
	ret			;9bd9

; ----------------------------------------------------------------------
; DATOS leido_9BDA: lo usa el codigo: 0x9BCF ld hl,09bdah -> 0x8221 (tabla de
;   bytes: HL + A) (6 bytes)
;   0x9bda..0x9be0  (6 bytes)
DATA_leido_9BDA:
	defb 000h,004h,00ch,015h,020h,028h	; 9bda

; ======================================================================
; CODIGO 0x9be0..0x9c0c  (44 bytes)
; ======================================================================


L_9BE0:
	ld a,(0d217h)		;9be0
	ld hl,09c0ch		;9be3
	call 0826ch		;9be6
	ld de,09b44h		;9be9
	ld b,012h		;9bec
L_9BEE:
	push de			;9bee
	push hl			;9bef
	push bc			;9bf0
	call L_9C03		;9bf1
	ld c,a			;9bf4
	ld a,012h		;9bf5
	call 08206h		;9bf7
	ld a,c			;9bfa
	ld (de),a			;9bfb
	pop bc			;9bfc
	pop hl			;9bfd
	pop de			;9bfe
	inc de			;9bff
	djnz L_9BEE		;9c00
	ret			;9c02
L_9C03:
	ld a,(de)			;9c03
	cp 0ffh		;9c04
	ret z			;9c06
	call 08221h		;9c07
	ld a,(hl)			;9c0a
	ret			;9c0b

; ----------------------------------------------------------------------
; DATOS leido_9C0C: lo usa el codigo: 0x9BE3 ld hl,09c0ch -> 0x826C (tabla de
;   palabras: la de A) (344 bytes)
;   0x9c0c..0x9d64  (344 bytes)
DATA_leido_9C0C:
	defb 01ah,09ch,051h,09ch,088h,09ch,0bfh,09ch,0bfh,09ch,0f6h,09ch,02dh,09dh,003h,005h	; 9c0c  ..Q.........-...
	defb 006h,0ffh,0ffh,0ffh,0ffh,01bh,01bh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9c1c  ................
	defb 0ffh,0ffh,0ffh,007h,008h,009h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9c2c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,031h,032h,033h,0ffh,0ffh,0ffh,0ffh	; 9c3c  .........123....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9c4c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,014h,014h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9c5c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9c6c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,037h,0ffh,039h,0ffh,0ffh,03ch,0ffh,0ffh,0ffh,0ffh	; 9c7c  ......7.9..<....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9c8c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,01eh,020h,022h,024h	; 9c9c  ............. "$
	defb 026h,028h,02ah,02ch,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9cac  &(*,............
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,019h,0ffh,0ffh,0ffh,0ffh,01ch,01ch,01ch,0ffh	; 9cbc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9ccc  ................
	defb 00eh,00fh,010h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9cdc  ................
	defb 0ffh,034h,035h,036h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,017h,01ah	; 9cec  .456............
	defb 030h,0ffh,0ffh,0ffh,0ffh,0ffh,011h,011h,011h,012h,013h,0ffh,0ffh,0ffh,0ffh,0ffh	; 9cfc  0...............
	defb 0ffh,0ffh,0ffh,00bh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,01dh,01fh,021h,023h,025h,027h	; 9d0c  ............!#%'
	defb 029h,02bh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,038h,0ffh,03ah,0ffh	; 9d1c  )+..........8.:.
	defb 0ffh,004h,0ffh,0ffh,0ffh,018h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9d2c  ................
	defb 0ffh,0ffh,0ffh,0ffh,015h,016h,0ffh,0ffh,0ffh,00ah,0ffh,00ch,00dh,00dh,0ffh,0ffh	; 9d3c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9d4c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,03bh,0ffh	; 9d5c  ........

; ======================================================================
; CODIGO 0x9d64..0x9dc2  (94 bytes)
; ======================================================================


L_9D64:
	ld hl,0d218h		;9d64
	xor a			;9d67
	ld b,008h		;9d68
L_9D6A:
	add a,(hl)			;9d6a
	inc hl			;9d6b
	djnz L_9D6A		;9d6c
	ld (09b7bh),a		;9d6e
	ret			;9d71
L_9D72:
	ld hl,09b56h		;9d72
	ld de,09b69h		;9d75
	ld bc,01200h		;9d78
L_9D7B:
	ld a,(hl)			;9d7b
	cp 0ffh		;9d7c
	jr z,L_9D83		;9d7e
	ld (de),a			;9d80
	inc c			;9d81
	inc de			;9d82
L_9D83:
	inc hl			;9d83
	djnz L_9D7B		;9d84
	ld a,c			;9d86
	ld (09b68h),a		;9d87
	ret			;9d8a
L_9D8B:
	ld a,(09b68h)		;9d8b
	or a			;9d8e
	jr z,L_9DB6		;9d8f
	dec a			;9d91
	jr z,L_9DA8		;9d92
	ld a,(09b7bh)		;9d94
	ld hl,09b68h		;9d97
	ld b,a			;9d9a
L_9D9B:
	ld a,(09b7ch)		;9d9b
	inc a			;9d9e
	cp (hl)			;9d9f
	jr c,L_9DA3		;9da0
	xor a			;9da2
L_9DA3:
	ld (09b7ch),a		;9da3
	djnz L_9D9B		;9da6
L_9DA8:
	ld a,(09b7ch)		;9da8
	ld hl,09b69h		;9dab
	call 08221h		;9dae
	ld a,(hl)			;9db1
L_9DB2:
	ld (0d209h),a		;9db2
	ret			;9db5
L_9DB6:
	ld a,(0d217h)		;9db6
	ld hl,09dc2h		;9db9
	call 08221h		;9dbc
	ld a,(hl)			;9dbf
	jr L_9DB2		;9dc0

; ----------------------------------------------------------------------
; DATOS leido_9DC2: lo usa el codigo: 0x9DB9 ld hl,09dc2h -> 0x8221 (tabla de
;   bytes: HL + A); 0x9DDB ld (09dc9h),a (en +7); 0x9EA2 ld (09dc9h),a (en
;   +7); 0x9DDE ld (09dcah),a (en +8) (24 bytes)
;   0x9dc2..0x9dda  (24 bytes)
DATA_leido_9DC2:
	defb 001h,000h,000h,03dh,000h,000h,002h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9dc2  ...=............
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9dd2  ........

; ======================================================================
; CODIGO 0x9dda..0xa0f1  (791 bytes)
; ======================================================================


L_9DDA:
	ld a,b			;9dda
	ld (09dc9h),a		;9ddb
	ld (09dcah),a		;9dde
	ld a,c			;9de1
	ld (09dcbh),a		;9de2
	ld (09dcch),de		;9de5
	ld (09dceh),de		;9de9
	call L_9E08		;9ded
	xor a			;9df0
	ld (09dd0h),a		;9df1
	ld (0d1c6h),a		;9df4
	ld (09dd1h),a		;9df7
	ld (09dd2h),a		;9dfa
	ld (09dd7h),a		;9dfd
	inc a			;9e00
	ld (0d1c7h),a		;9e01
	ld (0dcf4h),a		;9e04
	ret			;9e07
L_9E08:
	ld (09dd3h),hl		;9e08
	ld (09dd5h),de		;9e0b
	ret			;9e0f
L_9E10:
	ld a,(0d1c6h)		;9e10
	or a			;9e13
	jp nz,L_9EDA		;9e14
	ld a,(09dd2h)		;9e17
	or a			;9e1a
	jp nz,L_9FAB		;9e1b
	call L_A08D		;9e1e
	ld a,(0d1c3h)		;9e21
	and 003h		;9e24
	ret nz			;9e26
	ld a,(0d1c7h)		;9e27
	or a			;9e2a
	ret z			;9e2b
	ld a,(09dd7h)		;9e2c
	or a			;9e2f
	jp nz,L_9F22		;9e30
	ld de,(09dd5h)		;9e33
	ld hl,(09dd3h)		;9e37
	ld a,(hl)			;9e3a
	inc hl			;9e3b
	call L_9E92		;9e3c
	cp 0ffh		;9e3f
	jp z,L_9F09		;9e41
	cp 0feh		;9e44
	jr z,L_9E9C		;9e46
	cp 0fdh		;9e48
	jp z,L_9EFD		;9e4a
	cp 0fch		;9e4d
	jp z,L_9F13		;9e4f
	cp 0fbh		;9e52
	jp z,L_9EEF		;9e54
L_9E57:
	cp 0ffh		;9e57
	jr nz,L_9E5C		;9e59
	xor a			;9e5b
L_9E5C:
	cp 043h		;9e5c
	call z,L_A06B		;9e5e
	cp 044h		;9e61
	call z,L_A06B		;9e63
	ld c,a			;9e66
	ld a,(0d1ffh)		;9e67
	or a			;9e6a
	jr nz,L_9E7F		;9e6b
	call L_9800		;9e6d
	ld a,c			;9e70
	add a,042h		;9e71
	cp 019h		;9e73
	call c,L_A019		;9e75
	sub 019h		;9e78
	cp 024h		;9e7a
	call c,L_A046		;9e7c
L_9E7F:
	push hl			;9e7f
	push bc			;9e80
	pop bc			;9e81
	pop hl			;9e82
	ld a,c			;9e83
	call 0827eh		;9e84
	ld a,001h		;9e87
	ld (0dcf5h),a		;9e89
	call 082a8h		;9e8c
	jp L_9E08		;9e8f
L_9E92:
	push hl			;9e92
	push af			;9e93
	ld a,(hl)			;9e94
	inc a			;9e95
	ld (0dcf4h),a		;9e96
	pop af			;9e99
	pop hl			;9e9a
	ret			;9e9b
L_9E9C:
	ld (09dd3h),hl		;9e9c
	ld a,(09dcah)		;9e9f
	ld (09dc9h),a		;9ea2
	ld a,(09dd1h)		;9ea5
	and a			;9ea8
	jp nz,L_9F99		;9ea9
	ld hl,(09dcch)		;9eac
	ld a,l			;9eaf
	add a,010h		;9eb0
	ld l,a			;9eb2
	ld (09dcch),hl		;9eb3
	ld (09dd5h),hl		;9eb6
L_9EB9:
	ld a,(09dd0h)		;9eb9
	inc a			;9ebc
	ld (09dd0h),a		;9ebd
	ld hl,09dcbh		;9ec0
	cp (hl)			;9ec3
	ret c			;9ec4
	ld a,(09dd1h)		;9ec5
	or a			;9ec8
	call z,L_9F99		;9ec9
	ld a,0ffh		;9ecc
	ld (09dd0h),a		;9ece
	inc a			;9ed1
	inc a			;9ed2
	ld (09dd1h),a		;9ed3
	ld (0d1c6h),a		;9ed6
	ret			;9ed9
L_9EDA:
	xor a			;9eda
	ld (0dcf5h),a		;9edb
	call L_9F66		;9ede
	call L_A07B		;9ee1
	ret z			;9ee4
	call L_9FA5		;9ee5
	xor a			;9ee8
	ld (0d1c6h),a		;9ee9
	jp L_9F73		;9eec
L_9EEF:
	ld (09dd3h),hl		;9eef
	ld a,(0d216h)		;9ef2
	xor 001h		;9ef5
	ld (0d216h),a		;9ef7
	jp L_9803		;9efa
L_9EFD:
	ld (09dd3h),hl		;9efd
	ld a,(0d1ffh)		;9f00
	xor 001h		;9f03
	ld (0d1ffh),a		;9f05
	ret			;9f08
L_9F09:
	ld a,0ffh		;9f09
	ld (09dd0h),a		;9f0b
	xor a			;9f0e
	ld (0d1c7h),a		;9f0f
	ret			;9f12
L_9F13:
	ld a,004h		;9f13
	ld (09dd7h),a		;9f15
	ld (09dd8h),hl		;9f18
	ld hl,0d218h		;9f1b
	ld (09dd3h),hl		;9f1e
	ret			;9f21
L_9F22:
	ld de,(09dd5h)		;9f22
	ld hl,(09dd3h)		;9f26
	ld a,(hl)			;9f29
	inc hl			;9f2a
	call L_9E57		;9f2b
	ld hl,(09dd5h)		;9f2e
	ld a,h			;9f31
	sub 008h		;9f32
	ld h,a			;9f34
	ld a,l			;9f35
	sub 008h		;9f36
	ld l,a			;9f38
	ld a,(0d1d6h)		;9f39
	cp 003h		;9f3c
	jr z,L_9F57		;9f3e
	ld e,004h		;9f40
	ld a,(0d1d6h)		;9f42
	dec a			;9f45
	jr z,L_9F4D		;9f46
	ld e,009h		;9f48
	dec a			;9f4a
	jr z,L_9F4D		;9f4b
L_9F4D:
	ld e,009h		;9f4d
	ld d,00eh		;9f4f
	ld bc,00810h		;9f51
	call L_A0F7		;9f54
L_9F57:
	ld a,(09dd7h)		;9f57
	dec a			;9f5a
	ld (09dd7h),a		;9f5b
	ret nz			;9f5e
	ld hl,(09dd8h)		;9f5f
	ld (09dd3h),hl		;9f62
	ret			;9f65
L_9F66:
	ld a,(0d1c3h)		;9f66
	and 00fh		;9f69
	bit 3,a		;9f6b
	ld a,000h		;9f6d
	jr z,L_9F73		;9f6f
	ld a,050h		;9f71
L_9F73:
	push af			;9f73
	ld a,(09dcbh)		;9f74
	dec a			;9f77
	ld l,a			;9f78
	ld h,000h		;9f79
	add hl,hl			;9f7b
	call L_9F95		;9f7c
	ex de,hl			;9f7f
	ld a,(09dcah)		;9f80
	ld l,a			;9f83
	ld h,000h		;9f84
	call L_9F95		;9f86
	ld h,l			;9f89
	ld l,e			;9f8a
	ld de,(09dceh)		;9f8b
	add hl,de			;9f8f
	pop af			;9f90
	ex de,hl			;9f91
	jp 0827eh		;9f92
L_9F95:
	add hl,hl			;9f95
	add hl,hl			;9f96
	add hl,hl			;9f97
	ret			;9f98
L_9F99:
	ld a,(09dcbh)		;9f99
	dec a			;9f9c
	ld b,a			;9f9d
	ld a,(09dd0h)		;9f9e
	cp b			;9fa1
	jp z,L_9EB9		;9fa2
L_9FA5:
	ld a,010h		;9fa5
	ld (09dd2h),a		;9fa7
	ret			;9faa
L_9FAB:
	xor a			;9fab
	ld (0dcf5h),a		;9fac
	ld de,(09dceh)		;9faf
	ld a,e			;9fb3
	sub 007h		;9fb4
	ld e,a			;9fb6
	ex de,hl			;9fb7
	ld de,(09dceh)		;9fb8
	ld a,e			;9fbc
	sub 008h		;9fbd
	ld e,a			;9fbf
	ld a,(09dcbh)		;9fc0
	call L_A014		;9fc3
	dec a			;9fc6
	ld c,a			;9fc7
	ld a,(09dcah)		;9fc8
	call L_A015		;9fcb
	ld b,a			;9fce
	xor a			;9fcf
	call 08284h		;9fd0
	ld de,(09dceh)		;9fd3
	ld a,e			;9fd7
	sub 008h		;9fd8
	ld e,a			;9fda
	ld a,(09dcbh)		;9fdb
	call L_A014		;9fde
	dec a			;9fe1
	add a,e			;9fe2
	ld e,a			;9fe3
	ex de,hl			;9fe4
	ld a,(09dcah)		;9fe5
	call L_A015		;9fe8
	ld b,a			;9feb
	ld c,001h		;9fec
	xor a			;9fee
	ld d,a			;9fef
	call 0829fh		;9ff0
	ld a,(09dd2h)		;9ff3
	dec a			;9ff6
	or a			;9ff7
	ld (09dd2h),a		;9ff8
	ret nz			;9ffb
	ld de,(09dceh)		;9ffc
	ld a,(09dcbh)		;a000
	dec a			;a003
	call L_A014		;a004
	add a,e			;a007
	ld e,a			;a008
	ld (09dcch),de		;a009
	ld (09dd5h),de		;a00d
	jp L_9EB9		;a011
L_A014:
	add a,a			;a014
L_A015:
	add a,a			;a015
	add a,a			;a016
	add a,a			;a017
	ret			;a018
L_A019:
	push af			;a019
	push de			;a01a
	push hl			;a01b
	push bc			;a01c
	call L_A026		;a01d
	pop bc			;a020
	pop hl			;a021
	pop de			;a022
	ld c,a			;a023
	pop af			;a024
	ret			;a025
L_A026:
	ex af,af'			;a026
	ld a,e			;a027
	sub 008h		;a028
	ld e,a			;a02a
	ex af,af'			;a02b
	ld b,043h		;a02c
	cp 014h		;a02e
	jr c,L_A034		;a030
	ld b,044h		;a032
L_A034:
	push af			;a034
	ld a,b			;a035
	call 0827eh		;a036
	ld a,e			;a039
	add a,008h		;a03a
	ld e,a			;a03c
	pop af			;a03d
	ld hl,0919fh		;a03e
	call 08221h		;a041
	ld a,(hl)			;a044
	ret			;a045
L_A046:
	push hl			;a046
	push bc			;a047
	call L_A04F		;a048
	pop bc			;a04b
	pop hl			;a04c
	ld c,a			;a04d
	ret			;a04e
L_A04F:
	cp 015h		;a04f
	jr c,L_A05A		;a051
	push af			;a053
	add a,0f3h		;a054
	call L_A026		;a056
	pop af			;a059
L_A05A:
	ld hl,091b8h		;a05a
	add a,a			;a05d
	call 08221h		;a05e
	ld a,(hl)			;a061
	call 0827eh		;a062
	call 082a8h		;a065
	inc hl			;a068
	ld a,(hl)			;a069
	ret			;a06a
L_A06B:
	push de			;a06b
	push hl			;a06c
	ex af,af'			;a06d
	ld a,e			;a06e
	sub 008h		;a06f
	ld e,a			;a071
	ex af,af'			;a072
	call 0827eh		;a073
	pop hl			;a076
	pop de			;a077
	ld a,(hl)			;a078
	inc hl			;a079
	ret			;a07a
L_A07B:
	ld a,(0d1c8h)		;a07b
	ld b,a			;a07e
	and 010h		;a07f
	jr nz,L_A087		;a081
	ld a,b			;a083
	and 040h		;a084
	ret z			;a086
L_A087:
	call 0833eh		;a087
	or 0ffh		;a08a
	ret			;a08c
L_A08D:
	ld a,(0d1d6h)		;a08d
	cp 002h		;a090
	jr nz,L_A09A		;a092
	ld a,(0d1d7h)		;a094
	cp 004h		;a097
	ret z			;a099
L_A09A:
	ld a,(0d1d6h)		;a09a
	cp 003h		;a09d
	ret z			;a09f
	ld hl,0d1e7h		;a0a0
	ld a,(0d216h)		;a0a3
	or a			;a0a6
	jr z,L_A0AC		;a0a7
	ld hl,0d1e8h		;a0a9
L_A0AC:
	ld a,(hl)			;a0ac
	ld hl,08320h		;a0ad
	cp 007h		;a0b0
	jr c,L_A0C2		;a0b2
	ld hl,08339h		;a0b4
	cp 00eh		;a0b7
	jr z,L_A0C2		;a0b9
	cp 00bh		;a0bb
	jr z,L_A0C2		;a0bd
	ld hl,0831bh		;a0bf
L_A0C2:
	jp (hl)			;a0c2
L_A0C3:
	ld a,(0dcf4h)		;a0c3
	or a			;a0c6
	jr z,L_A0D3		;a0c7
	ld a,(0dcf5h)		;a0c9
	or a			;a0cc
	ret z			;a0cd
	ld a,(0dcf3h)		;a0ce
	xor 001h		;a0d1
L_A0D3:
	ld (0dcf3h),a		;a0d3
	ld hl,0dcb3h		;a0d6
	or a			;a0d9
	jr z,L_A0DF		;a0da
	ld hl,0dcd3h		;a0dc
L_A0DF:
	ld de,(0dcb0h)		;a0df
	ld a,(0dcb2h)		;a0e3
	ld c,a			;a0e6
	ld a,001h		;a0e7
	call 08218h		;a0e9
	xor a			;a0ec
	ld (0dcf5h),a		;a0ed
	ret			;a0f0

; ----------------------------------------------------------------------
; DATOS leido_A0F1: lo usa el codigo: 0xA0FF ld (0a0f1h),bc; 0xA111 ld
;   a,(0a0f2h) -> 0x8266 (copia de la VRAM) (en +1); 0xA124 ld a,(0a0f2h) ->
;   0x8224 (copia a la VRAM) (en +1); 0xA103 ld (0a0f3h),hl (en +2) (6 bytes)
;   0xa0f1..0xa0f7  (6 bytes)
DATA_leido_A0F1:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a0f1

; ======================================================================
; CODIGO 0xa0f7..0xa2a7  (432 bytes)
; ======================================================================


L_A0F7:
	srl b		;a0f7
	ex de,hl			;a0f9
	push hl			;a0fa
	call L_A169		;a0fb
	pop de			;a0fe
	ld (0a0f1h),bc		;a0ff
	ld (0a0f3h),hl		;a103
	ld (0a0f5h),de		;a106
L_A10A:
	push bc			;a10a
	ld hl,(0a0f3h)		;a10b
	ld de,0d300h		;a10e
	ld a,(0a0f2h)		;a111
	ld c,a			;a114
	ld b,000h		;a115
	call 08266h		;a117
	call L_A13D		;a11a
	ld de,(0a0f3h)		;a11d
	ld hl,0d300h		;a121
	ld a,(0a0f2h)		;a124
	ld c,a			;a127
	ld b,000h		;a128
	call 08224h		;a12a
	ld hl,(0a0f3h)		;a12d
	ld a,080h		;a130
	call 08221h		;a132
	ld (0a0f3h),hl		;a135
	pop bc			;a138
	dec c			;a139
	jr nz,L_A10A		;a13a
	ret			;a13c
L_A13D:
	ld hl,0d300h		;a13d
	ld de,(0a0f5h)		;a140
	ld a,(0a0f2h)		;a144
	ld b,a			;a147
L_A148:
	ld a,(hl)			;a148
	rra			;a149
	rra			;a14a
	rra			;a14b
	rra			;a14c
	and 00fh		;a14d
	cp d			;a14f
	jr nz,L_A153		;a150
	ld a,e			;a152
L_A153:
	rla			;a153
	rla			;a154
	rla			;a155
	rla			;a156
	and 0f0h		;a157
	ld c,a			;a159
	ld a,(hl)			;a15a
	and 00fh		;a15b
	cp d			;a15d
	jr nz,L_A161		;a15e
	ld a,e			;a160
L_A161:
	and 00fh		;a161
	or c			;a163
	ld (hl),a			;a164
	inc hl			;a165
	djnz L_A148		;a166
	ret			;a168
L_A169:
	srl e		;a169
	rr d		;a16b
	ld h,e			;a16d
	ld l,d			;a16e
	ld de,(0d223h)		;a16f
	add hl,de			;a173
	ret			;a174
L_A175:
	ld (0dd00h),hl		;a175
	ld (0dd02h),de		;a178
	ld a,h			;a17c
	add a,008h		;a17d
	ld h,a			;a17f
	ld a,(0dd03h)		;a180
	sub 010h		;a183
	ld b,a			;a185
	ld a,(0dd02h)		;a186
	ld c,a			;a189
	xor a			;a18a
	ld d,000h		;a18b
	call 0829fh		;a18d
	ld hl,(0dd00h)		;a190
	ld a,l			;a193
	add a,008h		;a194
	ld l,a			;a196
	ld a,(0dd02h)		;a197
	sub 010h		;a19a
	ld c,a			;a19c
	ld a,(0dd03h)		;a19d
	ld b,a			;a1a0
	xor a			;a1a1
	ld d,000h		;a1a2
	call 0829fh		;a1a4
	ld de,(0dd00h)		;a1a7
	ld a,0c9h		;a1ab
	call L_A291		;a1ad
	call 082a8h		;a1b0
	ex de,hl			;a1b3
	ld a,(0dd03h)		;a1b4
	sub 010h		;a1b7
	ld b,a			;a1b9
	ld c,00eh		;a1ba
	call L_A238		;a1bc
	ld de,(0dd00h)		;a1bf
	ld a,(0dd03h)		;a1c3
	sub 008h		;a1c6
	add a,d			;a1c8
	ld d,a			;a1c9
	ld a,0cah		;a1ca
	call L_A291		;a1cc
	ld hl,(0dd00h)		;a1cf
	ld a,008h		;a1d2
	add a,l			;a1d4
	ld l,a			;a1d5
	ld a,(0dd02h)		;a1d6
	sub 010h		;a1d9
	ld b,a			;a1db
	ld c,00eh		;a1dc
	call L_A264		;a1de
	ld de,(0dd00h)		;a1e1
	ld a,(0dd02h)		;a1e5
	sub 008h		;a1e8
	add a,e			;a1ea
	ld e,a			;a1eb
	ld a,0cbh		;a1ec
	call L_A291		;a1ee
	ld hl,(0dd00h)		;a1f1
	ld a,(0dd03h)		;a1f4
	dec a			;a1f7
	add a,h			;a1f8
	ld h,a			;a1f9
	ld a,008h		;a1fa
	add a,l			;a1fc
	ld l,a			;a1fd
	ld a,(0dd02h)		;a1fe
	sub 010h		;a201
	ld b,a			;a203
	ld c,00eh		;a204
	call L_A264		;a206
	ld de,(0dd00h)		;a209
	ld a,(0dd02h)		;a20d
	sub 008h		;a210
	add a,e			;a212
	ld e,a			;a213
	ld a,(0dd03h)		;a214
	sub 008h		;a217
	add a,d			;a219
	ld d,a			;a21a
	ld a,0cch		;a21b
	call L_A291		;a21d
	ld hl,(0dd00h)		;a220
	ld a,008h		;a223
	add a,h			;a225
	ld h,a			;a226
	ld a,(0dd02h)		;a227
	dec a			;a22a
	add a,l			;a22b
	ld l,a			;a22c
	ld a,(0dd03h)		;a22d
	sub 010h		;a230
	ld b,a			;a232
	ld c,00eh		;a233
	jp L_A238		;a235
L_A238:
	ld a,024h		;a238
	ld (0d226h),a		;a23a
	call 08287h		;a23d
	out (c),h		;a240
	xor a			;a242
	out (c),a		;a243
	out (c),l		;a245
	out (c),a		;a247
	ld hl,(0d227h)		;a249
	out (c),h		;a24c
	xor a			;a24e
	cp h			;a24f
	jr nz,L_A253		;a250
	inc a			;a252
L_A253:
	out (c),a		;a253
	xor a			;a255
	out (c),a		;a256
	out (c),a		;a258
	out (c),l		;a25a
	out (c),a		;a25c
	ld a,070h		;a25e
	out (c),a		;a260
	ei			;a262
	ret			;a263
L_A264:
	ld a,024h		;a264
	ld (0d226h),a		;a266
	call 08287h		;a269
	out (c),h		;a26c
	xor a			;a26e
	out (c),a		;a26f
	out (c),l		;a271
	out (c),a		;a273
	ld hl,(0d227h)		;a275
	out (c),h		;a278
	xor a			;a27a
	cp h			;a27b
	jr nz,L_A27F		;a27c
	inc a			;a27e
L_A27F:
	out (c),a		;a27f
	xor a			;a281
	out (c),a		;a282
	out (c),a		;a284
	out (c),l		;a286
	inc a			;a288
	out (c),a		;a289
	ld a,070h		;a28b
	out (c),a		;a28d
	ei			;a28f
	ret			;a290
L_A291:
	push bc			;a291
	push hl			;a292
	push de			;a293
	call 08281h		;a294
	ld a,l			;a297
	add a,080h		;a298
	ld l,a			;a29a
	ld bc,00808h		;a29b
	ld a,048h		;a29e
	call 0820ch		;a2a0
	pop de			;a2a3
	pop hl			;a2a4
	pop bc			;a2a5
	ret			;a2a6

; ----------------------------------------------------------------------
; DATOS relleno_A2A7: solo 0x00/0xFF (89 x 0xFF, 128 x 0x00, 128 x 0xFF);
;   nadie lo lee (345 bytes)
;   0xa2a7..0xa400  (345 bytes)
DATA_relleno_A2A7:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a2a7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a2b7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a2c7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a2d7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a2e7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h,000h,000h,000h	; a2f7  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a307  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a317  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a327  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a337  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a347  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a357  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a367  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a377  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a387  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a397  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3a7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3b7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3c7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3d7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3e7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3f7  .........
