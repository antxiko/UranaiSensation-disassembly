; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p0B (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9833  (51 bytes)
; ======================================================================


L_9800:
	jp L_984F		;9800
L_9803:
	jp L_98C3		;9803
L_9806:
	jp L_99FD		;9806
L_9809:
	jp L_9A69		;9809
L_980C:
	jp L_9A7A		;980c
L_980F:
	jp L_9E6F		;980f
L_9812:
	jp L_9AF9		;9812
L_9815:
	jp L_9C53		;9815
L_9818:
	jp L_9CDC		;9818
L_981B:
	jp L_9D04		;981b
L_981E:
	jp L_9D62		;981e
L_9821:
	jp L_9ADE		;9821
L_9824:
	jp L_9DEF		;9824
L_9827:
	jp L_9E6E		;9827
L_982A:
	jp L_9E5F		;982a
L_982D:
	jp L_9ABE		;982d
L_9830:
	jp L_9B19		;9830

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9833..0x984f  (28 bytes)
DATA_9833:
	defb 09ah,0cdh,006h,09ah,0cdh,030h,09ah,0cdh,006h,09ah,0cdh,024h,09ah,0cdh,006h,09ah	; 9833  .....0.....$....
	defb 0cdh,027h,09ah,0cdh,006h,09ah,0cdh,012h,09ah,0afh,032h,036h	; 9843  .'........26

; ======================================================================
; CODIGO 0x984f..0x986c  (29 bytes)
; ======================================================================


L_984F:
	call 08251h		;984f
	call 083e8h		;9852
	ld hl,09835h		;9855
	ld (hl),000h		;9858
	call L_9860		;985a
	jp L_9890		;985d
L_9860:
	ld de,0d2c0h		;9860
	ld hl,0986ch		;9863
	ld bc,00024h		;9866
	ldir		;9869
	ret			;986b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x986c..0x9890  (36 bytes)
DATA_986C:
	defb 0e0h,0e0h,080h,008h,0e0h,0e0h,084h,005h,0e0h,0e0h,088h,004h,0e0h,0e0h,08ch,006h	; 986c  ................
	defb 0e0h,0e0h,090h,00eh,0e0h,0e0h,094h,009h,0e0h,0e0h,098h,00dh,0e0h,0e0h,09ch,00bh	; 987c  ................
	defb 0e0h,0e0h,0a0h,00ah	; 988c

; ======================================================================
; CODIGO 0x9890..0x99a2  (274 bytes)
; ======================================================================


L_9890:
	ld hl,0014ah		;9890
	ld ix,09836h		;9893
	ld bc,00900h		;9897
L_989A:
	push bc			;989a
	push hl			;989b
	ld a,c			;989c
	ld hl,0926eh		;989d
	call 0826ch		;98a0
	ex de,hl			;98a3
	pop hl			;98a4
	push hl			;98a5
	add hl,de			;98a6
	call L_98BB		;98a7
	ld (ix+000h),l		;98aa
	ld (ix+001h),h		;98ad
	ld de,00002h		;98b0
	add ix,de		;98b3
	pop hl			;98b5
	pop bc			;98b6
	inc c			;98b7
	djnz L_989A		;98b8
	ret			;98ba
L_98BB:
	push de			;98bb
	push bc			;98bc
	call L_9988		;98bd
	pop bc			;98c0
	pop de			;98c1
	ret			;98c2
L_98C3:
	ld a,(0d1c3h)		;98c3
	and 01fh		;98c6
	ret nz			;98c8
	call L_98DB		;98c9
	call L_98E0		;98cc
	call 0836bh		;98cf
	ld hl,09835h		;98d2
	inc (hl)			;98d5
	ld a,(hl)			;98d6
	cp 009h		;98d7
	ccf			;98d9
	ret			;98da
L_98DB:
	call L_992B		;98db
	jr L_9934		;98de
L_98E0:
	ld hl,09833h		;98e0
	ld b,(hl)			;98e3
	inc hl			;98e4
	ld c,(hl)			;98e5
	call L_98F8		;98e6
	ld a,(09835h)		;98e9
	ld hl,0d2c0h		;98ec
	add a,a			;98ef
	add a,a			;98f0
	call 08221h		;98f1
	ld (hl),b			;98f4
	inc hl			;98f5
	ld (hl),c			;98f6
	ret			;98f7
L_98F8:
	ld a,(09835h)		;98f8
	and 001h		;98fb
	jr z,L_9909		;98fd
	ld a,b			;98ff
	call L_9912		;9900
	ld b,a			;9903
	ld a,c			;9904
	call L_9912		;9905
	ld c,a			;9908
L_9909:
	ld a,044h		;9909
	add a,b			;990b
	ld b,a			;990c
	ld a,0a8h		;990d
	add a,c			;990f
	ld c,a			;9910
	ret			;9911
L_9912:
	ld d,a			;9912
	and 080h		;9913
	ld a,d			;9915
	jr z,L_9920		;9916
	neg		;9918
	call L_9920		;991a
	neg		;991d
	ret			;991f
L_9920:
	srl a		;9920
	ld d,a			;9922
	srl a		;9923
	ld e,a			;9925
	srl a		;9926
	add a,d			;9928
	add a,e			;9929
	ret			;992a
L_992B:
	ld a,(09835h)		;992b
	ld hl,09836h		;992e
	jp 0826ch		;9931
L_9934:
	push hl			;9934
	call L_994C		;9935
	ld (09833h),a		;9938
	pop hl			;993b
	call L_9945		;993c
	neg		;993f
	ld (09834h),a		;9941
	ret			;9944
L_9945:
	ld de,0005ah		;9945
	add hl,de			;9948
	call L_9988		;9949
L_994C:
	ld de,0010eh		;994c
	rst 20h			;994f
	jr nc,L_9973		;9950
	ld de,000b4h		;9952
	rst 20h			;9955
	jr nc,L_9968		;9956
	ld de,0005ah		;9958
	rst 20h			;995b
	jr nc,L_9960		;995c
	jr L_997F		;995e
L_9960:
	ld de,000b4h		;9960
	ex de,hl			;9963
	sbc hl,de		;9964
	jr L_997F		;9966
L_9968:
	ld de,000b4h		;9968
	sbc hl,de		;996b
	call L_997F		;996d
	neg		;9970
	ret			;9972
L_9973:
	ld de,00168h		;9973
	ex de,hl			;9976
	sbc hl,de		;9977
	call L_997F		;9979
	neg		;997c
	ret			;997e
L_997F:
	ld a,l			;997f
	ld hl,099a2h		;9980
	call 08221h		;9983
	ld a,(hl)			;9986
	ret			;9987
L_9988:
	ld a,h			;9988
	add a,080h		;9989
	jr nc,L_9997		;998b
L_998D:
	ld de,00168h		;998d
	add hl,de			;9990
	ld a,h			;9991
	add a,080h		;9992
	jr c,L_998D		;9994
	ret			;9996
L_9997:
	push hl			;9997
	ld de,00168h		;9998
	sbc hl,de		;999b
	pop de			;999d
	jr nc,L_9997		;999e
	ex de,hl			;99a0
	ret			;99a1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99a2..0x99fd  (91 bytes)
DATA_99A2:
	defb 000h,000h,001h,001h,002h,002h,003h,003h,004h,004h,005h,005h,006h,006h,007h,008h	; 99a2  ................
	defb 008h,009h,009h,00ah,00ah,00bh,00bh,00ch,00ch,00dh,00dh,00eh,00eh,00fh,00fh,00fh	; 99b2  ................
	defb 010h,010h,011h,011h,012h,012h,013h,013h,013h,014h,014h,015h,015h,015h,016h,016h	; 99c2  ................
	defb 017h,017h,017h,018h,018h,018h,019h,019h,019h,019h,01ah,01ah,01ah,01bh,01bh,01bh	; 99d2  ................
	defb 01bh,01ch,01ch,01ch,01ch,01ch,01dh,01dh,01dh,01dh,01dh,01dh,01eh,01eh,01eh,01eh	; 99e2  ................
	defb 01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01fh	; 99f2  ...........

; ======================================================================
; CODIGO 0x99fd..0x9a0a  (13 bytes)
; ======================================================================


L_99FD:
	ld a,(0d1c3h)		;99fd
	and 00fh		;9a00
	jr nz,$+38		;9a02
	ld a,(0d1d8h)		;9a04
	call 0822dh		;9a07

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a0a..0x9a16  (12 bytes)
DATA_9A0A:
	defb 016h,09ah,02ah,09ah,037h,09ah,03fh,09ah,047h,09ah,04fh,09ah	; 9a0a  ..*.7.?.G.O.

; ======================================================================
; CODIGO 0x9a16..0x9b68  (338 bytes)
; ======================================================================


L_9A16:
	call L_9B49		;9a16
	ld hl,09b68h		;9a19
	ld de,0d2fch		;9a1c
	ld bc,00004h		;9a1f
	ldir		;9a22
L_9A24:
	ld hl,0d1d8h		;9a24
	inc (hl)			;9a27
L_9A28:
	scf			;9a28
	ret			;9a29
L_9A2A:
	call 08334h		;9a2a
	call L_9A5C		;9a2d
	ld a,038h		;9a30
	ld (0d2fch),a		;9a32
	jr L_9A24		;9a35
L_9A37:
	ld hl,09e3ah		;9a37
	ld (0d2fch),hl		;9a3a
	jr L_9A24		;9a3d
L_9A3F:
	ld hl,09e38h		;9a3f
	ld (0d2fch),hl		;9a42
	jr L_9A24		;9a45
L_9A47:
	ld hl,0a038h		;9a47
	ld (0d2fch),hl		;9a4a
	jr L_9A24		;9a4d
L_9A4F:
	call L_9B01		;9a4f
	ld a,0e0h		;9a52
	ld (0d2fch),a		;9a54
	xor a			;9a57
	ld (0d1d8h),a		;9a58
	ret			;9a5b
L_9A5C:
	ld hl,09b6ch		;9a5c
	ld de,0a038h		;9a5f
	ld c,004h		;9a62
L_9A64:
	ld a,001h		;9a64
	jp 08218h		;9a66
L_9A69:
	call L_9ACC		;9a69
	call L_9B41		;9a6c
	call L_9B5F		;9a6f
	ld hl,09be1h		;9a72
	ld a,001h		;9a75
	jp L_A1C3		;9a77
L_9A7A:
	ld a,(0d1d7h)		;9a7a
	cp 007h		;9a7d
	jr nz,L_9A9F		;9a7f
	ld a,(0d1d8h)		;9a81
	cp 004h		;9a84
	jr z,L_9AB2		;9a86
	cp 003h		;9a88
	jr nz,L_9A9F		;9a8a
	ld a,(0e100h)		;9a8c
	or a			;9a8f
	jr nz,L_9A9F		;9a90
	ld a,(0d1c8h)		;9a92
	cp 080h		;9a95
	jr z,L_9AA2		;9a97
	cp 010h		;9a99
	jr z,L_9AA9		;9a9b
	or a			;9a9d
	ret			;9a9e
L_9A9F:
	jp L_A279		;9a9f
L_9AA2:
	call 08251h		;9aa2
	ld a,005h		;9aa5
	jr L_9AAD		;9aa7
L_9AA9:
	call 082f3h		;9aa9
	xor a			;9aac
L_9AAD:
	ld (0d1eeh),a		;9aad
	scf			;9ab0
	ret			;9ab1
L_9AB2:
	ld a,(0e100h)		;9ab2
	or a			;9ab5
	jr nz,L_9A9F		;9ab6
	xor a			;9ab8
	ld (0d1cdh),a		;9ab9
	scf			;9abc
	ret			;9abd
L_9ABE:
	ld a,(0d217h)		;9abe
	cp 005h		;9ac1
	ret c			;9ac3
	ld a,004h		;9ac4
	ld (0d217h),a		;9ac6
	jp L_A22F		;9ac9
L_9ACC:
	ld hl,09b70h		;9acc
	ld de,01838h		;9acf
	ld c,00ah		;9ad2
	jr L_9A64		;9ad4
L_9AD6:
	ld bc,05a24h		;9ad6
	ld de,0306eh		;9ad9
	jr L_9AF4		;9adc
L_9ADE:
	call 082bah		;9ade
	ld bc,0b048h		;9ae1
	ld de,0086eh		;9ae4
	ld hl,00000h		;9ae7
	ld a,0c0h		;9aea
	jr L_9B24		;9aec
L_9AEE:
	ld bc,07028h		;9aee
	ld de,0188eh		;9af1
L_9AF4:
	ld hl,02870h		;9af4
	jr L_9B0A		;9af7
L_9AF9:
	ld bc,0a018h		;9af9
	ld de,0189eh		;9afc
	jr L_9AF4		;9aff
L_9B01:
	ld de,0a038h		;9b01
	ld hl,00088h		;9b04
	ld bc,02020h		;9b07
L_9B0A:
	ld a,040h		;9b0a
	jr L_9B24		;9b0c
L_9B0E:
	ld bc,05a24h		;9b0e
	ld hl,0306eh		;9b11
L_9B14:
	ld de,02870h		;9b14
	jr L_9B52		;9b17
L_9B19:
	ld bc,05060h		;9b19
	ld de,0183ch		;9b1c
	ld hl,00000h		;9b1f
	ld a,080h		;9b22
L_9B24:
	jp 0820ch		;9b24
L_9B27:
	ld bc,05060h		;9b27
	ld hl,0183ch		;9b2a
	ld de,00000h		;9b2d
	ld a,020h		;9b30
	jr L_9B24		;9b32
L_9B34:
	ld bc,0b048h		;9b34
	ld hl,0086eh		;9b37
	ld de,00000h		;9b3a
	ld a,030h		;9b3d
	jr L_9B24		;9b3f
L_9B41:
	ld bc,07028h		;9b41
	ld hl,0188eh		;9b44
	jr L_9B14		;9b47
L_9B49:
	ld hl,0a038h		;9b49
	ld de,00088h		;9b4c
	ld bc,02020h		;9b4f
L_9B52:
	ld a,010h		;9b52
	jr L_9B24		;9b54
L_9B56:
	ld hl,0086eh		;9b56
	ld de,0b048h		;9b59
	jp L_A00D		;9b5c
L_9B5F:
	ld hl,0188eh		;9b5f
	ld de,07028h		;9b62
	jp L_A00D		;9b65

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9b68..0x9b6c  (4 bytes)
DATA_9B68:
	defb 0e0h,0a0h,0ach,00eh	; 9b68

; ----------------------------------------------------------------------
; DATOS casillas_9B6C: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A66 (4 bytes)
;   0x9b6c..0x9b70  (4 bytes)
DATA_casillas_9B6C:
	defb 080h,010h,031h,000h	; 9b6c

; ----------------------------------------------------------------------
; DATOS casillas_9B70: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A66 (77 bytes)
;   0x9b70..0x9bbd  (77 bytes)
DATA_casillas_9B70:
	defb 005h,000h,082h,090h,091h,003h,000h,080h,005h,000h,001h,000h,080h,004h,011h,001h	; 9b70  ................
	defb 000h,080h,004h,005h,001h,000h,080h,004h,015h,002h,000h,001h,093h,003h,000h,001h	; 9b80  ................
	defb 092h,004h,000h,080h,004h,009h,001h,000h,080h,004h,019h,001h,000h,080h,004h,00dh	; 9b90  ................
	defb 001h,000h,080h,004h,01dh,002h,000h,001h,092h,003h,000h,001h,094h,006h,000h,080h	; 9ba0  ................
	defb 004h,021h,006h,000h,080h,004h,025h,082h,000h,092h,015h,000h,000h	; 9bb0  .!....%......

; ----------------------------------------------------------------------
; DATOS casillas_9BBD: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A66 (36 bytes)
;   0x9bbd..0x9be1  (36 bytes)
DATA_casillas_9BBD:
	defb 005h,000h,082h,090h,091h,004h,000h,001h,092h,014h,000h,001h,093h,003h,000h,001h	; 9bbd  ................
	defb 092h,00eh,000h,001h,092h,00ah,000h,001h,092h,003h,000h,001h,094h,015h,000h,001h	; 9bcd  ................
	defb 092h,015h,000h,000h	; 9bdd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9be1..0x9c53  (114 bytes)
DATA_9BE1:
	defb 0e9h,09bh,0fbh,09bh,017h,0d2h,003h,002h,037h,018h,006h,037h,040h,006h,04fh,018h	; 9be1  ........7..7@.O.
	defb 006h,04fh,040h,006h,067h,028h,006h,067h,028h,006h,020h,098h,015h,016h,02dh,000h	; 9bf1  .O@.g(.g(. ...-.
	defb 003h,027h,015h,002h,010h,002h,019h,006h,0feh,020h,0a8h,004h,027h,02eh,0cbh,083h	; 9c01  .'....... ..'...
	defb 00bh,002h,0ffh,01ch,09ch,025h,09ch,0dch,0d1h,003h,000h,050h,01ch,000h,060h,01ch	; 9c11  .....%.....P..`.
	defb 000h,070h,01ch,000h,01ch,080h,0cch,00ah,016h,0feh,01ch,090h,094h,075h,00ch,01fh	; 9c21  .p...........u..
	defb 00dh,006h,051h,0feh,024h,050h,013h,000h,02ah,000h,0ceh,0feh,024h,060h,0d4h,028h	; 9c31  ..Q.$P..*...$`.(
	defb 02eh,010h,04bh,0feh,024h,070h,024h,022h,029h,0ffh,05bh,05ch,059h,05ah,057h,058h	; 9c41  ..K.$p$").[\YZWX
	defb 063h,05fh	; 9c51

; ======================================================================
; CODIGO 0x9c53..0x9d49  (246 bytes)
; ======================================================================


L_9C53:
	ld a,(0d1deh)		;9c53
	cp 002h		;9c56
	jr z,L_9CAF		;9c58
	call L_9AEE		;9c5a
	ld hl,09bbdh		;9c5d
	ld de,01838h		;9c60
	ld c,00ah		;9c63
	call L_9A64		;9c65
	call L_9B27		;9c68
	call L_9B34		;9c6b
	ld hl,0183ch		;9c6e
	ld de,05060h		;9c71
	call L_A00D		;9c74
	call L_9C81		;9c77
L_9C7A:
	ld hl,09c14h		;9c7a
	xor a			;9c7d
	jp L_A1C3		;9c7e
L_9C81:
	ld hl,09c4bh		;9c81
	ld a,(0d217h)		;9c84
	call 0826ch		;9c87
	push hl			;9c8a
	ld de,0233eh		;9c8b
	ld a,l			;9c8e
	call 0827eh		;9c8f
	call 082a8h		;9c92
	pop hl			;9c95
	ld a,h			;9c96
	call 0827eh		;9c97
	ld hl,0213dh		;9c9a
	ld (09e1ah),hl		;9c9d
	ld hl,0140ah		;9ca0
	ld (09e1dh),hl		;9ca3
	ld de,00004h		;9ca6
	ld bc,00e0fh		;9ca9
	jp L_9E18		;9cac
L_9CAF:
	xor a			;9caf
	ld (0d1deh),a		;9cb0
	call L_9AD6		;9cb3
	call L_9CBB		;9cb6
	jr L_9C7A		;9cb9
L_9CBB:
	ld de,00d00h		;9cbb
	ld bc,00f0eh		;9cbe
	call L_9CD3		;9cc1
	ld hl,0224ah		;9cc4
	ld de,03420h		;9cc7
	call L_9CF1		;9cca
	ld de,0000dh		;9ccd
	ld bc,00e0fh		;9cd0
L_9CD3:
	ld (09cf3h),de		;9cd3
	ld (09cf6h),bc		;9cd7
	ret			;9cdb
L_9CDC:
	call 082bah		;9cdc
	ld hl,0224ch		;9cdf
	ld de,0340dh		;9ce2
	ld a,(0d1dch)		;9ce5
	or a			;9ce8
	jr z,L_9CF1		;9ce9
	ld a,l			;9ceb
	add a,010h		;9cec
	ld l,a			;9cee
	ld d,02ch		;9cef
L_9CF1:
	exx			;9cf1
	ld de,0000dh		;9cf2
	ld bc,00e0fh		;9cf5
	exx			;9cf8
	ld (09e1ah),hl		;9cf9
	ld (09e1dh),de		;9cfc
	exx			;9d00
	jp L_9E18		;9d01
L_9D04:
	call 082f3h		;9d04
	call L_9CDC		;9d07
	ld a,(0e100h)		;9d0a
	or a			;9d0d
	ret z			;9d0e
	call L_9D16		;9d0f
	jr c,L_9D30		;9d12
	or a			;9d14
	ret			;9d15
L_9D16:
	ld h,001h		;9d16
L_9D18:
	ld c,000h		;9d18
L_9D1A:
	ld b,000h		;9d1a
L_9D1C:
	call 000a8h		;9d1c   ; BIOS LPTSTT - Tests printer status
	jr z,L_9D24		;9d1f
	cp 0ffh		;9d21
	ret z			;9d23
L_9D24:
	djnz L_9D1C		;9d24
	dec c			;9d26
	jr nz,L_9D1A		;9d27
	dec h			;9d29
	jr nz,L_9D18		;9d2a
	ld c,001h		;9d2c
	scf			;9d2e
	ret			;9d2f
L_9D30:
	ld a,002h		;9d30
	ld (0d1deh),a		;9d32
	call L_9B0E		;9d35
	ld hl,0306eh		;9d38
	ld de,05a24h		;9d3b
	call L_A00D		;9d3e
	ld hl,09d49h		;9d41
	call 08275h		;9d44
	scf			;9d47
	ret			;9d48

; ----------------------------------------------------------------------
; DATOS texto_9D49: texto: x, y y las letras hasta 0xFF; lo usa 0x9D44 (25
;   bytes)
;   0x9d49..0x9d62  (25 bytes)
DATA_texto_9D49:
	defb 036h,078h,0d4h,028h,02eh,010h,04bh,0beh,000h,00eh,032h,014h,0feh,036h,088h,00bh	; 9d49  6x.(..K...2..6..
	defb 02ah,013h,002h,01fh,00eh,02eh,052h,052h,0ffh	; 9d59  *.....RR.

; ======================================================================
; CODIGO 0x9d62..0x9d7f  (29 bytes)
; ======================================================================


L_9D62:
	xor a			;9d62
	ld (0d1deh),a		;9d63
	call L_9B56		;9d66
	ld a,(0e100h)		;9d69
	or a			;9d6c
	jr z,L_9D76		;9d6d
	ld hl,09d7fh		;9d6f
	xor a			;9d72
	jp L_A1C3		;9d73
L_9D76:
	ld hl,09dd2h		;9d76
	call 08275h		;9d79
	jp 08203h		;9d7c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d7f..0x9dd2  (83 bytes)
DATA_9D7F:
	defb 087h,09dh,099h,09dh,0eeh,0d1h,002h,003h,076h,010h,000h,076h,048h,000h,076h,07eh	; 9d7f  ........v..vH.v~
	defb 000h,086h,010h,000h,086h,048h,000h,086h,07eh,000h,018h,076h,00ch,02bh,008h,02bh	; 9d8f  .....H..~..v.+.+
	defb 037h,000h,000h,00ch,02bh,008h,02bh,038h,0feh,086h,076h,00ch,02bh,008h,02bh,039h	; 9d9f  7...+.+8..v.+.+9
	defb 0feh,018h,086h,00ch,02bh,008h,02bh,03ah,000h,000h,006h,000h,027h,000h,04bh,0feh	; 9daf  ....+.+:....'.K.
	defb 086h,086h,024h,000h,022h,000h,029h,0feh,018h,098h,0dbh,029h,002h,01ah,000h,0cch	; 9dbf  ..$.".)....)....
	defb 02ah,051h,0ffh	; 9dcf

; ----------------------------------------------------------------------
; DATOS texto_9DD2: texto: x, y y las letras hasta 0xFF; lo usa 0x9D79 (29
;   bytes)
;   0x9dd2..0x9def  (29 bytes)
DATA_texto_9DD2:
	defb 018h,078h,01ah,02eh,0cbh,034h,000h,0d4h,028h,02eh,010h,04bh,0cbh,0feh,018h,088h	; 9dd2  .x...4..(..K....
	defb 0d4h,028h,02eh,014h,001h,003h,014h,00ch,01fh,00dh,052h,052h,0ffh	; 9de2  .(........RR.

; ======================================================================
; CODIGO 0x9def..0x9e30  (65 bytes)
; ======================================================================


L_9DEF:
	ld a,(0e100h)		;9def
	or a			;9df2
	jp z,08251h		;9df3
	ld a,(0d1eeh)		;9df6
	ld hl,09e30h		;9df9
	call 0826ch		;9dfc
	ld de,0000bh		;9dff
	ld bc,00e0fh		;9e02
	call L_9E21		;9e05
	ld hl,01890h		;9e08
	ld bc,04010h		;9e0b
	call 082b4h		;9e0e
	ld hl,09e3ah		;9e11
	xor a			;9e14
	jp L_A1C3		;9e15
L_9E18:
	push bc			;9e18
	ld hl,02a0ah		;9e19
	ld bc,02a0ah		;9e1c
	jr L_9E25		;9e1f
L_9E21:
	push bc			;9e21
	ld bc,02a0ah		;9e22
L_9E25:
	push hl			;9e25
	push bc			;9e26
	call L_A145		;9e27
	pop bc			;9e2a
	pop hl			;9e2b
	pop de			;9e2c
	jp L_A145		;9e2d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e30..0x9e5f  (47 bytes)
DATA_9E30:
	defb 075h,018h,075h,050h,075h,086h,085h,018h,085h,050h,042h,09eh,048h,09eh,0cdh,0d1h	; 9e30  u.uPu....PB.H...
	defb 000h,002h,0a8h,018h,000h,0a8h,038h,000h,018h,098h,00ah,02ah,0cbh,000h,002h,002h	; 9e40  ......8....*....
	defb 0cbh,00dh,006h,051h,0feh,020h,0a8h,01ah,002h,000h,000h,002h,002h,004h,0ffh	; 9e50  ...Q. .........

; ======================================================================
; CODIGO 0x9e5f..0x9e72  (19 bytes)
; ======================================================================


L_9E5F:
	ld a,001h		;9e5f
	ld (0d1deh),a		;9e61
	ld a,080h		;9e64
	ld (0d1d9h),a		;9e66
	ld hl,0d1d8h		;9e69
	dec (hl)			;9e6c
	dec (hl)			;9e6d
L_9E6E:
	ret			;9e6e
L_9E6F:
	call 0822dh		;9e6f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e72..0x9e7a  (8 bytes)
DATA_9E72:
	defb 088h,09eh,0bch,09eh,07ah,09eh,016h,09fh	; 9e72  ....z...

; ======================================================================
; CODIGO 0x9e7a..0x9f4c  (210 bytes)
; ======================================================================


L_9E7A:
	ld a,(09232h)		;9e7a
	add a,03ch		;9e7d
	cp 047h		;9e7f
	jr c,L_9E85		;9e81
	ld a,047h		;9e83
L_9E85:
	jp L_9F47		;9e85
L_9E88:
	ld de,(0926eh)		;9e88
	ld hl,0001dh		;9e8c
	rst 20h			;9e8f
	jr nc,L_9E98		;9e90
	ld bc,0001eh		;9e92
	call L_9F8F		;9e95
L_9E98:
	ld c,00ah		;9e98
	call L_9F72		;9e9a
	ld c,l			;9e9d
	ld b,e			;9e9e
	call L_9EB0		;9e9f
	add a,a			;9ea2
	add a,b			;9ea3
	add a,c			;9ea4
	add a,000h		;9ea5
	cp 023h		;9ea7
	jr c,L_9EAD		;9ea9
	ld a,023h		;9eab
L_9EAD:
	jp L_9F47		;9ead
L_9EB0:
	ld a,(09232h)		;9eb0
	add a,b			;9eb3
	cp 00ch		;9eb4
	jr c,L_9EBA		;9eb6
	sub 00ch		;9eb8
L_9EBA:
	ld b,a			;9eba
	ret			;9ebb
L_9EBC:
	ld b,007h		;9ebc
	ld a,(0daf1h)		;9ebe
	call L_9FCC		;9ec1
	ld (092b7h),a		;9ec4
	and a			;9ec7
	jr z,L_9EF0		;9ec8
	ld hl,0929eh		;9eca
	ld b,000h		;9ecd
L_9ECF:
	ld a,(hl)			;9ecf
	and 004h		;9ed0
	jr nz,L_9EDC		;9ed2
	inc hl			;9ed4
	inc hl			;9ed5
	inc b			;9ed6
	ld a,00bh		;9ed7
	cp b			;9ed9
	jr nz,L_9ECF		;9eda
L_9EDC:
	ld a,(09232h)		;9edc
	add a,b			;9edf
	cp 00ch		;9ee0
	jr c,L_9EE6		;9ee2
	sub 00ch		;9ee4
L_9EE6:
	add a,024h		;9ee6
	cp 02fh		;9ee8
	jr c,L_9EEE		;9eea
	ld a,02fh		;9eec
L_9EEE:
	jr L_9F47		;9eee
L_9EF0:
	ld hl,0929eh		;9ef0
	ld b,000h		;9ef3
L_9EF5:
	ld a,(hl)			;9ef5
	and 008h		;9ef6
	jr nz,L_9F02		;9ef8
	inc hl			;9efa
	inc hl			;9efb
	inc b			;9efc
	ld a,00bh		;9efd
	cp b			;9eff
	jr nz,L_9EF5		;9f00
L_9F02:
	ld a,(09232h)		;9f02
	add a,b			;9f05
	cp 00ch		;9f06
	jr c,L_9F0C		;9f08
	sub 00ch		;9f0a
L_9F0C:
	add a,030h		;9f0c
	cp 03bh		;9f0e
	jr c,L_9F14		;9f10
	ld a,03bh		;9f12
L_9F14:
	jr L_9F47		;9f14
L_9F16:
	ld hl,(09288h)		;9f16
	ld a,h			;9f19
	or l			;9f1a
	jr z,L_9F32		;9f1b
	ld b,004h		;9f1d
	xor a			;9f1f
L_9F20:
	rr l		;9f20
	jr c,L_9F30		;9f22
	inc a			;9f24
	djnz L_9F20		;9f25
	ld b,005h		;9f27
L_9F29:
	rr h		;9f29
	jr c,L_9F30		;9f2b
	inc a			;9f2d
	djnz L_9F29		;9f2e
L_9F30:
	jr L_9F3C		;9f30
L_9F32:
	ld a,(09233h)		;9f32
	ld hl,09f4ch		;9f35
	call 08221h		;9f38
	ld a,(hl)			;9f3b
L_9F3C:
	ld (092b6h),a		;9f3c
	add a,048h		;9f3f
	cp 051h		;9f41
	jr c,L_9F47		;9f43
	ld a,051h		;9f45
L_9F47:
	ld hl,0d209h		;9f47
	ld (hl),a			;9f4a
	ret			;9f4b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f4c..0x9f58  (12 bytes)
DATA_9F4C:
	defb 003h,002h,001h,00bh,000h,001h,002h,008h,004h,005h,006h,007h	; 9f4c  ............

; ======================================================================
; CODIGO 0x9f58..0x9f80  (40 bytes)
; ======================================================================


L_9F58:
	ld hl,00000h		;9f58
	exx			;9f5b
	ld b,010h		;9f5c
L_9F5E:
	exx			;9f5e
	sla e		;9f5f
	rl d		;9f61
	adc hl,hl		;9f63
	sbc hl,bc		;9f65
	jr c,L_9F6C		;9f67
	inc e			;9f69
	jr L_9F6D		;9f6a
L_9F6C:
	add hl,bc			;9f6c
L_9F6D:
	exx			;9f6d
	djnz L_9F5E		;9f6e
	exx			;9f70
	ret			;9f71
L_9F72:
	ld b,008h		;9f72
	ld h,000h		;9f74
L_9F76:
	add hl,hl			;9f76
	ld a,h			;9f77
	sub c			;9f78
	jr c,L_9F7D		;9f79
	inc l			;9f7b
	ld h,a			;9f7c
L_9F7D:
	djnz L_9F76		;9f7d
	ret			;9f7f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f80..0x9f8f  (15 bytes)
DATA_9F80:
	defb 0afh,00ch,00dh,028h,009h,0cbh,039h,030h,001h,080h,0cbh,020h,018h,0f3h,0c9h	; 9f80  ...(..90... ...

; ======================================================================
; CODIGO 0x9f8f..0xa13f  (432 bytes)
; ======================================================================


L_9F8F:
	call L_9FB9		;9f8f
	push af			;9f92
	ld l,c			;9f93
	ld h,b			;9f94
	call L_9FAD		;9f95
	ld c,l			;9f98
	ld b,h			;9f99
	ex de,hl			;9f9a
	call L_9FAD		;9f9b
	ex de,hl			;9f9e
	call L_9F58		;9f9f
	pop af			;9fa2
	jr c,L_9FAC		;9fa3
	ld a,d			;9fa5
	cpl			;9fa6
	ld d,a			;9fa7
	ld a,e			;9fa8
	cpl			;9fa9
	ld e,a			;9faa
	inc de			;9fab
L_9FAC:
	ret			;9fac
L_9FAD:
	ld a,h			;9fad
	or a			;9fae
	jp p,L_9FB8		;9faf
	cpl			;9fb2
	ld h,a			;9fb3
	ld l,a			;9fb4
	cpl			;9fb5
	ld l,a			;9fb6
	inc hl			;9fb7
L_9FB8:
	ret			;9fb8
L_9FB9:
	ld a,b			;9fb9
	or a			;9fba
	jp m,L_9FC5		;9fbb
	ld a,d			;9fbe
	or a			;9fbf
	jp p,L_9FCA		;9fc0
	jr L_9FCB		;9fc3
L_9FC5:
	ld a,d			;9fc5
	or a			;9fc6
	jp p,L_9FCB		;9fc7
L_9FCA:
	scf			;9fca
L_9FCB:
	ret			;9fcb
L_9FCC:
	push bc			;9fcc
	call L_9FFC		;9fcd
	pop bc			;9fd0
	ld a,b			;9fd1
	add a,00fh		;9fd2
	call 08206h		;9fd4
	ex de,hl			;9fd7
	ld c,(hl)			;9fd8
	ld a,b			;9fd9
	cp 005h		;9fda
	jr nc,L_9FE1		;9fdc
	call L_9FE3		;9fde
L_9FE1:
	ld a,c			;9fe1
	ret			;9fe2
L_9FE3:
	ld a,c			;9fe3
	srl a		;9fe4
	srl a		;9fe6
	srl a		;9fe8
	srl a		;9fea
	call L_9FF6		;9fec
	ld b,a			;9fef
	ld a,c			;9ff0
	and 00fh		;9ff1
	add a,b			;9ff3
	ld c,a			;9ff4
	ret			;9ff5
L_9FF6:
	add a,a			;9ff6
	ld b,a			;9ff7
	add a,a			;9ff8
	add a,a			;9ff9
	add a,b			;9ffa
	ret			;9ffb
L_9FFC:
	ld l,a			;9ffc
	ld h,000h		;9ffd
	add hl,hl			;9fff
	add hl,hl			;a000
	add hl,hl			;a001
	add hl,hl			;a002
	push hl			;a003
	pop bc			;a004
	add hl,hl			;a005
	add hl,bc			;a006
	ld de,0d700h		;a007
	add hl,de			;a00a
	ex de,hl			;a00b
	ret			;a00c
L_A00D:
	ld (0dd00h),hl		;a00d
	ld (0dd02h),de		;a010
	ld a,h			;a014
	add a,008h		;a015
	ld h,a			;a017
	ld a,(0dd03h)		;a018
	sub 010h		;a01b
	ld b,a			;a01d
	ld a,(0dd02h)		;a01e
	ld c,a			;a021
	xor a			;a022
	ld d,000h		;a023
	call 0829fh		;a025
	ld hl,(0dd00h)		;a028
	ld a,l			;a02b
	add a,008h		;a02c
	ld l,a			;a02e
	ld a,(0dd02h)		;a02f
	sub 010h		;a032
	ld c,a			;a034
	ld a,(0dd03h)		;a035
	ld b,a			;a038
	xor a			;a039
	ld d,000h		;a03a
	call 0829fh		;a03c
	ld de,(0dd00h)		;a03f
	ld a,0c9h		;a043
	call L_A129		;a045
	call 082a8h		;a048
	ex de,hl			;a04b
	ld a,(0dd03h)		;a04c
	sub 010h		;a04f
	ld b,a			;a051
	ld c,00eh		;a052
	call L_A0D0		;a054
	ld de,(0dd00h)		;a057
	ld a,(0dd03h)		;a05b
	sub 008h		;a05e
	add a,d			;a060
	ld d,a			;a061
	ld a,0cah		;a062
	call L_A129		;a064
	ld hl,(0dd00h)		;a067
	ld a,008h		;a06a
	add a,l			;a06c
	ld l,a			;a06d
	ld a,(0dd02h)		;a06e
	sub 010h		;a071
	ld b,a			;a073
	ld c,00eh		;a074
	call L_A0FC		;a076
	ld de,(0dd00h)		;a079
	ld a,(0dd02h)		;a07d
	sub 008h		;a080
	add a,e			;a082
	ld e,a			;a083
	ld a,0cbh		;a084
	call L_A129		;a086
	ld hl,(0dd00h)		;a089
	ld a,(0dd03h)		;a08c
	dec a			;a08f
	add a,h			;a090
	ld h,a			;a091
	ld a,008h		;a092
	add a,l			;a094
	ld l,a			;a095
	ld a,(0dd02h)		;a096
	sub 010h		;a099
	ld b,a			;a09b
	ld c,00eh		;a09c
	call L_A0FC		;a09e
	ld de,(0dd00h)		;a0a1
	ld a,(0dd02h)		;a0a5
	sub 008h		;a0a8
	add a,e			;a0aa
	ld e,a			;a0ab
	ld a,(0dd03h)		;a0ac
	sub 008h		;a0af
	add a,d			;a0b1
	ld d,a			;a0b2
	ld a,0cch		;a0b3
	call L_A129		;a0b5
	ld hl,(0dd00h)		;a0b8
	ld a,008h		;a0bb
	add a,h			;a0bd
	ld h,a			;a0be
	ld a,(0dd02h)		;a0bf
	dec a			;a0c2
	add a,l			;a0c3
	ld l,a			;a0c4
	ld a,(0dd03h)		;a0c5
	sub 010h		;a0c8
	ld b,a			;a0ca
	ld c,00eh		;a0cb
	jp L_A0D0		;a0cd
L_A0D0:
	ld a,024h		;a0d0
	ld (0d226h),a		;a0d2
	call 08287h		;a0d5
	out (c),h		;a0d8
	xor a			;a0da
	out (c),a		;a0db
	out (c),l		;a0dd
	out (c),a		;a0df
	ld hl,(0d227h)		;a0e1
	out (c),h		;a0e4
	xor a			;a0e6
	cp h			;a0e7
	jr nz,L_A0EB		;a0e8
	inc a			;a0ea
L_A0EB:
	out (c),a		;a0eb
	xor a			;a0ed
	out (c),a		;a0ee
	out (c),a		;a0f0
	out (c),l		;a0f2
	out (c),a		;a0f4
	ld a,070h		;a0f6
	out (c),a		;a0f8
	ei			;a0fa
	ret			;a0fb
L_A0FC:
	ld a,024h		;a0fc
	ld (0d226h),a		;a0fe
	call 08287h		;a101
	out (c),h		;a104
	xor a			;a106
	out (c),a		;a107
	out (c),l		;a109
	out (c),a		;a10b
	ld hl,(0d227h)		;a10d
	out (c),h		;a110
	xor a			;a112
	cp h			;a113
	jr nz,L_A117		;a114
	inc a			;a116
L_A117:
	out (c),a		;a117
	xor a			;a119
	out (c),a		;a11a
	out (c),a		;a11c
	out (c),l		;a11e
	inc a			;a120
	out (c),a		;a121
	ld a,070h		;a123
	out (c),a		;a125
	ei			;a127
	ret			;a128
L_A129:
	push bc			;a129
	push hl			;a12a
	push de			;a12b
	call 08281h		;a12c
	ld a,l			;a12f
	add a,080h		;a130
	ld l,a			;a132
	ld bc,00808h		;a133
	ld a,048h		;a136
	call 0820ch		;a138
	pop de			;a13b
	pop hl			;a13c
	pop bc			;a13d
	ret			;a13e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa13f..0xa145  (6 bytes)
DATA_A13F:
	defb 043h,028h,016h,0feh,0cbh,038h	; a13f

; ======================================================================
; CODIGO 0xa145..0xa271  (300 bytes)
; ======================================================================


L_A145:
	srl b		;a145
	ex de,hl			;a147
	push hl			;a148
	call L_A1B7		;a149
	pop de			;a14c
	ld (0a13fh),bc		;a14d
	ld (0a141h),hl		;a151
	ld (0a143h),de		;a154
L_A158:
	push bc			;a158
	ld hl,(0a141h)		;a159
	ld de,0d300h		;a15c
	ld a,(0a140h)		;a15f
	ld c,a			;a162
	ld b,000h		;a163
	call 08266h		;a165
	call L_A18B		;a168
	ld de,(0a141h)		;a16b
	ld hl,0d300h		;a16f
	ld a,(0a140h)		;a172
	ld c,a			;a175
	ld b,000h		;a176
	call 08224h		;a178
	ld hl,(0a141h)		;a17b
	ld a,080h		;a17e
	call 08221h		;a180
	ld (0a141h),hl		;a183
	pop bc			;a186
	dec c			;a187
	jr nz,L_A158		;a188
	ret			;a18a
L_A18B:
	ld hl,0d300h		;a18b
	ld de,(0a143h)		;a18e
	ld a,(0a140h)		;a192
	ld b,a			;a195
L_A196:
	ld a,(hl)			;a196
	rra			;a197
	rra			;a198
	rra			;a199
	rra			;a19a
	and 00fh		;a19b
	cp d			;a19d
	jr nz,L_A1A1		;a19e
	ld a,e			;a1a0
L_A1A1:
	rla			;a1a1
	rla			;a1a2
	rla			;a1a3
	rla			;a1a4
	and 0f0h		;a1a5
	ld c,a			;a1a7
	ld a,(hl)			;a1a8
	and 00fh		;a1a9
	cp d			;a1ab
	jr nz,L_A1AF		;a1ac
	ld a,e			;a1ae
L_A1AF:
	and 00fh		;a1af
	or c			;a1b1
	ld (hl),a			;a1b2
	inc hl			;a1b3
	djnz L_A196		;a1b4
	ret			;a1b6
L_A1B7:
	srl e		;a1b7
	rr d		;a1b9
	ld h,e			;a1bb
	ld l,d			;a1bc
	ld de,(0d223h)		;a1bd
	add hl,de			;a1c1
	ret			;a1c2
L_A1C3:
	ld (0a3ffh),a		;a1c3
	call L_A274		;a1c6
	ld (0d200h),de		;a1c9
	call L_A274		;a1cd
	ld (0d206h),de		;a1d0
	call L_A274		;a1d4
	ld (0d202h),de		;a1d7
	ld a,(hl)			;a1db
	inc hl			;a1dc
	ld (0d232h),a		;a1dd
	ld a,(hl)			;a1e0
	inc hl			;a1e1
	ld (0d233h),a		;a1e2
	call L_A22F		;a1e5
	ld hl,(0d206h)		;a1e8
	call 08275h		;a1eb
	ld a,0ffh		;a1ee
	ld (0d20ch),a		;a1f0
	inc a			;a1f3
	ld (0a3feh),a		;a1f4
	ld c,001h		;a1f7
	ld hl,(0d202h)		;a1f9
	ld a,(hl)			;a1fc
	ld b,a			;a1fd
	ld hl,0d233h		;a1fe
	ld a,(hl)			;a201
	or a			;a202
	jr z,L_A223		;a203
	ld a,b			;a205
L_A206:
	sub (hl)			;a206
	jr c,L_A20C		;a207
	inc c			;a209
	jr L_A206		;a20a
L_A20C:
	add a,(hl)			;a20c
	inc a			;a20d
	ld (0d205h),a		;a20e
	ld a,c			;a211
L_A212:
	ld (0d204h),a		;a212
	ld a,(0d205h)		;a215
	ld hl,0d233h		;a218
	cp (hl)			;a21b
	ret nz			;a21c
	ld a,001h		;a21d
	ld (0a3feh),a		;a21f
	ret			;a222
L_A223:
	ld a,001h		;a223
	ld (0d205h),a		;a225
	ld hl,(0d202h)		;a228
	ld a,(hl)			;a22b
	inc a			;a22c
	jr L_A212		;a22d
L_A22F:
	call 082bdh		;a22f
	ld hl,(0d202h)		;a232
	ld a,(hl)			;a235
	ld hl,(0d200h)		;a236
	ld c,a			;a239
	add a,a			;a23a
	add a,c			;a23b
	call 08221h		;a23c
	ld de,0d20dh		;a23f
	ld bc,00003h		;a242
	ldir		;a245
	ld a,(0d20fh)		;a247
	cp 001h		;a24a
	ret z			;a24c
	ld hl,0a3a4h		;a24d
	call 0826ch		;a250
	ld b,(hl)			;a253
	inc hl			;a254
	ld de,0d280h		;a255
L_A258:
	ld a,(0d20dh)		;a258
	add a,(hl)			;a25b
	ld (de),a			;a25c
	inc hl			;a25d
	inc de			;a25e
	ld a,(0d20eh)		;a25f
	add a,(hl)			;a262
	ld (de),a			;a263
	inc hl			;a264
	inc de			;a265
	ld a,(hl)			;a266
	ld (de),a			;a267
	inc hl			;a268
	inc de			;a269
	ld a,(hl)			;a26a
	ld (de),a			;a26b
	inc hl			;a26c
	inc de			;a26d
	djnz L_A258		;a26e
	ret			;a270

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa271..0xa274  (3 bytes)
DATA_A271:
	defb 0cdh,01eh,082h	; a271

; ======================================================================
; CODIGO 0xa274..0xa3a4  (304 bytes)
; ======================================================================


L_A274:
	ld e,(hl)			;a274
	inc hl			;a275
	ld d,(hl)			;a276
	inc hl			;a277
	ret			;a278
L_A279:
	ld a,(0d1c8h)		;a279
	cp 010h		;a27c
	jp z,L_A38D		;a27e
	ld c,a			;a281
	ld a,(0d233h)		;a282
	and a			;a285
	push bc			;a286
	call nz,L_A33E		;a287
	pop bc			;a28a
	ld a,(0d204h)		;a28b
	and a			;a28e
	jr z,L_A2C7		;a28f
	ld a,c			;a291
	cp 001h		;a292
	jp z,L_A31A		;a294
	cp 002h		;a297
	jr nz,L_A2C7		;a299
	ld a,(0d204h)		;a29b
	inc a			;a29e
	ld hl,0d232h		;a29f
	ld e,(hl)			;a2a2
	inc e			;a2a3
	cp e			;a2a4
	ret nc			;a2a5
	ld (0d204h),a		;a2a6
	ld e,a			;a2a9
	ld a,(0a3feh)		;a2aa
	or a			;a2ad
	jr z,L_A2BE		;a2ae
	ld a,e			;a2b0
	cp (hl)			;a2b1
	jr nz,L_A2BE		;a2b2
	ld a,(0d233h)		;a2b4
	ld hl,0a3ffh		;a2b7
	sub (hl)			;a2ba
	ld (0d205h),a		;a2bb
L_A2BE:
	call L_A2C9		;a2be
	call L_A2DA		;a2c1
	call L_A22F		;a2c4
L_A2C7:
	xor a			;a2c7
	ret			;a2c8
L_A2C9:
	ld a,(0d1c0h)		;a2c9
	cp 004h		;a2cc
	jr nz,L_A2D7		;a2ce
	ld a,(0d1d7h)		;a2d0
	dec a			;a2d3
	jp z,08370h		;a2d4
L_A2D7:
	jp 082eeh		;a2d7
L_A2DA:
	ld a,(0d233h)		;a2da
	or a			;a2dd
	jr z,L_A30B		;a2de
	ld a,(0d232h)		;a2e0
	or a			;a2e3
	jr z,L_A311		;a2e4
	ld a,(0d204h)		;a2e6
	dec a			;a2e9
	jr z,L_A2FA		;a2ea
	ld b,a			;a2ec
	ld a,(0d233h)		;a2ed
	or a			;a2f0
	jr z,L_A317		;a2f1
	ld hl,0d233h		;a2f3
	xor a			;a2f6
L_A2F7:
	add a,(hl)			;a2f7
	djnz L_A2F7		;a2f8
L_A2FA:
	ld b,a			;a2fa
	ld a,(0d233h)		;a2fb
	or a			;a2fe
	jr z,L_A304		;a2ff
	ld a,(0d205h)		;a301
L_A304:
	dec a			;a304
	add a,b			;a305
L_A306:
	ld hl,(0d202h)		;a306
	ld (hl),a			;a309
	ret			;a30a
L_A30B:
	ld a,(0d204h)		;a30b
	dec a			;a30e
	jr L_A306		;a30f
L_A311:
	ld a,(0d205h)		;a311
	dec a			;a314
	jr L_A306		;a315
L_A317:
	ld a,b			;a317
	jr L_A306		;a318
L_A31A:
	ld a,(0d204h)		;a31a
	dec a			;a31d
	ret z			;a31e
	ld (0d204h),a		;a31f
	ld a,(0a3feh)		;a322
	or a			;a325
	jr z,L_A2BE		;a326
	ld a,(0d233h)		;a328
	ld (0d205h),a		;a32b
	jr L_A2BE		;a32e
L_A330:
	xor a			;a330
	ld (0a3feh),a		;a331
	ld a,(0d205h)		;a334
	dec a			;a337
	ret z			;a338
	ld (0d205h),a		;a339
	jr L_A2BE		;a33c
L_A33E:
	ld a,c			;a33e
	cp 004h		;a33f
	jr z,L_A330		;a341
	cp 008h		;a343
	jp nz,L_A2C7		;a345
	ld a,(0d205h)		;a348
	inc a			;a34b
	ld b,a			;a34c
	ld a,(0d204h)		;a34d
	ld hl,0d232h		;a350
	cp (hl)			;a353
	ld a,(0d233h)		;a354
	call z,L_A385		;a357
	ld e,a			;a35a
	ld a,b			;a35b
	cp e			;a35c
	jr z,L_A37C		;a35d
	inc e			;a35f
	cp e			;a360
	jr nc,L_A36D		;a361
	ld (0d205h),a		;a363
	xor a			;a366
	ld (0a3feh),a		;a367
	jp L_A2BE		;a36a
L_A36D:
	ld a,(0d204h)		;a36d
	ld hl,0d232h		;a370
	cp (hl)			;a373
	ret z			;a374
	ld a,001h		;a375
	ld (0a3feh),a		;a377
	or a			;a37a
	ret			;a37b
L_A37C:
	ld (0d205h),a		;a37c
	call L_A36D		;a37f
	jp L_A2BE		;a382
L_A385:
	push af			;a385
	ld a,(0a3ffh)		;a386
	ld e,a			;a389
	pop af			;a38a
	sub e			;a38b
	ret			;a38c
L_A38D:
	call L_A398		;a38d
	jp z,L_A2C7		;a390
	call 082f3h		;a393
	scf			;a396
	ret			;a397
L_A398:
	ld a,(0d1d6h)		;a398
	cp 003h		;a39b
	ret nz			;a39d
	ld a,(0d1dah)		;a39e
	cp 0feh		;a3a1
	ret			;a3a3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa3a4..0xa400  (92 bytes)
DATA_A3A4:
	defb 0b8h,0a3h,0bdh,0a3h,0c2h,0a3h,0c7h,0a3h,0d0h,0a3h,0d5h,0a3h,0dah,0a3h,0e3h,0a3h	; a3a4  ................
	defb 0ech,0a3h,0f5h,0a3h,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; a3b4  ................
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; a3c4  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; a3d4  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; a3e4  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,0a4h,040h	; a3f4  ...........@
