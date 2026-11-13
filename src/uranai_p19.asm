; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p19 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x98b3  (179 bytes)
; ======================================================================


L_9800:
	jp L_9841		;9800
L_9803:
	jp L_9867		;9803
L_9806:
	jp L_9864		;9806
L_9809:
	jp L_981E		;9809
L_980C:
	jp L_982C		;980c
L_980F:
	jp L_99F9		;980f
L_9812:
	jp L_9832		;9812
L_9815:
	jp L_9F80		;9815
L_9818:
	jp L_9CCD		;9818
L_981B:
	jp L_987E		;981b
L_981E:
	ld a,(0d1d7h)		;981e
	cp 008h		;9821
	ret z			;9823
	ld a,003h		;9824
	call 09209h		;9826
	jp 08251h		;9829
L_982C:
	ld hl,098f6h		;982c
	jp L_98B5		;982f
L_9832:
	call L_9870		;9832
	ld hl,0ca03h		;9835
	ld de,05070h		;9838
	ld bc,00c03h		;983b
	jp L_9C97		;983e
L_9841:
	push bc			;9841
	ld a,c			;9842
	add a,045h		;9843
	cp 003h		;9845
	jr nc,L_9865		;9847
	pop bc			;9849
	ex af,af'			;984a
	ld a,e			;984b
	sub 008h		;984c
	ld e,a			;984e
	ex af,af'			;984f
	ld b,043h		;9850
	or a			;9852
	jr z,L_9857		;9853
	ld b,044h		;9855
L_9857:
	push af			;9857
	ld a,b			;9858
	call 0827eh		;9859
	ld a,e			;985c
	add a,008h		;985d
	ld e,a			;985f
	pop af			;9860
	add a,0bbh		;9861
	ld c,a			;9863
L_9864:
	ret			;9864
L_9865:
	pop bc			;9865
	ret			;9866
L_9867:
	ld hl,06020h		;9867
	ld (09ae6h),hl		;986a
	jp L_9ABC		;986d
L_9870:
	ld a,(0d1e6h)		;9870
	call 0822dh		;9873
	rst 30h			;9876
	add a,e			;9877
	ld bc,0fc84h		;9878
	add a,e			;987b
	and a			;987c
	add a,e			;987d
L_987E:
	call L_9B44		;987e
	call L_981E		;9881
	call L_982C		;9884
	ld a,(0d1d7h)		;9887
	cp 008h		;988a
	ret z			;988c
	ld hl,0ca00h		;988d
	ld de,0d1e6h		;9890
	ld bc,00003h		;9893
	ldir		;9896
	ld hl,0b600h		;9898
	ld (0d212h),hl		;989b
	ld hl,0c000h		;989e
	ld (0d214h),hl		;98a1
	xor a			;98a4
	ld (0d216h),a		;98a5
	call L_99F9		;98a8
	ld a,001h		;98ab
	ld (0d216h),a		;98ad
	jp L_99F9		;98b0

; ----------------------------------------------------------------------
; DATOS leido_98B3: lo usa el codigo: 0x98C6 ld (098b3h),hl -> 0x8215 (leer
;   sectores); 0x98D9 ld hl,(098b3h) (2 bytes)
;   0x98b3..0x98b5  (2 bytes)
DATA_leido_98B3:
	defb 023h,098h	; 98b3

; ======================================================================
; CODIGO 0x98b5..0x98f6  (65 bytes)
; ======================================================================


L_98B5:
	push hl			;98b5
	ld a,(0d209h)		;98b6
	ld l,a			;98b9
	ld h,000h		;98ba
	ld e,l			;98bc
	ld d,h			;98bd
	add hl,hl			;98be
	add hl,de			;98bf
	pop de			;98c0
	add hl,de			;98c1
	ld c,(hl)			;98c2
	inc hl			;98c3
	ld b,(hl)			;98c4
	inc hl			;98c5
	ld (098b3h),hl		;98c6
	ld de,0d300h		;98c9
	ld hl,00200h		;98cc
	call 08215h		;98cf
	jr c,L_98B5		;98d2
	ld a,0ffh		;98d4
	ld (0e0fdh),a		;98d6
	ld hl,(098b3h)		;98d9
	ld b,(hl)			;98dc
	dec b			;98dd
	ld de,0d300h		;98de
	jr z,L_98EA		;98e1
L_98E3:
	ld a,(de)			;98e3
	inc de			;98e4
	inc a			;98e5
	jr nz,L_98E3		;98e6
	djnz L_98E3		;98e8
L_98EA:
	ld hl,0ca00h		;98ea
L_98ED:
	ld a,(de)			;98ed
	cp 0ffh		;98ee
	ld (hl),a			;98f0
	ret z			;98f1
	inc de			;98f2
	inc hl			;98f3
	jr L_98ED		;98f4

