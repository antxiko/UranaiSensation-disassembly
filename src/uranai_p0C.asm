; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p0C (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9848  (72 bytes)
; ======================================================================


L_9800:
	jp L_98B8		;9800
L_9803:
	jp L_9B8E		;9803
L_9806:
	jp L_9821		;9806
L_9809:
	jp L_9856		;9809
L_980C:
	jp L_985C		;980c
L_980F:
	jp L_9F10		;980f
L_9812:
	jp L_9C5D		;9812
L_9815:
	jp L_983F		;9815
L_9818:
	jp L_9913		;9818
L_981B:
	jp L_9950		;981b
L_981E:
	jp L_9987		;981e
L_9821:
	call L_9831		;9821
	ld hl,098dfh		;9824
	ld de,01838h		;9827
	ld c,00ah		;982a
	ld a,001h		;982c
	jp 08218h		;982e
L_9831:
	ld bc,05060h		;9831
	ld de,0183ch		;9834
	ld hl,00000h		;9837
	ld a,080h		;983a
	jp 0820ch		;983c
L_983F:
	ld bc,0d828h		;983f
	call L_984B		;9842
	jp 08251h		;9845

; ----------------------------------------------------------------------
; DATOS suelto_9848: nadie lo lee ni lo apunta (3 bytes)
;   0x9848..0x984b  (3 bytes)
DATA_suelto_9848:
	defb 001h,028h,070h	; 9848

; ======================================================================
; CODIGO 0x984b..0x98df  (148 bytes)
; ======================================================================


L_984B:
	ld de,0188eh		;984b
	ld hl,02870h		;984e
	ld a,040h		;9851
	jp 0820ch		;9853
L_9856:
	ld hl,099d4h		;9856
	jp L_9993		;9859
L_985C:
	ld hl,0ca00h		;985c
	ld de,0d1e6h		;985f
	ld bc,00003h		;9862
	ldir		;9865
	ld hl,0b600h		;9867
	ld (0d212h),hl		;986a
	ld hl,0c000h		;986d
	ld (0d214h),hl		;9870
	xor a			;9873
	ld (0d216h),a		;9874
	call L_9ACB		;9877
	ld a,001h		;987a
	ld (0d216h),a		;987c
	call L_9ACB		;987f
	xor a			;9882
	ld (0d216h),a		;9883
	call L_9B8E		;9886
	call L_997B		;9889
	call L_98A1		;988c
	call L_98AF		;988f
	call 08251h		;9892
	ld hl,0ca03h		;9895
	ld de,02098h		;9898
	ld bc,01802h		;989b
	jp L_9C27		;989e
L_98A1:
	ld bc,0d828h		;98a1
	ld hl,0188eh		;98a4
	ld de,02870h		;98a7
	ld a,010h		;98aa
	jp 0820ch		;98ac
L_98AF:
	ld hl,0188eh		;98af
	ld de,0d828h		;98b2
	jp L_9F3E		;98b5
L_98B8:
	push bc			;98b8
	ld a,c			;98b9
	add a,048h		;98ba
	cp 006h		;98bc
	jr nc,L_98DD		;98be
	pop bc			;98c0
	ex af,af'			;98c1
	ld a,e			;98c2
	sub 008h		;98c3
	ld e,a			;98c5
	ex af,af'			;98c6
	ld b,043h		;98c7
	cp 004h		;98c9
	jr c,L_98CF		;98cb
	ld b,044h		;98cd
L_98CF:
	push af			;98cf
	ld a,b			;98d0
	call 0827eh		;98d1
	ld a,e			;98d4
	add a,008h		;98d5
	ld e,a			;98d7
	pop af			;98d8
	add a,0b8h		;98d9
	ld c,a			;98db
	ret			;98dc
L_98DD:
	pop bc			;98dd
	ret			;98de

; ----------------------------------------------------------------------
; DATOS casillas_98DF: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x982E (52 bytes)
;   0x98df..0x9913  (52 bytes)
DATA_casillas_98DF:
	defb 001h,029h,008h,02ah,082h,02bh,030h,008h,000h,082h,02ch,030h,008h,000h,082h,02ch	; 98df  .).*.+0...,0...,
	defb 030h,008h,000h,082h,02ch,030h,008h,000h,082h,02ch,030h,008h,000h,082h,02ch,030h	; 98ef  0...,0...,0...,0
	defb 008h,000h,082h,02ch,030h,008h,000h,082h,02ch,030h,008h,000h,082h,02ch,02fh,008h	; 98ff  ...,0...,0...,/.
	defb 02eh,001h,02dh,000h	; 990f

; ======================================================================
; CODIGO 0x9913..0x994c  (57 bytes)
; ======================================================================


L_9913:
	call L_9950		;9913
	ld a,(0d1c3h)		;9916
	bit 4,a		;9919
	ret z			;991b
	ld a,(0d217h)		;991c
	ld hl,0994ch		;991f
	call 08221h		;9922
	ld a,(hl)			;9925
	ld c,a			;9926
	cp 003h		;9927
	jr nz,L_9932		;9929
	ld a,(092b7h)		;992b
	and a			;992e
	jr z,L_9932		;992f
	dec c			;9931
L_9932:
	ld a,c			;9932
	sla a		;9933
	jr nc,L_993E		;9935
	ld a,(092b6h)		;9937
	cp 009h		;993a
	ret z			;993c
	ld c,a			;993d
L_993E:
	ld b,004h		;993e
	call L_996C		;9940
	ld hl,0d2c3h		;9943
	call 08221h		;9946
	ld (hl),000h		;9949
	ret			;994b

; ----------------------------------------------------------------------
; DATOS leido_994C: lo usa el codigo: 0x991F ld hl,0994ch -> 0x8221 (tabla de
;   bytes: HL + A) (4 bytes)
;   0x994c..0x9950  (4 bytes)
DATA_leido_994C:
	defb 000h,003h,080h,080h	; 994c

