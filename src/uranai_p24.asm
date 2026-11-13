; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p24 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9854  (84 bytes)
; ======================================================================


L_9800:
	jp L_993E		;9800
L_9803:
	jp L_993E		;9803
L_9806:
	jp L_9855		;9806
L_9809:
	jp L_9867		;9809
L_980C:
	jp L_993E		;980c
L_980F:
	jp L_9C62		;980f
L_9812:
	jp L_9AAA		;9812
L_9815:
	jp L_9AC7		;9815
L_9818:
	jp L_9B21		;9818
L_981B:
	jp L_9C48		;981b
L_981E:
	jp L_9C56		;981e
L_9821:
	jp L_9DFA		;9821
L_9824:
	jp L_9E7E		;9824
L_9827:
	jp L_9EA3		;9827
L_982A:
	jp L_9B52		;982a
L_982D:
	jp L_9F9D		;982d
L_9830:
	jp L_9B5D		;9830
L_9833:
	jp L_9B73		;9833
L_9836:
	jp L_A004		;9836
L_9839:
	jp L_A8B2		;9839
L_983C:
	jp L_A070		;983c
L_983F:
	jp L_A628		;983f
L_9842:
	jp L_B78B		;9842
L_9845:
	jp L_B820		;9845
L_9848:
	jp L_A02C		;9848
L_984B:
	jp L_9A9D		;984b
L_984E:
	jp L_9B44		;984e
L_9851:
	jp L_A005		;9851

; ----------------------------------------------------------------------
; DATOS relleno_9854: 0xAF repetido; nadie lo lee (1 bytes)
;   0x9854..0x9855  (1 bytes)
DATA_relleno_9854:
	defb 0afh	; 9854

; ======================================================================
; CODIGO 0x9855..0x994a  (245 bytes)
; ======================================================================


L_9855:
	call 08251h		;9855
	call L_985E		;9858
	jp 08209h		;985b
L_985E:
	call L_9A7A		;985e
L_9861:
	call L_9C2E		;9861
	call L_9A68		;9864
L_9867:
	ld a,(09219h)		;9867
	ld hl,0921bh		;986a
	call 08221h		;986d
	ld a,(hl)			;9870
	ld (09233h),a		;9871
	call L_A070		;9874
	ld hl,01818h		;9877
	ld a,(09219h)		;987a
	cp 006h		;987d
	jr z,L_9884		;987f
	ld hl,02020h		;9881
L_9884:
	ld de,04060h		;9884
	ld a,(09219h)		;9887
	cp 006h		;988a
	jr nz,L_9891		;988c
	ld de,05068h		;988e
L_9891:
	call L_AB65		;9891
	call L_999C		;9894
	ld hl,09c9dh		;9897
	xor a			;989a
	call L_A62E		;989b
	ld de,02820h		;989e
	ld a,(09219h)		;98a1
	cp 006h		;98a4
	jr z,L_98AB		;98a6
	ld de,02828h		;98a8
L_98AB:
	ld a,(09219h)		;98ab
	ld hl,09dd7h		;98ae
	add a,a			;98b1
	add a,a			;98b2
	call 08221h		;98b3
	push hl			;98b6
	ld a,(09219h)		;98b7
	ld hl,09df3h		;98ba
	call 08221h		;98bd
	ld c,(hl)			;98c0
	pop hl			;98c1
	ld a,001h		;98c2
	call 08218h		;98c4
	call L_9A29		;98c7
	ld a,002h		;98ca
	ld (0d1cch),a		;98cc
	ld de,02038h		;98cf
	ld a,(09219h)		;98d2
	cp 006h		;98d5
	jr z,L_98DC		;98d7
	ld de,03040h		;98d9
L_98DC:
	ld a,0cdh		;98dc
	call 082cfh		;98de
	ld hl,0994ah		;98e1
	ld (09942h),hl		;98e4
L_98E7:
	ld a,001h		;98e7
	ld (0d1cch),a		;98e9
	ld a,(09219h)		;98ec
	cp 006h		;98ef
	jr z,L_98FC		;98f1
	ld de,04040h		;98f3
	call L_998F		;98f6
	jp 082cfh		;98f9
L_98FC:
	ld hl,(09942h)		;98fc
	ld de,09964h		;98ff
	rst 20h			;9902
	ld a,0ceh		;9903
	ld b,002h		;9905
	jr nz,L_990D		;9907
	ld a,000h		;9909
	ld b,001h		;990b
L_990D:
	ld (09921h),a		;990d
	ld a,b			;9910
	ld (09923h),a		;9911
	ld b,00ch		;9914
	ld hl,09222h		;9916
L_9919:
	push hl			;9919
	push bc			;991a
	call L_993F		;991b
	ld a,(hl)			;991e
	or a			;991f
	ld c,0ceh		;9920
	ld a,002h		;9922
	ld (0d1cch),a		;9924
	jr z,L_9935		;9927
	ld a,001h		;9929
	ld (0d1cch),a		;992b
	ld a,b			;992e
	sub 00dh		;992f
	cpl			;9931
	add a,001h		;9932
	ld c,a			;9934
L_9935:
	ld a,c			;9935
	call 082cfh		;9936
	pop bc			;9939
	pop hl			;993a
	inc hl			;993b
	djnz L_9919		;993c
L_993E:
	ret			;993e
L_993F:
	push hl			;993f
	ld a,b			;9940
	ld hl,0994ah		;9941
	call 0826ch		;9944
	ex de,hl			;9947
	pop hl			;9948
	ret			;9949