; ----------------------------------------------------------------------
; DATOS leido_98F6: lo usa el codigo: 0x982C ld hl,098f6h; 0x9A06 ld
;   (099f8h),a (en +258); 0x9A38 ld a,(099f8h) (en +258) (259 bytes)
;   0x98f6..0x99f9  (259 bytes)
DATA_leido_98F6:
	defb 028h,002h,001h,028h,002h,002h,028h,002h,003h,028h,002h,004h,026h,002h,001h,026h	; 98f6  (..(..(..(..&..&
	defb 002h,002h,026h,002h,003h,026h,002h,004h,024h,002h,001h,024h,002h,002h,024h,002h	; 9906  ..&..&..$..$..$.
	defb 003h,024h,002h,004h,022h,002h,001h,022h,002h,002h,022h,002h,003h,022h,002h,004h	; 9916  .$..".."..".."..
	defb 020h,002h,001h,020h,002h,002h,020h,002h,003h,020h,002h,004h,01eh,002h,001h,01eh	; 9926   .. .. .. ......
	defb 002h,002h,01eh,002h,003h,01eh,002h,004h,01ch,002h,001h,01ch,002h,002h,01ch,002h	; 9936  ................
	defb 003h,01ch,002h,004h,01ah,002h,001h,01ah,002h,002h,01ah,002h,003h,01ah,002h,004h	; 9946  ................
	defb 018h,002h,001h,018h,002h,002h,018h,002h,003h,018h,002h,004h,016h,002h,001h,016h	; 9956  ................
	defb 002h,002h,016h,002h,003h,016h,002h,004h,014h,002h,001h,014h,002h,002h,012h,002h	; 9966  ................
	defb 001h,012h,002h,002h,010h,002h,001h,010h,002h,002h,0fbh,000h,001h,0fbh,000h,002h	; 9976  ................
	defb 00eh,002h,001h,00eh,002h,002h,00eh,002h,003h,00eh,002h,004h,00ch,002h,001h,00ch	; 9986  ................
	defb 002h,002h,00ch,002h,003h,00ch,002h,004h,00ah,002h,001h,00ah,002h,002h,00ah,002h	; 9996  ................
	defb 003h,00ah,002h,004h,008h,002h,001h,008h,002h,002h,008h,002h,003h,008h,002h,004h	; 99a6  ................
	defb 006h,002h,001h,006h,002h,002h,006h,002h,003h,006h,002h,004h,004h,002h,001h,004h	; 99b6  ................
	defb 002h,002h,004h,002h,003h,004h,002h,004h,002h,002h,001h,002h,002h,002h,002h,002h	; 99c6  ................
	defb 003h,002h,002h,004h,000h,002h,001h,000h,002h,002h,000h,002h,003h,000h,002h,004h	; 99d6  ................
	defb 000h,002h,005h,0feh,001h,001h,0feh,001h,002h,0feh,001h,003h,0feh,001h,004h,0feh	; 99e6  ................
	defb 001h,005h,01ah	; 99f6

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
;   (en +44) (74 bytes)
;   0x9afa..0x9b44  (74 bytes)
DATA_leido_9AFA:
	defb 002h,09bh,00bh,09bh,014h,09bh,01dh,09bh,004h,00ah,007h,004h,008h,005h,004h,006h	; 9afa  ................
	defb 00fh,004h,004h,00fh,006h,004h,007h,003h,00bh,00ah,004h,004h,007h,006h,004h,00ah	; 9b0a  ................
	defb 00dh,005h,003h,004h,00bh,00ah,007h,003h,004h,007h,006h,004h,02ah,002h,02fh,002h	; 9b1a  ............*./.
	defb 034h,002h,039h,002h,03eh,002h,043h,002h,048h,002h,04dh,002h,052h,002h,057h,002h	; 9b2a  4.9.>.C.H.M.R.W.
	defb 05ch,002h,061h,002h,066h,002h,06bh,002h,070h,002h	; 9b3a  \.a.f.k.p.

; ======================================================================
; CODIGO 0x9b44..0x9b4b  (7 bytes)
; ======================================================================


L_9B44:
	ld a,(0d217h)		;9b44
	dec a			;9b47
	call 0822dh		;9b48

; ----------------------------------------------------------------------
; DATOS saltos_9B4B: 4 destinos del despachador (call 0x822D en 0x9B48) (8
;   bytes)
;   0x9b4b..0x9b53  (8 bytes)
DATA_saltos_9B4B:
	defw 09b53h,09b9eh,09bd4h,09c40h	; 9b4b  -> L_9B53 L_9B9E L_9BD4 L_9C40

; ======================================================================
; CODIGO 0x9b53..0x9bda  (135 bytes)
; ======================================================================


L_9B53:
	ld a,(0d234h)		;9b53
	cp 002h		;9b56
	jr z,L_9B69		;9b58
	cp 003h		;9b5a
	jr z,L_9B7B		;9b5c
	add a,a			;9b5e
	add a,a			;9b5f
	add a,000h		;9b60
	ld hl,0921eh		;9b62
	add a,(hl)			;9b65
	jp L_9C82		;9b66
L_9B69:
	ld a,(0921eh)		;9b69
	add a,a			;9b6c
	ld b,a			;9b6d
	ld a,(0921fh)		;9b6e
	and a			;9b71
	jr z,L_9B75		;9b72
	inc b			;9b74
L_9B75:
	ld a,008h		;9b75
	add a,b			;9b77
	jp L_9C82		;9b78
L_9B7B:
	ld hl,0921dh		;9b7b
	ld a,(0921fh)		;9b7e
	or a			;9b81
	jr nz,L_9B87		;9b82
	ld hl,0921eh		;9b84
L_9B87:
	ld a,(hl)			;9b87
	add a,a			;9b88
	add a,a			;9b89
	push af			;9b8a
	ld hl,0921dh		;9b8b
	ld a,(0921fh)		;9b8e
	or a			;9b91
	jr z,L_9B97		;9b92
	ld hl,0921eh		;9b94
L_9B97:
	pop af			;9b97
	add a,(hl)			;9b98
	add a,010h		;9b99
	jp L_9C82		;9b9b
L_9B9E:
	ld a,(0d234h)		;9b9e
	cp 002h		;9ba1
	jr z,L_9BBC		;9ba3
	add a,a			;9ba5
	add a,a			;9ba6
	ld b,a			;9ba7
	ld hl,09227h		;9ba8
	ld a,(hl)			;9bab
	inc hl			;9bac
	cp (hl)			;9bad
	ld a,(0921dh)		;9bae
	jr nc,L_9BB6		;9bb1
	ld a,(0921eh)		;9bb3
L_9BB6:
	add a,b			;9bb6
	add a,020h		;9bb7
	jp L_9C82		;9bb9
L_9BBC:
	ld de,(0921dh)		;9bbc
	ld hl,09227h		;9bc0
	ld a,(hl)			;9bc3
	inc hl			;9bc4
	cp (hl)			;9bc5
	jr nc,L_9BCB		;9bc6
	ld a,d			;9bc8
	ld d,e			;9bc9
	ld e,a			;9bca
L_9BCB:
	ld a,e			;9bcb
	add a,a			;9bcc
	add a,a			;9bcd
	add a,d			;9bce
	add a,028h		;9bcf
	jp L_9C82		;9bd1
L_9BD4:
	ld a,(0d234h)		;9bd4
	call 0822dh		;9bd7

; ----------------------------------------------------------------------
; DATOS saltos_9BDA: 5 destinos del despachador (call 0x822D en 0x9BD7) (10
;   bytes)
;   0x9bda..0x9be4  (10 bytes)
DATA_saltos_9BDA:
	defw 09be4h,09c20h,09c02h,09bf3h,09c11h	; 9bda

; ======================================================================
; CODIGO 0x9be4..0x9c3b  (87 bytes)
; ======================================================================


L_9BE4:
	ld hl,0921dh		;9be4
	ld a,(0d276h)		;9be7
	and a			;9bea
	jr nz,L_9BF0		;9beb
	ld hl,0921eh		;9bed
L_9BF0:
	jp L_9C2C		;9bf0
L_9BF3:
	ld hl,0921eh		;9bf3
	ld a,(0d276h)		;9bf6
	and a			;9bf9
	jr z,L_9BFF		;9bfa
	ld hl,0921dh		;9bfc
L_9BFF:
	jp L_9C2C		;9bff
L_9C02:
	ld hl,0921eh		;9c02
	ld a,(0d276h)		;9c05
	and a			;9c08
	jr z,L_9C0E		;9c09
	ld hl,0921dh		;9c0b
L_9C0E:
	jp L_9C2C		;9c0e
L_9C11:
	ld hl,0921dh		;9c11
	ld a,(0d276h)		;9c14
	and a			;9c17
	jr z,L_9C1D		;9c18
	ld hl,0921eh		;9c1a
L_9C1D:
	jp L_9C2C		;9c1d
L_9C20:
	ld hl,0921dh		;9c20
	ld a,(0d276h)		;9c23
	and a			;9c26
	jr z,L_9C2C		;9c27
	ld hl,0921eh		;9c29
L_9C2C:
	ld b,(hl)			;9c2c
	ld a,(0d234h)		;9c2d
	ld hl,09c3bh		;9c30
	call 08221h		;9c33
	ld a,(hl)			;9c36
	add a,b			;9c37
	jp L_9C82		;9c38

; ----------------------------------------------------------------------
; DATOS leido_9C3B: lo usa el codigo: 0x9C30 ld hl,09c3bh -> 0x8221 (tabla de
;   bytes: HL + A) (5 bytes)
;   0x9c3b..0x9c40  (5 bytes)
DATA_leido_9C3B:
	defb 038h,048h,040h,03ch,044h	; 9c3b

; ======================================================================
; CODIGO 0x9c40..0x9c64  (36 bytes)
; ======================================================================


L_9C40:
	ld a,(0921dh)		;9c40
	sla a		;9c43
	sla a		;9c45
	sla a		;9c47
	sla a		;9c49
	ld b,a			;9c4b
	ld a,(0921eh)		;9c4c
	or b			;9c4f
	ld bc,00014h		;9c50
	ld hl,09c77h		;9c53
	cpdr		;9c56
	ld a,c			;9c58
	srl a		;9c59
	ld hl,09c78h		;9c5b
	call 08221h		;9c5e
	ld a,(hl)			;9c61
	jr $+32		;9c62

; ----------------------------------------------------------------------
; DATOS leido_9C64: lo usa el codigo: 0x9C53 ld hl,09c77h (en +19); 0x9C5B ld
;   hl,09c78h -> 0x8221 (tabla de bytes: HL + A) (en +20) (30 bytes)
;   0x9c64..0x9c82  (30 bytes)
DATA_leido_9C64:
	defb 000h,000h,001h,010h,002h,020h,003h,030h,011h,011h,012h,021h,013h,031h,022h,022h	; 9c64  ..... .0...!.1""
	defb 023h,032h,033h,033h,04ch,04dh,04eh,052h,04fh,051h,053h,050h,054h,055h	; 9c74  #233LMNROQSPTU

; ======================================================================
; CODIGO 0x9c82..0x9c86  (4 bytes)
; ======================================================================


L_9C82:
	ld (0d209h),a		;9c82
	ret			;9c85

; ----------------------------------------------------------------------
; DATOS leido_9C86: lo usa el codigo: 0x9C98 ld (09c86h),a; 0x9D5F ld
;   (09c86h),a; 0x9C9B ld (09c87h),a (en +1); 0x9D5C ld a,(09c87h) (en +1) (17
;   bytes)
;   0x9c86..0x9c97  (17 bytes)
DATA_leido_9C86:
	defb 020h,0f1h,025h,020h,0ech,00eh,001h,037h,0c9h,0cdh,04ah,09dh,021h,008h,0a8h,03ah	; 9c86   .% ...7..J.!..:
	defb 017h	; 9c96

; ======================================================================
; CODIGO 0x9c97..0x9fae  (791 bytes)
; ======================================================================


L_9C97:
	ld a,b			;9c97
	ld (09c86h),a		;9c98
	ld (09c87h),a		;9c9b
	ld a,c			;9c9e
	ld (09c88h),a		;9c9f
	ld (09c89h),de		;9ca2
	ld (09c8bh),de		;9ca6
	call L_9CC5		;9caa
	xor a			;9cad
	ld (09c8dh),a		;9cae
	ld (0d1c6h),a		;9cb1
	ld (09c8eh),a		;9cb4
	ld (09c8fh),a		;9cb7
	ld (09c94h),a		;9cba
	inc a			;9cbd
	ld (0d1c7h),a		;9cbe
	ld (0dcf4h),a		;9cc1
	ret			;9cc4
L_9CC5:
	ld (09c90h),hl		;9cc5
	ld (09c92h),de		;9cc8
	ret			;9ccc
L_9CCD:
	ld a,(0d1c6h)		;9ccd
	or a			;9cd0
	jp nz,L_9D97		;9cd1
	ld a,(09c8fh)		;9cd4
	or a			;9cd7
	jp nz,L_9E68		;9cd8
	call L_9F4A		;9cdb
	ld a,(0d1c3h)		;9cde
	and 003h		;9ce1
	ret nz			;9ce3
	ld a,(0d1c7h)		;9ce4
	or a			;9ce7
	ret z			;9ce8
	ld a,(09c94h)		;9ce9
	or a			;9cec
	jp nz,L_9DDF		;9ced
	ld de,(09c92h)		;9cf0
	ld hl,(09c90h)		;9cf4
	ld a,(hl)			;9cf7
	inc hl			;9cf8
	call L_9D4F		;9cf9
	cp 0ffh		;9cfc
	jp z,L_9DC6		;9cfe
	cp 0feh		;9d01
	jr z,L_9D59		;9d03
	cp 0fdh		;9d05
	jp z,L_9DBA		;9d07
	cp 0fch		;9d0a
	jp z,L_9DD0		;9d0c
	cp 0fbh		;9d0f
	jp z,L_9DAC		;9d11
L_9D14:
	cp 0ffh		;9d14
	jr nz,L_9D19		;9d16
	xor a			;9d18
L_9D19:
	cp 043h		;9d19
	call z,L_9F28		;9d1b
	cp 044h		;9d1e
	call z,L_9F28		;9d20
	ld c,a			;9d23
	ld a,(0d1ffh)		;9d24
	or a			;9d27
	jr nz,L_9D3C		;9d28
	call L_9800		;9d2a
	ld a,c			;9d2d
	add a,042h		;9d2e
	cp 019h		;9d30
	call c,L_9ED6		;9d32
	sub 019h		;9d35
	cp 024h		;9d37
	call c,L_9F03		;9d39
L_9D3C:
	push hl			;9d3c
	push bc			;9d3d
	pop bc			;9d3e
	pop hl			;9d3f
	ld a,c			;9d40
	call 0827eh		;9d41
	ld a,001h		;9d44
	ld (0dcf5h),a		;9d46
	call 082a8h		;9d49
	jp L_9CC5		;9d4c
L_9D4F:
	push hl			;9d4f
	push af			;9d50
	ld a,(hl)			;9d51
	inc a			;9d52
	ld (0dcf4h),a		;9d53
	pop af			;9d56
	pop hl			;9d57
	ret			;9d58
L_9D59:
	ld (09c90h),hl		;9d59
	ld a,(09c87h)		;9d5c
	ld (09c86h),a		;9d5f
	ld a,(09c8eh)		;9d62
	and a			;9d65
	jp nz,L_9E56		;9d66
	ld hl,(09c89h)		;9d69
	ld a,l			;9d6c
	add a,010h		;9d6d
	ld l,a			;9d6f
	ld (09c89h),hl		;9d70
	ld (09c92h),hl		;9d73
L_9D76:
	ld a,(09c8dh)		;9d76
	inc a			;9d79
	ld (09c8dh),a		;9d7a
	ld hl,09c88h		;9d7d
	cp (hl)			;9d80
	ret c			;9d81
	ld a,(09c8eh)		;9d82
	or a			;9d85
	call z,L_9E56		;9d86
	ld a,0ffh		;9d89
	ld (09c8dh),a		;9d8b
	inc a			;9d8e
	inc a			;9d8f
	ld (09c8eh),a		;9d90
	ld (0d1c6h),a		;9d93
	ret			;9d96
L_9D97:
	xor a			;9d97
	ld (0dcf5h),a		;9d98
	call L_9E23		;9d9b
	call L_9F38		;9d9e
	ret z			;9da1
	call L_9E62		;9da2
	xor a			;9da5
	ld (0d1c6h),a		;9da6
	jp L_9E30		;9da9
L_9DAC:
	ld (09c90h),hl		;9dac
	ld a,(0d216h)		;9daf
	xor 001h		;9db2
	ld (0d216h),a		;9db4
	jp L_9803		;9db7
L_9DBA:
	ld (09c90h),hl		;9dba
	ld a,(0d1ffh)		;9dbd
	xor 001h		;9dc0
	ld (0d1ffh),a		;9dc2
	ret			;9dc5
L_9DC6:
	ld a,0ffh		;9dc6
	ld (09c8dh),a		;9dc8
	xor a			;9dcb
	ld (0d1c7h),a		;9dcc
	ret			;9dcf
L_9DD0:
	ld a,004h		;9dd0
	ld (09c94h),a		;9dd2
	ld (09c95h),hl		;9dd5
	ld hl,0d218h		;9dd8
	ld (09c90h),hl		;9ddb
	ret			;9dde
L_9DDF:
	ld de,(09c92h)		;9ddf
	ld hl,(09c90h)		;9de3
	ld a,(hl)			;9de6
	inc hl			;9de7
	call L_9D14		;9de8
	ld hl,(09c92h)		;9deb
	ld a,h			;9dee
	sub 008h		;9def
	ld h,a			;9df1
	ld a,l			;9df2
	sub 008h		;9df3
	ld l,a			;9df5
	ld a,(0d1d6h)		;9df6
	cp 003h		;9df9
	jr z,L_9E14		;9dfb
	ld e,004h		;9dfd
	ld a,(0d1d6h)		;9dff
	dec a			;9e02
	jr z,L_9E0A		;9e03
	ld e,009h		;9e05
	dec a			;9e07
	jr z,L_9E0A		;9e08
L_9E0A:
	ld e,009h		;9e0a
	ld d,00eh		;9e0c
	ld bc,00810h		;9e0e
	call L_9FB4		;9e11
L_9E14:
	ld a,(09c94h)		;9e14
	dec a			;9e17
	ld (09c94h),a		;9e18
	ret nz			;9e1b
	ld hl,(09c95h)		;9e1c
	ld (09c90h),hl		;9e1f
	ret			;9e22
L_9E23:
	ld a,(0d1c3h)		;9e23
	and 00fh		;9e26
	bit 3,a		;9e28
	ld a,000h		;9e2a
	jr z,L_9E30		;9e2c
	ld a,050h		;9e2e
L_9E30:
	push af			;9e30
	ld a,(09c88h)		;9e31
	dec a			;9e34
	ld l,a			;9e35
	ld h,000h		;9e36
	add hl,hl			;9e38
	call L_9E52		;9e39
	ex de,hl			;9e3c
	ld a,(09c87h)		;9e3d
	ld l,a			;9e40
	ld h,000h		;9e41
	call L_9E52		;9e43
	ld h,l			;9e46
	ld l,e			;9e47
	ld de,(09c8bh)		;9e48
	add hl,de			;9e4c
	pop af			;9e4d
	ex de,hl			;9e4e
	jp 0827eh		;9e4f
L_9E52:
	add hl,hl			;9e52
	add hl,hl			;9e53
	add hl,hl			;9e54
	ret			;9e55
L_9E56:
	ld a,(09c88h)		;9e56
	dec a			;9e59
	ld b,a			;9e5a
	ld a,(09c8dh)		;9e5b
	cp b			;9e5e
	jp z,L_9D76		;9e5f
L_9E62:
	ld a,010h		;9e62
	ld (09c8fh),a		;9e64
	ret			;9e67
L_9E68:
	xor a			;9e68
	ld (0dcf5h),a		;9e69
	ld de,(09c8bh)		;9e6c
	ld a,e			;9e70
	sub 007h		;9e71
	ld e,a			;9e73
	ex de,hl			;9e74
	ld de,(09c8bh)		;9e75
	ld a,e			;9e79
	sub 008h		;9e7a
	ld e,a			;9e7c
	ld a,(09c88h)		;9e7d
	call L_9ED1		;9e80
	dec a			;9e83
	ld c,a			;9e84
	ld a,(09c87h)		;9e85
	call L_9ED2		;9e88
	ld b,a			;9e8b
	xor a			;9e8c
	call 08284h		;9e8d
	ld de,(09c8bh)		;9e90
	ld a,e			;9e94
	sub 008h		;9e95
	ld e,a			;9e97
	ld a,(09c88h)		;9e98
	call L_9ED1		;9e9b
	dec a			;9e9e
	add a,e			;9e9f
	ld e,a			;9ea0
	ex de,hl			;9ea1
	ld a,(09c87h)		;9ea2
	call L_9ED2		;9ea5
	ld b,a			;9ea8
	ld c,001h		;9ea9
	xor a			;9eab
	ld d,a			;9eac
	call 0829fh		;9ead
	ld a,(09c8fh)		;9eb0
	dec a			;9eb3
	or a			;9eb4
	ld (09c8fh),a		;9eb5
	ret nz			;9eb8
	ld de,(09c8bh)		;9eb9
	ld a,(09c88h)		;9ebd
	dec a			;9ec0
	call L_9ED1		;9ec1
	add a,e			;9ec4
	ld e,a			;9ec5
	ld (09c89h),de		;9ec6
	ld (09c92h),de		;9eca
	jp L_9D76		;9ece
L_9ED1:
	add a,a			;9ed1
L_9ED2:
	add a,a			;9ed2
	add a,a			;9ed3
	add a,a			;9ed4
	ret			;9ed5
L_9ED6:
	push af			;9ed6
	push de			;9ed7
	push hl			;9ed8
	push bc			;9ed9
	call L_9EE3		;9eda
	pop bc			;9edd
	pop hl			;9ede
	pop de			;9edf
	ld c,a			;9ee0
	pop af			;9ee1
	ret			;9ee2
L_9EE3:
	ex af,af'			;9ee3
	ld a,e			;9ee4
	sub 008h		;9ee5
	ld e,a			;9ee7
	ex af,af'			;9ee8
	ld b,043h		;9ee9
	cp 014h		;9eeb
	jr c,L_9EF1		;9eed
	ld b,044h		;9eef
L_9EF1:
	push af			;9ef1
	ld a,b			;9ef2
	call 0827eh		;9ef3
	ld a,e			;9ef6
	add a,008h		;9ef7
	ld e,a			;9ef9
	pop af			;9efa
	ld hl,0919fh		;9efb
	call 08221h		;9efe
	ld a,(hl)			;9f01
	ret			;9f02
L_9F03:
	push hl			;9f03
	push bc			;9f04
	call L_9F0C		;9f05
	pop bc			;9f08
	pop hl			;9f09
	ld c,a			;9f0a
	ret			;9f0b
L_9F0C:
	cp 015h		;9f0c
	jr c,L_9F17		;9f0e
	push af			;9f10
	add a,0f3h		;9f11
	call L_9EE3		;9f13
	pop af			;9f16
L_9F17:
	ld hl,091b8h		;9f17
	add a,a			;9f1a
	call 08221h		;9f1b
	ld a,(hl)			;9f1e
	call 0827eh		;9f1f
	call 082a8h		;9f22
	inc hl			;9f25
	ld a,(hl)			;9f26
	ret			;9f27
L_9F28:
	push de			;9f28
	push hl			;9f29
	ex af,af'			;9f2a
	ld a,e			;9f2b
	sub 008h		;9f2c
	ld e,a			;9f2e
	ex af,af'			;9f2f
	call 0827eh		;9f30
	pop hl			;9f33
	pop de			;9f34
	ld a,(hl)			;9f35
	inc hl			;9f36
	ret			;9f37
L_9F38:
	ld a,(0d1c8h)		;9f38
	ld b,a			;9f3b
	and 010h		;9f3c
	jr nz,L_9F44		;9f3e
	ld a,b			;9f40
	and 040h		;9f41
	ret z			;9f43
L_9F44:
	call 0833eh		;9f44
	or 0ffh		;9f47
	ret			;9f49
L_9F4A:
	ld a,(0d1d6h)		;9f4a
	cp 002h		;9f4d
	jr nz,L_9F57		;9f4f
	ld a,(0d1d7h)		;9f51
	cp 004h		;9f54
	ret z			;9f56
L_9F57:
	ld a,(0d1d6h)		;9f57
	cp 003h		;9f5a
	ret z			;9f5c
	ld hl,0d1e7h		;9f5d
	ld a,(0d216h)		;9f60
	or a			;9f63
	jr z,L_9F69		;9f64
	ld hl,0d1e8h		;9f66
L_9F69:
	ld a,(hl)			;9f69
	ld hl,08320h		;9f6a
	cp 007h		;9f6d
	jr c,L_9F7F		;9f6f
	ld hl,08339h		;9f71
	cp 00eh		;9f74
	jr z,L_9F7F		;9f76
	cp 00bh		;9f78
	jr z,L_9F7F		;9f7a
	ld hl,0831bh		;9f7c
L_9F7F:
	jp (hl)			;9f7f
L_9F80:
	ld a,(0dcf4h)		;9f80
	or a			;9f83
	jr z,L_9F90		;9f84
	ld a,(0dcf5h)		;9f86
	or a			;9f89
	ret z			;9f8a
	ld a,(0dcf3h)		;9f8b
	xor 001h		;9f8e
L_9F90:
	ld (0dcf3h),a		;9f90
	ld hl,0dcb3h		;9f93
	or a			;9f96
	jr z,L_9F9C		;9f97
	ld hl,0dcd3h		;9f99
L_9F9C:
	ld de,(0dcb0h)		;9f9c
	ld a,(0dcb2h)		;9fa0
	ld c,a			;9fa3
	ld a,001h		;9fa4
	call 08218h		;9fa6
	xor a			;9fa9
	ld (0dcf5h),a		;9faa
	ret			;9fad

; ----------------------------------------------------------------------
; DATOS leido_9FAE: lo usa el codigo: 0x9FBC ld (09faeh),bc; 0x9FCE ld
;   a,(09fafh) -> 0x8266 (copia de la VRAM) (en +1); 0x9FE1 ld a,(09fafh) ->
;   0x8224 (copia a la VRAM) (en +1); 0x9FC0 ld (09fb0h),hl (en +2) (6 bytes)
;   0x9fae..0x9fb4  (6 bytes)
DATA_leido_9FAE:
	defb 07eh,01fh,01fh,01fh,01fh,0e6h	; 9fae

; ======================================================================
; CODIGO 0x9fb4..0xa032  (126 bytes)
; ======================================================================


L_9FB4:
	srl b		;9fb4
	ex de,hl			;9fb6
	push hl			;9fb7
	call L_A026		;9fb8
	pop de			;9fbb
	ld (09faeh),bc		;9fbc
	ld (09fb0h),hl		;9fc0
	ld (09fb2h),de		;9fc3
L_9FC7:
	push bc			;9fc7
	ld hl,(09fb0h)		;9fc8
	ld de,0d300h		;9fcb
	ld a,(09fafh)		;9fce
	ld c,a			;9fd1
	ld b,000h		;9fd2
	call 08266h		;9fd4
	call L_9FFA		;9fd7
	ld de,(09fb0h)		;9fda
	ld hl,0d300h		;9fde
	ld a,(09fafh)		;9fe1
	ld c,a			;9fe4
	ld b,000h		;9fe5
	call 08224h		;9fe7
	ld hl,(09fb0h)		;9fea
	ld a,080h		;9fed
	call 08221h		;9fef
	ld (09fb0h),hl		;9ff2
	pop bc			;9ff5
	dec c			;9ff6
	jr nz,L_9FC7		;9ff7
	ret			;9ff9
L_9FFA:
	ld hl,0d300h		;9ffa
	ld de,(09fb2h)		;9ffd
	ld a,(09fafh)		;a001
	ld b,a			;a004
L_A005:
	ld a,(hl)			;a005
	rra			;a006
	rra			;a007
	rra			;a008
	rra			;a009
	and 00fh		;a00a
	cp d			;a00c
	jr nz,L_A010		;a00d
	ld a,e			;a00f
L_A010:
	rla			;a010
	rla			;a011
	rla			;a012
	rla			;a013
	and 0f0h		;a014
	ld c,a			;a016
	ld a,(hl)			;a017
	and 00fh		;a018
	cp d			;a01a
	jr nz,L_A01E		;a01b
	ld a,e			;a01d
L_A01E:
	and 00fh		;a01e
	or c			;a020
	ld (hl),a			;a021
	inc hl			;a022
	djnz L_A005		;a023
	ret			;a025
L_A026:
	srl e		;a026
	rr d		;a028
	ld h,e			;a02a
	ld l,d			;a02b
	ld de,(0d223h)		;a02c
	add hl,de			;a030
	ret			;a031

; ----------------------------------------------------------------------
; DATOS suelto_A032: nadie lo lee ni lo apunta (462 bytes)
;   0xa032..0xa200  (462 bytes)
DATA_suelto_A032:
	defb 0d2h,0beh,0c0h,03eh,001h,032h,016h,0a2h,0c9h,03eh,001h,032h,005h,0d2h,02ah,002h	; a032  ...>.2...>.2..*.
	defb 0d2h,07eh,03ch,018h,0e3h,0cdh,0bdh,082h,02ah,002h,0d2h,07eh,02ah,000h,0d2h,04fh	; a042  .~<.....*..~*..O
	defb 087h,081h,0cdh,021h,082h,011h,00dh,0d2h,001h,003h,000h,0edh,0b0h,03ah,00fh,0d2h	; a052  ...!.........:..
	defb 0feh,001h,0c8h,021h,0bch,0a1h,0cdh,06ch,082h,046h,023h,011h,080h,0d2h,03ah,00dh	; a062  ...!...l.F#...:.
	defb 0d2h,086h,012h,023h,013h,03ah,00eh,0d2h,086h,012h,023h,013h,07eh,012h,023h,013h	; a072  ...#.:....#.~.#.
	defb 07eh,012h,023h,013h,010h,0e8h,0c9h,0cdh,01eh,082h,05eh,023h,056h,023h,0c9h,03ah	; a082  ~.#.......^#V#.:
	defb 0c8h,0d1h,0feh,010h,0cah,0a5h,0a1h,04fh,03ah,033h,0d2h,0a7h,0c5h,0c4h,056h,0a1h	; a092  .......O:3....V.
	defb 0c1h,03ah,004h,0d2h,0a7h,028h,036h,079h,0feh,001h,0cah,032h,0a1h,0feh,002h,020h	; a0a2  .:...(6y...2...
	defb 02ch,03ah,004h,0d2h,03ch,021h,032h,0d2h,05eh,01ch,0bbh,0d0h,032h,004h,0d2h,05fh	; a0b2  ,:..<!2.^...2.._
	defb 03ah,016h,0a2h,0b7h,028h,00eh,07bh,0beh,020h,00ah,03ah,033h,0d2h,021h,017h,0a2h	; a0c2  :...(.{. .:3.!..
	defb 096h,032h,005h,0d2h,0cdh,0e1h,0a0h,0cdh,0f2h,0a0h,0cdh,047h,0a0h,0afh,0c9h,03ah	; a0d2  .2.........G...:
	defb 0c0h,0d1h,0feh,004h,020h,007h,03ah,0d7h,0d1h,03dh,0cah,070h,083h,0c3h,0eeh,082h	; a0e2  .... .:..=.p....
	defb 03ah,033h,0d2h,0b7h,028h,02bh,03ah,032h,0d2h,0b7h,028h,02bh,03ah,004h,0d2h,03dh	; a0f2  :3..(+:2..(+:..=
	defb 028h,00eh,047h,03ah,033h,0d2h,0b7h,028h,024h,021h,033h,0d2h,0afh,086h,010h,0fdh	; a102  (.G:3..($!3.....
	defb 047h,03ah,033h,0d2h,0b7h,028h,003h,03ah,005h,0d2h,03dh,080h,02ah,002h,0d2h,077h	; a112  G:3..(.:..=.*..w
	defb 0c9h,03ah,004h,0d2h,03dh,018h,0f5h,03ah,005h,0d2h,03dh,018h,0efh,078h,018h,0ech	; a122  .:..=..:..=..x..
	defb 03ah,004h,0d2h,03dh,0c8h,032h,004h,0d2h,03ah,016h,0a2h,0b7h,028h,096h,03ah,033h	; a132  :..=.2..:...(.:3
	defb 0d2h,032h,005h,0d2h,018h,08eh,0afh,032h,016h,0a2h,03ah,005h,0d2h,03dh,0c8h,032h	; a142  .2.....2..:..=.2
	defb 005h,0d2h,018h,080h,079h,0feh,004h,028h,0edh,0feh,008h,0c2h,0dfh,0a0h,03ah,005h	; a152  ....y..(......:.
	defb 0d2h,03ch,047h,03ah,004h,0d2h,021h,032h,0d2h,0beh,03ah,033h,0d2h,0cch,09dh,0a1h	; a162  .<G:..!2..:3....
	defb 05fh,078h,0bbh,028h,01dh,01ch,0bbh,030h,00ah,032h,005h,0d2h,0afh,032h,016h,0a2h	; a172  _x.(...0.2...2..
	defb 0c3h,0d6h,0a0h,03ah,004h,0d2h,021h,032h,0d2h,0beh,0c8h,03eh,001h,032h,016h,0a2h	; a182  ...:..!2...>.2..
	defb 0b7h,0c9h,032h,005h,0d2h,0cdh,085h,0a1h,0c3h,0d6h,0a0h,0f5h,03ah,017h,0a2h,05fh	; a192  ..2.........:.._
	defb 0f1h,093h,0c9h,0cdh,0b0h,0a1h,0cah,0dfh,0a0h,0cdh,0f3h,082h,037h,0c9h,03ah,0d6h	; a1a2  ............7.:.
	defb 0d1h,0feh,003h,0c0h,03ah,0dah,0d1h,0feh,0feh,0c9h,0d0h,0a1h,0d5h,0a1h,0dah,0a1h	; a1b2  ....:...........
	defb 0dfh,0a1h,0e8h,0a1h,0edh,0a1h,0f2h,0a1h,0fbh,0a1h,004h,0a2h,00dh,0a2h,001h,000h	; a1c2  ................
	defb 000h,000h,008h,001h,000h,000h,000h,000h,001h,000h,000h,018h,008h,002h,000h,000h	; a1d2  ................
	defb 020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch,008h,001h,000h,000h,004h,008h	; a1e2   ...$...........
	defb 002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h,000h,000h,068h,005h	; a1f2  ............h.