; ======================================================================
; CODIGO 0x9950..0x9963  (19 bytes)
; ======================================================================


L_9950:
	ld hl,0d2c3h		;9950
	ld de,09963h		;9953
	ld b,009h		;9956
L_9958:
	ld a,(de)			;9958
	ld (hl),a			;9959
	inc de			;995a
	ld a,004h		;995b
	call 08221h		;995d
	djnz L_9958		;9960
	ret			;9962

; ----------------------------------------------------------------------
; DATOS leido_9963: lo usa el codigo: 0x9953 ld de,09963h (9 bytes)
;   0x9963..0x996c  (9 bytes)
DATA_leido_9963:
	defb 008h,005h,004h,006h,00eh,009h,00dh,00bh,00ah	; 9963  .........

; ======================================================================
; CODIGO 0x996c..0x9991  (37 bytes)
; ======================================================================


L_996C:
	xor a			;996c
L_996D:
	inc c			;996d
	dec c			;996e
	jr z,L_997A		;996f
	srl c		;9971
	jr nc,L_9976		;9973
	add a,b			;9975
L_9976:
	sla b		;9976
	jr L_996D		;9978
L_997A:
	ret			;997a
L_997B:
	ld a,(0d1e6h)		;997b
	call 0822dh		;997e
	rst 30h			;9981
	add a,e			;9982
	ld bc,0fc84h		;9983
	add a,e			;9986
L_9987:
	ld a,001h		;9987
	call 09203h		;9989
	ld a,068h		;998c
	jp 09206h		;998e

; ----------------------------------------------------------------------
; DATOS leido_9991: lo usa el codigo: 0x99A4 ld (09991h),hl -> 0x8215 (leer
;   sectores); 0x99B7 ld hl,(09991h) (2 bytes)
;   0x9991..0x9993  (2 bytes)
DATA_leido_9991:
	defb 011h,068h	; 9991

; ======================================================================
; CODIGO 0x9993..0x99d4  (65 bytes)
; ======================================================================


L_9993:
	push hl			;9993
	ld a,(0d209h)		;9994
	ld l,a			;9997
	ld h,000h		;9998
	ld e,l			;999a
	ld d,h			;999b
	add hl,hl			;999c
	add hl,de			;999d
	pop de			;999e
	add hl,de			;999f
	ld c,(hl)			;99a0
	inc hl			;99a1
	ld b,(hl)			;99a2
	inc hl			;99a3
	ld (09991h),hl		;99a4
	ld de,0d300h		;99a7
	ld hl,00200h		;99aa
	call 08215h		;99ad
	jr c,L_9993		;99b0
	ld a,0ffh		;99b2
	ld (0e0fdh),a		;99b4
	ld hl,(09991h)		;99b7
	ld b,(hl)			;99ba
	dec b			;99bb
	ld de,0d300h		;99bc
	jr z,L_99C8		;99bf
L_99C1:
	ld a,(de)			;99c1
	inc de			;99c2
	inc a			;99c3
	jr nz,L_99C1		;99c4
	djnz L_99C1		;99c6
L_99C8:
	ld hl,0ca00h		;99c8
L_99CB:
	ld a,(de)			;99cb
	cp 0ffh		;99cc
	ld (hl),a			;99ce
	ret z			;99cf
	inc de			;99d0
	inc hl			;99d1
	jr L_99CB		;99d2

; ----------------------------------------------------------------------
; DATOS leido_99D4: lo usa el codigo: 0x9856 ld hl,099d4h; 0x9AD8 ld
;   (09acah),a (en +246); 0x9B0A ld a,(09acah) (en +246) (247 bytes)
;   0x99d4..0x9acb  (247 bytes)
DATA_leido_99D4:
	defb 074h,001h,001h,074h,001h,002h,074h,001h,003h,074h,001h,004h,074h,001h,005h,074h	; 99d4  t..t..t..t..t..t
	defb 001h,006h,074h,001h,007h,074h,001h,008h,074h,001h,009h,074h,001h,00ah,072h,001h	; 99e4  ..t..t..t..t..r.
	defb 001h,072h,001h,002h,072h,001h,003h,072h,001h,004h,072h,001h,005h,072h,001h,006h	; 99f4  .r..r..r..r..r..
	defb 072h,001h,007h,072h,001h,008h,072h,001h,009h,070h,001h,001h,070h,001h,002h,070h	; 9a04  r..r..r..p..p..p
	defb 001h,003h,070h,001h,004h,070h,001h,005h,070h,001h,006h,070h,001h,007h,070h,001h	; 9a14  ..p..p..p..p..p.
	defb 008h,070h,001h,009h,070h,001h,00ah,06eh,001h,001h,06eh,001h,002h,06eh,001h,003h	; 9a24  .p..p..n..n..n..
	defb 06eh,001h,004h,06eh,001h,005h,06eh,001h,006h,06eh,001h,007h,07ch,001h,001h,07ch	; 9a34  n..n..n..n..|..|
	defb 001h,002h,07ch,001h,003h,07ch,001h,004h,07ch,001h,005h,07ch,001h,006h,07ah,001h	; 9a44  ..|..|..|..|..z.
	defb 001h,07ah,001h,002h,07ah,001h,003h,07ah,001h,004h,07ah,001h,005h,07ah,001h,006h	; 9a54  .z..z..z..z..z..
	defb 078h,001h,001h,078h,001h,002h,078h,001h,003h,078h,001h,004h,078h,001h,005h,078h	; 9a64  x..x..x..x..x..x
	defb 001h,006h,076h,001h,001h,076h,001h,002h,076h,001h,003h,076h,001h,004h,076h,001h	; 9a74  ..v..v..v..v..v.
	defb 005h,076h,001h,006h,06ch,001h,001h,06ch,001h,002h,06ch,001h,003h,06ch,001h,004h	; 9a84  .v..l..l..l..l..
	defb 06ch,001h,005h,06ch,001h,006h,06ah,001h,001h,06ah,001h,002h,06ah,001h,003h,06ah	; 9a94  l..l..j..j..j..j
	defb 001h,004h,06ah,001h,005h,06ah,001h,006h,068h,001h,001h,068h,001h,002h,068h,001h	; 9aa4  ..j..j..h..h..h.
	defb 003h,068h,001h,004h,068h,001h,005h,068h,001h,006h,068h,001h,007h,068h,001h,008h	; 9ab4  .h..h..h..h..h..
	defb 068h,001h,009h,068h,001h,00ah,0a0h	; 9ac4

