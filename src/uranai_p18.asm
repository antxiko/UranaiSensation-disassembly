; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p18 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9821  (33 bytes)
; ======================================================================


L_9800:
	jp L_9824		;9800
L_9803:
	jp L_9A45		;9803
L_9806:
	jp L_9A89		;9806
L_9809:
	jp L_9B25		;9809
L_980C:
	jp L_9B97		;980c
L_980F:
	jp L_9BD6		;980f
L_9812:
	jp L_9DA7		;9812
L_9815:
	jp L_9E16		;9815
L_9818:
	jp L_9DBC		;9818
L_981B:
	jp L_9D8F		;981b
L_981E:
	jp L_9ECA		;981e

; ----------------------------------------------------------------------
; DATOS vars_9821: variables de la parte detras de la tabla de saltos (0x9823
;   la usan 0x98AF-0x98EC); empiezan valiendo c3 fa 9d, que parece un jp
;   0x9DFA y no lo es (3 bytes)
;   0x9821..0x9824  (3 bytes)
DATA_vars_9821:
	defb 0c3h,0fah,09dh	; 9821

; ======================================================================
; CODIGO 0x9824..0x991e  (250 bytes)
; ======================================================================


L_9824:
	ld a,(0d1deh)		;9824
	or a			;9827
	jr nz,L_9831		;9828
	xor a			;982a
	ld (0d234h),a		;982b
	call L_985C		;982e
L_9831:
	call L_9907		;9831
	ld a,(0d217h)		;9834
	cp 004h		;9837
	jr z,L_9872		;9839
	ld hl,0992eh		;983b
	ld a,(0d217h)		;983e
	dec a			;9841
	call 0826ch		;9842
	xor a			;9845
	call L_A081		;9846
	call L_984F		;9849
	jp 08251h		;984c
L_984F:
	ld a,008h		;984f
	ld (0d1d7h),a		;9851
	xor a			;9854
	ld (0d1deh),a		;9855
	ld (0d1d8h),a		;9858
	ret			;985b
L_985C:
	ld hl,0d0dch		;985c
	res 4,(hl)		;985f
	res 6,(hl)		;9861
	ld a,(09234h)		;9863
	or a			;9866
	jp z,0844ch		;9867
	call 083d4h		;986a
	xor a			;986d
	ld (09234h),a		;986e
	ret			;9871
L_9872:
	ld hl,09a39h		;9872
	call 08275h		;9875
	ld a,(0daf2h)		;9878
	call L_98F2		;987b
	ld hl,0487ah		;987e
	call L_988D		;9881
	ld a,(0daf3h)		;9884
	call L_98F2		;9887
	ld hl,0707ah		;988a
L_988D:
	ex de,hl			;988d
	call L_98AE		;988e
	ld h,048h		;9891
	ld e,002h		;9893
	call L_98A4		;9895
	ld h,070h		;9898
	ld e,009h		;989a
	call L_98A4		;989c
	call 08203h		;989f
	jr L_984F		;98a2
L_98A4:
	ld l,072h		;98a4
	ld d,00eh		;98a6
	ld bc,02010h		;98a8
	jp L_A003		;98ab
L_98AE:
	xor a			;98ae
	ld (09823h),a		;98af
L_98B2:
	ld a,(09823h)		;98b2
	cp 008h		;98b5
	jr z,L_98E6		;98b7
	ld a,(hl)			;98b9
	inc hl			;98ba
	cp 0ffh		;98bb
	jr z,L_98E6		;98bd
	cp 043h		;98bf
	jr z,L_98D2		;98c1
	cp 044h		;98c3
	jr z,L_98D2		;98c5
	call 0827eh		;98c7
	call 082a8h		;98ca
	call L_98EB		;98cd
	jr L_98B2		;98d0
L_98D2:
	push af			;98d2
	push hl			;98d3
	push de			;98d4
	ex af,af'			;98d5
	ld a,e			;98d6
	sub 008h		;98d7
	ld e,a			;98d9
	ex af,af'			;98da
	call 0827eh		;98db
	pop de			;98de
	pop hl			;98df
	pop af			;98e0
	call L_98EB		;98e1
	jr L_98B2		;98e4
L_98E6:
	xor a			;98e6
	ld (09823h),a		;98e7
	ret			;98ea
L_98EB:
	push hl			;98eb
	ld hl,09823h		;98ec
	inc (hl)			;98ef
	pop hl			;98f0
	ret			;98f1
L_98F2:
	call L_98F7		;98f2
	ex de,hl			;98f5
	ret			;98f6
L_98F7:
	ld l,a			;98f7
	ld h,000h		;98f8
	add hl,hl			;98fa
	add hl,hl			;98fb
	add hl,hl			;98fc
	add hl,hl			;98fd
	push hl			;98fe
	pop bc			;98ff
	add hl,hl			;9900
	add hl,bc			;9901
	ld de,0d700h		;9902
	add hl,de			;9905
	ret			;9906
L_9907:
	ld a,(0d217h)		;9907
	dec a			;990a
	add a,a			;990b
	add a,a			;990c
	ld hl,0991eh		;990d
	call 08221h		;9910
	ld e,(hl)			;9913
	inc hl			;9914
	ld d,(hl)			;9915
	inc hl			;9916
	ld a,(hl)			;9917
	inc hl			;9918
	ld h,(hl)			;9919
	ld l,a			;991a
	jp L_9ECB		;991b