; ----------------------------------------------------------------------
; DATOS leido_994A: lo usa el codigo: 0x98E1 ld hl,0994ah; 0x9941 ld hl,0994ah
;   -> 0x826C (tabla de palabras: la de A); 0x98FF ld de,09964h (en +26);
;   0x9B06 ld hl,09964h (en +26) (69 bytes)
;   0x994a..0x998f  (69 bytes)
DATA_leido_994A:
	defb 000h,000h,040h,050h,040h,048h,040h,040h,040h,038h,040h,030h,040h,028h,038h,050h	; 994a  ..@P@H@@@8@0@(8P
	defb 038h,048h,038h,040h,038h,038h,038h,030h,038h,028h,000h,000h,0a0h,028h,098h,028h	; 995a  8H8@88808(...(.(
	defb 090h,028h,088h,028h,080h,028h,078h,028h,0a0h,030h,098h,030h,090h,030h,088h,030h	; 996a  .(.(.(x(.0.0.0.0
	defb 080h,030h,078h,030h,07eh,0cdh,0cfh,082h,0c3h,0a8h,082h,047h,0ebh,011h,002h,002h	; 997a  .0x0~......G....
	defb 019h,010h,0fdh,0ebh,0c9h	; 998a

; ======================================================================
; CODIGO 0x998f..0x9a14  (133 bytes)
; ======================================================================


L_998F:
	ld a,(09219h)		;998f
	ld hl,0921bh		;9992
	call 08221h		;9995
	ld a,(hl)			;9998
	add a,001h		;9999
	ret			;999b
L_999C:
	ld a,(09219h)		;999c
	call L_9A0A		;999f
	ld e,(hl)			;99a2
	inc hl			;99a3
	ld d,(hl)			;99a4
	inc hl			;99a5
	ld (09ca1h),de		;99a6
	ld a,(hl)			;99aa
	ld (09ca3h),a		;99ab
	ld (09232h),a		;99ae
	ld b,a			;99b1
	dec b			;99b2
	ld a,(09219h)		;99b3
	cp 006h		;99b6
	jr nz,L_99BB		;99b8
	dec b			;99ba
L_99BB:
	push bc			;99bb
	ld a,001h		;99bc
	ld (0d1cch),a		;99be
	ld a,001h		;99c1
	ld de,02850h		;99c3
L_99C6:
	push af			;99c6
	push bc			;99c7
	call 082cfh		;99c8
	ld a,d			;99cb
	add a,008h		;99cc
	ld d,a			;99ce
	cp 058h		;99cf
	jr c,L_99D9		;99d1
	ld a,e			;99d3
	add a,008h		;99d4
	ld e,a			;99d6
	ld d,028h		;99d7
L_99D9:
	pop bc			;99d9
	pop af			;99da
	inc a			;99db
	djnz L_99C6		;99dc
	ld hl,09ccfh		;99de
	ld de,09ca5h		;99e1
	ld bc,00024h		;99e4
	ldir		;99e7
	pop bc			;99e9
	ld a,b			;99ea
	add a,a			;99eb
	add a,b			;99ec
	ld hl,09ca5h		;99ed
	call 08221h		;99f0
	ex de,hl			;99f3
	ld hl,09cf6h		;99f4
	ld bc,00006h		;99f7
	ld a,(09219h)		;99fa
	cp 006h		;99fd
	jr z,L_9A07		;99ff
	ld hl,09cf3h		;9a01
	ld bc,00003h		;9a04
L_9A07:
	ldir		;9a07
	ret			;9a09
L_9A0A:
	ld hl,09a14h		;9a0a
	ld b,a			;9a0d
	add a,a			;9a0e
	ld c,a			;9a0f
	add a,b			;9a10
	jp 08221h		;9a11

; ----------------------------------------------------------------------
; DATOS leido_9A14: lo usa el codigo: 0x9A0A ld hl,09a14h (21 bytes)
;   0x9a14..0x9a29  (21 bytes)
DATA_leido_9A14:
	defb 01bh,092h,005h,01ch,092h,009h,01dh,092h,00ah,01eh,092h,00ch,01fh,092h,009h,020h	; 9a14  ...............
	defb 092h,004h,021h,092h,00eh	; 9a24

; ======================================================================
; CODIGO 0x9a29..0x9a4e  (37 bytes)
; ======================================================================


L_9A29:
	ld a,(09219h)		;9a29
	cp 006h		;9a2c
	jr z,L_9A3D		;9a2e
	ld hl,09a4eh		;9a30
	ld de,03868h		;9a33
L_9A36:
	ld c,002h		;9a36
	ld a,001h		;9a38
	jp 08218h		;9a3a
L_9A3D:
	ld hl,09a52h		;9a3d
	ld de,02868h		;9a40
	call L_9A36		;9a43
	ld hl,09a4eh		;9a46
	ld de,04868h		;9a49
	jr L_9A36		;9a4c

; ----------------------------------------------------------------------
; DATOS casillas_9A4E: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A3A (4 bytes)
;   0x9a4e..0x9a52  (4 bytes)
DATA_casillas_9A4E:
	defb 080h,004h,063h,000h	; 9a4e

; ----------------------------------------------------------------------
; DATOS casillas_9A52: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A3A (4 bytes)
;   0x9a52..0x9a56  (4 bytes)
DATA_casillas_9A52:
	defb 080h,004h,05fh,000h	; 9a52

; ======================================================================
; CODIGO 0x9a56..0x9b3c  (230 bytes)
; ======================================================================


L_9A56:
	ld hl,00808h		;9a56
	ld de,04858h		;9a59
	jp L_AB65		;9a5c
L_9A5F:
	ld hl,01018h		;9a5f
	ld de,05898h		;9a62
	jp L_AB65		;9a65
L_9A68:
	ld hl,01090h		;9a68
	ld de,09828h		;9a6b
	jp L_AB65		;9a6e
L_9A71:
	call L_9A86		;9a71
	ld de,0921bh		;9a74
	ex de,hl			;9a77
	jr L_9A80		;9a78
L_9A7A:
	call L_9A86		;9a7a
	ld de,0921bh		;9a7d
L_9A80:
	ld bc,00013h		;9a80
	ldir		;9a83
	ret			;9a85
L_9A86:
	ld a,(0daf0h)		;9a86
	ld l,a			;9a89
	ld h,000h		;9a8a
	add hl,hl			;9a8c
	add hl,hl			;9a8d
	add hl,hl			;9a8e
	add hl,hl			;9a8f
	push hl			;9a90
	pop bc			;9a91
	add hl,hl			;9a92
	add hl,bc			;9a93
	ld de,0d700h		;9a94
	add hl,de			;9a97
	ld de,0001ch		;9a98
	add hl,de			;9a9b
	ret			;9a9c
L_9A9D:
	ld hl,09222h		;9a9d
	ld de,09223h		;9aa0
	ld bc,0000bh		;9aa3
	ld (hl),000h		;9aa6
	ldir		;9aa8
L_9AAA:
	ld a,001h		;9aaa
	ld (0d1cch),a		;9aac
	ld a,(09219h)		;9aaf
	cp 006h		;9ab2
	jp nz,L_98E7		;9ab4
	ld a,(09221h)		;9ab7
	ld hl,09222h		;9aba
	call 08221h		;9abd
	ld a,(hl)			;9ac0
	xor 001h		;9ac1
	ld (hl),a			;9ac3
	jp L_98E7		;9ac4
L_9AC7:
	xor a			;9ac7
	ld (0d1ffh),a		;9ac8
	call 082bah		;9acb
	call L_9BB3		;9ace
	call L_9A71		;9ad1
	ld a,0e0h		;9ad4
	ld (0d2fch),a		;9ad6
	call L_9BFC		;9ad9
	call L_9A5F		;9adc
	ld a,004h		;9adf
	ld (0921ah),a		;9ae1
	ld hl,09cffh		;9ae4
	xor a			;9ae7
	call L_A62E		;9ae8
	ld a,001h		;9aeb
	ld (0d1cch),a		;9aed
	ld b,004h		;9af0
	ld de,05850h		;9af2
	ld hl,0921bh		;9af5
	call L_9B0F		;9af8
	ld b,002h		;9afb
	ld de,05890h		;9afd
	ld hl,0921fh		;9b00
	call L_9B0F		;9b03
	ld hl,09964h		;9b06
	ld (09942h),hl		;9b09
	jp L_98FC		;9b0c
L_9B0F:
	push hl			;9b0f
	push bc			;9b10
	ld a,(hl)			;9b11
	add a,001h		;9b12
	call 082cfh		;9b14
	pop bc			;9b17
	pop hl			;9b18
	ld a,d			;9b19
	sub 010h		;9b1a
	ld d,a			;9b1c
	inc hl			;9b1d
	djnz L_9B0F		;9b1e
	ret			;9b20
L_9B21:
	call 082bah		;9b21
	call L_9B81		;9b24
	ld a,(0921ah)		;9b27
	ld hl,09b3ch		;9b2a
	call 08221h		;9b2d
	ld a,(hl)			;9b30
	ld (09219h),a		;9b31
	ld a,0ffh		;9b34
	ld (09231h),a		;9b36
	jp L_9861		;9b39

; ----------------------------------------------------------------------
; DATOS leido_9B3C: lo usa el codigo: 0x9B2A ld hl,09b3ch -> 0x8221 (tabla de
;   bytes: HL + A) (8 bytes)
;   0x9b3c..0x9b44  (8 bytes)
DATA_leido_9B3C:
	defb 003h,002h,001h,000h,000h,006h,005h,004h	; 9b3c  ........

; ======================================================================
; CODIGO 0x9b44..0x9c9d  (345 bytes)
; ======================================================================


L_9B44:
	ld bc,06878h		;9b44
	ld de,01010h		;9b47
	ld hl,00000h		;9b4a
L_9B4D:
	ld a,0c0h		;9b4d
	jp 0820ch		;9b4f
L_9B52:
	ld bc,06028h		;9b52
	ld de,07888h		;9b55
	ld hl,00000h		;9b58
	jr L_9BC8		;9b5b
L_9B5D:
	ld bc,07858h		;9b5d
	ld de,07860h		;9b60
	ld hl,07860h		;9b63
	jr L_9B4D		;9b66
L_9B68:
	ld bc,0684ah		;9b68
	ld de,00866h		;9b6b
	ld hl,05028h		;9b6e
	jr L_9BC8		;9b71
L_9B73:
	call L_9B68		;9b73
	ld bc,04858h		;9b76
	ld de,00808h		;9b79
	ld hl,0b800h		;9b7c
	jr L_9BC8		;9b7f
L_9B81:
	ld bc,05838h		;9b81
	ld de,01018h		;9b84
	ld hl,00060h		;9b87
	call L_9BAE		;9b8a
	ld bc,05838h		;9b8d
	ld de,01050h		;9b90
	ld hl,05860h		;9b93
	call L_9BAE		;9b96
	ld bc,05818h		;9b99
	ld de,01088h		;9b9c
	ld hl,00098h		;9b9f
	call L_9BAE		;9ba2
	ld bc,05810h		;9ba5
	ld de,010a0h		;9ba8
	ld hl,05898h		;9bab
L_9BAE:
	ld a,040h		;9bae
	jp 0820ch		;9bb0
L_9BB3:
	ld bc,09828h		;9bb3
	ld de,01090h		;9bb6
	ld hl,00000h		;9bb9
	call L_9BC8		;9bbc
	ld bc,05068h		;9bbf
	ld de,01818h		;9bc2
	ld hl,00028h		;9bc5
L_9BC8:
	ld a,080h		;9bc8
	jp 0820ch		;9bca
L_9BCD:
	ld bc,06028h		;9bcd
	ld hl,07888h		;9bd0
	ld de,00000h		;9bd3
	jr L_9C43		;9bd6
L_9BD8:
	ld bc,07858h		;9bd8
	ld hl,07860h		;9bdb
	ld de,07860h		;9bde
	ld a,030h		;9be1
	jp 0820ch		;9be3
L_9BE6:
	ld bc,04858h		;9be6
	ld hl,00808h		;9be9
	ld de,0b800h		;9bec
	jr L_9C43		;9bef
L_9BF1:
	ld bc,0684ah		;9bf1
	ld hl,00866h		;9bf4
	ld de,05028h		;9bf7
	jr L_9C43		;9bfa
L_9BFC:
	ld bc,05838h		;9bfc
	ld hl,01018h		;9bff
	ld de,00060h		;9c02
	call L_9C29		;9c05
	ld bc,05838h		;9c08
	ld hl,01050h		;9c0b
	ld de,05860h		;9c0e
	call L_9C29		;9c11
	ld bc,05818h		;9c14
	ld hl,01088h		;9c17
	ld de,00098h		;9c1a
	call L_9C29		;9c1d
	ld bc,05810h		;9c20
	ld hl,010a0h		;9c23
	ld de,05898h		;9c26
L_9C29:
	ld a,010h		;9c29
	jp 0820ch		;9c2b
L_9C2E:
	ld bc,09828h		;9c2e
	ld hl,01090h		;9c31
	ld de,00000h		;9c34
	call L_9C43		;9c37
	ld bc,05068h		;9c3a
	ld hl,01818h		;9c3d
	ld de,00028h		;9c40
L_9C43:
	ld a,020h		;9c43
	jp 0820ch		;9c45
L_9C48:
	call L_9B81		;9c48
	call L_9A56		;9c4b
	ld hl,09d85h		;9c4e
	ld a,001h		;9c51
	jp L_A62E		;9c53
L_9C56:
	ld a,(0d217h)		;9c56
	cp 007h		;9c59
	ret c			;9c5b
	ld a,006h		;9c5c
	ld (0d217h),a		;9c5e
	ret			;9c61
L_9C62:
	ld a,(0d1c8h)		;9c62
	cp 010h		;9c65
	jp z,L_9C98		;9c67
	and 00ch		;9c6a
	jr z,L_9C86		;9c6c
	cp 004h		;9c6e
	jr z,L_9C88		;9c70
	ld de,(09ca1h)		;9c72
	ld a,(de)			;9c76
	inc a			;9c77
	ld hl,09232h		;9c78
	cp (hl)			;9c7b
	jr c,L_9C7F		;9c7c
	xor a			;9c7e
L_9C7F:
	ld (de),a			;9c7f
L_9C80:
	call 082eeh		;9c80
	call L_A69A		;9c83
L_9C86:
	xor a			;9c86
	ret			;9c87
L_9C88:
	ld de,(09ca1h)		;9c88
	ld a,(de)			;9c8c
	sub 001h		;9c8d
	jr nc,L_9C95		;9c8f
	ld a,(09232h)		;9c91
	dec a			;9c94
L_9C95:
	ld (de),a			;9c95
	jr L_9C80		;9c96
L_9C98:
	call 082f3h		;9c98
	scf			;9c9b
	ret			;9c9c

; ----------------------------------------------------------------------
; DATOS leido_9C9D: lo usa el codigo: 0x9897 ld hl,09c9dh; 0x99A6 ld
;   (09ca1h),de (en +4); 0x9C72 ld de,(09ca1h) (en +4); 0x99AB ld (09ca3h),a
;   (en +6) (349 bytes)
;   0x9c9d..0x9dfa  (349 bytes)
DATA_leido_9C9D:
	defb 0a5h,09ch,0fch,09ch,01bh,092h,003h,000h,017h,020h,002h,01fh,020h,002h,027h,020h	; 9c9d  ......... .. .'
	defb 002h,02fh,020h,002h,037h,020h,002h,03fh,020h,002h,047h,020h,002h,04fh,020h,002h	; 9cad  ./ .7 .? .G .O .
	defb 057h,020h,002h,05fh,020h,002h,067h,020h,002h,06fh,020h,002h,077h,020h,002h,077h	; 9cbd  W ._ .g .o .w .w
	defb 020h,002h,04fh,028h,002h,04fh,030h,002h,04fh,038h,002h,04fh,040h,002h,04fh,048h	; 9ccd   .O(.O0.O8.O@.OH
	defb 002h,04fh,050h,002h,057h,028h,002h,057h,030h,002h,057h,038h,002h,057h,040h,002h	; 9cdd  .OP.W(.W0.W8.W@.
	defb 057h,048h,002h,057h,050h,002h,067h,038h,009h,067h,028h,009h,067h,048h,009h,000h	; 9ced  WH.WP.g8.g(.gH..
	defb 000h,0ffh,007h,09dh,01fh,09dh,01ah,092h,002h,004h,01fh,028h,002h,01fh,038h,002h	; 9cfd  ...........(..8.
	defb 01fh,048h,002h,01fh,058h,002h,05fh,018h,002h,05fh,038h,002h,05fh,048h,002h,05fh	; 9d0d  .H..X._.._8._H._
	defb 058h,002h,028h,020h,03ah,000h,039h,000h,038h,000h,037h,0feh,028h,030h,055h,000h	; 9d1d  X.( :.9.8.7.(0U.
	defb 05ah,000h,058h,000h,056h,0feh,028h,039h,057h,000h,05bh,000h,059h,000h,057h,0feh	; 9d2d  Z.X.V.(9W.[.Y.W.
	defb 028h,042h,05eh,000h,05eh,000h,05eh,000h,05eh,0feh,018h,060h,04fh,000h,000h,000h	; 9d3d  (B^.^.^.^..`O...
	defb 03dh,000h,03ch,000h,03bh,0feh,018h,070h,042h,000h,000h,000h,00fh,000h,0fdh,0c1h	; 9d4d  =.<....pB.......
	defb 0fdh,000h,076h,0feh,018h,079h,0fdh,0c3h,0fdh,000h,000h,000h,019h,000h,000h,000h	; 9d5d  ..v..y..........
	defb 077h,0feh,018h,082h,052h,000h,000h,000h,0a7h,000h,0fdh,0c2h,0fdh,000h,05eh,0feh	; 9d6d  w...R.........^.
	defb 038h,08bh,019h,0feh,038h,094h,05eh,0ffh,08dh,09dh,0a5h,09dh,017h,0d2h,002h,004h	; 9d7d  8...8.^.........
	defb 00eh,010h,005h,00eh,020h,005h,00eh,030h,005h,00eh,040h,005h,036h,010h,005h,036h	; 9d8d  .... ..0..@.6..6
	defb 020h,005h,036h,030h,005h,036h,030h,005h,010h,018h,089h,000h,05ch,000h,074h,000h	; 9d9d   .60.60.....\.t.
	defb 055h,0feh,020h,021h,05dh,000h,075h,0feh,010h,02ah,055h,000h,055h,000h,055h,000h	; 9dad  U. !].u..*U.U.U.
	defb 0a2h,0feh,010h,040h,005h,000h,078h,000h,068h,0feh,010h,049h,02ch,0feh,030h,049h	; 9dbd  ...@..x.h..I,.0I
	defb 069h,0feh,010h,052h,028h,000h,079h,000h,055h,0ffh,080h,00ch,00dh,000h,080h,00ch	; 9dcd  i..R(.y.U.......
	defb 019h,000h,080h,00ch,025h,000h,080h,00ch,031h,000h,080h,00ch,03dh,000h,080h,00ah	; 9ddd  ....%...1...=...
	defb 049h,000h,080h,00ch,053h,000h,006h,006h,006h,006h,006h,005h,006h	; 9ded  I...S........

; ======================================================================
; CODIGO 0x9dfa..0x9e1e  (36 bytes)
; ======================================================================


L_9DFA:
	ld a,(0d1deh)		;9dfa
	or a			;9dfd
	jr nz,L_9E09		;9dfe
	call L_9BE6		;9e00
	call L_9E51		;9e03
	call L_9BF1		;9e06
L_9E09:
	ld hl,00866h		;9e09
	ld de,0684ah		;9e0c
	call L_AB65		;9e0f
	ld hl,09e1eh		;9e12
	xor a			;9e15
	call L_A62E		;9e16
	xor a			;9e19
	ld (0d1deh),a		;9e1a
	ret			;9e1d

; ----------------------------------------------------------------------
; DATOS leido_9E1E: lo usa el codigo: 0x9E12 ld hl,09e1eh (51 bytes)
;   0x9e1e..0x9e51  (51 bytes)
DATA_leido_9E1E:
	defb 026h,09eh,02fh,09eh,0dch,0d1h,003h,000h,080h,010h,000h,090h,010h,000h,0a0h,010h	; 9e1e  &./.............
	defb 000h,010h,070h,0cch,00ah,016h,000h,082h,098h,00ch,01fh,00dh,006h,051h,0feh,018h	; 9e2e  ..p..........Q..
	defb 080h,013h,02ah,0ceh,0feh,018h,090h,0d4h,028h,02eh,010h,04bh,0feh,018h,0a0h,024h	; 9e3e  ..*.....(..K...$
	defb 022h,029h,0ffh	; 9e4e

; ======================================================================
; CODIGO 0x9e51..0x9e70  (31 bytes)
; ======================================================================


L_9E51:
	call L_9E67		;9e51
	ld bc,00a1ch		;9e54
	push hl			;9e57
	push bc			;9e58
	ld de,00009h		;9e59
	call L_AC9D		;9e5c
	pop bc			;9e5f
	pop hl			;9e60
	ld de,00e0fh		;9e61
	jp L_AC9D		;9e64
L_9E67:
	ld hl,09e70h		;9e67
	ld a,(0d217h)		;9e6a
	jp 0826ch		;9e6d

; ----------------------------------------------------------------------
; DATOS leido_9E70: lo usa el codigo: 0x9E67 ld hl,09e70h -> 0x826C (tabla de
;   palabras: la de A) (14 bytes)
;   0x9e70..0x9e7e  (14 bytes)
DATA_leido_9E70:
	defb 017h,010h,017h,020h,017h,030h,017h,040h,000h,000h,03fh,020h,03fh,030h	; 9e70  ... .0.@..? ?0

; ======================================================================
; CODIGO 0x9e7e..0x9edf  (97 bytes)
; ======================================================================


L_9E7E:
	call 082bah		;9e7e
	ld hl,0187ch		;9e81
	ld bc,01a0dh		;9e84
	ld a,(0d1dch)		;9e87
	or a			;9e8a
	jr z,L_9E93		;9e8b
	ld hl,0188ch		;9e8d
	ld bc,02a0dh		;9e90
L_9E93:
	push hl			;9e93
	push bc			;9e94
	ld de,00002h		;9e95
	call L_AC9D		;9e98
	pop bc			;9e9b
	pop hl			;9e9c
	ld de,00e0fh		;9e9d
	jp L_AC9D		;9ea0
L_9EA3:
	ld a,(0e100h)		;9ea3
	or a			;9ea6
	jr z,L_9EB5		;9ea7
	ld a,(0d1deh)		;9ea9
	or a			;9eac
	jr nz,L_9EB8		;9ead
	call L_9F51		;9eaf
	jp c,L_9F6B		;9eb2
L_9EB5:
	call L_9BD8		;9eb5
L_9EB8:
	ld hl,07860h		;9eb8
	ld de,07858h		;9ebb
	call L_AB65		;9ebe
	ld a,(0e100h)		;9ec1
	or a			;9ec4
	jr z,L_9ED4		;9ec5
	ld hl,09edfh		;9ec7
	xor a			;9eca
	call L_A62E		;9ecb
L_9ECE:
	xor a			;9ece
	ld (0d1deh),a		;9ecf
	or a			;9ed2
	ret			;9ed3
L_9ED4:
	ld hl,09f34h		;9ed4
	call 08275h		;9ed7
	call 08203h		;9eda
	jr L_9ECE		;9edd

; ----------------------------------------------------------------------
; DATOS leido_9EDF: lo usa el codigo: 0x9EC7 ld hl,09edfh (85 bytes)
;   0x9edf..0x9f34  (85 bytes)
DATA_leido_9EDF:
	defb 0e7h,09eh,0f9h,09eh,0eeh,0d1h,003h,002h,068h,080h,000h,068h,0b6h,000h,078h,080h	; 9edf  ........h..h..x.
	defb 000h,078h,0b6h,000h,088h,080h,000h,088h,0b6h,000h,088h,068h,00ch,02bh,008h,02bh	; 9eef  .x.........h.+.+
	defb 037h,0feh,0beh,068h,00ch,02bh,008h,02bh,038h,0feh,088h,078h,00ch,02bh,008h,02bh	; 9eff  7..h.+.+8..x.+.+
	defb 039h,0feh,0beh,078h,00ch,02bh,008h,02bh,03ah,0feh,088h,088h,006h,000h,027h,000h	; 9f0f  9..x.+.+:.....'.
	defb 04bh,0feh,0beh,088h,024h,000h,022h,000h,029h,0feh,080h,098h,0dbh,029h,002h,01ah	; 9f1f  K...$.".)....)..
	defb 000h,0cch,02ah,051h,0ffh	; 9f2f

; ----------------------------------------------------------------------
; DATOS texto_9F34: texto: x, y y las letras hasta 0xFF; lo usa 0x9ED7 (29
;   bytes)
;   0x9f34..0x9f51  (29 bytes)
DATA_texto_9F34:
	defb 080h,06ah,01ah,02eh,0cbh,034h,000h,0d4h,028h,02eh,010h,04bh,0cbh,0feh,080h,07ah	; 9f34  .j...4..(..K...z
	defb 0d4h,028h,02eh,014h,001h,003h,014h,00ch,01fh,00dh,052h,052h,0ffh	; 9f44  .(........RR.

; ======================================================================
; CODIGO 0x9f51..0x9f84  (51 bytes)
; ======================================================================


L_9F51:
	ld h,001h		;9f51
L_9F53:
	ld c,000h		;9f53
L_9F55:
	ld b,000h		;9f55
L_9F57:
	call 000a8h		;9f57   ; BIOS LPTSTT - Tests printer status
	jr z,L_9F5F		;9f5a
	cp 0ffh		;9f5c
	ret z			;9f5e
L_9F5F:
	djnz L_9F57		;9f5f
	dec c			;9f61
	jr nz,L_9F55		;9f62
	dec h			;9f64
	jr nz,L_9F53		;9f65
	ld c,001h		;9f67
	scf			;9f69
	ret			;9f6a
L_9F6B:
	call L_9BCD		;9f6b
	ld hl,07888h		;9f6e
	ld de,06028h		;9f71
	call L_AB65		;9f74
	ld hl,09f84h		;9f77
	call 08275h		;9f7a
	ld a,001h		;9f7d
	ld (0d1deh),a		;9f7f
	scf			;9f82
	ret			;9f83

; ----------------------------------------------------------------------
; DATOS texto_9F84: texto: x, y y las letras hasta 0xFF; lo usa 0x9F7A (25
;   bytes)
;   0x9f84..0x9f9d  (25 bytes)
DATA_texto_9F84:
	defb 080h,092h,0d4h,028h,02eh,010h,04bh,0beh,000h,00eh,032h,014h,0feh,080h,0a2h,00bh	; 9f84  ...(..K...2.....
	defb 02ah,013h,002h,01fh,00eh,02eh,052h,052h,0ffh	; 9f94  *.....RR.

; ======================================================================
; CODIGO 0x9f9d..0x9fd5  (56 bytes)
; ======================================================================


L_9F9D:
	ld a,(0e100h)		;9f9d
	or a			;9fa0
	jp z,08251h		;9fa1
	ld a,(0d1eeh)		;9fa4
	ld hl,09fd5h		;9fa7
	call 0826ch		;9faa
	ld de,0000ah		;9fad
	ld bc,00e0fh		;9fb0
	call L_9FC6		;9fb3
	ld hl,08092h		;9fb6
	ld bc,06010h		;9fb9
	call 082b4h		;9fbc
	ld hl,09fdfh		;9fbf
	xor a			;9fc2
	jp L_A62E		;9fc3
L_9FC6:
	push bc			;9fc6
	ld bc,02a0ah		;9fc7
	push hl			;9fca
	push bc			;9fcb
	call L_AC9D		;9fcc
	pop bc			;9fcf
	pop hl			;9fd0
	pop de			;9fd1
	jp L_AC9D		;9fd2

; ----------------------------------------------------------------------
; DATOS leido_9FD5: lo usa el codigo: 0x9FA7 ld hl,09fd5h -> 0x826C (tabla de
;   palabras: la de A); 0x9FBF ld hl,09fdfh (en +10) (47 bytes)
;   0x9fd5..0xa004  (47 bytes)
DATA_leido_9FD5:
	defb 067h,088h,067h,0beh,077h,088h,077h,0beh,087h,088h,0e7h,09fh,0edh,09fh,0cdh,0d1h	; 9fd5  g.g.w.w.........
	defb 000h,002h,0aah,080h,000h,0aah,0a0h,000h,080h,09ah,00ah,02ah,0cbh,000h,002h,002h	; 9fe5  ...........*....
	defb 0cbh,00dh,006h,051h,0feh,088h,0aah,01ah,002h,000h,000h,002h,002h,004h,0ffh	; 9ff5  ...Q...........

; ======================================================================
; CODIGO 0xa004..0xa00c  (8 bytes)
; ======================================================================


L_A004:
	ret			;a004
L_A005:
	ld ix,0a00ch		;a005
	jp 082cch		;a009

; ----------------------------------------------------------------------
; DATOS lista_dibujos_A00C: lista de dibujos, 5 bytes cada uno (marca,
;   puntero, posicion, color), hasta la marca 0; lo usa 0xA009 (6 bytes)
;   0xa00c..0xa012  (6 bytes)
DATA_lista_dibujos_A00C:
	defb 080h,012h,0a0h,0c1h,00eh,000h	; a00c

; ----------------------------------------------------------------------
; DATOS dibujo_A012: dibujo en el RLE de 0x9014 (nucleo), hasta el 0; lo usa
;   0xA009 (26 bytes)
;   0xa012..0xa02c  (26 bytes)
DATA_dibujo_A012:
	defb 098h,008h,014h,03eh,049h,03eh,008h,008h,07fh,014h,014h,03fh,064h,04eh,035h,03fh	; a012  ...>I>.....?dN5?
	defb 035h,000h,063h,066h,06ch,078h,07ch,066h,063h,000h	; a022  5.cflx|fc.

; ======================================================================
; CODIGO 0xa02c..0xa11b  (239 bytes)
; ======================================================================


L_A02C:
	ld a,(0d1d7h)		;a02c
	cp 005h		;a02f
	jr nz,L_A051		;a031
	ld a,(0d1d8h)		;a033
	cp 003h		;a036
	jr z,L_A064		;a038
	cp 002h		;a03a
	jr nz,L_A051		;a03c
	ld a,(0e100h)		;a03e
	or a			;a041
	jr nz,L_A051		;a042
	ld a,(0d1c8h)		;a044
	cp 080h		;a047
	jr z,L_A054		;a049
	cp 010h		;a04b
	jr z,L_A05B		;a04d
	or a			;a04f
	ret			;a050
L_A051:
	jp L_A6E4		;a051
L_A054:
	call 08251h		;a054
	ld a,005h		;a057
	jr L_A05F		;a059
L_A05B:
	call 082f3h		;a05b
	xor a			;a05e
L_A05F:
	ld (0d1eeh),a		;a05f
	scf			;a062
	ret			;a063
L_A064:
	ld a,(0e100h)		;a064
	or a			;a067
	jr nz,L_A051		;a068
	xor a			;a06a
	ld (0d1cdh),a		;a06b
	scf			;a06e
	ret			;a06f
L_A070:
	ld a,(09219h)		;a070
	ld hl,0921bh		;a073
	call 08221h		;a076
	ld a,(hl)			;a079
	ld hl,09231h		;a07a
	cp (hl)			;a07d
	jr z,L_A0D7		;a07e
	call L_A0B7		;a080
	ld (hl),a			;a083
	ld b,a			;a084
	ld a,(09232h)		;a085
	dec a			;a088
	cp b			;a089
	jp z,L_A133		;a08a
	ld c,a			;a08d
	ld a,(09219h)		;a08e
	cp 006h		;a091
	jr nz,L_A09B		;a093
	ld a,c			;a095
	dec a			;a096
	cp b			;a097
	jp z,L_A133		;a098
L_A09B:
	call L_A622		;a09b
	ld hl,01892h		;a09e
	ld bc,08820h		;a0a1
	call 082b7h		;a0a4
	call L_A14E		;a0a7
	ld de,0189ah		;a0aa
	ld bc,01102h		;a0ad
	xor a			;a0b0
	ld (0d1ffh),a		;a0b1
	jp L_A87C		;a0b4
L_A0B7:
	push af			;a0b7
	push hl			;a0b8
	ld a,(09219h)		;a0b9
	cp 006h		;a0bc
	jr nz,L_A0D4		;a0be
	ld a,(hl)			;a0c0
	cp 00ch		;a0c1
	jr nc,L_A0D4		;a0c3
	push af			;a0c5
	ld hl,09222h		;a0c6
	call 08221h		;a0c9
	pop af			;a0cc
	bit 0,(hl)		;a0cd
	jr nz,L_A0D4		;a0cf
	call L_A0F8		;a0d1
L_A0D4:
	pop hl			;a0d4
	pop af			;a0d5
	ret			;a0d6
L_A0D7:
	ld a,(09219h)		;a0d7
	cp 006h		;a0da
	ret nz			;a0dc
	ld a,(09221h)		;a0dd
	cp 00ch		;a0e0
	ret nc			;a0e2
	ld hl,09222h		;a0e3
	call 08221h		;a0e6
	bit 0,(hl)		;a0e9
	ret nz			;a0eb
	ld a,(09221h)		;a0ec
	ld b,a			;a0ef
	ld a,(0d1c3h)		;a0f0
	and 008h		;a0f3
	jr nz,L_A105		;a0f5
	ld a,b			;a0f7
L_A0F8:
	call L_A113		;a0f8
	ld a,002h		;a0fb
	ld (0d1cch),a		;a0fd
	ld a,0ceh		;a100
	jp 082cfh		;a102
L_A105:
	ld a,b			;a105
	call L_A113		;a106
	ld a,001h		;a109
	ld (0d1cch),a		;a10b
	ld a,000h		;a10e
	jp 082cfh		;a110
L_A113:
	ld hl,0a11bh		;a113
	call 0826ch		;a116
	ex de,hl			;a119
	ret			;a11a

; ----------------------------------------------------------------------
; DATOS leido_A11B: lo usa el codigo: 0xA113 ld hl,0a11bh -> 0x826C (tabla de
;   palabras: la de A) (24 bytes)
;   0xa11b..0xa133  (24 bytes)
DATA_leido_A11B:
	defb 038h,028h,038h,030h,038h,038h,038h,040h,038h,048h,038h,050h,040h,028h,040h,030h	; a11b  8(80888@8H8P@(@0
	defb 040h,038h,040h,040h,040h,048h,040h,050h	; a12b  @8@@@H@P

; ======================================================================
; CODIGO 0xa133..0xa164  (49 bytes)
; ======================================================================


L_A133:
	ld b,018h		;a133
	ld hl,0d2a0h		;a135
L_A138:
	ld (hl),0e0h		;a138
	ld de,00004h		;a13a
	add hl,de			;a13d
	djnz L_A138		;a13e
	ld hl,01892h		;a140
	ld bc,08820h		;a143
	call 082b7h		;a146
	xor a			;a149
	ld (0d1c7h),a		;a14a
	ret			;a14d
L_A14E:
	ld a,(09219h)		;a14e
	ld hl,0a164h		;a151
	call 0826ch		;a154
	ld a,(09219h)		;a157
	ld de,0921bh		;a15a
	call 08206h		;a15d
	ld a,(de)			;a160
	jp 0826ch		;a161

; ----------------------------------------------------------------------
; DATOS leido_A164: lo usa el codigo: 0xA151 ld hl,0a164h -> 0x826C (tabla de
;   palabras: la de A) (1214 bytes)
;   0xa164..0xa622  (1214 bytes)
DATA_leido_A164:
	defb 072h,0a1h,07ah,0a1h,08ah,0a1h,09ch,0a1h,0b2h,0a1h,0c2h,0a1h,0c8h,0a1h,0e0h,0a1h	; a164  r.z.............
	defb 0ffh,0a1h,00dh,0a2h,027h,0a2h,02fh,0a2h,039h,0a2h,04fh,0a2h,064h,0a2h,080h,0a2h	; a174  ....'./.9.O.d...
	defb 096h,0a2h,0a9h,0a2h,0bbh,0a2h,0cah,0a2h,0e0h,0a2h,0f0h,0a2h,00bh,0a3h,01ch,0a3h	; a184  ................
	defb 03bh,0a3h,050h,0a3h,061h,0a3h,07eh,0a3h,09fh,0a3h,0beh,0a3h,0d2h,0a3h,0f3h,0a3h	; a194  ..P.a.~.........
	defb 00ah,0a4h,020h,0a4h,02ch,0a4h,037h,0a4h,04dh,0a4h,063h,0a4h,06fh,0a4h,07ch,0a4h	; a1a4  .. .,.7.M.c.o.|.
	defb 08ch,0a4h,0a3h,0a4h,0b8h,0a4h,0c5h,0a4h,0d2h,0a4h,0dfh,0a4h,0ech,0a4h,0f5h,0a4h	; a1b4  ................
	defb 005h,0a5h,016h,0a5h,02fh,0a5h,046h,0a5h,05fh,0a5h,076h,0a5h,085h,0a5h,09ah,0a5h	; a1c4  ..../.F._.v.....
	defb 0aah,0a5h,0b5h,0a5h,0cbh,0a5h,0e5h,0a5h,0f9h,0a5h,00ch,0a6h,056h,057h,05eh,006h	; a1d4  ............VW^.
	defb 027h,045h,065h,00bh,00ch,061h,019h,071h,016h,0a8h,009h,013h,045h,0feh,019h,0d1h	; a1e4  'Ee..a.q....E...
	defb 032h,013h,002h,008h,05eh,0beh,082h,013h,002h,029h,0ffh,055h,057h,05eh,016h,00fh	; a1f4  2...^....).UW^..
	defb 032h,013h,019h,0d1h,029h,056h,057h,05eh,0ffh,056h,057h,05eh,006h,027h,045h,073h	; a204  2...)VW^.VW^.'Es
	defb 061h,019h,096h,016h,0a8h,006h,032h,013h,0feh,019h,0ceh,029h,05eh,0beh,082h,013h	; a214  a.....2....)^...
	defb 002h,029h,0ffh,01ch,012h,003h,019h,056h,057h,05eh,0ffh,058h,059h,05eh,0beh,000h	; a224  .).....VW^.XY^..
	defb 038h,062h,001h,029h,0ffh,058h,059h,05eh,019h,0fdh,0f7h,0fdh,0beh,000h,00dh,0c2h	; a234  8b.).XY^........
	defb 008h,071h,016h,0feh,00bh,0beh,032h,013h,002h,029h,0ffh,058h,059h,05eh,0beh,045h	; a244  .q....2..).XY^.E
	defb 026h,00ah,000h,002h,032h,0dfh,008h,05eh,016h,0feh,015h,032h,013h,002h,029h,0ffh	; a254  &...2..^...2..).
	defb 058h,059h,05eh,006h,027h,045h,073h,061h,019h,012h,009h,018h,016h,0a8h,006h,032h	; a264  XY^.'Esa.......2
	defb 013h,0feh,019h,0ceh,029h,000h,00ch,02ch,0beh,001h,029h,0ffh,058h,059h,05eh,006h	; a274  ....)..,..).XY^.
	defb 027h,000h,070h,016h,019h,0ceh,029h,045h,0feh,020h,0c4h,006h,002h,05eh,0beh,001h	; a284  '.p...)E. ...^..
	defb 029h,0ffh,058h,059h,05eh,0beh,045h,0cfh,012h,0cfh,012h,016h,000h,0fdh,0d5h,0fdh	; a294  ).XY^.E.........
	defb 02ah,013h,002h,029h,0ffh,058h,059h,05eh,070h,016h,045h,0abh,0adh,0b1h,0beh,001h	; a2a4  *..).XY^p.E.....
	defb 027h,02ch,02ah,013h,002h,029h,0ffh,058h,059h,05eh,070h,016h,000h,049h,00ch,01fh	; a2b4  ',*..).XY^p..I..
	defb 0bbh,04ah,0beh,001h,029h,0ffh,05ah,05bh,05eh,019h,0fdh,0f7h,0fdh,0beh,045h,065h	; a2c4  .J..).Z[^.....Ee
	defb 00bh,00ch,061h,01fh,0cbh,0feh,019h,0ceh,013h,002h,029h,0ffh,05ah,05bh,05eh,0beh	; a2d4  ..a.......).Z[^.
	defb 045h,0fdh,0dfh,0eeh,000h,0d5h,0fdh,02ah,013h,002h,029h,0ffh,05ah,05bh,05eh,019h	; a2e4  E......*..).Z[^.
	defb 071h,016h,045h,0fdh,0f4h,0fdh,00bh,0beh,0feh,039h,0a9h,093h,070h,019h,000h,026h	; a2f4  q.E......9..p..&
	defb 00ah,00ch,02ch,0beh,001h,029h,0ffh,05ah,05bh,05eh,0beh,045h,060h,061h,01fh,0cbh	; a304  ..,..).Z[^.E`a..
	defb 026h,028h,000h,0fdh,0f6h,0fdh,002h,0ffh,05ah,05bh,05eh,0beh,000h,060h,061h,01fh	; a314  &(......Z[^..`a.
	defb 0cbh,0cbh,045h,0feh,00fh,019h,0fdh,0f7h,0fdh,0beh,000h,0fdh,0f5h,0fdh,062h,016h	; a324  ..E...........b.
	defb 000h,07bh,02ah,013h,002h,029h,0ffh,05ah,05bh,05eh,070h,016h,000h,049h,00ch,01fh	; a334  .{*..).Z[^p..I..
	defb 0bbh,04ah,0beh,0feh,001h,027h,02ch,02ah,013h,002h,029h,0ffh,05ah,05bh,05eh,070h	; a344  .J...',*..).Z[^p
	defb 016h,000h,00ah,01fh,006h,002h,000h,00ch,02ch,0beh,001h,029h,0ffh,05ah,05bh,05eh	; a354  ........,..).Z[^
	defb 070h,019h,073h,061h,019h,071h,0c0h,027h,002h,016h,045h,0feh,049h,00ch,01fh,04ah	; a364  p.sa.q.'..E.I..J
	defb 019h,000h,006h,00bh,015h,028h,0beh,001h,029h,0ffh,05ah,05bh,05eh,019h,000h,073h	; a374  .....(..).Z[^..s
	defb 061h,019h,071h,0c0h,027h,002h,016h,045h,0feh,070h,0a8h,007h,016h,000h,038h,045h	; a384  a.q.'..E.p....8E
	defb 039h,062h,019h,05eh,0beh,000h,082h,013h,002h,029h,0ffh,055h,057h,05eh,0beh,05ah	; a394  9b.^.....).UW^.Z
	defb 05bh,05eh,014h,037h,012h,016h,015h,032h,013h,045h,0feh,065h,00bh,00ch,061h,019h	; a3a4  [^.7...2.E.e..a.
	defb 071h,01fh,0cbh,000h,019h,0ceh,013h,002h,029h,0ffh,055h,057h,05eh,0beh,045h,065h	; a3b4  q.......).UW^.Ee
	defb 00bh,00ch,061h,019h,071h,01fh,0cbh,0feh,019h,0ceh,013h,002h,029h,0ffh,055h,057h	; a3c4  ..a.q.......).UW
	defb 05eh,0beh,000h,01fh,032h,00dh,0c0h,016h,019h,0ceh,013h,045h,0feh,060h,061h,019h	; a3d4  ^...2......E.`a.
	defb 071h,0cbh,000h,01ch,010h,01fh,010h,016h,000h,07bh,02ah,013h,002h,029h,0ffh,056h	; a3e4  q........{*..).V
	defb 057h,05eh,014h,002h,032h,0dch,016h,0feh,055h,057h,05eh,0beh,045h,0fdh,0d6h,0fdh	; a3f4  W^..2...UW^.E...
	defb 01fh,032h,013h,002h,029h,0ffh,049h,0c1h,032h,0d8h,003h,04ah,006h,027h,0feh,01fh	; a404  .2..).I.2..J.'..
	defb 0beh,032h,013h,019h,0ceh,013h,002h,029h,055h,057h,05eh,0ffh,037h,062h,01ah,032h	; a414  .2.....)UW^.7b.2
	defb 007h,028h,014h,00ch,013h,002h,029h,0ffh,0fdh,0dfh,0eeh,0fdh,000h,007h,02ah,013h	; a424  .(....).......*.
	defb 002h,029h,0ffh,0cch,02ah,0beh,055h,057h,05eh,015h,019h,006h,045h,0feh,01ah,032h	; a434  .)..*.UW^...E..2
	defb 007h,028h,000h,02ch,006h,027h,015h,002h,0ffh,07fh,061h,019h,012h,009h,018h,006h	; a444  .(.,.'....a.....
	defb 027h,045h,0fdh,0d6h,0fdh,01fh,032h,013h,002h,029h,0feh,055h,057h,05eh,0ffh,056h	; a454  'E....2..).UW^.V
	defb 057h,05eh,070h,006h,027h,082h,029h,055h,057h,05eh,0ffh,056h,057h,05eh,016h,0fdh	; a464  W^p.'.)UW^.VW^..
	defb 0efh,0fdh,0cah,008h,055h,057h,05eh,0ffh,0fdh,0f6h,0fdh,002h,000h,00ch,02ch,0beh	; a474  ....UW^.......,.
	defb 045h,010h,008h,00bh,02eh,001h,029h,0ffh,0fdh,0f4h,0fdh,008h,01fh,032h,00dh,0c0h	; a484  E.....)......2..
	defb 015h,000h,00ch,02ch,0beh,045h,0feh,037h,062h,006h,038h,062h,001h,029h,0ffh,00ch	; a494  ...,.E.7b.8b.)..
	defb 02ch,019h,0fdh,0f7h,0fdh,0beh,000h,01ch,010h,01fh,010h,016h,045h,0feh,07bh,02ah	; a4a4  ,...........E.{*
	defb 013h,002h,029h,0ffh,00ch,02ch,0beh,000h,0fdh,0edh,0fdh,0beh,032h,013h,002h,029h	; a4b4  ..)..,......2..)
	defb 0ffh,00ch,02ch,016h,000h,049h,00ch,01fh,0bbh,04ah,0beh,001h,029h,0ffh,00ch,02ch	; a4c4  ..,..I...J..)..,
	defb 0beh,000h,071h,016h,00bh,0beh,032h,013h,002h,029h,0ffh,00ch,02ch,0beh,000h,070h	; a4d4  ..q...2..)..,..p
	defb 016h,001h,0beh,032h,013h,002h,029h,0ffh,00ch,02ch,0beh,000h,015h,002h,052h,052h	; a4e4  ...2..)..,....RR
	defb 0ffh,056h,057h,05eh,014h,058h,059h,05eh,0beh,045h,01ah,015h,02ah,013h,002h,029h	; a4f4  .VW^.XY^.E..*..)
	defb 0ffh,056h,057h,05eh,014h,058h,059h,05eh,0beh,045h,008h,032h,012h,002h,013h,002h	; a504  .VW^.XY^.E.2....
	defb 029h,0ffh,056h,057h,05eh,014h,058h,059h,05eh,014h,05ah,05bh,05eh,0beh,045h,037h	; a514  ).VW^.XY^.Z[^.E7
	defb 012h,016h,0feh,001h,012h,01fh,032h,013h,002h,029h,0ffh,008h,00dh,028h,061h,019h	; a524  ......2..)...(a.
	defb 012h,009h,018h,016h,045h,037h,062h,008h,032h,007h,028h,014h,0feh,082h,013h,002h	; a534  ....E7b.2.(.....
	defb 029h,0ffh,00ah,01fh,006h,015h,000h,00ch,02ch,0beh,005h,005h,008h,013h,045h,0feh	; a544  ).......,.....E.
	defb 0abh,0adh,0b1h,0beh,000h,083h,032h,013h,002h,029h,0ffh,00ch,02ch,016h,045h,0abh	; a554  ......2..)..,.E.
	defb 0adh,0b1h,024h,049h,00ch,01fh,0bbh,04ah,0beh,0feh,001h,027h,02ch,02ah,013h,002h	; a564  ..$I...J...',*..
	defb 029h,0ffh,038h,062h,019h,0fdh,0f0h,0fdh,08ch,015h,045h,00ch,02ch,0beh,001h,029h	; a574  ).8b......E.,..)
	defb 0ffh,0abh,0adh,0b1h,024h,045h,049h,00ch,01fh,0bbh,04ah,016h,015h,032h,010h,0feh	; a584  ....$EI...J..2..
	defb 00ch,02ch,0beh,001h,029h,0ffh,01ah,032h,007h,028h,00ch,010h,000h,010h,013h,019h	; a594  .,..)..2.(......
	defb 00ch,02ch,0beh,001h,029h,0ffh,049h,006h,00eh,002h,0d8h,003h,04ah,019h,00ch,02ch	; a5a4  .,..).I.....J..,
	defb 0ffh,065h,00bh,00ch,061h,019h,012h,009h,018h,016h,045h,0fdh,0f2h,0f3h,0fdh,019h	; a5b4  .e..a.....E.....
	defb 0feh,00ch,02ch,0beh,001h,029h,0ffh,060h,061h,045h,008h,00dh,028h,061h,019h,012h	; a5c4  ..,..).`aE..(a..
	defb 009h,018h,016h,045h,0feh,0fdh,0f2h,0f3h,0fdh,019h,000h,00ch,02ch,0beh,001h,029h	; a5d4  ...E........,..)
	defb 0ffh,060h,061h,019h,012h,009h,018h,016h,045h,0fdh,0f2h,0f3h,0fdh,019h,0feh,00ch	; a5e4  .`a.....E.......
	defb 02ch,0beh,001h,029h,0ffh,049h,0c1h,032h,0d8h,003h,04ah,006h,027h,019h,0ceh,029h	; a5f4  ,..).I.2..J.'..)
	defb 045h,0feh,00ch,02ch,0beh,001h,029h,0ffh,05ch,05dh,05eh,016h,000h,072h,007h,015h	; a604  E..,..).\]^..r..
	defb 049h,00ch,01fh,04ah,024h,045h,0feh,0abh,0adh,0b1h,0beh,001h,029h,0ffh	; a614  I..J$E......).

; ======================================================================
; CODIGO 0xa622..0xa6dc  (186 bytes)
; ======================================================================


L_A622:
	call 08296h		;a622
	jp L_ADEB		;a625
L_A628:
	call 08296h		;a628
	jp L_B1F8		;a62b
L_A62E:
	ld (0a86ah),a		;a62e
	call L_A6DF		;a631
	ld (0d200h),de		;a634
	call L_A6DF		;a638
	ld (0d206h),de		;a63b
	call L_A6DF		;a63f
	ld (0d202h),de		;a642
	ld a,(hl)			;a646
	inc hl			;a647
	ld (0d232h),a		;a648
	ld a,(hl)			;a64b
	inc hl			;a64c
	ld (0d233h),a		;a64d
	call L_A69A		;a650
	ld hl,(0d206h)		;a653
	call 08275h		;a656
	ld a,0ffh		;a659
	ld (0d20ch),a		;a65b
	inc a			;a65e
	ld (0a869h),a		;a65f
	ld c,001h		;a662
	ld hl,(0d202h)		;a664
	ld a,(hl)			;a667
	ld b,a			;a668
	ld hl,0d233h		;a669
	ld a,(hl)			;a66c
	or a			;a66d
	jr z,L_A68E		;a66e
	ld a,b			;a670
L_A671:
	sub (hl)			;a671
	jr c,L_A677		;a672
	inc c			;a674
	jr L_A671		;a675
L_A677:
	add a,(hl)			;a677
	inc a			;a678
	ld (0d205h),a		;a679
	ld a,c			;a67c
L_A67D:
	ld (0d204h),a		;a67d
	ld a,(0d205h)		;a680
	ld hl,0d233h		;a683
	cp (hl)			;a686
	ret nz			;a687
	ld a,001h		;a688
	ld (0a869h),a		;a68a
	ret			;a68d
L_A68E:
	ld a,001h		;a68e
	ld (0d205h),a		;a690
	ld hl,(0d202h)		;a693
	ld a,(hl)			;a696
	inc a			;a697
	jr L_A67D		;a698
L_A69A:
	call 082bdh		;a69a
	ld hl,(0d202h)		;a69d
	ld a,(hl)			;a6a0
	ld hl,(0d200h)		;a6a1
	ld c,a			;a6a4
	add a,a			;a6a5
	add a,c			;a6a6
	call 08221h		;a6a7
	ld de,0d20dh		;a6aa
	ld bc,00003h		;a6ad
	ldir		;a6b0
	ld a,(0d20fh)		;a6b2
	cp 001h		;a6b5
	ret z			;a6b7
	ld hl,0a80fh		;a6b8
	call 0826ch		;a6bb
	ld b,(hl)			;a6be
	inc hl			;a6bf
	ld de,0d280h		;a6c0
L_A6C3:
	ld a,(0d20dh)		;a6c3
	add a,(hl)			;a6c6
	ld (de),a			;a6c7
	inc hl			;a6c8
	inc de			;a6c9
	ld a,(0d20eh)		;a6ca
	add a,(hl)			;a6cd
	ld (de),a			;a6ce
	inc hl			;a6cf
	inc de			;a6d0
	ld a,(hl)			;a6d1
	ld (de),a			;a6d2
	inc hl			;a6d3
	inc de			;a6d4
	ld a,(hl)			;a6d5
	ld (de),a			;a6d6
	inc hl			;a6d7
	inc de			;a6d8
	djnz L_A6C3		;a6d9
	ret			;a6db

; ----------------------------------------------------------------------
; DATOS suelto_A6DC: nadie lo lee ni lo apunta (3 bytes)
;   0xa6dc..0xa6df  (3 bytes)
DATA_suelto_A6DC:
	defb 0cdh,01eh,082h	; a6dc

; ======================================================================
; CODIGO 0xa6df..0xa80f  (304 bytes)
; ======================================================================


L_A6DF:
	ld e,(hl)			;a6df
	inc hl			;a6e0
	ld d,(hl)			;a6e1
	inc hl			;a6e2
	ret			;a6e3
L_A6E4:
	ld a,(0d1c8h)		;a6e4
	cp 010h		;a6e7
	jp z,L_A7F8		;a6e9
	ld c,a			;a6ec
	ld a,(0d233h)		;a6ed
	and a			;a6f0
	push bc			;a6f1
	call nz,L_A7A9		;a6f2
	pop bc			;a6f5
	ld a,(0d204h)		;a6f6
	and a			;a6f9
	jr z,L_A732		;a6fa
	ld a,c			;a6fc
	cp 001h		;a6fd
	jp z,L_A785		;a6ff
	cp 002h		;a702
	jr nz,L_A732		;a704
	ld a,(0d204h)		;a706
	inc a			;a709
	ld hl,0d232h		;a70a
	ld e,(hl)			;a70d
	inc e			;a70e
	cp e			;a70f
	ret nc			;a710
	ld (0d204h),a		;a711
	ld e,a			;a714
	ld a,(0a869h)		;a715
	or a			;a718
	jr z,L_A729		;a719
	ld a,e			;a71b
	cp (hl)			;a71c
	jr nz,L_A729		;a71d
	ld a,(0d233h)		;a71f
	ld hl,0a86ah		;a722
	sub (hl)			;a725
	ld (0d205h),a		;a726
L_A729:
	call L_A734		;a729
	call L_A745		;a72c
	call L_A69A		;a72f
L_A732:
	xor a			;a732
	ret			;a733
L_A734:
	ld a,(0d1c0h)		;a734
	cp 004h		;a737
	jr nz,L_A742		;a739
	ld a,(0d1d7h)		;a73b
	dec a			;a73e
	jp z,08370h		;a73f
L_A742:
	jp 082eeh		;a742
L_A745:
	ld a,(0d233h)		;a745
	or a			;a748
	jr z,L_A776		;a749
	ld a,(0d232h)		;a74b
	or a			;a74e
	jr z,L_A77C		;a74f
	ld a,(0d204h)		;a751
	dec a			;a754
	jr z,L_A765		;a755
	ld b,a			;a757
	ld a,(0d233h)		;a758
	or a			;a75b
	jr z,L_A782		;a75c
	ld hl,0d233h		;a75e
	xor a			;a761
L_A762:
	add a,(hl)			;a762
	djnz L_A762		;a763
L_A765:
	ld b,a			;a765
	ld a,(0d233h)		;a766
	or a			;a769
	jr z,L_A76F		;a76a
	ld a,(0d205h)		;a76c
L_A76F:
	dec a			;a76f
	add a,b			;a770
L_A771:
	ld hl,(0d202h)		;a771
	ld (hl),a			;a774
	ret			;a775
L_A776:
	ld a,(0d204h)		;a776
	dec a			;a779
	jr L_A771		;a77a
L_A77C:
	ld a,(0d205h)		;a77c
	dec a			;a77f
	jr L_A771		;a780
L_A782:
	ld a,b			;a782
	jr L_A771		;a783
L_A785:
	ld a,(0d204h)		;a785
	dec a			;a788
	ret z			;a789
	ld (0d204h),a		;a78a
	ld a,(0a869h)		;a78d
	or a			;a790
	jr z,L_A729		;a791
	ld a,(0d233h)		;a793
	ld (0d205h),a		;a796
	jr L_A729		;a799
L_A79B:
	xor a			;a79b
	ld (0a869h),a		;a79c
	ld a,(0d205h)		;a79f
	dec a			;a7a2
	ret z			;a7a3
	ld (0d205h),a		;a7a4
	jr L_A729		;a7a7
L_A7A9:
	ld a,c			;a7a9
	cp 004h		;a7aa
	jr z,L_A79B		;a7ac
	cp 008h		;a7ae
	jp nz,L_A732		;a7b0
	ld a,(0d205h)		;a7b3
	inc a			;a7b6
	ld b,a			;a7b7
	ld a,(0d204h)		;a7b8
	ld hl,0d232h		;a7bb
	cp (hl)			;a7be
	ld a,(0d233h)		;a7bf
	call z,L_A7F0		;a7c2
	ld e,a			;a7c5
	ld a,b			;a7c6
	cp e			;a7c7
	jr z,L_A7E7		;a7c8
	inc e			;a7ca
	cp e			;a7cb
	jr nc,L_A7D8		;a7cc
	ld (0d205h),a		;a7ce
	xor a			;a7d1
	ld (0a869h),a		;a7d2
	jp L_A729		;a7d5
L_A7D8:
	ld a,(0d204h)		;a7d8
	ld hl,0d232h		;a7db
	cp (hl)			;a7de
	ret z			;a7df
	ld a,001h		;a7e0
	ld (0a869h),a		;a7e2
	or a			;a7e5
	ret			;a7e6
L_A7E7:
	ld (0d205h),a		;a7e7
	call L_A7D8		;a7ea
	jp L_A729		;a7ed
L_A7F0:
	push af			;a7f0
	ld a,(0a86ah)		;a7f1
	ld e,a			;a7f4
	pop af			;a7f5
	sub e			;a7f6
	ret			;a7f7
L_A7F8:
	call L_A803		;a7f8
	jp z,L_A732		;a7fb
	call 082f3h		;a7fe
	scf			;a801
	ret			;a802
L_A803:
	ld a,(0d1d6h)		;a803
	cp 003h		;a806
	ret nz			;a808
	ld a,(0d1dah)		;a809
	cp 0feh		;a80c
	ret			;a80e

; ----------------------------------------------------------------------
; DATOS leido_A80F: lo usa el codigo: 0xA6B8 ld hl,0a80fh -> 0x826C (tabla de
;   palabras: la de A); 0xA65F ld (0a869h),a (en +90); 0xA68A ld (0a869h),a
;   (en +90); 0xA62E ld (0a86ah),a (en +91) (109 bytes)
;   0xa80f..0xa87c  (109 bytes)
DATA_leido_A80F:
	defb 023h,0a8h,028h,0a8h,02dh,0a8h,032h,0a8h,03bh,0a8h,040h,0a8h,045h,0a8h,04eh,0a8h	; a80f  #.(.-.2...@.E.N.
	defb 057h,0a8h,060h,0a8h,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; a81f  W.`.............
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; a82f  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; a83f  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; a84f  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,080h,073h,050h,09dh,050h,094h	; a85f  ...........sP.P.
	defb 050h,08eh,050h,08bh,050h,085h,050h,080h,050h,07bh,050h,073h,030h	; a86f  P.P.P.P.P{Ps0

; ======================================================================
; CODIGO 0xa87c..0xac97  (1051 bytes)
; ======================================================================


L_A87C:
	ld a,b			;a87c
	ld (0a86bh),a		;a87d
	ld (0a86ch),a		;a880
	ld a,c			;a883
	ld (0a86dh),a		;a884
	ld (0a86eh),de		;a887
	ld (0a870h),de		;a88b
	call L_A8AA		;a88f
	xor a			;a892
	ld (0a872h),a		;a893
	ld (0d1c6h),a		;a896
	ld (0a873h),a		;a899
	ld (0a874h),a		;a89c
	ld (0a879h),a		;a89f
	inc a			;a8a2
	ld (0d1c7h),a		;a8a3
	ld (0dcf4h),a		;a8a6
	ret			;a8a9
L_A8AA:
	ld (0a875h),hl		;a8aa
	ld (0a877h),de		;a8ad
	ret			;a8b1
L_A8B2:
	ld a,(0d1c6h)		;a8b2
	or a			;a8b5
	jp nz,L_A97C		;a8b6
	ld a,(0a874h)		;a8b9
	or a			;a8bc
	jp nz,L_AA4D		;a8bd
	call L_AB2F		;a8c0
	ld a,(0d1c3h)		;a8c3
	and 003h		;a8c6
	ret nz			;a8c8
	ld a,(0d1c7h)		;a8c9
	or a			;a8cc
	ret z			;a8cd
	ld a,(0a879h)		;a8ce
	or a			;a8d1
	jp nz,L_A9C4		;a8d2
	ld de,(0a877h)		;a8d5
	ld hl,(0a875h)		;a8d9
	ld a,(hl)			;a8dc
	inc hl			;a8dd
	call L_A934		;a8de
	cp 0ffh		;a8e1
	jp z,L_A9AB		;a8e3
	cp 0feh		;a8e6
	jr z,L_A93E		;a8e8
	cp 0fdh		;a8ea
	jp z,L_A99F		;a8ec
	cp 0fch		;a8ef
	jp z,L_A9B5		;a8f1
	cp 0fbh		;a8f4
	jp z,L_A991		;a8f6
L_A8F9:
	cp 0ffh		;a8f9
	jr nz,L_A8FE		;a8fb
	xor a			;a8fd
L_A8FE:
	cp 043h		;a8fe
	call z,L_AB0D		;a900
	cp 044h		;a903
	call z,L_AB0D		;a905
	ld c,a			;a908
	ld a,(0d1ffh)		;a909
	or a			;a90c
	jr nz,L_A921		;a90d
	call L_9800		;a90f
	ld a,c			;a912
	add a,042h		;a913
	cp 019h		;a915
	call c,L_AABB		;a917
	sub 019h		;a91a
	cp 024h		;a91c
	call c,L_AAE8		;a91e
L_A921:
	push hl			;a921
	push bc			;a922
	pop bc			;a923
	pop hl			;a924
	ld a,c			;a925
	call 0827eh		;a926
	ld a,001h		;a929
	ld (0dcf5h),a		;a92b
	call 082a8h		;a92e
	jp L_A8AA		;a931
L_A934:
	push hl			;a934
	push af			;a935
	ld a,(hl)			;a936
	inc a			;a937
	ld (0dcf4h),a		;a938
	pop af			;a93b
	pop hl			;a93c
	ret			;a93d
L_A93E:
	ld (0a875h),hl		;a93e
	ld a,(0a86ch)		;a941
	ld (0a86bh),a		;a944
	ld a,(0a873h)		;a947
	and a			;a94a
	jp nz,L_AA3B		;a94b
	ld hl,(0a86eh)		;a94e
	ld a,l			;a951
	add a,010h		;a952
	ld l,a			;a954
	ld (0a86eh),hl		;a955
	ld (0a877h),hl		;a958
L_A95B:
	ld a,(0a872h)		;a95b
	inc a			;a95e
	ld (0a872h),a		;a95f
	ld hl,0a86dh		;a962
	cp (hl)			;a965
	ret c			;a966
	ld a,(0a873h)		;a967
	or a			;a96a
	call z,L_AA3B		;a96b
	ld a,0ffh		;a96e
	ld (0a872h),a		;a970
	inc a			;a973
	inc a			;a974
	ld (0a873h),a		;a975
	ld (0d1c6h),a		;a978
	ret			;a97b
L_A97C:
	xor a			;a97c
	ld (0dcf5h),a		;a97d
	call L_AA08		;a980
	call L_AB1D		;a983
	ret z			;a986
	call L_AA47		;a987
	xor a			;a98a
	ld (0d1c6h),a		;a98b
	jp L_AA15		;a98e
L_A991:
	ld (0a875h),hl		;a991
	ld a,(0d216h)		;a994
	xor 001h		;a997
	ld (0d216h),a		;a999
	jp L_9803		;a99c
L_A99F:
	ld (0a875h),hl		;a99f
	ld a,(0d1ffh)		;a9a2
	xor 001h		;a9a5
	ld (0d1ffh),a		;a9a7
	ret			;a9aa
L_A9AB:
	ld a,0ffh		;a9ab
	ld (0a872h),a		;a9ad
	xor a			;a9b0
	ld (0d1c7h),a		;a9b1
	ret			;a9b4
L_A9B5:
	ld a,004h		;a9b5
	ld (0a879h),a		;a9b7
	ld (0a87ah),hl		;a9ba
	ld hl,0d218h		;a9bd
	ld (0a875h),hl		;a9c0
	ret			;a9c3
L_A9C4:
	ld de,(0a877h)		;a9c4
	ld hl,(0a875h)		;a9c8
	ld a,(hl)			;a9cb
	inc hl			;a9cc
	call L_A8F9		;a9cd
	ld hl,(0a877h)		;a9d0
	ld a,h			;a9d3
	sub 008h		;a9d4
	ld h,a			;a9d6
	ld a,l			;a9d7
	sub 008h		;a9d8
	ld l,a			;a9da
	ld a,(0d1d6h)		;a9db
	cp 003h		;a9de
	jr z,L_A9F9		;a9e0
	ld e,004h		;a9e2
	ld a,(0d1d6h)		;a9e4
	dec a			;a9e7
	jr z,L_A9EF		;a9e8
	ld e,009h		;a9ea
	dec a			;a9ec
	jr z,L_A9EF		;a9ed
L_A9EF:
	ld e,009h		;a9ef
	ld d,00eh		;a9f1
	ld bc,00810h		;a9f3
	call L_AC9D		;a9f6
L_A9F9:
	ld a,(0a879h)		;a9f9
	dec a			;a9fc
	ld (0a879h),a		;a9fd
	ret nz			;aa00
	ld hl,(0a87ah)		;aa01
	ld (0a875h),hl		;aa04
	ret			;aa07
L_AA08:
	ld a,(0d1c3h)		;aa08
	and 00fh		;aa0b
	bit 3,a		;aa0d
	ld a,000h		;aa0f
	jr z,L_AA15		;aa11
	ld a,050h		;aa13
L_AA15:
	push af			;aa15
	ld a,(0a86dh)		;aa16
	dec a			;aa19
	ld l,a			;aa1a
	ld h,000h		;aa1b
	add hl,hl			;aa1d
	call L_AA37		;aa1e
	ex de,hl			;aa21
	ld a,(0a86ch)		;aa22
	ld l,a			;aa25
	ld h,000h		;aa26
	call L_AA37		;aa28
	ld h,l			;aa2b
	ld l,e			;aa2c
	ld de,(0a870h)		;aa2d
	add hl,de			;aa31
	pop af			;aa32
	ex de,hl			;aa33
	jp 0827eh		;aa34
L_AA37:
	add hl,hl			;aa37
	add hl,hl			;aa38
	add hl,hl			;aa39
	ret			;aa3a
L_AA3B:
	ld a,(0a86dh)		;aa3b
	dec a			;aa3e
	ld b,a			;aa3f
	ld a,(0a872h)		;aa40
	cp b			;aa43
	jp z,L_A95B		;aa44
L_AA47:
	ld a,010h		;aa47
	ld (0a874h),a		;aa49
	ret			;aa4c
L_AA4D:
	xor a			;aa4d
	ld (0dcf5h),a		;aa4e
	ld de,(0a870h)		;aa51
	ld a,e			;aa55
	sub 007h		;aa56
	ld e,a			;aa58
	ex de,hl			;aa59
	ld de,(0a870h)		;aa5a
	ld a,e			;aa5e
	sub 008h		;aa5f
	ld e,a			;aa61
	ld a,(0a86dh)		;aa62
	call L_AAB6		;aa65
	dec a			;aa68
	ld c,a			;aa69
	ld a,(0a86ch)		;aa6a
	call L_AAB7		;aa6d
	ld b,a			;aa70
	xor a			;aa71
	call 08284h		;aa72
	ld de,(0a870h)		;aa75
	ld a,e			;aa79
	sub 008h		;aa7a
	ld e,a			;aa7c
	ld a,(0a86dh)		;aa7d
	call L_AAB6		;aa80
	dec a			;aa83
	add a,e			;aa84
	ld e,a			;aa85
	ex de,hl			;aa86
	ld a,(0a86ch)		;aa87
	call L_AAB7		;aa8a
	ld b,a			;aa8d
	ld c,001h		;aa8e
	xor a			;aa90
	ld d,a			;aa91
	call 0829fh		;aa92
	ld a,(0a874h)		;aa95
	dec a			;aa98
	or a			;aa99
	ld (0a874h),a		;aa9a
	ret nz			;aa9d
	ld de,(0a870h)		;aa9e
	ld a,(0a86dh)		;aaa2
	dec a			;aaa5
	call L_AAB6		;aaa6
	add a,e			;aaa9
	ld e,a			;aaaa
	ld (0a86eh),de		;aaab
	ld (0a877h),de		;aaaf
	jp L_A95B		;aab3
L_AAB6:
	add a,a			;aab6
L_AAB7:
	add a,a			;aab7
	add a,a			;aab8
	add a,a			;aab9
	ret			;aaba
L_AABB:
	push af			;aabb
	push de			;aabc
	push hl			;aabd
	push bc			;aabe
	call L_AAC8		;aabf
	pop bc			;aac2
	pop hl			;aac3
	pop de			;aac4
	ld c,a			;aac5
	pop af			;aac6
	ret			;aac7
L_AAC8:
	ex af,af'			;aac8
	ld a,e			;aac9
	sub 008h		;aaca
	ld e,a			;aacc
	ex af,af'			;aacd
	ld b,043h		;aace
	cp 014h		;aad0
	jr c,L_AAD6		;aad2
	ld b,044h		;aad4
L_AAD6:
	push af			;aad6
	ld a,b			;aad7
	call 0827eh		;aad8
	ld a,e			;aadb
	add a,008h		;aadc
	ld e,a			;aade
	pop af			;aadf
	ld hl,0919fh		;aae0
	call 08221h		;aae3
	ld a,(hl)			;aae6
	ret			;aae7
L_AAE8:
	push hl			;aae8
	push bc			;aae9
	call L_AAF1		;aaea
	pop bc			;aaed
	pop hl			;aaee
	ld c,a			;aaef
	ret			;aaf0
L_AAF1:
	cp 015h		;aaf1
	jr c,L_AAFC		;aaf3
	push af			;aaf5
	add a,0f3h		;aaf6
	call L_AAC8		;aaf8
	pop af			;aafb
L_AAFC:
	ld hl,091b8h		;aafc
	add a,a			;aaff
	call 08221h		;ab00
	ld a,(hl)			;ab03
	call 0827eh		;ab04
	call 082a8h		;ab07
	inc hl			;ab0a
	ld a,(hl)			;ab0b
	ret			;ab0c
L_AB0D:
	push de			;ab0d
	push hl			;ab0e
	ex af,af'			;ab0f
	ld a,e			;ab10
	sub 008h		;ab11
	ld e,a			;ab13
	ex af,af'			;ab14
	call 0827eh		;ab15
	pop hl			;ab18
	pop de			;ab19
	ld a,(hl)			;ab1a
	inc hl			;ab1b
	ret			;ab1c
L_AB1D:
	ld a,(0d1c8h)		;ab1d
	ld b,a			;ab20
	and 010h		;ab21
	jr nz,L_AB29		;ab23
	ld a,b			;ab25
	and 040h		;ab26
	ret z			;ab28
L_AB29:
	call 0833eh		;ab29
	or 0ffh		;ab2c
	ret			;ab2e
L_AB2F:
	ld a,(0d1d6h)		;ab2f
	cp 002h		;ab32
	jr nz,L_AB3C		;ab34
	ld a,(0d1d7h)		;ab36
	cp 004h		;ab39
	ret z			;ab3b
L_AB3C:
	ld a,(0d1d6h)		;ab3c
	cp 003h		;ab3f
	ret z			;ab41
	ld hl,0d1e7h		;ab42
	ld a,(0d216h)		;ab45
	or a			;ab48
	jr z,L_AB4E		;ab49
	ld hl,0d1e8h		;ab4b
L_AB4E:
	ld a,(hl)			;ab4e
	ld hl,08320h		;ab4f
	cp 007h		;ab52
	jr c,L_AB64		;ab54
	ld hl,08339h		;ab56
	cp 00eh		;ab59
	jr z,L_AB64		;ab5b
	cp 00bh		;ab5d
	jr z,L_AB64		;ab5f
	ld hl,0831bh		;ab61
L_AB64:
	jp (hl)			;ab64
L_AB65:
	ld (0dd00h),hl		;ab65
	ld (0dd02h),de		;ab68
	ld a,h			;ab6c
	add a,008h		;ab6d
	ld h,a			;ab6f
	ld a,(0dd03h)		;ab70
	sub 010h		;ab73
	ld b,a			;ab75
	ld a,(0dd02h)		;ab76
	ld c,a			;ab79
	xor a			;ab7a
	ld d,000h		;ab7b
	call 0829fh		;ab7d
	ld hl,(0dd00h)		;ab80
	ld a,l			;ab83
	add a,008h		;ab84
	ld l,a			;ab86
	ld a,(0dd02h)		;ab87
	sub 010h		;ab8a
	ld c,a			;ab8c
	ld a,(0dd03h)		;ab8d
	ld b,a			;ab90
	xor a			;ab91
	ld d,000h		;ab92
	call 0829fh		;ab94
	ld de,(0dd00h)		;ab97
	ld a,0c9h		;ab9b
	call L_AC81		;ab9d
	call 082a8h		;aba0
	ex de,hl			;aba3
	ld a,(0dd03h)		;aba4
	sub 010h		;aba7
	ld b,a			;aba9
	ld c,00eh		;abaa
	call L_AC28		;abac
	ld de,(0dd00h)		;abaf
	ld a,(0dd03h)		;abb3
	sub 008h		;abb6
	add a,d			;abb8
	ld d,a			;abb9
	ld a,0cah		;abba
	call L_AC81		;abbc
	ld hl,(0dd00h)		;abbf
	ld a,008h		;abc2
	add a,l			;abc4
	ld l,a			;abc5
	ld a,(0dd02h)		;abc6
	sub 010h		;abc9
	ld b,a			;abcb
	ld c,00eh		;abcc
	call L_AC54		;abce
	ld de,(0dd00h)		;abd1
	ld a,(0dd02h)		;abd5
	sub 008h		;abd8
	add a,e			;abda
	ld e,a			;abdb
	ld a,0cbh		;abdc
	call L_AC81		;abde
	ld hl,(0dd00h)		;abe1
	ld a,(0dd03h)		;abe4
	dec a			;abe7
	add a,h			;abe8
	ld h,a			;abe9
	ld a,008h		;abea
	add a,l			;abec
	ld l,a			;abed
	ld a,(0dd02h)		;abee
	sub 010h		;abf1
	ld b,a			;abf3
	ld c,00eh		;abf4
	call L_AC54		;abf6
	ld de,(0dd00h)		;abf9
	ld a,(0dd02h)		;abfd
	sub 008h		;ac00
	add a,e			;ac02
	ld e,a			;ac03
	ld a,(0dd03h)		;ac04
	sub 008h		;ac07
	add a,d			;ac09
	ld d,a			;ac0a
	ld a,0cch		;ac0b
	call L_AC81		;ac0d
	ld hl,(0dd00h)		;ac10
	ld a,008h		;ac13
	add a,h			;ac15
	ld h,a			;ac16
	ld a,(0dd02h)		;ac17
	dec a			;ac1a
	add a,l			;ac1b
	ld l,a			;ac1c
	ld a,(0dd03h)		;ac1d
	sub 010h		;ac20
	ld b,a			;ac22
	ld c,00eh		;ac23
	jp L_AC28		;ac25
L_AC28:
	ld a,024h		;ac28
	ld (0d226h),a		;ac2a
	call 08287h		;ac2d
	out (c),h		;ac30
	xor a			;ac32
	out (c),a		;ac33
	out (c),l		;ac35
	out (c),a		;ac37
	ld hl,(0d227h)		;ac39
	out (c),h		;ac3c
	xor a			;ac3e
	cp h			;ac3f
	jr nz,L_AC43		;ac40
	inc a			;ac42
L_AC43:
	out (c),a		;ac43
	xor a			;ac45
	out (c),a		;ac46
	out (c),a		;ac48
	out (c),l		;ac4a
	out (c),a		;ac4c
	ld a,070h		;ac4e
	out (c),a		;ac50
	ei			;ac52
	ret			;ac53
L_AC54:
	ld a,024h		;ac54
	ld (0d226h),a		;ac56
	call 08287h		;ac59
	out (c),h		;ac5c
	xor a			;ac5e
	out (c),a		;ac5f
	out (c),l		;ac61
	out (c),a		;ac63
	ld hl,(0d227h)		;ac65
	out (c),h		;ac68
	xor a			;ac6a
	cp h			;ac6b
	jr nz,L_AC6F		;ac6c
	inc a			;ac6e
L_AC6F:
	out (c),a		;ac6f
	xor a			;ac71
	out (c),a		;ac72
	out (c),a		;ac74
	out (c),l		;ac76
	inc a			;ac78
	out (c),a		;ac79
	ld a,070h		;ac7b
	out (c),a		;ac7d
	ei			;ac7f
	ret			;ac80
L_AC81:
	push bc			;ac81
	push hl			;ac82
	push de			;ac83
	call 08281h		;ac84
	ld a,l			;ac87
	add a,080h		;ac88
	ld l,a			;ac8a
	ld bc,00808h		;ac8b
	ld a,048h		;ac8e
	call 0820ch		;ac90
	pop de			;ac93
	pop hl			;ac94
	pop bc			;ac95
	ret			;ac96

; ----------------------------------------------------------------------
; DATOS leido_AC97: lo usa el codigo: 0xACA5 ld (0ac97h),bc; 0xACB7 ld
;   a,(0ac98h) -> 0x8266 (copia de la VRAM) (en +1); 0xACCA ld a,(0ac98h) ->
;   0x8224 (copia a la VRAM) (en +1); 0xACA9 ld (0ac99h),hl (en +2) (6 bytes)
;   0xac97..0xac9d  (6 bytes)
DATA_leido_AC97:
	defb 070h,01fh,0f5h,080h,090h,090h	; ac97

; ======================================================================
; CODIGO 0xac9d..0xad1b  (126 bytes)
; ======================================================================


L_AC9D:
	srl b		;ac9d
	ex de,hl			;ac9f
	push hl			;aca0
	call L_AD0F		;aca1
	pop de			;aca4
	ld (0ac97h),bc		;aca5
	ld (0ac99h),hl		;aca9
	ld (0ac9bh),de		;acac
L_ACB0:
	push bc			;acb0
	ld hl,(0ac99h)		;acb1
	ld de,0d300h		;acb4
	ld a,(0ac98h)		;acb7
	ld c,a			;acba
	ld b,000h		;acbb
	call 08266h		;acbd
	call L_ACE3		;acc0
	ld de,(0ac99h)		;acc3
	ld hl,0d300h		;acc7
	ld a,(0ac98h)		;acca
	ld c,a			;accd
	ld b,000h		;acce
	call 08224h		;acd0
	ld hl,(0ac99h)		;acd3
	ld a,080h		;acd6
	call 08221h		;acd8
	ld (0ac99h),hl		;acdb
	pop bc			;acde
	dec c			;acdf
	jr nz,L_ACB0		;ace0
	ret			;ace2
L_ACE3:
	ld hl,0d300h		;ace3
	ld de,(0ac9bh)		;ace6
	ld a,(0ac98h)		;acea
	ld b,a			;aced
L_ACEE:
	ld a,(hl)			;acee
	rra			;acef
	rra			;acf0
	rra			;acf1
	rra			;acf2
	and 00fh		;acf3
	cp d			;acf5
	jr nz,L_ACF9		;acf6
	ld a,e			;acf8
L_ACF9:
	rla			;acf9
	rla			;acfa
	rla			;acfb
	rla			;acfc
	and 0f0h		;acfd
	ld c,a			;acff
	ld a,(hl)			;ad00
	and 00fh		;ad01
	cp d			;ad03
	jr nz,L_AD07		;ad04
	ld a,e			;ad06
L_AD07:
	and 00fh		;ad07
	or c			;ad09
	ld (hl),a			;ad0a
	inc hl			;ad0b
	djnz L_ACEE		;ad0c
	ret			;ad0e
L_AD0F:
	srl e		;ad0f
	rr d		;ad11
	ld h,e			;ad13
	ld l,d			;ad14
	ld de,(0d223h)		;ad15
	add hl,de			;ad19
	ret			;ad1a

; ----------------------------------------------------------------------
; DATOS leido_AD1B: lo usa el codigo: 0xAD60 ld (0ad1bh),a; 0xADBB ld
;   hl,0ad1bh; 0xAD6F ld (0ad1dh),hl (en +2); 0xAD7F ld hl,(0ad1dh) -> 0x8266
;   (copia de la VRAM) (en +2) (6 bytes)
;   0xad1b..0xad21  (6 bytes)
DATA_leido_AD1B:
	defb 030h,020h,010h,020h,010h,010h	; ad1b

; ======================================================================
; CODIGO 0xad21..0xadea  (201 bytes)
; ======================================================================


L_AD21:
	ld a,(ix+000h)		;ad21
	dec a			;ad24
	ret m			;ad25
	push af			;ad26
	call z,L_AD35		;ad27
	pop af			;ad2a
	call nz,L_ADAA		;ad2b
	ld bc,00004h		;ad2e
	add ix,bc		;ad31
	jr L_AD21		;ad33
L_AD35:
	ld a,(ix+001h)		;ad35
	or a			;ad38
	ret z			;ad39
	call L_AD60		;ad3a
	call L_AD7F		;ad3d
	call L_AD46		;ad40
	call L_AD8B		;ad43
L_AD46:
	ld hl,0d300h		;ad46
	ld de,0d32fh		;ad49
	ld b,010h		;ad4c
	call L_AD59		;ad4e
	ld hl,0d310h		;ad51
	ld de,0d33fh		;ad54
	ld b,010h		;ad57
L_AD59:
	ld a,(hl)			;ad59
	ld (de),a			;ad5a
	inc hl			;ad5b
	dec de			;ad5c
	djnz L_AD59		;ad5d
	ret			;ad5f
L_AD60:
	ld (0ad1bh),a		;ad60
	ld l,(ix+002h)		;ad63
	ld h,000h		;ad66
	add hl,hl			;ad68
	add hl,hl			;ad69
	add hl,hl			;ad6a
	ld bc,0f800h		;ad6b
	add hl,bc			;ad6e
	ld (0ad1dh),hl		;ad6f
	ld l,(ix+003h)		;ad72
	ld h,000h		;ad75
	add hl,hl			;ad77
	add hl,hl			;ad78
	add hl,hl			;ad79
	add hl,bc			;ad7a
	ld (0ad1fh),hl		;ad7b
	ret			;ad7e
L_AD7F:
	ld hl,(0ad1dh)		;ad7f
	ld de,0d300h		;ad82
	ld bc,00020h		;ad85
	jp 08266h		;ad88
L_AD8B:
	ld de,(0ad1fh)		;ad8b
	ld hl,0d320h		;ad8f
	ld bc,00020h		;ad92
	call 08224h		;ad95
	ld bc,00020h		;ad98
	ld hl,(0ad1dh)		;ad9b
	add hl,bc			;ad9e
	ld (0ad1dh),hl		;ad9f
	ld hl,(0ad1fh)		;ada2
	add hl,bc			;ada5
	ld (0ad1fh),hl		;ada6
	ret			;ada9
L_ADAA:
	ld a,(ix+001h)		;adaa
	or a			;adad
	ret z			;adae
	call L_AD60		;adaf
L_ADB2:
	call L_AD7F		;adb2
	call L_ADC2		;adb5
	call L_AD8B		;adb8
	ld hl,0ad1bh		;adbb
	dec (hl)			;adbe
	jr nz,L_ADB2		;adbf
	ret			;adc1
L_ADC2:
	ld hl,0d300h		;adc2
	ld de,0d330h		;adc5
	ld b,010h		;adc8
	call L_ADD5		;adca
	ld hl,0d310h		;adcd
	ld de,0d320h		;add0
	ld b,010h		;add3
L_ADD5:
	ld a,(hl)			;add5
	call L_ADDF		;add6
	ld (de),a			;add9
	inc hl			;adda
	inc de			;addb
	djnz L_ADD5		;addc
	ret			;adde
L_ADDF:
	push bc			;addf
	ld c,a			;ade0
	ld b,008h		;ade1
L_ADE3:
	rr c		;ade3
	rla			;ade5
	djnz L_ADE3		;ade6
	pop bc			;ade8
	ret			;ade9

; ----------------------------------------------------------------------
; DATOS leido_ADEA: lo usa el codigo: 0xAE04 ld (0adeah),a; 0xAE11 ld
;   (0adeah),a (1 bytes)
;   0xadea..0xadeb  (1 bytes)
DATA_leido_ADEA:
	defb 0ffh	; adea

; ======================================================================
; CODIGO 0xadeb..0xadf4  (9 bytes)
; ======================================================================


L_ADEB:
	call 08296h		;adeb
	ld a,(09219h)		;adee
	call 0822dh		;adf1

; ----------------------------------------------------------------------
; DATOS saltos_ADF4: 7 destinos del despachador (call 0x822D en 0xADF1) (14
;   bytes)
;   0xadf4..0xae02  (14 bytes)
DATA_saltos_ADF4:
	defw 0ae02h,0ae0fh,0ae1ch,0ae29h,0ae36h,0ae43h,0ae50h	; adf4

; ======================================================================
; CODIGO 0xae02..0xae68  (102 bytes)
; ======================================================================


L_AE02:
	ld a,020h		;ae02
	ld (0adeah),a		;ae04
	ld a,(0921bh)		;ae07
	ld hl,0ae68h		;ae0a
	jr L_AE5B		;ae0d
L_AE0F:
	ld a,030h		;ae0f
	ld (0adeah),a		;ae11
	ld a,(0921ch)		;ae14
	ld hl,0ae70h		;ae17
	jr L_AE5B		;ae1a
L_AE1C:
	ld a,02ch		;ae1c
	ld (0adeah),a		;ae1e
	ld a,(0921dh)		;ae21
	ld hl,0ae80h		;ae24
	jr L_AE5B		;ae27
L_AE29:
	ld a,04ch		;ae29
	ld (0adeah),a		;ae2b
	ld a,(0921eh)		;ae2e
	ld hl,0ae92h		;ae31
	jr L_AE5B		;ae34
L_AE36:
	ld a,024h		;ae36
	ld (0adeah),a		;ae38
	ld a,(0921fh)		;ae3b
	ld hl,0aea8h		;ae3e
	jr L_AE5B		;ae41
L_AE43:
	ld a,020h		;ae43
	ld (0adeah),a		;ae45
	ld a,(09220h)		;ae48
	ld hl,0aeb8h		;ae4b
	jr L_AE5B		;ae4e
L_AE50:
	ld a,038h		;ae50
	ld (0adeah),a		;ae52
	ld a,(09221h)		;ae55
	ld hl,0aebeh		;ae58
L_AE5B:
	call 0826ch		;ae5b
	push hl			;ae5e
	pop ix		;ae5f
	ld iy,0d2a0h		;ae61
	jp L_B19C		;ae65

; ----------------------------------------------------------------------
; DATOS leido_AE68: lo usa el codigo: 0xAE0A ld hl,0ae68h; 0xAE17 ld hl,0ae70h
;   (en +8); 0xAE24 ld hl,0ae80h (en +24); 0xAE31 ld hl,0ae92h (en +42) (820
;   bytes)
;   0xae68..0xb19c  (820 bytes)
DATA_leido_AE68:
	defb 0d6h,0aeh,0e8h,0aeh,0fah,0aeh,00ch,0afh,016h,0afh,020h,0afh,02ah,0afh,034h,0afh	; ae68  .......... .*.4.
	defb 042h,0afh,050h,0afh,05ah,0afh,064h,0afh,072h,0afh,080h,0afh,08ah,0afh,094h,0afh	; ae78  B.P.Z.d.r.......
	defb 0a6h,0afh,0bch,0afh,0ceh,0afh,0dch,0afh,0f2h,0afh,000h,0b0h,012h,0b0h,020h,0b0h	; ae88  .............. .
	defb 02ah,0b0h,034h,0b0h,042h,0b0h,04ch,0b0h,05eh,0b0h,070h,0b0h,07eh,0b0h,090h,0b0h	; ae98  *.4.B.L.^.p.~...
	defb 0a2h,0b0h,0ach,0b0h,0b6h,0b0h,0c0h,0b0h,0cah,0b0h,0d4h,0b0h,0deh,0b0h,0e8h,0b0h	; aea8  ................
	defb 0eeh,0b0h,000h,0b1h,012h,0b1h,020h,0b1h,02ah,0b1h,034h,0b1h,03ah,0b1h,044h,0b1h	; aeb8  ...... .*.4.:.D.
	defb 04eh,0b1h,058h,0b1h,062h,0b1h,06ch,0b1h,07ah,0b1h,084h,0b1h,08eh,0b1h,025h,03ch	; aec8  N.X.b.l.z.....%<
	defb 0e0h,00fh,01eh,031h,0e8h,00fh,01eh,021h,0ech,00fh,011h,01bh,0fch,008h,0ffh,0ffh	; aed8  ...1...!........
	defb 025h,03ch,0e0h,00fh,023h,022h,0e4h,00fh,01eh,031h,0f0h,00fh,01bh,01ch,0fch,008h	; aee8  %<..#"...1......
	defb 0ffh,0ffh,025h,03ch,0e0h,00fh,01eh,031h,0e8h,00fh,029h,02ah,0f4h,00fh,01dh,01eh	; aef8  ..%<...1..)*....
	defb 0fch,008h,0ffh,0ffh,025h,03ch,0e0h,00fh,01eh,031h,0e8h,00fh,0ffh,0ffh,01eh,030h	; af08  ....%<...1.....0
	defb 0d0h,00fh,02dh,030h,0d4h,00fh,0ffh,0ffh,01eh,030h,0d8h,00fh,018h,041h,0f8h,008h	; af18  ..-0.....0...A..
	defb 0ffh,0ffh,01eh,030h,0d0h,00fh,02eh,030h,0dch,00fh,0ffh,0ffh,01eh,030h,0d0h,00fh	; af28  ...0...0.....0..
	defb 02eh,02eh,0e0h,00fh,023h,01dh,0fch,008h,0ffh,0ffh,01eh,030h,0d0h,00fh,029h,02eh	; af38  ....#......0..).
	defb 0e4h,00fh,01dh,01ch,0fch,008h,0ffh,0ffh,01eh,030h,0e8h,00fh,02eh,036h,0e8h,00fh	; af48  .........0...6..
	defb 0ffh,0ffh,01eh,02eh,0ech,00fh,02eh,02eh,0f0h,00fh,0ffh,0ffh,01eh,030h,0d0h,00fh	; af58  .............0..
	defb 02ch,030h,0f4h,00fh,01bh,01dh,0fch,008h,0ffh,0ffh,038h,031h,0dch,00fh,028h,021h	; af68  ,0........81..(!
	defb 0e0h,00fh,019h,033h,0d4h,008h,0ffh,0ffh,026h,02bh,0e4h,00fh,034h,031h,0e4h,00fh	; af78  ...3....&+..41..
	defb 0ffh,0ffh,028h,021h,0e0h,00fh,038h,031h,0e8h,00fh,0ffh,0ffh,01ah,03fh,0d4h,008h	; af88  ..(!..81.....?..
	defb 032h,023h,0e0h,00fh,01dh,023h,0ech,008h,01dh,02dh,0ech,008h,0ffh,0ffh,038h,031h	; af98  2#...#...-....81
	defb 0dch,00fh,01dh,023h,0ech,008h,01dh,02dh,0ech,008h,02dh,02dh,0f0h,00fh,01ah,03fh	; afa8  ...#...-..--...?
	defb 0d4h,008h,0ffh,0ffh,038h,031h,0dch,00fh,028h,021h,0e0h,00fh,032h,020h,0f4h,00fh	; afb8  ....81..(!..2 ..
	defb 021h,037h,0d4h,008h,0ffh,0ffh,025h,020h,0f8h,00fh,032h,02eh,0fch,00fh,01ah,03bh	; afc8  !7....% ..2.....
	defb 0d4h,008h,0ffh,0ffh,038h,031h,0dch,00fh,028h,021h,0e0h,00fh,032h,020h,0f4h,00fh	; afd8  ....81..(!..2 ..
	defb 037h,021h,0f4h,00fh,023h,036h,0d4h,008h,0ffh,0ffh,025h,020h,0e0h,00fh,032h,02eh	; afe8  7!..#6....% ..2.
	defb 0fch,00fh,026h,036h,0d4h,008h,0ffh,0ffh,034h,030h,0b4h,00fh,024h,02bh,0bch,00fh	; aff8  ..&6....40..$+..
	defb 024h,03bh,0c0h,00fh,015h,032h,0f8h,008h,0ffh,0ffh,024h,03bh,0c0h,00fh,024h,02bh	; b008  $....2....$...$+
	defb 0c4h,00fh,015h,032h,0f8h,008h,0ffh,0ffh,02dh,028h,0c8h,00fh,030h,038h,0cch,00fh	; b018  ...2....-(..08..
	defb 0ffh,0ffh,025h,03ch,0b8h,00fh,01eh,02ch,0d0h,00fh,0ffh,0ffh,02ch,028h,0d4h,00fh	; b028  ..%<...,....,(..
	defb 02ch,038h,0d8h,00fh,024h,043h,0f8h,008h,0ffh,0ffh,030h,028h,0cch,00fh,030h,038h	; b038  ,8..$C....0(..08
	defb 0cch,00fh,0ffh,0ffh,024h,024h,0b8h,00fh,026h,02dh,0b8h,00fh,028h,036h,0b8h,00fh	; b048  ....$$..&-..(6..
	defb 02ah,03fh,0b8h,00fh,0ffh,0ffh,026h,024h,0b8h,00fh,024h,02dh,0b8h,00fh,026h,03fh	; b058  *?....&$..$-..&?
	defb 0b8h,00fh,02eh,036h,0dch,00fh,0ffh,0ffh,022h,025h,0e4h,00fh,022h,035h,0e0h,00fh	; b068  ...6...."%.."5..
	defb 015h,02dh,0fch,008h,0ffh,0ffh,025h,027h,0b8h,00fh,025h,03ch,0b8h,00fh,01eh,031h	; b078  .-....%'..%<...1
	defb 0e8h,00fh,01ah,01dh,0fch,008h,0ffh,0ffh,01eh,031h,0ech,00fh,02eh,027h,0f0h,00fh	; b088  .........1...'..
	defb 02dh,037h,0f4h,00fh,01eh,01fh,0fch,008h,0ffh,0ffh,038h,02fh,0dch,00fh,02bh,03ch	; b098  -7........8/..+<
	defb 0f8h,008h,0ffh,0ffh,038h,02fh,0e0h,00fh,02bh,03ch,0f8h,008h,0ffh,0ffh,038h,02fh	; b0a8  ....8/..+<....8/
	defb 0e4h,00fh,02bh,03ch,0f8h,008h,0ffh,0ffh,038h,02fh,0e8h,00fh,02bh,03ch,0f8h,008h	; b0b8  ..+<....8/..+<..
	defb 0ffh,0ffh,038h,02fh,0ech,00fh,02bh,03ch,0f8h,008h,0ffh,0ffh,038h,02fh,0f0h,00fh	; b0c8  ..8/..+<....8/..
	defb 02bh,03ch,0f8h,008h,0ffh,0ffh,038h,02fh,0f4h,00fh,02bh,03ch,0f8h,008h,0ffh,0ffh	; b0d8  +<....8/..+<....
	defb 02bh,03ch,0f8h,008h,0ffh,0ffh,01eh,02ch,0e0h,00fh,02eh,02ch,0e4h,00fh,038h,031h	; b0e8  +<.....,...,..81
	defb 0e8h,00fh,025h,03ch,0ech,00fh,0ffh,0ffh,038h,031h,0e8h,00fh,025h,03ch,0ech,00fh	; b0f8  ..%<....81..%<..
	defb 01eh,02ch,0f0h,00fh,02eh,02ch,0f4h,00fh,0ffh,0ffh,025h,03ch,0ech,00fh,01eh,02ch	; b108  .,...,....%<...,
	defb 0f8h,00fh,02eh,02ch,0fch,00fh,0ffh,0ffh,02eh,027h,0cch,00fh,020h,031h,0f8h,008h	; b118  ...,.....'.. 1..
	defb 0ffh,0ffh,026h,027h,0d0h,00fh,016h,033h,0f8h,008h,0ffh,0ffh,034h,026h,0d4h,00fh	; b128  ..&'...3....4&..
	defb 0ffh,0ffh,02bh,024h,0d8h,00fh,016h,02fh,0f8h,008h,0ffh,0ffh,029h,024h,0dch,00fh	; b138  ..+$.../....)$..
	defb 014h,030h,0f8h,008h,0ffh,0ffh,025h,023h,0cch,00fh,016h,02fh,0f8h,008h,0ffh,0ffh	; b148  .0....%#.../....
	defb 039h,046h,0e0h,00fh,027h,033h,0fch,008h,0ffh,0ffh,021h,026h,0e4h,00fh,029h,02eh	; b158  9F..'3....!&..).
	defb 0c8h,008h,0ffh,0ffh,02dh,025h,0e8h,00fh,02dh,029h,0e8h,00fh,020h,02fh,0f8h,008h	; b168  ....-%..-).. /..
	defb 0ffh,0ffh,028h,025h,0e8h,00fh,019h,02ch,0f8h,008h,0ffh,0ffh,030h,031h,0ech,00fh	; b178  ..(%...,....01..
	defb 023h,042h,0f8h,008h,0ffh,0ffh,03ah,029h,0f0h,00fh,02ah,039h,0f4h,00fh,01fh,026h	; b188  #B....:)..*9...&
	defb 0fch,008h,0ffh,0ffh	; b198

; ======================================================================
; CODIGO 0xb19c..0xb204  (104 bytes)
; ======================================================================


L_B19C:
	ld b,(ix+000h)		;b19c
	ld c,(ix+001h)		;b19f
	ld a,b			;b1a2
	cp 0ffh		;b1a3
	jr z,L_B1D1		;b1a5
	ld e,(ix+002h)		;b1a7
	ld a,(09218h)		;b1aa
	and a			;b1ad
	jr nz,L_B1B6		;b1ae
	ld hl,0adeah		;b1b0
	ld a,e			;b1b3
	sub (hl)			;b1b4
	ld e,a			;b1b5
L_B1B6:
	ld d,(ix+003h)		;b1b6
	call L_B1E3		;b1b9
	ld (iy+000h),c		;b1bc
	ld (iy+001h),b		;b1bf
	ld (iy+002h),e		;b1c2
	ld (iy+003h),d		;b1c5
	ld bc,00004h		;b1c8
	add ix,bc		;b1cb
	add iy,bc		;b1cd
	jr L_B19C		;b1cf
L_B1D1:
	push iy		;b1d1
	pop hl			;b1d3
	ld b,006h		;b1d4
L_B1D6:
	xor a			;b1d6
	ld (hl),0e0h		;b1d7
	inc hl			;b1d9
	ld (hl),a			;b1da
	inc hl			;b1db
	ld (hl),a			;b1dc
	inc hl			;b1dd
	ld (hl),a			;b1de
	inc hl			;b1df
	djnz L_B1D6		;b1e0
	ret			;b1e2
L_B1E3:
	ld a,(09218h)		;b1e3
	and a			;b1e6
	jr nz,L_B1EF		;b1e7
	ld a,0d5h		;b1e9
	sub b			;b1eb
	ld b,a			;b1ec
	jr L_B1F3		;b1ed
L_B1EF:
	ld a,08bh		;b1ef
	add a,b			;b1f1
	ld b,a			;b1f2
L_B1F3:
	ld a,020h		;b1f3
	add a,c			;b1f5
	ld c,a			;b1f6
	ret			;b1f7
L_B1F8:
	call 08296h		;b1f8
	call L_B6E9		;b1fb
	ld a,(09219h)		;b1fe
	call 0822dh		;b201

; ----------------------------------------------------------------------
; DATOS saltos_B204: 7 destinos del despachador (call 0x822D en 0xB201) (14
;   bytes)
;   0xb204..0xb212  (14 bytes)
DATA_saltos_B204:
	defw 0b212h,0b222h,0b231h,0b240h,0b24fh,0b25eh,0b26dh	; b204

; ======================================================================
; CODIGO 0xb212..0xb27c  (106 bytes)
; ======================================================================


L_B212:
	ld de,0b546h		;b212
	ld hl,0ff00h		;b215
	call 0821bh		;b218
	ld ix,0b5a5h		;b21b
L_B21F:
	jp L_AD21		;b21f
L_B222:
	ld de,0b39fh		;b222
	ld hl,0fe80h		;b225
	call 0821bh		;b228
	ld ix,0b44fh		;b22b
	jr L_B21F		;b22f
L_B231:
	ld de,0b5adh		;b231
	ld hl,0fea0h		;b234
	call 0821bh		;b237
	ld ix,0b62fh		;b23a
	jr L_B21F		;b23e
L_B240:
	ld de,0b457h		;b240
	ld hl,0fda0h		;b243
	call 0821bh		;b246
	ld ix,0b53eh		;b249
	jr L_B21F		;b24d
L_B24F:
	ld de,0b313h		;b24f
	ld hl,0fee0h		;b252
	call 0821bh		;b255
	ld ix,0b397h		;b258
	jr L_B21F		;b25c
L_B25E:
	ld de,0b27ch		;b25e
	ld hl,0ff00h		;b261
	call 0821bh		;b264
	ld ix,0b30bh		;b267
	jr L_B21F		;b26b
L_B26D:
	ld de,0b637h		;b26d
	ld hl,0fe40h		;b270
	call 0821bh		;b273
	ld ix,0b6e1h		;b276
	jr L_B21F		;b27a

; ----------------------------------------------------------------------
; DATOS vram_B27C: RLE a la VRAM hasta el 0; lo usa 0xB264 (143 bytes)
;   0xb27c..0xb30b  (143 bytes)
DATA_vram_B27C:
	defb 003h,000h,084h,07fh,000h,0feh,003h,009h,000h,08dh,020h,018h,007h,0c0h,07eh,003h	; b27c  .......... ...~.
	defb 080h,060h,030h,010h,008h,004h,004h,003h,002h,003h,000h,086h,0f8h,007h,0e0h,038h	; b28c  .`0............8
	defb 00eh,001h,00bh,000h,081h,0c0h,003h,000h,083h,080h,060h,020h,005h,000h,082h,0f8h	; b29c  ..........` ....
	defb 007h,00fh,000h,081h,0c0h,01eh,000h,00ah,080h,00ah,000h,083h,0ffh,0feh,003h,009h	; b2ac  ................
	defb 000h,08dh,020h,018h,007h,000h,0c0h,07eh,083h,060h,030h,010h,008h,004h,004h,003h	; b2bc  .. ....~.`0.....
	defb 002h,003h,000h,087h,0f8h,007h,000h,0e0h,038h,00eh,001h,00ah,000h,081h,0c0h,004h	; b2cc  ........8.......
	defb 000h,083h,080h,060h,020h,008h,000h,083h,0ffh,0feh,003h,00dh,000h,089h,0ffh,07eh	; b2dc  ...` ..........~
	defb 083h,060h,030h,010h,008h,004h,004h,003h,002h,004h,000h,086h,0f0h,00fh,0e0h,038h	; b2ec  .`0............8
	defb 00eh,001h,00bh,000h,087h,080h,078h,007h,000h,080h,060h,020h,004h,000h,000h	; b2fc  ......x...` ...

; ----------------------------------------------------------------------
; DATOS leido_B30B: lo usa el codigo: 0xB267 ld ix,0b30bh (8 bytes)
;   0xb30b..0xb313  (8 bytes)
DATA_leido_B30B:
	defb 002h,008h,0e0h,0c0h,000h,000h,000h,000h	; b30b  ........

; ----------------------------------------------------------------------
; DATOS vram_B313: RLE a la VRAM hasta el 0; lo usa 0xB255 (132 bytes)
;   0xb313..0xb397  (132 bytes)
DATA_vram_B313:
	defb 087h,001h,000h,001h,000h,001h,000h,001h,009h,000h,087h,0c0h,000h,0c0h,000h,0c0h	; b313  ................
	defb 000h,0c0h,009h,000h,081h,003h,003h,000h,081h,003h,00bh,000h,081h,0c0h,003h,000h	; b323  ................
	defb 081h,0c0h,00bh,000h,085h,00ch,003h,001h,003h,00ch,00dh,000h,081h,0c0h,00dh,000h	; b333  ................
	defb 087h,009h,00ah,006h,000h,009h,00ah,006h,009h,000h,002h,080h,085h,040h,000h,080h	; b343  .............@..
	defb 080h,040h,009h,000h,083h,07fh,031h,01eh,00eh,000h,082h,080h,0c0h,00eh,000h,085h	; b353  .@....1.........
	defb 007h,018h,020h,000h,001h,00bh,000h,081h,0c0h,003h,000h,081h,0c0h,00ah,000h,086h	; b363  .. .............
	defb 020h,018h,007h,000h,000h,001h,00ch,000h,084h,0c0h,000h,000h,0c0h,01ah,000h,088h	; b373   ...............
	defb 01fh,00fh,00fh,01fh,039h,070h,0e0h,040h,020h,000h,088h,040h,0e0h,070h,039h,01fh	; b383  ....9p.@ ..@.p9.
	defb 00fh,00fh,01fh,000h	; b393

; ----------------------------------------------------------------------
; DATOS leido_B397: lo usa el codigo: 0xB258 ld ix,0b397h (8 bytes)
;   0xb397..0xb39f  (8 bytes)
DATA_leido_B397:
	defb 002h,009h,0dch,0b8h,000h,000h,000h,000h	; b397  ........

; ----------------------------------------------------------------------
; DATOS vram_B39F: RLE a la VRAM hasta el 0; lo usa 0xB228 (176 bytes)
;   0xb39f..0xb44f  (176 bytes)
DATA_vram_B39F:
	defb 081h,0ffh,00fh,000h,083h,0c0h,07eh,003h,00eh,000h,084h,0f0h,0ffh,01ch,007h,00dh	; b39f  ......~.........
	defb 000h,086h,0e0h,01ch,003h,0c0h,030h,010h,008h,000h,082h,0feh,003h,00fh,000h,086h	; b3af  ......0.........
	defb 0c0h,070h,018h,00ch,004h,006h,004h,002h,005h,001h,002h,000h,082h,0f8h,007h,00fh	; b3bf  .p..............
	defb 000h,084h,080h,070h,00eh,001h,00ch,000h,085h,001h,0e6h,038h,00eh,001h,008h,000h	; b3cf  ...p.......8....
	defb 08ah,008h,010h,060h,082h,004h,018h,060h,080h,060h,020h,006h,000h,086h,001h,002h	; b3df  ...`...`.` .....
	defb 00ch,0f0h,01fh,001h,00ch,000h,088h,004h,008h,030h,0c0h,070h,00ch,003h,001h,006h	; b3ef  .........0.p....
	defb 000h,082h,0fch,003h,011h,000h,082h,0fch,003h,00bh,000h,085h,022h,014h,0ffh,014h	; b3ff  ............"...
	defb 022h,00ch,000h,085h,022h,0d4h,07eh,017h,022h,00eh,000h,086h,0e0h,03ah,00fh,001h	; b40f  "...".~."....:..
	defb 001h,002h,00bh,000h,085h,020h,040h,080h,060h,020h,006h,000h,085h,0f0h,088h,0f8h	; b41f  ..... @.` ......
	defb 00eh,003h,00fh,000h,084h,080h,060h,018h,008h,018h,000h,088h,01fh,00fh,00fh,01fh	; b42f  ......`.........
	defb 039h,070h,0e0h,040h,020h,000h,088h,040h,0e0h,070h,039h,01fh,00fh,00fh,01fh,000h	; b43f  9p.@ ..@.p9.....

; ----------------------------------------------------------------------
; DATOS leido_B44F: lo usa el codigo: 0xB22B ld ix,0b44fh (8 bytes)
;   0xb44f..0xb457  (8 bytes)
DATA_leido_B44F:
	defb 002h,00ch,0d0h,0a0h,000h,000h,000h,000h	; b44f  ........

; ----------------------------------------------------------------------
; DATOS vram_B457: RLE a la VRAM hasta el 0; lo usa 0xB246 (231 bytes)
;   0xb457..0xb53e  (231 bytes)
DATA_vram_B457:
	defb 082h,0f8h,007h,00fh,000h,081h,0c0h,01eh,000h,00ah,080h,006h,000h,087h,020h,018h	; b457  .............. .
	defb 00eh,007h,002h,001h,001h,00ch,000h,087h,0c0h,03eh,000h,080h,080h,040h,040h,003h	; b467  .........>...@@.
	defb 020h,003h,010h,010h,000h,002h,010h,00ah,008h,004h,000h,087h,020h,018h,00ch,006h	; b477   ........... ...
	defb 002h,001h,001h,00fh,000h,002h,080h,002h,040h,003h,020h,003h,010h,084h,082h,0c6h	; b487  ........@. .....
	defb 06ch,038h,00ch,010h,010h,000h,010h,080h,010h,000h,081h,001h,004h,000h,082h,0feh	; b497  l8..............
	defb 003h,009h,000h,08dh,0c0h,060h,018h,00ch,004h,002h,082h,062h,032h,011h,009h,005h	; b4a7  .....`.....b2...
	defb 005h,003h,003h,004h,000h,00ah,010h,002h,008h,010h,000h,003h,008h,003h,004h,002h	; b4b7  ................
	defb 002h,002h,001h,00fh,000h,002h,080h,085h,040h,060h,030h,018h,004h,005h,020h,081h	; b4c7  ........@`0... .
	defb 0f8h,004h,020h,01fh,000h,002h,001h,085h,002h,006h,00ch,018h,020h,003h,010h,003h	; b4d7  .. ......... ...
	defb 020h,002h,040h,002h,080h,01ah,000h,00ah,008h,002h,010h,082h,0feh,003h,00eh,000h	; b4e7   .@.............
	defb 088h,002h,082h,062h,032h,014h,00ch,004h,004h,003h,002h,005h,000h,082h,0feh,003h	; b4f7  ...b2...........
	defb 00fh,000h,087h,080h,060h,030h,010h,008h,004h,004h,003h,002h,005h,000h,081h,008h	; b507  ....`0..........
	defb 003h,010h,002h,030h,00ah,020h,010h,000h,005h,010h,003h,090h,005h,088h,002h,084h	; b517  ...0. ..........
	defb 021h,000h,088h,01fh,00fh,00fh,01fh,039h,070h,0e0h,040h,020h,000h,088h,040h,0e0h	; b527  !......9p.@ ..@.
	defb 070h,039h,01fh,00fh,00fh,01fh,000h	; b537

; ----------------------------------------------------------------------
; DATOS leido_B53E: lo usa el codigo: 0xB249 ld ix,0b53eh (8 bytes)
;   0xb53e..0xb546  (8 bytes)
DATA_leido_B53E:
	defb 002h,013h,0b4h,068h,000h,000h,000h,000h	; b53e  ...h....

; ----------------------------------------------------------------------
; DATOS vram_B546: RLE a la VRAM hasta el 0; lo usa 0xB218 (95 bytes)
;   0xb546..0xb5a5  (95 bytes)
DATA_vram_B546:
	defb 010h,000h,00ah,080h,01ah,000h,00ah,008h,002h,010h,082h,0feh,003h,00fh,000h,087h	; b546  ................
	defb 080h,060h,030h,010h,008h,004h,004h,003h,002h,00dh,000h,002h,001h,004h,002h,002h	; b556  .`0.............
	defb 004h,006h,000h,082h,040h,080h,008h,000h,082h,0feh,003h,00fh,000h,087h,081h,061h	; b566  ....@..........a
	defb 032h,014h,008h,004h,004h,003h,002h,00ah,000h,002h,001h,002h,002h,003h,004h,004h	; b576  2...............
	defb 008h,086h,003h,00ch,030h,060h,0c0h,080h,01ah,000h,088h,01fh,00fh,00fh,01fh,039h	; b586  ....0`.........9
	defb 070h,0e0h,040h,020h,000h,088h,040h,0e0h,070h,039h,01fh,00fh,00fh,01fh,000h	; b596  p.@ ..@.p9.....

; ----------------------------------------------------------------------
; DATOS leido_B5A5: lo usa el codigo: 0xB21B ld ix,0b5a5h (8 bytes)
;   0xb5a5..0xb5ad  (8 bytes)
DATA_leido_B5A5:
	defb 002h,008h,0e0h,0c0h,000h,000h,000h,000h	; b5a5  ........

; ----------------------------------------------------------------------
; DATOS vram_B5AD: RLE a la VRAM hasta el 0; lo usa 0xB237 (130 bytes)
;   0xb5ad..0xb62f  (130 bytes)
DATA_vram_B5AD:
	defb 010h,000h,088h,01fh,00fh,00fh,01fh,039h,070h,0e0h,040h,020h,000h,08ah,040h,0e0h	; b5ad  .......9p.@ ..@.
	defb 070h,039h,01fh,00fh,00fh,01fh,0f8h,007h,00fh,000h,081h,0c0h,019h,000h,084h,080h	; b5bd  p9..............
	defb 060h,01ch,003h,00fh,000h,086h,0e0h,01fh,0c0h,03fh,000h,001h,00fh,000h,082h,080h	; b5cd  `........?......
	defb 07eh,00bh,000h,085h,0f8h,007h,000h,000h,03fh,00ch,000h,081h,0c0h,003h,000h,081h	; b5dd  ~.......?.......
	defb 0c0h,01ah,000h,003h,001h,002h,000h,003h,001h,002h,000h,003h,001h,003h,000h,088h	; b5ed  ................
	defb 080h,060h,01ch,003h,00ch,030h,041h,002h,00bh,000h,084h,0e0h,01fh,060h,080h,017h	; b5fd  .`...0A......`..
	defb 000h,082h,0f8h,004h,01bh,000h,085h,08ah,06ah,01eh,00bh,00ah,00bh,000h,003h,080h	; b60d  ........j.......
	defb 086h,0e0h,09fh,002h,0e2h,01eh,003h,00ch,000h,085h,080h,0a0h,0a0h,0e0h,0bfh,00bh	; b61d  ................
	defb 000h,000h	; b62d

; ----------------------------------------------------------------------
; DATOS leido_B62F: lo usa el codigo: 0xB23A ld ix,0b62fh (8 bytes)
;   0xb62f..0xb637  (8 bytes)
DATA_leido_B62F:
	defb 002h,00bh,0d4h,0a8h,000h,000h,000h,000h	; b62f  ........

; ----------------------------------------------------------------------
; DATOS vram_B637: RLE a la VRAM hasta el 0; lo usa 0xB273 (170 bytes)
;   0xb637..0xb6e1  (170 bytes)
DATA_vram_B637:
	defb 088h,0f8h,0f0h,0f0h,0f8h,09ch,00eh,007h,002h,028h,000h,00ah,080h,006h,000h,088h	; b637  .........(......
	defb 084h,095h,08eh,084h,08eh,015h,004h,004h,008h,000h,086h,040h,050h,0e0h,040h,0e0h	; b647  ...........@P.@.
	defb 050h,003h,040h,007h,000h,088h,040h,0a0h,0a0h,0a8h,0a5h,0a2h,0a5h,048h,005h,040h	; b657  P.@...@......H.@
	defb 006h,000h,081h,080h,003h,000h,081h,080h,008h,000h,002h,080h,005h,090h,003h,080h	; b667  ................
	defb 016h,000h,087h,089h,052h,022h,072h,0aah,022h,022h,006h,021h,004h,000h,006h,080h	; b677  ....R"r."".!....
	defb 009h,000h,081h,0f8h,01fh,000h,085h,001h,002h,00ch,030h,0c0h,01bh,000h,083h,080h	; b687  ..........0.....
	defb 063h,01ch,00dh,000h,081h,080h,017h,000h,008h,001h,085h,004h,018h,020h,060h,0c0h	; b697  c............ `.
	defb 003h,080h,00ch,000h,002h,020h,08ah,0a8h,070h,020h,070h,0a8h,020h,040h,040h,080h	; b6a7  ..... ..p p. @@.
	defb 080h,01ah,000h,082h,001h,03fh,004h,000h,003h,001h,088h,006h,00ah,014h,02ch,058h	; b6b7  .....?........,X
	defb 070h,060h,080h,015h,000h,088h,01fh,00fh,00fh,01fh,039h,070h,0e0h,040h,020h,000h	; b6c7  p`........9p.@ .
	defb 088h,040h,0e0h,070h,039h,01fh,00fh,00fh,01fh,000h	; b6d7  .@.p9.....

; ----------------------------------------------------------------------
; DATOS leido_B6E1: lo usa el codigo: 0xB276 ld ix,0b6e1h (8 bytes)
;   0xb6e1..0xb6e9  (8 bytes)
DATA_leido_B6E1:
	defb 002h,00eh,0c8h,090h,000h,000h,000h,000h	; b6e1  ........

; ======================================================================
; CODIGO 0xb6e9..0xb6fa  (17 bytes)
; ======================================================================


L_B6E9:
	ld de,0b6fah		;b6e9
	ld hl,0f9e0h		;b6ec
	call 0821bh		;b6ef
	ld ix,0b783h		;b6f2
	call L_AD21		;b6f6
	ret			;b6f9

; ----------------------------------------------------------------------
; DATOS vram_B6FA: RLE a la VRAM hasta el 0; lo usa 0xB6EF (137 bytes)
;   0xb6fa..0xb783  (137 bytes)
DATA_vram_B6FA:
	defb 084h,000h,020h,010h,008h,004h,000h,081h,0e0h,004h,000h,087h,008h,010h,020h,000h	; b6fa  .. ........... .
	defb 004h,008h,010h,004h,000h,081h,007h,004h,000h,08dh,010h,008h,004h,000h,007h,00fh	; b70a  ................
	defb 00fh,01fh,011h,000h,018h,0ffh,07fh,004h,03fh,09bh,01fh,007h,000h,0e0h,0f0h,0f8h	; b71a  ........?.......
	defb 0f8h,0fch,0bch,07ch,0feh,0ffh,0ffh,0fdh,0fch,0fch,0e0h,0c0h,000h,000h,006h,00fh	; b72a  ...|............
	defb 00bh,00fh,01fh,007h,00fh,004h,01fh,08ch,00fh,067h,0f8h,000h,000h,0e0h,0e0h,030h	; b73a  .........g.....0
	defb 0f0h,0e0h,080h,0c0h,005h,0e0h,089h,09ch,03eh,000h,00fh,01fh,01fh,03fh,03fh,07fh	; b74a  ........>....??.
	defb 004h,0ffh,002h,07fh,086h,03fh,00dh,000h,000h,0f0h,0f8h,003h,0fch,002h,0ffh,005h	; b75a  .....?..........
	defb 0fch,089h,0f8h,0f0h,0e0h,000h,00eh,074h,038h,030h,030h,004h,000h,003h,040h,083h	; b76a  .......t800...@.
	defb 020h,012h,03fh,00eh,000h,082h,008h,018h,000h	; b77a   .?......

; ----------------------------------------------------------------------
; DATOS leido_B783: lo usa el codigo: 0xB6F2 ld ix,0b783h (8 bytes)
;   0xb783..0xb78b  (8 bytes)
DATA_leido_B783:
	defb 002h,004h,040h,050h,000h,000h,000h,000h	; b783  ..@P....

; ======================================================================
; CODIGO 0xb78b..0xb7a8  (29 bytes)
; ======================================================================


L_B78B:
	ld a,001h		;b78b
	ld (0d1efh),a		;b78d
	ld (0e0f1h),sp		;b790
	ld hl,0d700h		;b794
	ld de,0daffh		;b797
	call L_B7E2		;b79a
	ld de,0d700h		;b79d
	call L_B7CD		;b7a0
	xor a			;b7a3
	ld (0d1efh),a		;b7a4
	ret			;b7a7

; ----------------------------------------------------------------------
; DATOS suelto_B7A8: nadie lo lee ni lo apunta (37 bytes)
;   0xb7a8..0xb7cd  (37 bytes)
DATA_suelto_B7A8:
	defb 03eh,001h,032h,0efh,0d1h,0edh,073h,0f1h,0e0h,0cdh,0d6h,0b7h,011h,0ffh,0d6h,0cdh	; b7a8  >.2...s.........
	defb 0f3h,0b7h,0c2h,0deh,082h,0afh,032h,0efh,0d1h,011h,000h,0d7h,021h,000h,0d3h,001h	; b7b8  ......2.....!...
	defb 000h,004h,0edh,0b0h,0c9h	; b7c8

; ======================================================================
; CODIGO 0xb7cd..0xb7d6  (9 bytes)
; ======================================================================


L_B7CD:
	ld hl,00200h		;b7cd
	ld bc,0059eh		;b7d0
	jp 0824bh		;b7d3

; ----------------------------------------------------------------------
; DATOS suelto_B7D6: nadie lo lee ni lo apunta (12 bytes)
;   0xb7d6..0xb7e2  (12 bytes)
DATA_suelto_B7D6:
	defb 011h,000h,0d3h,021h,000h,002h,001h,09eh,005h,0c3h,015h,082h	; b7d6  ...!........

; ======================================================================
; CODIGO 0xb7e2..0xb7f3  (17 bytes)
; ======================================================================


L_B7E2:
	xor a			;b7e2
	ld bc,003ffh		;b7e3
	ex af,af'			;b7e6
L_B7E7:
	ex af,af'			;b7e7
	add a,(hl)			;b7e8
	inc hl			;b7e9
	ex af,af'			;b7ea
	dec bc			;b7eb
	ld a,c			;b7ec
	or b			;b7ed
	jr nz,L_B7E7		;b7ee
	ex af,af'			;b7f0
	ld (de),a			;b7f1
	ret			;b7f2

; ----------------------------------------------------------------------
; DATOS leido_B7F3: lo usa el codigo: 0x9B7C ld hl,0b800h (en +13); 0x9BEC ld
;   de,0b800h (en +13) (30 bytes)
;   0xb7f3..0xb811  (30 bytes)
DATA_leido_B7F3:
	defb 021h,000h,0d3h,0afh,001h,0ffh,003h,0cdh,000h,0b8h,0ebh,0beh,0c9h,008h,008h,086h	; b7f3  !...............
	defb 023h,008h,00bh,079h,0b0h,020h,0f7h,008h,0c9h,03eh,0ffh,032h,066h,0d2h	; b803  #..y. ...>.2f.

; ======================================================================
; CODIGO 0xb811..0xb841  (48 bytes)
; ======================================================================


L_B811:
	ld hl,0d266h		;b811
	inc (hl)			;b814
	ret			;b815
L_B816:
	ld (0d26ah),a		;b816
	or a			;b819
	ret			;b81a
L_B81B:
	ld hl,0d26ah		;b81b
	dec (hl)			;b81e
	ret			;b81f
L_B820:
	ld a,(0d26eh)		;b820
	cp 001h		;b823
	jp z,L_B83B		;b825
	ld a,(0d1c3h)		;b828
	and a			;b82b
	ret nz			;b82c
	ld hl,0d26dh		;b82d
	inc (hl)			;b830
	ld a,(hl)			;b831
	cp 019h		;b832
	ret nz			;b834
	ld a,001h		;b835
	ld (0d26eh),a		;b837
	ret			;b83a
L_B83B:
	ld a,(0d266h)		;b83b
	call 0822dh		;b83e

; ----------------------------------------------------------------------
; DATOS saltos_B841: 6 destinos del despachador (call 0x822D en 0xB83E) (12
;   bytes)
;   0xb841..0xb84d  (12 bytes)
DATA_saltos_B841:
	defw 0b84dh,0b884h,0b8a4h,0b927h,0b92eh,0b96dh	; b841

; ======================================================================
; CODIGO 0xb84d..0xb98c  (319 bytes)
; ======================================================================


L_B84D:
	ld a,040h		;b84d
	ld (0d26bh),a		;b84f
	ld ix,0d2f0h		;b852
	ld de,0987fh		;b856
	ld a,004h		;b859
	ld (0d26ch),a		;b85b
	ld a,(0d26bh)		;b85e
	call L_B874		;b861
	ld a,01ah		;b864
	ld (0d26ch),a		;b866
	ld a,(0d26bh)		;b869
	add a,004h		;b86c
	call L_B874		;b86e
	jp L_B811		;b871
L_B874:
	ld (ix+000h),e		;b874
	ld (ix+001h),d		;b877
	ld (ix+002h),a		;b87a
	ld a,(0d26ch)		;b87d
	ld (ix+003h),a		;b880
	ret			;b883
L_B884:
	ld a,010h		;b884
	call L_B816		;b886
	ld a,022h		;b889
	ld (0d267h),a		;b88b
	ld a,(0d269h)		;b88e
	ld hl,0b98ch		;b891
	call 08221h		;b894
	ld a,(hl)			;b897
	ld (0d268h),a		;b898
	inc hl			;b89b
	inc hl			;b89c
	ld a,(hl)			;b89d
	ld (0d26bh),a		;b89e
	jp L_B811		;b8a1
L_B8A4:
	or a			;b8a4
	call L_B81B		;b8a5
	ret nz			;b8a8
	ld a,(0d26bh)		;b8a9
	ld b,a			;b8ac
	ld a,(0d267h)		;b8ad
	and 001h		;b8b0
	jp z,L_B8B7		;b8b2
	ld a,008h		;b8b5
L_B8B7:
	add a,b			;b8b7
	ld (0d26bh),a		;b8b8
	ld ix,0d2f0h		;b8bb
	ld e,(ix+000h)		;b8bf
	ld d,(ix+001h)		;b8c2
	push de			;b8c5
	call L_B90F		;b8c6
	ld ix,0d2f4h		;b8c9
	pop de			;b8cd
	ld a,(0d26bh)		;b8ce
	add a,004h		;b8d1
	ld (0d26bh),a		;b8d3
	ld a,01ah		;b8d6
	ld (0d26ch),a		;b8d8
	call L_B90F		;b8db
	ld a,(0d269h)		;b8de
	ld hl,0b98eh		;b8e1
	call 08221h		;b8e4
	ld a,(hl)			;b8e7
	ld (0d26bh),a		;b8e8
	ld a,010h		;b8eb
	call L_B816		;b8ed
	ld a,004h		;b8f0
	ld (0d26ch),a		;b8f2
	ld hl,0d267h		;b8f5
	dec (hl)			;b8f8
	ret nz			;b8f9
	ld a,(0d269h)		;b8fa
	and a			;b8fd
	jr nz,L_B908		;b8fe
	ld a,001h		;b900
	ld (0d269h),a		;b902
	jp L_B811		;b905
L_B908:
	xor a			;b908
	ld (0d269h),a		;b909
	jp L_B811		;b90c
L_B90F:
	ld a,(0d268h)		;b90f
	add a,d			;b912
	ld d,a			;b913
	ld a,(0d26bh)		;b914
	ld (ix+000h),e		;b917
	ld (ix+001h),d		;b91a
	ld (ix+002h),a		;b91d
	ld a,(0d26ch)		;b920
	ld (ix+003h),a		;b923
	ret			;b926
L_B927:
	ld hl,0d266h		;b927
	ld a,001h		;b92a
	ld (hl),a			;b92c
	ret			;b92d
L_B92E:
	ld a,(0d26dh)		;b92e
	and a			;b931
	jp z,L_B95D		;b932
	ld ix,0d2f0h		;b935
	ld a,03ch		;b939
	ld (0d26bh),a		;b93b
	ld a,00eh		;b93e
	ld (0d26ch),a		;b940
	call L_B960		;b943
	ld ix,0d2f4h		;b946
	xor a			;b94a
	ld (0d26bh),a		;b94b
	ld (0d26ch),a		;b94e
	call L_B960		;b951
	ld a,010h		;b954
	call L_B816		;b956
	xor a			;b959
	ld (0d26dh),a		;b95a
L_B95D:
	jp L_B811		;b95d
L_B960:
	ld a,(0d26bh)		;b960
	ld (ix+002h),a		;b963
	ld a,(0d26ch)		;b966
	ld (ix+003h),a		;b969
	ret			;b96c
L_B96D:
	or a			;b96d
	call L_B81B		;b96e
	ret nz			;b971
	ld ix,0d2f0h		;b972
	ld (ix+000h),0e0h		;b976
	xor a			;b97a
	ld (0d26bh),a		;b97b
	ld (0d26ch),a		;b97e
	call L_B960		;b981
	xor a			;b984
	ld (0d26eh),a		;b985
	ld (0d266h),a		;b988
	ret			;b98b

; ----------------------------------------------------------------------
; DATOS leido_B98C: lo usa el codigo: 0xB891 ld hl,0b98ch -> 0x8221 (tabla de
;   bytes: HL + A); 0xB8E1 ld hl,0b98eh -> 0x8221 (tabla de bytes: HL + A) (en
;   +2) (116 bytes)
;   0xb98c..0xba00  (116 bytes)
DATA_leido_B98C:
	defb 0fch,004h,040h,050h,014h,053h,0ffh,033h,011h,045h,033h,0ffh,011h,014h,055h,033h	; b98c  ..@P.S.3.E3...U3
	defb 011h,011h,044h,055h,033h,033h,0ffh,0fch,033h,03fh,0fch,0cch,033h,03fh,0cch,0cch	; b99c  ..DU33..3?..3?..
	defb 033h,0fch,0cch,0cch,033h,0fch,0cch,0cch,03fh,0cch,0cch,0cch,0ffh,0cch,0cch,0cch	; b9ac  3...3...?.......
	defb 033h,0cch,0cch,0cch,0cch,0ffh,0ffh,0f9h,0cch,0cch,0ffh,0ffh,0cch,0cch,0ffh,0ffh	; b9bc  3...............
	defb 0cch,0cch,0cfh,0ffh,0cch,0cch,0cfh,0ffh,0cch,0cch,0cch,0ffh,0cch,0cch,0cch,0cch	; b9cc  ................
	defb 0cch,0cch,0cch,0cch,099h,09fh,0f9h,09ah,0ffh,0ffh,0f9h,0aah,0ffh,0ffh,099h,0aah	; b9dc  ................
	defb 0ffh,0ffh,09ah,0aah,0ffh,0ffh,099h,099h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b9ec  ................
	defb 0cch,0cch,0ffh,0ffh	; b9fc