; ======================================================================
; CODIGO 0x9acb..0x9bc1  (246 bytes)
; ======================================================================


L_9ACB:
	ld hl,0d1e7h		;9acb
	ld a,(0d216h)		;9ace
	or a			;9ad1
	jr z,L_9AD7		;9ad2
	ld hl,0d1e8h		;9ad4
L_9AD7:
	ld a,(hl)			;9ad7
	ld (09acah),a		;9ad8
	cp 080h		;9adb
	ret z			;9add
	ld hl,09bf8h		;9ade
	add a,a			;9ae1
	call 08221h		;9ae2
	ld c,(hl)			;9ae5
	inc hl			;9ae6
	ld b,(hl)			;9ae7
	call L_9B7E		;9ae8
	ld hl,00500h		;9aeb
	call 08215h		;9aee
	jr c,L_9ACB		;9af1
	ld a,0ffh		;9af3
	ld (0e0fdh),a		;9af5
	ld a,(0d1d6h)		;9af8
	ld b,a			;9afb
	dec a			;9afc
	ret z			;9afd
	ld a,b			;9afe
	or a			;9aff
	jr z,L_9B64		;9b00
	ld de,078e8h		;9b02
	call L_9B6E		;9b05
	ld b,000h		;9b08
L_9B0A:
	ld a,(09acah)		;9b0a
	cp 007h		;9b0d
	jr c,L_9B12		;9b0f
	inc b			;9b11
L_9B12:
	ld a,b			;9b12
	push hl			;9b13
	ld hl,09bcch		;9b14
	call 0826ch		;9b17
	push hl			;9b1a
	pop ix		;9b1b
	pop hl			;9b1d
	ld de,00043h		;9b1e
	add hl,de			;9b21
	ld b,(ix+000h)		;9b22
	inc ix		;9b25
L_9B27:
	push bc			;9b27
	push hl			;9b28
	call L_9B35		;9b29
	pop hl			;9b2c
	pop bc			;9b2d
	inc ix		;9b2e
	inc ix		;9b30
	djnz L_9B27		;9b32
	ret			;9b34
L_9B35:
	ld d,(ix+000h)		;9b35
	ld e,(ix+001h)		;9b38
	ld bc,008e0h		;9b3b
L_9B3E:
	push bc			;9b3e
	ld a,(hl)			;9b3f
	rra			;9b40
	rra			;9b41
	rra			;9b42
	rra			;9b43
	and 00fh		;9b44
	cp d			;9b46
	jr nz,L_9B4A		;9b47
	ld a,e			;9b49
L_9B4A:
	rla			;9b4a
	rla			;9b4b
	rla			;9b4c
	rla			;9b4d
	and 0f0h		;9b4e
	ld c,a			;9b50
	ld a,(hl)			;9b51
	and 00fh		;9b52
	cp d			;9b54
	jr nz,L_9B58		;9b55
	ld a,e			;9b57
L_9B58:
	and 00fh		;9b58
	or c			;9b5a
	ld (hl),a			;9b5b
	inc hl			;9b5c
	pop bc			;9b5d
	dec bc			;9b5e
	ld a,b			;9b5f
	or c			;9b60
	jr nz,L_9B3E		;9b61
	ret			;9b63
L_9B64:
	ld de,040e0h		;9b64
	call L_9B6E		;9b67
	ld b,002h		;9b6a
	jr L_9B0A		;9b6c
L_9B6E:
	push de			;9b6e
	call L_9B7E		;9b6f
	ex de,hl			;9b72
	pop de			;9b73
	push hl			;9b74
	ld a,(hl)			;9b75
	add a,e			;9b76
	ld (hl),a			;9b77
	inc hl			;9b78
	ld a,(hl)			;9b79
	add a,d			;9b7a
	ld (hl),a			;9b7b
	pop hl			;9b7c
	ret			;9b7d
L_9B7E:
	ld hl,0d212h		;9b7e
	ld a,(0d216h)		;9b81
	or a			;9b84
	jr z,L_9B8A		;9b85
	ld hl,0d214h		;9b87
L_9B8A:
	ld e,(hl)			;9b8a
	inc hl			;9b8b
	ld d,(hl)			;9b8c
	ret			;9b8d
L_9B8E:
	xor a			;9b8e
	ld (0dcf3h),a		;9b8f
	ld hl,0d212h		;9b92
	ld a,(0d216h)		;9b95
	or a			;9b98
	jr z,L_9B9E		;9b99
	ld hl,0d214h		;9b9b
L_9B9E:
	ld e,(hl)			;9b9e
	inc hl			;9b9f
	ld d,(hl)			;9ba0
	ex de,hl			;9ba1
	ld de,0dcb0h		;9ba2
	ld bc,00043h		;9ba5
	ldir		;9ba8
	ld (09bc5h),hl		;9baa
	ld ix,09bc1h		;9bad
	call 09212h		;9bb1
	ld hl,09bc8h		;9bb4
	ld de,02040h		;9bb7
	ld c,008h		;9bba
	ld a,001h		;9bbc
	jp 08218h		;9bbe