; ----------------------------------------------------------------------
; DATOS leido_991E: lo usa el codigo: 0x990D ld hl,0991eh -> 0x8221 (tabla de
;   bytes: HL + A); 0x983B ld hl,0992eh -> 0x826C (tabla de palabras: la de A)
;   (en +16) (283 bytes)
;   0x991e..0x9a39  (283 bytes)
DATA_leido_991E:
	defb 058h,078h,058h,048h,048h,08ah,008h,038h,038h,0dah,080h,018h,018h,080h,070h,040h	; 991e  XxXHH..88.....p@
	defb 036h,099h,087h,099h,0d2h,099h,036h,099h,03eh,099h,04dh,099h,034h,0d2h,005h,000h	; 992e  6.....6.>.M.4...
	defb 060h,050h,000h,070h,050h,000h,080h,050h,000h,090h,050h,000h,0a0h,050h,000h,058h	; 993e  `P.pP..P..P..P.X
	defb 060h,04fh,007h,027h,02ch,02ah,015h,002h,010h,022h,016h,01ah,0feh,058h,070h,04fh	; 994e  `O.',*..."...XpO
	defb 085h,02dh,000h,012h,0c1h,029h,073h,0feh,058h,080h,04fh,0cch,02eh,015h,000h,0fdh	; 995e  .-...)s.X.O.....
	defb 0bfh,000h,0beh,0fdh,016h,015h,029h,006h,0feh,058h,090h,04fh,038h,06dh,019h,053h	; 996e  ......)..X.O8m.S
	defb 062h,0feh,058h,0a0h,04fh,023h,0cch,029h,0ffh,08fh,099h,09bh,099h,034h,0d2h,004h	; 997e  b.X.O#.).....4..
	defb 000h,012h,040h,000h,022h,040h,000h,032h,040h,000h,042h,040h,000h,048h,012h,04fh	; 998e  ..@."@.2@.B@.H.O
	defb 059h,05ah,099h,0fdh,0c0h,0fdh,000h,061h,0cch,023h,019h,00ch,012h,009h,07ah,0feh	; 999e  YZ.....a.#....z.
	defb 048h,022h,04fh,024h,029h,08ch,02dh,000h,081h,00bh,00eh,029h,07ah,09ch,052h,0feh	; 99ae  H"O$).-....)z.R.
	defb 048h,032h,04fh,0c5h,0cdh,028h,000h,060h,061h,019h,053h,062h,0feh,048h,042h,04fh	; 99be  H2O..(.`a.Sb.HBO
	defb 023h,0cch,029h,0ffh,0dah,099h,0ech,099h,034h,0d2h,003h,002h,088h,020h,000h,088h	; 99ce  #.).....4.... ..
	defb 088h,000h,098h,020h,000h,098h,088h,000h,0a8h,020h,000h,0a8h,0a0h,000h,028h,088h	; 99de  ... ..... ....(.
	defb 04fh,020h,014h,022h,013h,000h,023h,027h,003h,016h,01ah,000h,000h,04fh,05bh,054h	; 99ee  O ."..#'.....O[T
	defb 015h,0a6h,0a7h,019h,00ch,006h,028h,07ah,0feh,028h,098h,04fh,0a5h,0a7h,016h,07ch	; 99fe  ......(z.(.O...|
	defb 07dh,02dh,0fdh,0f9h,0fdh,003h,073h,01ah,000h,000h,04fh,076h,077h,019h,003h,028h	; 9a0e  }-....s...Ovw..(
	defb 00ah,020h,07ah,0feh,028h,0a8h,04fh,0a6h,0a7h,02dh,045h,05bh,054h,016h,012h,006h	; 9a1e  . z.(.O..-E[T...
	defb 003h,07ah,09ch,000h,000h,000h,04fh,023h,0cch,029h,0ffh	; 9a2e  .z....O#.).

; ----------------------------------------------------------------------
; DATOS texto_9A39: texto: x, y y las letras hasta 0xFF; lo usa 0x9875 (12
;   bytes)
;   0x9a39..0x9a45  (12 bytes)
DATA_texto_9A39:
	defb 068h,07ah,014h,0feh,090h,07ah,019h,053h,062h,01ah,051h,0ffh	; 9a39  hz...z.Sb.Q.

; ======================================================================
; CODIGO 0x9a45..0x9ac3  (126 bytes)
; ======================================================================


L_9A45:
	ld a,(0d1d7h)		;9a45
	cp 008h		;9a48
	jr nz,L_9A6A		;9a4a
	ld a,(0d1d8h)		;9a4c
	cp 003h		;9a4f
	jr z,L_9A7D		;9a51
	cp 002h		;9a53
	jr nz,L_9A6A		;9a55
	ld a,(0e100h)		;9a57
	or a			;9a5a
	jr nz,L_9A6A		;9a5b
	ld a,(0d1c8h)		;9a5d
	cp 080h		;9a60
	jr z,L_9A6D		;9a62
	cp 010h		;9a64
	jr z,L_9A74		;9a66
	or a			;9a68
	ret			;9a69
L_9A6A:
	jp L_A137		;9a6a
L_9A6D:
	call 08251h		;9a6d
	ld a,005h		;9a70
	jr L_9A78		;9a72
L_9A74:
	call 082f3h		;9a74
	xor a			;9a77
L_9A78:
	ld (0d1eeh),a		;9a78
	scf			;9a7b
	ret			;9a7c
L_9A7D:
	ld a,(0e100h)		;9a7d
	or a			;9a80
	jr nz,L_9A6A		;9a81
	xor a			;9a83
	ld (0d1cdh),a		;9a84
	scf			;9a87
	ret			;9a88
L_9A89:
	ld a,(0d1deh)		;9a89
	or a			;9a8c
	jr nz,L_9A9A		;9a8d
	call L_9DFE		;9a8f
	ld a,(0d217h)		;9a92
	cp 004h		;9a95
	call nz,L_9B25		;9a97
L_9A9A:
	ld hl,00808h		;9a9a
	ld a,(0d217h)		;9a9d
	cp 002h		;9aa0
	jr nz,L_9AA7		;9aa2
	ld hl,00858h		;9aa4
L_9AA7:
	ld de,09028h		;9aa7
	call L_9ECB		;9aaa
	ld hl,09ac3h		;9aad
	ld a,(0d217h)		;9ab0
	cp 002h		;9ab3
	jr nz,L_9ABA		;9ab5
	ld hl,09af4h		;9ab7
L_9ABA:
	xor a			;9aba
	call L_A081		;9abb
	xor a			;9abe
	ld (0d1deh),a		;9abf
	ret			;9ac2

; ----------------------------------------------------------------------
; DATOS leido_9AC3: lo usa el codigo: 0x9AAD ld hl,09ac3h; 0x9AB7 ld hl,09af4h
;   (en +49) (98 bytes)
;   0x9ac3..0x9b25  (98 bytes)
DATA_leido_9AC3:
	defb 0cbh,09ah,0d4h,09ah,0dch,0d1h,000h,003h,022h,010h,000h,022h,038h,000h,022h,070h	; 9ac3  ........".."8."p
	defb 000h,010h,012h,0cch,00ah,016h,000h,081h,08dh,00ch,01fh,00dh,006h,051h,0feh,018h	; 9ad3  .............Q..
	defb 022h,013h,02ah,0ceh,000h,000h,0d4h,028h,02eh,010h,04bh,000h,000h,024h,022h,029h	; 9ae3  ".*....(..K..$")
	defb 0ffh,0fch,09ah,005h,09bh,0dch,0d1h,000h,003h,072h,010h,000h,072h,038h,000h,072h	; 9af3  .........r..r8.r
	defb 070h,000h,010h,062h,0cch,00ah,016h,000h,081h,08dh,00ch,01fh,00dh,006h,051h,0feh	; 9b03  p..b..........Q.
	defb 018h,072h,013h,02ah,0ceh,000h,000h,0d4h,028h,02eh,010h,04bh,000h,000h,024h,022h	; 9b13  .r.*....(..K..$"
	defb 029h,0ffh	; 9b23

; ======================================================================
; CODIGO 0x9b25..0x9b53  (46 bytes)
; ======================================================================


L_9B25:
	call L_9B38		;9b25
	push hl			;9b28
	push bc			;9b29
	ld de,0000dh		;9b2a
	call L_A003		;9b2d
	pop bc			;9b30
	pop hl			;9b31
	ld de,00e0fh		;9b32
	jp L_A003		;9b35
L_9B38:
	ld a,(0d217h)		;9b38
	dec a			;9b3b
	ld hl,09b53h		;9b3c
	call 0826ch		;9b3f
	ld a,(0d234h)		;9b42
	add a,a			;9b45
	add a,a			;9b46
	call 08221h		;9b47
	ld c,(hl)			;9b4a
	inc hl			;9b4b
	ld b,(hl)			;9b4c
	inc hl			;9b4d
	ld a,(hl)			;9b4e
	inc hl			;9b4f
	ld h,(hl)			;9b50
	ld l,a			;9b51
	ret			;9b52

; ----------------------------------------------------------------------
; DATOS leido_9B53: lo usa el codigo: 0x9B3C ld hl,09b53h -> 0x826C (tabla de
;   palabras: la de A) (68 bytes)
;   0x9b53..0x9b97  (68 bytes)
DATA_leido_9B53:
	defb 05bh,09bh,06fh,09bh,07fh,09bh,05bh,09bh,00ah,052h,05fh,060h,00dh,03ah,06ch,060h	; 9b53  [.o...[..R_`.:l`
	defb 00dh,05ah,07ch,060h,00ah,02ah,08fh,060h,00dh,01ah,09ch,060h,00ch,06ah,00fh,050h	; 9b63  .Z|`.*.`...`.j.P
	defb 00ah,062h,021h,050h,00ch,04ah,02fh,050h,00ch,01ah,03fh,050h,00ah,052h,087h,030h	; 9b73  .b!P.J/P..?P.R.0
	defb 00ah,052h,087h,098h,00ah,052h,097h,030h,00ah,042h,097h,098h,00ah,062h,0a7h,030h	; 9b83  .R...R.0.B...b.0
	defb 00dh,01ah,0a4h,0b0h	; 9b93

; ======================================================================
; CODIGO 0x9b97..0x9c30  (153 bytes)
; ======================================================================


L_9B97:
	call 082bah		;9b97
	ld hl,0181dh		;9b9a
	ld a,(0d217h)		;9b9d
	cp 002h		;9ba0
	jr nz,L_9BA7		;9ba2
	ld hl,0186dh		;9ba4
L_9BA7:
	ld a,(0d1dch)		;9ba7
	or a			;9baa
	jr z,L_9BBA		;9bab
	ld hl,0401dh		;9bad
	ld a,(0d217h)		;9bb0
	cp 002h		;9bb3
	jr nz,L_9BBA		;9bb5
	ld hl,0406dh		;9bb7
L_9BBA:
	ld bc,01a0eh		;9bba
	ld a,(0d1dch)		;9bbd
	or a			;9bc0
	jr z,L_9BC6		;9bc1
	ld bc,02a0eh		;9bc3
L_9BC6:
	ld de,00002h		;9bc6
	push hl			;9bc9
	push bc			;9bca
	call L_A003		;9bcb
	pop bc			;9bce
	pop hl			;9bcf
	ld de,00e0fh		;9bd0
	jp L_A003		;9bd3
L_9BD6:
	ld a,(0e100h)		;9bd6
	or a			;9bd9
	jr z,L_9BE8		;9bda
	ld a,(0d1deh)		;9bdc
	or a			;9bdf
	jr nz,L_9BEB		;9be0
	call L_9D14		;9be2
	jp c,L_9D2E		;9be5
L_9BE8:
	call L_9DD4		;9be8
L_9BEB:
	ld hl,08008h		;9beb
	ld a,(0d217h)		;9bee
	cp 002h		;9bf1
	jr nz,L_9BF8		;9bf3
	ld hl,08058h		;9bf5
L_9BF8:
	ld de,07858h		;9bf8
	call L_9ECB		;9bfb
	ld a,(0e100h)		;9bfe
	or a			;9c01
	jr z,L_9C1B		;9c02
	ld hl,09c30h		;9c04
	ld a,(0d217h)		;9c07
	cp 002h		;9c0a
	jr nz,L_9C11		;9c0c
	ld hl,09c4ah		;9c0e
L_9C11:
	xor a			;9c11
	call L_A081		;9c12
L_9C15:
	xor a			;9c15
	ld (0d1deh),a		;9c16
	or a			;9c19
	ret			;9c1a
L_9C1B:
	ld hl,09cdah		;9c1b
	ld a,(0d217h)		;9c1e
	cp 002h		;9c21
	jr nz,L_9C28		;9c23
	ld hl,09cf7h		;9c25
L_9C28:
	call 08275h		;9c28
	call 08203h		;9c2b
	jr L_9C15		;9c2e

; ----------------------------------------------------------------------
; DATOS leido_9C30: lo usa el codigo: 0x9C04 ld hl,09c30h; 0x9C0E ld hl,09c4ah
;   (en +26) (170 bytes)
;   0x9c30..0x9cda  (170 bytes)
DATA_leido_9C30:
	defb 038h,09ch,064h,09ch,0eeh,0d1h,003h,002h,010h,088h,000h,010h,0beh,000h,020h,088h	; 9c30  8.d........... .
	defb 000h,020h,0beh,000h,030h,088h,000h,030h,0beh,000h,052h,09ch,09fh,09ch,0eeh,0d1h	; 9c40  . ..0..0..R.....
	defb 003h,002h,060h,088h,000h,060h,0beh,000h,070h,088h,000h,070h,0beh,000h,080h,088h	; 9c50  ..`..`..p..p....
	defb 000h,080h,0beh,000h,090h,010h,00ch,02bh,008h,02bh,037h,0feh,0c6h,010h,00ch,02bh	; 9c60  .......+.+7....+
	defb 008h,02bh,038h,0feh,090h,020h,00ch,02bh,008h,02bh,039h,0feh,0c6h,020h,00ch,02bh	; 9c70  .+8.. .+.+9.. .+
	defb 008h,02bh,03ah,0feh,090h,030h,006h,000h,027h,000h,04bh,0feh,0c6h,030h,024h,000h	; 9c80  .+:..0..'.K..0$.
	defb 022h,000h,029h,0feh,090h,040h,0dbh,029h,002h,01ah,000h,0cch,02ah,051h,0ffh,090h	; 9c90  ".)..@.)....*Q..
	defb 060h,00ch,02bh,008h,02bh,037h,0feh,0c6h,060h,00ch,02bh,008h,02bh,038h,0feh,090h	; 9ca0  `.+.+7..`.+.+8..
	defb 070h,00ch,02bh,008h,02bh,039h,0feh,0c6h,070h,00ch,02bh,008h,02bh,03ah,0feh,090h	; 9cb0  p.+.+9..p.+.+:..
	defb 080h,006h,000h,027h,000h,04bh,0feh,0c6h,080h,024h,000h,022h,000h,029h,0feh,090h	; 9cc0  ...'.K...$.".)..
	defb 090h,0dbh,029h,002h,01ah,000h,0cch,02ah,051h,0ffh	; 9cd0  ..)....*Q.

; ----------------------------------------------------------------------
; DATOS texto_9CDA: texto: x, y y las letras hasta 0xFF; lo usa 0x9C28 (29
;   bytes)
;   0x9cda..0x9cf7  (29 bytes)
DATA_texto_9CDA:
	defb 090h,012h,01ah,02eh,0cbh,034h,000h,0d4h,028h,02eh,010h,04bh,0cbh,0feh,090h,022h	; 9cda  .....4..(..K..."
	defb 0d4h,028h,02eh,014h,001h,003h,014h,00ch,01fh,00dh,052h,052h,0ffh	; 9cea  .(........RR.

; ----------------------------------------------------------------------
; DATOS texto_9CF7: texto: x, y y las letras hasta 0xFF; lo usa 0x9C28 (29
;   bytes)
;   0x9cf7..0x9d14  (29 bytes)
DATA_texto_9CF7:
	defb 090h,062h,01ah,02eh,0cbh,034h,000h,0d4h,028h,02eh,010h,04bh,0cbh,0feh,090h,072h	; 9cf7  .b...4..(..K...r
	defb 0d4h,028h,02eh,014h,001h,003h,014h,00ch,01fh,00dh,052h,052h,0ffh	; 9d07  .(........RR.

; ======================================================================
; CODIGO 0x9d14..0x9d5b  (71 bytes)
; ======================================================================


L_9D14:
	ld h,001h		;9d14
L_9D16:
	ld c,000h		;9d16
L_9D18:
	ld b,000h		;9d18
L_9D1A:
	call 000a8h		;9d1a   ; BIOS LPTSTT - Tests printer status
	jr z,L_9D22		;9d1d
	cp 0ffh		;9d1f
	ret z			;9d21
L_9D22:
	djnz L_9D1A		;9d22
	dec c			;9d24
	jr nz,L_9D18		;9d25
	dec h			;9d27
	jr nz,L_9D16		;9d28
	ld c,001h		;9d2a
	scf			;9d2c
	ret			;9d2d
L_9D2E:
	call L_9DE9		;9d2e
	ld hl,0a808h		;9d31
	ld a,(0d217h)		;9d34
	cp 002h		;9d37
	jr nz,L_9D3E		;9d39
	ld hl,0a858h		;9d3b
L_9D3E:
	ld de,04038h		;9d3e
	call L_9ECB		;9d41
	ld hl,09d5bh		;9d44
	ld a,(0d217h)		;9d47
	cp 002h		;9d4a
	jr nz,L_9D51		;9d4c
	ld hl,09d75h		;9d4e
L_9D51:
	call 08275h		;9d51
	ld a,001h		;9d54
	ld (0d1deh),a		;9d56
	scf			;9d59
	ret			;9d5a

; ----------------------------------------------------------------------
; DATOS texto_9D5B: texto: x, y y las letras hasta 0xFF; lo usa 0x9D51 (26
;   bytes)
;   0x9d5b..0x9d75  (26 bytes)
DATA_texto_9D5B:
	defb 0b0h,012h,0d4h,028h,02eh,010h,04bh,0beh,0feh,0b0h,022h,00eh,032h,014h,00bh,02ah	; 9d5b  ...(..K...".2..*
	defb 013h,0feh,0b0h,032h,002h,01fh,00eh,02eh,052h,0ffh	; 9d6b  ...2....R.

; ----------------------------------------------------------------------
; DATOS texto_9D75: texto: x, y y las letras hasta 0xFF; lo usa 0x9D51 (26
;   bytes)
;   0x9d75..0x9d8f  (26 bytes)
DATA_texto_9D75:
	defb 0b0h,062h,0d4h,028h,02eh,010h,04bh,0beh,0feh,0b0h,072h,00eh,032h,014h,00bh,02ah	; 9d75  .b.(..K...r.2..*
	defb 013h,0feh,0b0h,082h,002h,01fh,00eh,02eh,052h,0ffh	; 9d85  ........R.

; ======================================================================
; CODIGO 0x9d8f..0x9e6c  (221 bytes)
; ======================================================================


L_9D8F:
	call 082bah		;9d8f
	ld de,08008h		;9d92
	ld a,(0d217h)		;9d95
	cp 002h		;9d98
	jr nz,L_9D9F		;9d9a
	ld de,08058h		;9d9c
L_9D9F:
	ld bc,07858h		;9d9f
	ld hl,04028h		;9da2
	jr L_9DCF		;9da5
L_9DA7:
	ld de,0a808h		;9da7
	ld a,(0d217h)		;9daa
	cp 002h		;9dad
	jr nz,L_9DB4		;9daf
	ld de,0a858h		;9db1
L_9DB4:
	ld bc,04038h		;9db4
	ld hl,00028h		;9db7
	jr L_9DCF		;9dba
L_9DBC:
	ld de,00808h		;9dbc
	ld a,(0d217h)		;9dbf
	cp 002h		;9dc2
	jr nz,L_9DC9		;9dc4
	ld de,00858h		;9dc6
L_9DC9:
	ld bc,09028h		;9dc9
	ld hl,00000h		;9dcc
L_9DCF:
	ld a,080h		;9dcf
	jp 0820ch		;9dd1
L_9DD4:
	ld hl,08008h		;9dd4
	ld a,(0d217h)		;9dd7
	cp 002h		;9dda
	jr nz,L_9DE1		;9ddc
	ld hl,08058h		;9dde
L_9DE1:
	ld bc,07858h		;9de1
	ld de,04028h		;9de4
	jr L_9E11		;9de7
L_9DE9:
	ld hl,0a808h		;9de9
	ld a,(0d217h)		;9dec
	cp 002h		;9def
	jr nz,L_9DF6		;9df1
	ld hl,0a858h		;9df3
L_9DF6:
	ld bc,04038h		;9df6
	ld de,00028h		;9df9
	jr L_9E11		;9dfc
L_9DFE:
	ld hl,00808h		;9dfe
	ld a,(0d217h)		;9e01
	cp 002h		;9e04
	jr nz,L_9E0B		;9e06
	ld hl,00858h		;9e08
L_9E0B:
	ld bc,09028h		;9e0b
	ld de,00000h		;9e0e
L_9E11:
	ld a,020h		;9e11
	jp 0820ch		;9e13
L_9E16:
	ld a,(0e100h)		;9e16
	or a			;9e19
	jp z,08251h		;9e1a
	ld hl,09e6ch		;9e1d
	ld a,(0d217h)		;9e20
	cp 002h		;9e23
	jr nz,L_9E2A		;9e25
	ld hl,09e76h		;9e27
L_9E2A:
	ld a,(0d1eeh)		;9e2a
	call 0826ch		;9e2d
	ld de,0000ah		;9e30
	ld bc,00e0fh		;9e33
	call L_9E5D		;9e36
	ld hl,0903ah		;9e39
	ld a,(0d217h)		;9e3c
	cp 002h		;9e3f
	jr nz,L_9E46		;9e41
	ld hl,0908ah		;9e43
L_9E46:
	ld bc,06010h		;9e46
	call 082b4h		;9e49
	ld hl,09e80h		;9e4c
	ld a,(0d217h)		;9e4f
	cp 002h		;9e52
	jr nz,L_9E59		;9e54
	ld hl,09ea5h		;9e56
L_9E59:
	xor a			;9e59
	jp L_A081		;9e5a
L_9E5D:
	push bc			;9e5d
	ld bc,02a0ah		;9e5e
	push hl			;9e61
	push bc			;9e62
	call L_A003		;9e63
	pop bc			;9e66
	pop hl			;9e67
	pop de			;9e68
	jp L_A003		;9e69

; ----------------------------------------------------------------------
; DATOS leido_9E6C: lo usa el codigo: 0x9E1D ld hl,09e6ch; 0x9E27 ld hl,09e76h
;   -> 0x826C (tabla de palabras: la de A) (en +10); 0x9E4C ld hl,09e80h (en
;   +20); 0x9E56 ld hl,09ea5h (en +57) (94 bytes)
;   0x9e6c..0x9eca  (94 bytes)
DATA_leido_9E6C:
	defb 00fh,090h,00fh,0c6h,01fh,090h,01fh,0c6h,02fh,090h,05fh,090h,05fh,0c6h,06fh,090h	; 9e6c  ......../._._.o.
	defb 06fh,0c6h,07fh,090h,088h,09eh,08eh,09eh,0cdh,0d1h,000h,002h,052h,090h,000h,052h	; 9e7c  o...........R..R
	defb 0b0h,000h,090h,042h,00ah,02ah,0cbh,000h,002h,002h,0cbh,00dh,006h,051h,0feh,098h	; 9e8c  ...B.*.......Q..
	defb 052h,01ah,002h,000h,000h,002h,002h,004h,0ffh,0c4h,09eh,0adh,09eh,0cdh,0d1h,000h	; 9e9c  R...............
	defb 002h,090h,092h,00ah,02ah,0cbh,000h,002h,002h,0cbh,00dh,006h,051h,0feh,098h,0a2h	; 9eac  ....*.......Q...
	defb 01ah,002h,000h,000h,002h,002h,004h,0ffh,0a2h,090h,000h,0a2h,0b0h,000h	; 9ebc  ..............

; ======================================================================
; CODIGO 0x9eca..0x9ffd  (307 bytes)
; ======================================================================


L_9ECA:
	ret			;9eca
L_9ECB:
	ld (0dd00h),hl		;9ecb
	ld (0dd02h),de		;9ece
	ld a,h			;9ed2
	add a,008h		;9ed3
	ld h,a			;9ed5
	ld a,(0dd03h)		;9ed6
	sub 010h		;9ed9
	ld b,a			;9edb
	ld a,(0dd02h)		;9edc
	ld c,a			;9edf
	xor a			;9ee0
	ld d,000h		;9ee1
	call 0829fh		;9ee3
	ld hl,(0dd00h)		;9ee6
	ld a,l			;9ee9
	add a,008h		;9eea
	ld l,a			;9eec
	ld a,(0dd02h)		;9eed
	sub 010h		;9ef0
	ld c,a			;9ef2
	ld a,(0dd03h)		;9ef3
	ld b,a			;9ef6
	xor a			;9ef7
	ld d,000h		;9ef8
	call 0829fh		;9efa
	ld de,(0dd00h)		;9efd
	ld a,0c9h		;9f01
	call L_9FE7		;9f03
	call 082a8h		;9f06
	ex de,hl			;9f09
	ld a,(0dd03h)		;9f0a
	sub 010h		;9f0d
	ld b,a			;9f0f
	ld c,00eh		;9f10
	call L_9F8E		;9f12
	ld de,(0dd00h)		;9f15
	ld a,(0dd03h)		;9f19
	sub 008h		;9f1c
	add a,d			;9f1e
	ld d,a			;9f1f
	ld a,0cah		;9f20
	call L_9FE7		;9f22
	ld hl,(0dd00h)		;9f25
	ld a,008h		;9f28
	add a,l			;9f2a
	ld l,a			;9f2b
	ld a,(0dd02h)		;9f2c
	sub 010h		;9f2f
	ld b,a			;9f31
	ld c,00eh		;9f32
	call L_9FBA		;9f34
	ld de,(0dd00h)		;9f37
	ld a,(0dd02h)		;9f3b
	sub 008h		;9f3e
	add a,e			;9f40
	ld e,a			;9f41
	ld a,0cbh		;9f42
	call L_9FE7		;9f44
	ld hl,(0dd00h)		;9f47
	ld a,(0dd03h)		;9f4a
	dec a			;9f4d
	add a,h			;9f4e
	ld h,a			;9f4f
	ld a,008h		;9f50
	add a,l			;9f52
	ld l,a			;9f53
	ld a,(0dd02h)		;9f54
	sub 010h		;9f57
	ld b,a			;9f59
	ld c,00eh		;9f5a
	call L_9FBA		;9f5c
	ld de,(0dd00h)		;9f5f
	ld a,(0dd02h)		;9f63
	sub 008h		;9f66
	add a,e			;9f68
	ld e,a			;9f69
	ld a,(0dd03h)		;9f6a
	sub 008h		;9f6d
	add a,d			;9f6f
	ld d,a			;9f70
	ld a,0cch		;9f71
	call L_9FE7		;9f73
	ld hl,(0dd00h)		;9f76
	ld a,008h		;9f79
	add a,h			;9f7b
	ld h,a			;9f7c
	ld a,(0dd02h)		;9f7d
	dec a			;9f80
	add a,l			;9f81
	ld l,a			;9f82
	ld a,(0dd03h)		;9f83
	sub 010h		;9f86
	ld b,a			;9f88
	ld c,00eh		;9f89
	jp L_9F8E		;9f8b
L_9F8E:
	ld a,024h		;9f8e
	ld (0d226h),a		;9f90
	call 08287h		;9f93
	out (c),h		;9f96
	xor a			;9f98
	out (c),a		;9f99
	out (c),l		;9f9b
	out (c),a		;9f9d
	ld hl,(0d227h)		;9f9f
	out (c),h		;9fa2
	xor a			;9fa4
	cp h			;9fa5
	jr nz,L_9FA9		;9fa6
	inc a			;9fa8
L_9FA9:
	out (c),a		;9fa9
	xor a			;9fab
	out (c),a		;9fac
	out (c),a		;9fae
	out (c),l		;9fb0
	out (c),a		;9fb2
	ld a,070h		;9fb4
	out (c),a		;9fb6
	ei			;9fb8
	ret			;9fb9
L_9FBA:
	ld a,024h		;9fba
	ld (0d226h),a		;9fbc
	call 08287h		;9fbf
	out (c),h		;9fc2
	xor a			;9fc4
	out (c),a		;9fc5
	out (c),l		;9fc7
	out (c),a		;9fc9
	ld hl,(0d227h)		;9fcb
	out (c),h		;9fce
	xor a			;9fd0
	cp h			;9fd1
	jr nz,L_9FD5		;9fd2
	inc a			;9fd4
L_9FD5:
	out (c),a		;9fd5
	xor a			;9fd7
	out (c),a		;9fd8
	out (c),a		;9fda
	out (c),l		;9fdc
	inc a			;9fde
	out (c),a		;9fdf
	ld a,070h		;9fe1
	out (c),a		;9fe3
	ei			;9fe5
	ret			;9fe6
L_9FE7:
	push bc			;9fe7
	push hl			;9fe8
	push de			;9fe9
	call 08281h		;9fea
	ld a,l			;9fed
	add a,080h		;9fee
	ld l,a			;9ff0
	ld bc,00808h		;9ff1
	ld a,048h		;9ff4
	call 0820ch		;9ff6
	pop de			;9ff9
	pop hl			;9ffa
	pop bc			;9ffb
	ret			;9ffc

; ----------------------------------------------------------------------
; DATOS leido_9FFD: lo usa el codigo: 0xA00B ld (09ffdh),bc; 0xA01D ld
;   a,(09ffeh) -> 0x8266 (copia de la VRAM) (en +1); 0xA030 ld a,(09ffeh) ->
;   0x8224 (copia a la VRAM) (en +1); 0xA00F ld (09fffh),hl (en +2) (6 bytes)
;   0x9ffd..0xa003  (6 bytes)
DATA_leido_9FFD:
	defb 00eh,015h,0a0h,015h,00fh,00eh	; 9ffd

; ======================================================================
; CODIGO 0xa003..0xa12f  (300 bytes)
; ======================================================================


L_A003:
	srl b		;a003
	ex de,hl			;a005
	push hl			;a006
	call L_A075		;a007
	pop de			;a00a
	ld (09ffdh),bc		;a00b
	ld (09fffh),hl		;a00f
	ld (0a001h),de		;a012
L_A016:
	push bc			;a016
	ld hl,(09fffh)		;a017
	ld de,0d300h		;a01a
	ld a,(09ffeh)		;a01d
	ld c,a			;a020
	ld b,000h		;a021
	call 08266h		;a023
	call L_A049		;a026
	ld de,(09fffh)		;a029
	ld hl,0d300h		;a02d
	ld a,(09ffeh)		;a030
	ld c,a			;a033
	ld b,000h		;a034
	call 08224h		;a036
	ld hl,(09fffh)		;a039
	ld a,080h		;a03c
	call 08221h		;a03e
	ld (09fffh),hl		;a041
	pop bc			;a044
	dec c			;a045
	jr nz,L_A016		;a046
	ret			;a048
L_A049:
	ld hl,0d300h		;a049
	ld de,(0a001h)		;a04c
	ld a,(09ffeh)		;a050
	ld b,a			;a053
L_A054:
	ld a,(hl)			;a054
	rra			;a055
	rra			;a056
	rra			;a057
	rra			;a058
	and 00fh		;a059
	cp d			;a05b
	jr nz,L_A05F		;a05c
	ld a,e			;a05e
L_A05F:
	rla			;a05f
	rla			;a060
	rla			;a061
	rla			;a062
	and 0f0h		;a063
	ld c,a			;a065
	ld a,(hl)			;a066
	and 00fh		;a067
	cp d			;a069
	jr nz,L_A06D		;a06a
	ld a,e			;a06c
L_A06D:
	and 00fh		;a06d
	or c			;a06f
	ld (hl),a			;a070
	inc hl			;a071
	djnz L_A054		;a072
	ret			;a074
L_A075:
	srl e		;a075
	rr d		;a077
	ld h,e			;a079
	ld l,d			;a07a
	ld de,(0d223h)		;a07b
	add hl,de			;a07f
	ret			;a080
L_A081:
	ld (0a2bdh),a		;a081
	call L_A132		;a084
	ld (0d200h),de		;a087
	call L_A132		;a08b
	ld (0d206h),de		;a08e
	call L_A132		;a092
	ld (0d202h),de		;a095
	ld a,(hl)			;a099
	inc hl			;a09a
	ld (0d232h),a		;a09b
	ld a,(hl)			;a09e
	inc hl			;a09f
	ld (0d233h),a		;a0a0
	call L_A0ED		;a0a3
	ld hl,(0d206h)		;a0a6
	call 08275h		;a0a9
	ld a,0ffh		;a0ac
	ld (0d20ch),a		;a0ae
	inc a			;a0b1
	ld (0a2bch),a		;a0b2
	ld c,001h		;a0b5
	ld hl,(0d202h)		;a0b7
	ld a,(hl)			;a0ba
	ld b,a			;a0bb
	ld hl,0d233h		;a0bc
	ld a,(hl)			;a0bf
	or a			;a0c0
	jr z,L_A0E1		;a0c1
	ld a,b			;a0c3
L_A0C4:
	sub (hl)			;a0c4
	jr c,L_A0CA		;a0c5
	inc c			;a0c7
	jr L_A0C4		;a0c8
L_A0CA:
	add a,(hl)			;a0ca
	inc a			;a0cb
	ld (0d205h),a		;a0cc
	ld a,c			;a0cf
L_A0D0:
	ld (0d204h),a		;a0d0
	ld a,(0d205h)		;a0d3
	ld hl,0d233h		;a0d6
	cp (hl)			;a0d9
	ret nz			;a0da
	ld a,001h		;a0db
	ld (0a2bch),a		;a0dd
	ret			;a0e0
L_A0E1:
	ld a,001h		;a0e1
	ld (0d205h),a		;a0e3
	ld hl,(0d202h)		;a0e6
	ld a,(hl)			;a0e9
	inc a			;a0ea
	jr L_A0D0		;a0eb
L_A0ED:
	call 082bdh		;a0ed
	ld hl,(0d202h)		;a0f0
	ld a,(hl)			;a0f3
	ld hl,(0d200h)		;a0f4
	ld c,a			;a0f7
	add a,a			;a0f8
	add a,c			;a0f9
	call 08221h		;a0fa
	ld de,0d20dh		;a0fd
	ld bc,00003h		;a100
	ldir		;a103
	ld a,(0d20fh)		;a105
	cp 001h		;a108
	ret z			;a10a
	ld hl,0a262h		;a10b
	call 0826ch		;a10e
	ld b,(hl)			;a111
	inc hl			;a112
	ld de,0d280h		;a113
L_A116:
	ld a,(0d20dh)		;a116
	add a,(hl)			;a119
	ld (de),a			;a11a
	inc hl			;a11b
	inc de			;a11c
	ld a,(0d20eh)		;a11d
	add a,(hl)			;a120
	ld (de),a			;a121
	inc hl			;a122
	inc de			;a123
	ld a,(hl)			;a124
	ld (de),a			;a125
	inc hl			;a126
	inc de			;a127
	ld a,(hl)			;a128
	ld (de),a			;a129
	inc hl			;a12a
	inc de			;a12b
	djnz L_A116		;a12c
	ret			;a12e

; ----------------------------------------------------------------------
; DATOS suelto_A12F: nadie lo lee ni lo apunta (3 bytes)
;   0xa12f..0xa132  (3 bytes)
DATA_suelto_A12F:
	defb 0cdh,01eh,082h	; a12f

; ======================================================================
; CODIGO 0xa132..0xa262  (304 bytes)
; ======================================================================


L_A132:
	ld e,(hl)			;a132
	inc hl			;a133
	ld d,(hl)			;a134
	inc hl			;a135
	ret			;a136
L_A137:
	ld a,(0d1c8h)		;a137
	cp 010h		;a13a
	jp z,L_A24B		;a13c
	ld c,a			;a13f
	ld a,(0d233h)		;a140
	and a			;a143
	push bc			;a144
	call nz,L_A1FC		;a145
	pop bc			;a148
	ld a,(0d204h)		;a149
	and a			;a14c
	jr z,L_A185		;a14d
	ld a,c			;a14f
	cp 001h		;a150
	jp z,L_A1D8		;a152
	cp 002h		;a155
	jr nz,L_A185		;a157
	ld a,(0d204h)		;a159
	inc a			;a15c
	ld hl,0d232h		;a15d
	ld e,(hl)			;a160
	inc e			;a161
	cp e			;a162
	ret nc			;a163
	ld (0d204h),a		;a164
	ld e,a			;a167
	ld a,(0a2bch)		;a168
	or a			;a16b
	jr z,L_A17C		;a16c
	ld a,e			;a16e
	cp (hl)			;a16f
	jr nz,L_A17C		;a170
	ld a,(0d233h)		;a172
	ld hl,0a2bdh		;a175
	sub (hl)			;a178
	ld (0d205h),a		;a179
L_A17C:
	call L_A187		;a17c
	call L_A198		;a17f
	call L_A0ED		;a182
L_A185:
	xor a			;a185
	ret			;a186
L_A187:
	ld a,(0d1c0h)		;a187
	cp 004h		;a18a
	jr nz,L_A195		;a18c
	ld a,(0d1d7h)		;a18e
	dec a			;a191
	jp z,08370h		;a192
L_A195:
	jp 082eeh		;a195
L_A198:
	ld a,(0d233h)		;a198
	or a			;a19b
	jr z,L_A1C9		;a19c
	ld a,(0d232h)		;a19e
	or a			;a1a1
	jr z,L_A1CF		;a1a2
	ld a,(0d204h)		;a1a4
	dec a			;a1a7
	jr z,L_A1B8		;a1a8
	ld b,a			;a1aa
	ld a,(0d233h)		;a1ab
	or a			;a1ae
	jr z,L_A1D5		;a1af
	ld hl,0d233h		;a1b1
	xor a			;a1b4
L_A1B5:
	add a,(hl)			;a1b5
	djnz L_A1B5		;a1b6
L_A1B8:
	ld b,a			;a1b8
	ld a,(0d233h)		;a1b9
	or a			;a1bc
	jr z,L_A1C2		;a1bd
	ld a,(0d205h)		;a1bf
L_A1C2:
	dec a			;a1c2
	add a,b			;a1c3
L_A1C4:
	ld hl,(0d202h)		;a1c4
	ld (hl),a			;a1c7
	ret			;a1c8
L_A1C9:
	ld a,(0d204h)		;a1c9
	dec a			;a1cc
	jr L_A1C4		;a1cd
L_A1CF:
	ld a,(0d205h)		;a1cf
	dec a			;a1d2
	jr L_A1C4		;a1d3
L_A1D5:
	ld a,b			;a1d5
	jr L_A1C4		;a1d6
L_A1D8:
	ld a,(0d204h)		;a1d8
	dec a			;a1db
	ret z			;a1dc
	ld (0d204h),a		;a1dd
	ld a,(0a2bch)		;a1e0
	or a			;a1e3
	jr z,L_A17C		;a1e4
	ld a,(0d233h)		;a1e6
	ld (0d205h),a		;a1e9
	jr L_A17C		;a1ec
L_A1EE:
	xor a			;a1ee
	ld (0a2bch),a		;a1ef
	ld a,(0d205h)		;a1f2
	dec a			;a1f5
	ret z			;a1f6
	ld (0d205h),a		;a1f7
	jr L_A17C		;a1fa
L_A1FC:
	ld a,c			;a1fc
	cp 004h		;a1fd
	jr z,L_A1EE		;a1ff
	cp 008h		;a201
	jp nz,L_A185		;a203
	ld a,(0d205h)		;a206
	inc a			;a209
	ld b,a			;a20a
	ld a,(0d204h)		;a20b
	ld hl,0d232h		;a20e
	cp (hl)			;a211
	ld a,(0d233h)		;a212
	call z,L_A243		;a215
	ld e,a			;a218
	ld a,b			;a219
	cp e			;a21a
	jr z,L_A23A		;a21b
	inc e			;a21d
	cp e			;a21e
	jr nc,L_A22B		;a21f
	ld (0d205h),a		;a221
	xor a			;a224
	ld (0a2bch),a		;a225
	jp L_A17C		;a228
L_A22B:
	ld a,(0d204h)		;a22b
	ld hl,0d232h		;a22e
	cp (hl)			;a231
	ret z			;a232
	ld a,001h		;a233
	ld (0a2bch),a		;a235
	or a			;a238
	ret			;a239
L_A23A:
	ld (0d205h),a		;a23a
	call L_A22B		;a23d
	jp L_A17C		;a240
L_A243:
	push af			;a243
	ld a,(0a2bdh)		;a244
	ld e,a			;a247
	pop af			;a248
	sub e			;a249
	ret			;a24a
L_A24B:
	call L_A256		;a24b
	jp z,L_A185		;a24e
	call 082f3h		;a251
	scf			;a254
	ret			;a255
L_A256:
	ld a,(0d1d6h)		;a256
	cp 003h		;a259
	ret nz			;a25b
	ld a,(0d1dah)		;a25c
	cp 0feh		;a25f
	ret			;a261

; ----------------------------------------------------------------------
; DATOS leido_A262: lo usa el codigo: 0xA10B ld hl,0a262h -> 0x826C (tabla de
;   palabras: la de A); 0xA0B2 ld (0a2bch),a (en +90); 0xA0DD ld (0a2bch),a
;   (en +90); 0xA081 ld (0a2bdh),a (en +91) (414 bytes)
;   0xa262..0xa400  (414 bytes)
DATA_leido_A262:
	defb 076h,0a2h,07bh,0a2h,080h,0a2h,085h,0a2h,08eh,0a2h,093h,0a2h,098h,0a2h,0a1h,0a2h	; a262  v.{.............
	defb 0aah,0a2h,0b3h,0a2h,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; a272  ................
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; a282  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; a292  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; a2a2  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,000h,000h,070h,016h,000h,049h	; a2b2  ............p..I
	defb 00ch,01fh,0bbh,04ah,0beh,001h,029h,0ffh,05ah,05bh,05eh,019h,0fdh,0f7h,0fdh,0beh	; a2c2  ...J..).Z[^.....
	defb 045h,065h,00bh,00ch,061h,01fh,0cbh,0feh,019h,0ceh,013h,002h,029h,0ffh,05ah,05bh	; a2d2  Ee..a.......).Z[
	defb 05eh,0beh,045h,0fdh,0dfh,0eeh,000h,0d5h,0fdh,02ah,013h,002h,029h,0ffh,05ah,05bh	; a2e2  ^.E......*..).Z[
	defb 05eh,019h,071h,016h,045h,0fdh,0f4h,0fdh,00bh,0beh,0feh,039h,0a9h,093h,070h,019h	; a2f2  ^.q.E......9..p.
	defb 000h,026h,00ah,00ch,02ch,0beh,001h,029h,0ffh,05ah,05bh,05eh,0beh,045h,060h,061h	; a302  .&..,..).Z[^.E`a
	defb 01fh,0cbh,026h,028h,000h,0fdh,0f6h,0fdh,002h,0ffh,05ah,05bh,05eh,0beh,000h,060h	; a312  ..&(......Z[^..`
	defb 061h,01fh,0cbh,0cbh,045h,0feh,00fh,019h,0fdh,0f7h,0fdh,0beh,000h,0fdh,0f5h,0fdh	; a322  a...E...........
	defb 062h,016h,000h,07bh,02ah,013h,002h,029h,0ffh,05ah,05bh,05eh,070h,016h,000h,049h	; a332  b..{*..).Z[^p..I
	defb 00ch,01fh,0bbh,04ah,0beh,0feh,001h,027h,02ch,02ah,013h,002h,029h,0ffh,05ah,05bh	; a342  ...J...',*..).Z[
	defb 05eh,070h,016h,000h,00ah,01fh,006h,002h,000h,00ch,02ch,0beh,001h,029h,0ffh,05ah	; a352  ^p........,..).Z
	defb 05bh,05eh,070h,019h,073h,061h,019h,071h,0c0h,027h,002h,016h,045h,0feh,049h,00ch	; a362  [^p.sa.q.'..E.I.
	defb 01fh,04ah,019h,000h,006h,00bh,015h,028h,0beh,001h,029h,0ffh,05ah,05bh,05eh,019h	; a372  .J.....(..).Z[^.
	defb 000h,073h,061h,019h,071h,0c0h,027h,002h,016h,045h,0feh,070h,0a8h,007h,016h,000h	; a382  .sa.q.'..E.p....
	defb 038h,045h,039h,062h,019h,05eh,0beh,000h,082h,013h,002h,029h,0ffh,055h,057h,05eh	; a392  8E9b.^.....).UW^
	defb 0beh,05ah,05bh,05eh,014h,037h,012h,016h,015h,032h,013h,045h,0feh,065h,00bh,00ch	; a3a2  .Z[^.7...2.E.e..
	defb 061h,019h,071h,01fh,0cbh,000h,019h,0ceh,013h,002h,029h,0ffh,055h,057h,05eh,0beh	; a3b2  a.q.......).UW^.
	defb 045h,065h,00bh,00ch,061h,019h,071h,01fh,0cbh,0feh,019h,0ceh,013h,002h,029h,0ffh	; a3c2  Ee..a.q.......).
	defb 055h,057h,05eh,0beh,000h,01fh,032h,00dh,0c0h,016h,019h,0ceh,013h,045h,0feh,060h	; a3d2  UW^...2......E.`
	defb 061h,019h,071h,0cbh,000h,01ch,010h,01fh,010h,016h,000h,07bh,02ah,013h,002h,029h	; a3e2  a.q........{*..)
	defb 0ffh,056h,057h,05eh,014h,002h,032h,0dch,016h,0feh,055h,057h,05eh,0beh	; a3f2  .VW^..2...UW^.