; ----------------------------------------------------------------------
; DATOS leido_9BC1: lo usa el codigo: 0x9BAD ld ix,09bc1h; 0x9BAA ld
;   (09bc5h),hl (en +4) (7 bytes)
;   0x9bc1..0x9bc8  (7 bytes)
DATA_leido_9BC1:
	defb 020h,047h,004h,0a0h,000h,000h,080h	; 9bc1

; ----------------------------------------------------------------------
; DATOS casillas_9BC8: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9BBE (4 bytes)
;   0x9bc8..0x9bcc  (4 bytes)
DATA_casillas_9BC8:
	defb 080h,040h,001h,000h	; 9bc8

; ----------------------------------------------------------------------
; DATOS leido_9BCC: lo usa el codigo: 0x9B14 ld hl,09bcch -> 0x826C (tabla de
;   palabras: la de A); 0x9ADE ld hl,09bf8h -> 0x8221 (tabla de bytes: HL + A)
;   (en +44); 0x9C28 ld (09c16h),a (en +74); 0x9CEF ld (09c16h),a (en +74) (91
;   bytes)
;   0x9bcc..0x9c27  (91 bytes)
DATA_leido_9BCC:
	defb 0d4h,09bh,0ddh,09bh,0e6h,09bh,0efh,09bh,004h,00ah,007h,004h,008h,005h,004h,006h	; 9bcc  ................
	defb 00fh,004h,004h,00fh,006h,004h,007h,003h,00bh,00ah,004h,004h,007h,006h,004h,00ah	; 9bdc  ................
	defb 00dh,005h,003h,004h,00bh,00ah,007h,003h,004h,007h,006h,004h,02ah,002h,02fh,002h	; 9bec  ............*./.
	defb 034h,002h,039h,002h,03eh,002h,043h,002h,048h,002h,04dh,002h,052h,002h,057h,002h	; 9bfc  4.9.>.C.H.M.R.W.
	defb 05ch,002h,061h,002h,066h,002h,06bh,002h,070h,002h,022h,029h,0ffh,05bh,05ch,059h	; 9c0c  \.a.f.k.p.").[\Y
	defb 05ah,057h,058h,063h,05fh,03ah,0deh,0d1h,0feh,002h,028h	; 9c1c  ZWXc_:....(

; ======================================================================
; CODIGO 0x9c27..0xa070  (1097 bytes)
; ======================================================================


L_9C27:
	ld a,b			;9c27
	ld (09c16h),a		;9c28
	ld (09c17h),a		;9c2b
	ld a,c			;9c2e
	ld (09c18h),a		;9c2f
	ld (09c19h),de		;9c32
	ld (09c1bh),de		;9c36
	call L_9C55		;9c3a
	xor a			;9c3d
	ld (09c1dh),a		;9c3e
	ld (0d1c6h),a		;9c41
	ld (09c1eh),a		;9c44
	ld (09c1fh),a		;9c47
	ld (09c24h),a		;9c4a
	inc a			;9c4d
	ld (0d1c7h),a		;9c4e
	ld (0dcf4h),a		;9c51
	ret			;9c54
L_9C55:
	ld (09c20h),hl		;9c55
	ld (09c22h),de		;9c58
	ret			;9c5c
L_9C5D:
	ld a,(0d1c6h)		;9c5d
	or a			;9c60
	jp nz,L_9D27		;9c61
	ld a,(09c1fh)		;9c64
	or a			;9c67
	jp nz,L_9DF8		;9c68
	call L_9EDA		;9c6b
	ld a,(0d1c3h)		;9c6e
	and 003h		;9c71
	ret nz			;9c73
	ld a,(0d1c7h)		;9c74
	or a			;9c77
	ret z			;9c78
	ld a,(09c24h)		;9c79
	or a			;9c7c
	jp nz,L_9D6F		;9c7d
	ld de,(09c22h)		;9c80
	ld hl,(09c20h)		;9c84
	ld a,(hl)			;9c87
	inc hl			;9c88
	call L_9CDF		;9c89
	cp 0ffh		;9c8c
	jp z,L_9D56		;9c8e
	cp 0feh		;9c91
	jr z,L_9CE9		;9c93
	cp 0fdh		;9c95
	jp z,L_9D4A		;9c97
	cp 0fch		;9c9a
	jp z,L_9D60		;9c9c
	cp 0fbh		;9c9f
	jp z,L_9D3C		;9ca1
L_9CA4:
	cp 0ffh		;9ca4
	jr nz,L_9CA9		;9ca6
	xor a			;9ca8
L_9CA9:
	cp 043h		;9ca9
	call z,L_9EB8		;9cab
	cp 044h		;9cae
	call z,L_9EB8		;9cb0
	ld c,a			;9cb3
	ld a,(0d1ffh)		;9cb4
	or a			;9cb7
	jr nz,L_9CCC		;9cb8
	call L_9800		;9cba
	ld a,c			;9cbd
	add a,042h		;9cbe
	cp 019h		;9cc0
	call c,L_9E66		;9cc2
	sub 019h		;9cc5
	cp 024h		;9cc7
	call c,L_9E93		;9cc9
L_9CCC:
	push hl			;9ccc
	push bc			;9ccd
	pop bc			;9cce
	pop hl			;9ccf
	ld a,c			;9cd0
	call 0827eh		;9cd1
	ld a,001h		;9cd4
	ld (0dcf5h),a		;9cd6
	call 082a8h		;9cd9
	jp L_9C55		;9cdc
L_9CDF:
	push hl			;9cdf
	push af			;9ce0
	ld a,(hl)			;9ce1
	inc a			;9ce2
	ld (0dcf4h),a		;9ce3
	pop af			;9ce6
	pop hl			;9ce7
	ret			;9ce8
L_9CE9:
	ld (09c20h),hl		;9ce9
	ld a,(09c17h)		;9cec
	ld (09c16h),a		;9cef
	ld a,(09c1eh)		;9cf2
	and a			;9cf5
	jp nz,L_9DE6		;9cf6
	ld hl,(09c19h)		;9cf9
	ld a,l			;9cfc
	add a,010h		;9cfd
	ld l,a			;9cff
	ld (09c19h),hl		;9d00
	ld (09c22h),hl		;9d03
L_9D06:
	ld a,(09c1dh)		;9d06
	inc a			;9d09
	ld (09c1dh),a		;9d0a
	ld hl,09c18h		;9d0d
	cp (hl)			;9d10
	ret c			;9d11
	ld a,(09c1eh)		;9d12
	or a			;9d15
	call z,L_9DE6		;9d16
	ld a,0ffh		;9d19
	ld (09c1dh),a		;9d1b
	inc a			;9d1e
	inc a			;9d1f
	ld (09c1eh),a		;9d20
	ld (0d1c6h),a		;9d23
	ret			;9d26
L_9D27:
	xor a			;9d27
	ld (0dcf5h),a		;9d28
	call L_9DB3		;9d2b
	call L_9EC8		;9d2e
	ret z			;9d31
	call L_9DF2		;9d32
	xor a			;9d35
	ld (0d1c6h),a		;9d36
	jp L_9DC0		;9d39
L_9D3C:
	ld (09c20h),hl		;9d3c
	ld a,(0d216h)		;9d3f
	xor 001h		;9d42
	ld (0d216h),a		;9d44
	jp L_9803		;9d47
L_9D4A:
	ld (09c20h),hl		;9d4a
	ld a,(0d1ffh)		;9d4d
	xor 001h		;9d50
	ld (0d1ffh),a		;9d52
	ret			;9d55
L_9D56:
	ld a,0ffh		;9d56
	ld (09c1dh),a		;9d58
	xor a			;9d5b
	ld (0d1c7h),a		;9d5c
	ret			;9d5f
L_9D60:
	ld a,004h		;9d60
	ld (09c24h),a		;9d62
	ld (09c25h),hl		;9d65
	ld hl,0d218h		;9d68
	ld (09c20h),hl		;9d6b
	ret			;9d6e
L_9D6F:
	ld de,(09c22h)		;9d6f
	ld hl,(09c20h)		;9d73
	ld a,(hl)			;9d76
	inc hl			;9d77
	call L_9CA4		;9d78
	ld hl,(09c22h)		;9d7b
	ld a,h			;9d7e
	sub 008h		;9d7f
	ld h,a			;9d81
	ld a,l			;9d82
	sub 008h		;9d83
	ld l,a			;9d85
	ld a,(0d1d6h)		;9d86
	cp 003h		;9d89
	jr z,L_9DA4		;9d8b
	ld e,004h		;9d8d
	ld a,(0d1d6h)		;9d8f
	dec a			;9d92
	jr z,L_9D9A		;9d93
	ld e,009h		;9d95
	dec a			;9d97
	jr z,L_9D9A		;9d98
L_9D9A:
	ld e,009h		;9d9a
	ld d,00eh		;9d9c
	ld bc,00810h		;9d9e
	call L_A076		;9da1
L_9DA4:
	ld a,(09c24h)		;9da4
	dec a			;9da7
	ld (09c24h),a		;9da8
	ret nz			;9dab
	ld hl,(09c25h)		;9dac
	ld (09c20h),hl		;9daf
	ret			;9db2
L_9DB3:
	ld a,(0d1c3h)		;9db3
	and 00fh		;9db6
	bit 3,a		;9db8
	ld a,000h		;9dba
	jr z,L_9DC0		;9dbc
	ld a,050h		;9dbe
L_9DC0:
	push af			;9dc0
	ld a,(09c18h)		;9dc1
	dec a			;9dc4
	ld l,a			;9dc5
	ld h,000h		;9dc6
	add hl,hl			;9dc8
	call L_9DE2		;9dc9
	ex de,hl			;9dcc
	ld a,(09c17h)		;9dcd
	ld l,a			;9dd0
	ld h,000h		;9dd1
	call L_9DE2		;9dd3
	ld h,l			;9dd6
	ld l,e			;9dd7
	ld de,(09c1bh)		;9dd8
	add hl,de			;9ddc
	pop af			;9ddd
	ex de,hl			;9dde
	jp 0827eh		;9ddf
L_9DE2:
	add hl,hl			;9de2
	add hl,hl			;9de3
	add hl,hl			;9de4
	ret			;9de5
L_9DE6:
	ld a,(09c18h)		;9de6
	dec a			;9de9
	ld b,a			;9dea
	ld a,(09c1dh)		;9deb
	cp b			;9dee
	jp z,L_9D06		;9def
L_9DF2:
	ld a,010h		;9df2
	ld (09c1fh),a		;9df4
	ret			;9df7
L_9DF8:
	xor a			;9df8
	ld (0dcf5h),a		;9df9
	ld de,(09c1bh)		;9dfc
	ld a,e			;9e00
	sub 007h		;9e01
	ld e,a			;9e03
	ex de,hl			;9e04
	ld de,(09c1bh)		;9e05
	ld a,e			;9e09
	sub 008h		;9e0a
	ld e,a			;9e0c
	ld a,(09c18h)		;9e0d
	call L_9E61		;9e10
	dec a			;9e13
	ld c,a			;9e14
	ld a,(09c17h)		;9e15
	call L_9E62		;9e18
	ld b,a			;9e1b
	xor a			;9e1c
	call 08284h		;9e1d
	ld de,(09c1bh)		;9e20
	ld a,e			;9e24
	sub 008h		;9e25
	ld e,a			;9e27
	ld a,(09c18h)		;9e28
	call L_9E61		;9e2b
	dec a			;9e2e
	add a,e			;9e2f
	ld e,a			;9e30
	ex de,hl			;9e31
	ld a,(09c17h)		;9e32
	call L_9E62		;9e35
	ld b,a			;9e38
	ld c,001h		;9e39
	xor a			;9e3b
	ld d,a			;9e3c
	call 0829fh		;9e3d
	ld a,(09c1fh)		;9e40
	dec a			;9e43
	or a			;9e44
	ld (09c1fh),a		;9e45
	ret nz			;9e48
	ld de,(09c1bh)		;9e49
	ld a,(09c18h)		;9e4d
	dec a			;9e50
	call L_9E61		;9e51
	add a,e			;9e54
	ld e,a			;9e55
	ld (09c19h),de		;9e56
	ld (09c22h),de		;9e5a
	jp L_9D06		;9e5e
L_9E61:
	add a,a			;9e61
L_9E62:
	add a,a			;9e62
	add a,a			;9e63
	add a,a			;9e64
	ret			;9e65
L_9E66:
	push af			;9e66
	push de			;9e67
	push hl			;9e68
	push bc			;9e69
	call L_9E73		;9e6a
	pop bc			;9e6d
	pop hl			;9e6e
	pop de			;9e6f
	ld c,a			;9e70
	pop af			;9e71
	ret			;9e72
L_9E73:
	ex af,af'			;9e73
	ld a,e			;9e74
	sub 008h		;9e75
	ld e,a			;9e77
	ex af,af'			;9e78
	ld b,043h		;9e79
	cp 014h		;9e7b
	jr c,L_9E81		;9e7d
	ld b,044h		;9e7f
L_9E81:
	push af			;9e81
	ld a,b			;9e82
	call 0827eh		;9e83
	ld a,e			;9e86
	add a,008h		;9e87
	ld e,a			;9e89
	pop af			;9e8a
	ld hl,0919fh		;9e8b
	call 08221h		;9e8e
	ld a,(hl)			;9e91
	ret			;9e92
L_9E93:
	push hl			;9e93
	push bc			;9e94
	call L_9E9C		;9e95
	pop bc			;9e98
	pop hl			;9e99
	ld c,a			;9e9a
	ret			;9e9b
L_9E9C:
	cp 015h		;9e9c
	jr c,L_9EA7		;9e9e
	push af			;9ea0
	add a,0f3h		;9ea1
	call L_9E73		;9ea3
	pop af			;9ea6
L_9EA7:
	ld hl,091b8h		;9ea7
	add a,a			;9eaa
	call 08221h		;9eab
	ld a,(hl)			;9eae
	call 0827eh		;9eaf
	call 082a8h		;9eb2
	inc hl			;9eb5
	ld a,(hl)			;9eb6
	ret			;9eb7
L_9EB8:
	push de			;9eb8
	push hl			;9eb9
	ex af,af'			;9eba
	ld a,e			;9ebb
	sub 008h		;9ebc
	ld e,a			;9ebe
	ex af,af'			;9ebf
	call 0827eh		;9ec0
	pop hl			;9ec3
	pop de			;9ec4
	ld a,(hl)			;9ec5
	inc hl			;9ec6
	ret			;9ec7
L_9EC8:
	ld a,(0d1c8h)		;9ec8
	ld b,a			;9ecb
	and 010h		;9ecc
	jr nz,L_9ED4		;9ece
	ld a,b			;9ed0
	and 040h		;9ed1
	ret z			;9ed3
L_9ED4:
	call 0833eh		;9ed4
	or 0ffh		;9ed7
	ret			;9ed9
L_9EDA:
	ld a,(0d1d6h)		;9eda
	cp 002h		;9edd
	jr nz,L_9EE7		;9edf
	ld a,(0d1d7h)		;9ee1
	cp 004h		;9ee4
	ret z			;9ee6
L_9EE7:
	ld a,(0d1d6h)		;9ee7
	cp 003h		;9eea
	ret z			;9eec
	ld hl,0d1e7h		;9eed
	ld a,(0d216h)		;9ef0
	or a			;9ef3
	jr z,L_9EF9		;9ef4
	ld hl,0d1e8h		;9ef6
L_9EF9:
	ld a,(hl)			;9ef9
	ld hl,08320h		;9efa
	cp 007h		;9efd
	jr c,L_9F0F		;9eff
	ld hl,08339h		;9f01
	cp 00eh		;9f04
	jr z,L_9F0F		;9f06
	cp 00bh		;9f08
	jr z,L_9F0F		;9f0a
	ld hl,0831bh		;9f0c
L_9F0F:
	jp (hl)			;9f0f
L_9F10:
	ld a,(0dcf4h)		;9f10
	or a			;9f13
	jr z,L_9F20		;9f14
	ld a,(0dcf5h)		;9f16
	or a			;9f19
	ret z			;9f1a
	ld a,(0dcf3h)		;9f1b
	xor 001h		;9f1e
L_9F20:
	ld (0dcf3h),a		;9f20
	ld hl,0dcb3h		;9f23
	or a			;9f26
	jr z,L_9F2C		;9f27
	ld hl,0dcd3h		;9f29
L_9F2C:
	ld de,(0dcb0h)		;9f2c
	ld a,(0dcb2h)		;9f30
	ld c,a			;9f33
	ld a,001h		;9f34
	call 08218h		;9f36
	xor a			;9f39
	ld (0dcf5h),a		;9f3a
	ret			;9f3d
L_9F3E:
	ld (0dd00h),hl		;9f3e
	ld (0dd02h),de		;9f41
	ld a,h			;9f45
	add a,008h		;9f46
	ld h,a			;9f48
	ld a,(0dd03h)		;9f49
	sub 010h		;9f4c
	ld b,a			;9f4e
	ld a,(0dd02h)		;9f4f
	ld c,a			;9f52
	xor a			;9f53
	ld d,000h		;9f54
	call 0829fh		;9f56
	ld hl,(0dd00h)		;9f59
	ld a,l			;9f5c
	add a,008h		;9f5d
	ld l,a			;9f5f
	ld a,(0dd02h)		;9f60
	sub 010h		;9f63
	ld c,a			;9f65
	ld a,(0dd03h)		;9f66
	ld b,a			;9f69
	xor a			;9f6a
	ld d,000h		;9f6b
	call 0829fh		;9f6d
	ld de,(0dd00h)		;9f70
	ld a,0c9h		;9f74
	call L_A05A		;9f76
	call 082a8h		;9f79
	ex de,hl			;9f7c
	ld a,(0dd03h)		;9f7d
	sub 010h		;9f80
	ld b,a			;9f82
	ld c,00eh		;9f83
	call L_A001		;9f85
	ld de,(0dd00h)		;9f88
	ld a,(0dd03h)		;9f8c
	sub 008h		;9f8f
	add a,d			;9f91
	ld d,a			;9f92
	ld a,0cah		;9f93
	call L_A05A		;9f95
	ld hl,(0dd00h)		;9f98
	ld a,008h		;9f9b
	add a,l			;9f9d
	ld l,a			;9f9e
	ld a,(0dd02h)		;9f9f
	sub 010h		;9fa2
	ld b,a			;9fa4
	ld c,00eh		;9fa5
	call L_A02D		;9fa7
	ld de,(0dd00h)		;9faa
	ld a,(0dd02h)		;9fae
	sub 008h		;9fb1
	add a,e			;9fb3
	ld e,a			;9fb4
	ld a,0cbh		;9fb5
	call L_A05A		;9fb7
	ld hl,(0dd00h)		;9fba
	ld a,(0dd03h)		;9fbd
	dec a			;9fc0
	add a,h			;9fc1
	ld h,a			;9fc2
	ld a,008h		;9fc3
	add a,l			;9fc5
	ld l,a			;9fc6
	ld a,(0dd02h)		;9fc7
	sub 010h		;9fca
	ld b,a			;9fcc
	ld c,00eh		;9fcd
	call L_A02D		;9fcf
	ld de,(0dd00h)		;9fd2
	ld a,(0dd02h)		;9fd6
	sub 008h		;9fd9
	add a,e			;9fdb
	ld e,a			;9fdc
	ld a,(0dd03h)		;9fdd
	sub 008h		;9fe0
	add a,d			;9fe2
	ld d,a			;9fe3
	ld a,0cch		;9fe4
	call L_A05A		;9fe6
	ld hl,(0dd00h)		;9fe9
	ld a,008h		;9fec
	add a,h			;9fee
	ld h,a			;9fef
	ld a,(0dd02h)		;9ff0
	dec a			;9ff3
	add a,l			;9ff4
	ld l,a			;9ff5
	ld a,(0dd03h)		;9ff6
	sub 010h		;9ff9
	ld b,a			;9ffb
	ld c,00eh		;9ffc
	jp L_A001		;9ffe
L_A001:
	ld a,024h		;a001
	ld (0d226h),a		;a003
	call 08287h		;a006
	out (c),h		;a009
	xor a			;a00b
	out (c),a		;a00c
	out (c),l		;a00e
	out (c),a		;a010
	ld hl,(0d227h)		;a012
	out (c),h		;a015
	xor a			;a017
	cp h			;a018
	jr nz,L_A01C		;a019
	inc a			;a01b
L_A01C:
	out (c),a		;a01c
	xor a			;a01e
	out (c),a		;a01f
	out (c),a		;a021
	out (c),l		;a023
	out (c),a		;a025
	ld a,070h		;a027
	out (c),a		;a029
	ei			;a02b
	ret			;a02c
L_A02D:
	ld a,024h		;a02d
	ld (0d226h),a		;a02f
	call 08287h		;a032
	out (c),h		;a035
	xor a			;a037
	out (c),a		;a038
	out (c),l		;a03a
	out (c),a		;a03c
	ld hl,(0d227h)		;a03e
	out (c),h		;a041
	xor a			;a043
	cp h			;a044
	jr nz,L_A048		;a045
	inc a			;a047
L_A048:
	out (c),a		;a048
	xor a			;a04a
	out (c),a		;a04b
	out (c),a		;a04d
	out (c),l		;a04f
	inc a			;a051
	out (c),a		;a052
	ld a,070h		;a054
	out (c),a		;a056
	ei			;a058
	ret			;a059
L_A05A:
	push bc			;a05a
	push hl			;a05b
	push de			;a05c
	call 08281h		;a05d
	ld a,l			;a060
	add a,080h		;a061
	ld l,a			;a063
	ld bc,00808h		;a064
	ld a,048h		;a067
	call 0820ch		;a069
	pop de			;a06c
	pop hl			;a06d
	pop bc			;a06e
	ret			;a06f

; ----------------------------------------------------------------------
; DATOS leido_A070: lo usa el codigo: 0xA07E ld (0a070h),bc; 0xA090 ld
;   a,(0a071h) -> 0x8266 (copia de la VRAM) (en +1); 0xA0A3 ld a,(0a071h) ->
;   0x8224 (copia a la VRAM) (en +1); 0xA082 ld (0a072h),hl (en +2) (6 bytes)
;   0xa070..0xa076  (6 bytes)
DATA_leido_A070:
	defb 061h,0afh,0edh,079h,0edh,069h	; a070

; ======================================================================
; CODIGO 0xa076..0xa0f4  (126 bytes)
; ======================================================================


L_A076:
	srl b		;a076
	ex de,hl			;a078
	push hl			;a079
	call L_A0E8		;a07a
	pop de			;a07d
	ld (0a070h),bc		;a07e
	ld (0a072h),hl		;a082
	ld (0a074h),de		;a085
L_A089:
	push bc			;a089
	ld hl,(0a072h)		;a08a
	ld de,0d300h		;a08d
	ld a,(0a071h)		;a090
	ld c,a			;a093
	ld b,000h		;a094
	call 08266h		;a096
	call L_A0BC		;a099
	ld de,(0a072h)		;a09c
	ld hl,0d300h		;a0a0
	ld a,(0a071h)		;a0a3
	ld c,a			;a0a6
	ld b,000h		;a0a7
	call 08224h		;a0a9
	ld hl,(0a072h)		;a0ac
	ld a,080h		;a0af
	call 08221h		;a0b1
	ld (0a072h),hl		;a0b4
	pop bc			;a0b7
	dec c			;a0b8
	jr nz,L_A089		;a0b9
	ret			;a0bb
L_A0BC:
	ld hl,0d300h		;a0bc
	ld de,(0a074h)		;a0bf
	ld a,(0a071h)		;a0c3
	ld b,a			;a0c6
L_A0C7:
	ld a,(hl)			;a0c7
	rra			;a0c8
	rra			;a0c9
	rra			;a0ca
	rra			;a0cb
	and 00fh		;a0cc
	cp d			;a0ce
	jr nz,L_A0D2		;a0cf
	ld a,e			;a0d1
L_A0D2:
	rla			;a0d2
	rla			;a0d3
	rla			;a0d4
	rla			;a0d5
	and 0f0h		;a0d6
	ld c,a			;a0d8
	ld a,(hl)			;a0d9
	and 00fh		;a0da
	cp d			;a0dc
	jr nz,L_A0E0		;a0dd
	ld a,e			;a0df
L_A0E0:
	and 00fh		;a0e0
	or c			;a0e2
	ld (hl),a			;a0e3
	inc hl			;a0e4
	djnz L_A0C7		;a0e5
	ret			;a0e7
L_A0E8:
	srl e		;a0e8
	rr d		;a0ea
	ld h,e			;a0ec
	ld l,d			;a0ed
	ld de,(0d223h)		;a0ee
	add hl,de			;a0f2
	ret			;a0f3

; ----------------------------------------------------------------------
; DATOS suelto_A0F4: nadie lo lee ni lo apunta (268 bytes)
;   0xa0f4..0xa200  (268 bytes)
DATA_suelto_A0F4:
	defb 000h,0d3h,03ah,0d7h,0a0h,04fh,006h,000h,0cdh,066h,082h,0cdh,022h,0a1h,0edh,05bh	; a0f4  ..:..O...f.."..[
	defb 0d8h,0a0h,021h,000h,0d3h,03ah,0d7h,0a0h,04fh,006h,000h,0cdh,024h,082h,02ah,0d8h	; a104  ..!..:..O...$.*.
	defb 0a0h,03eh,080h,0cdh,021h,082h,022h,0d8h,0a0h,0c1h,00dh,020h,0ceh,0c9h,021h,000h	; a114  .>..!.".... ..!.
	defb 0d3h,0edh,05bh,0dah,0a0h,03ah,0d7h,0a0h,047h,07eh,01fh,01fh,01fh,01fh,0e6h,00fh	; a124  ..[..:..G~......
	defb 0bah,020h,001h,07bh,017h,017h,017h,017h,0e6h,0f0h,04fh,07eh,0e6h,00fh,0bah,020h	; a134  . .{......O~...
	defb 001h,07bh,0e6h,00fh,0b1h,077h,023h,010h,0e0h,0c9h,0cbh,03bh,0cbh,01ah,063h,06ah	; a144  .{...w#.......cj
	defb 0edh,05bh,023h,0d2h,019h,0c9h,032h,096h,0a3h,0cdh,00bh,0a2h,0edh,053h,000h,0d2h	; a154  .[#...2......S..
	defb 0cdh,00bh,0a2h,0edh,053h,006h,0d2h,0cdh,00bh,0a2h,0edh,053h,002h,0d2h,07eh,023h	; a164  ....S......S..~#
	defb 032h,032h,0d2h,07eh,023h,032h,033h,0d2h,0cdh,0c6h,0a1h,02ah,006h,0d2h,0cdh,075h	; a174  22.~#23....*...u
	defb 082h,03eh,0ffh,032h,00ch,0d2h,03ch,032h,095h,0a3h,00eh,001h,02ah,002h,0d2h,07eh	; a184  .>.2..<2....*..~
	defb 047h,021h,033h,0d2h,07eh,0b7h,028h,01eh,078h,096h,038h,003h,00ch,018h,0fah,086h	; a194  G!3.~.(.x.8.....
	defb 03ch,032h,005h,0d2h,079h,032h,004h,0d2h,03ah,005h,0d2h,021h,033h,0d2h,0beh,0c0h	; a1a4  <2..y2..:..!3...
	defb 03eh,001h,032h,095h,0a3h,0c9h,03eh,001h,032h,005h,0d2h,02ah,002h,0d2h,07eh,03ch	; a1b4  >.2...>.2..*..~<
	defb 018h,0e3h,0cdh,0bdh,082h,02ah,002h,0d2h,07eh,02ah,000h,0d2h,04fh,087h,081h,0cdh	; a1c4  .....*..~*..O...
	defb 021h,082h,011h,00dh,0d2h,001h,003h,000h,0edh,0b0h,03ah,00fh,0d2h,0feh,001h,0c8h	; a1d4  !.........:.....
	defb 021h,03bh,0a3h,0cdh,06ch,082h,046h,023h,011h,080h,0d2h,03ah,00dh,0d2h,086h,012h	; a1e4  !...l.F#...:....
	defb 023h,013h,03ah,00eh,0d2h,086h,012h,023h,013h,07eh,012h,023h	; a1f4  #.:....#.~.#
