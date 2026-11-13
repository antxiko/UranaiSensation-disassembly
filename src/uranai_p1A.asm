; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p1A (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x982d  (45 bytes)
; ======================================================================


L_9800:
	jp L_982E		;9800
L_9803:
	jp L_A24C		;9803
L_9806:
	jp L_992F		;9806
L_9809:
	jp L_9951		;9809
L_980C:
	jp L_9917		;980c
L_980F:
	jp L_9965		;980f
L_9812:
	jp L_9CD7		;9812
L_9815:
	jp L_9910		;9815
L_9818:
	jp L_9CE9		;9818
L_981B:
	jp L_998E		;981b
L_981E:
	jp L_99A0		;981e
L_9821:
	jp L_98EB		;9821
L_9824:
	jp L_99AA		;9824
L_9827:
	jp L_9F39		;9827
L_982A:
	jp L_9F21		;982a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x982d..0x982e  (1 bytes)
DATA_982D:
	defb 0f6h	; 982d

; ======================================================================
; CODIGO 0x982e..0x99b7  (393 bytes)
; ======================================================================


L_982E:
	call L_A3D3		;982e
	ld a,004h		;9831
	call 09209h		;9833
	ld a,004h		;9836
	call 09203h		;9838
	ld a,016h		;983b
	call 09206h		;983d
	call 08212h		;9840
	call 0826fh		;9843
	call 08260h		;9846
	call 08251h		;9849
	call L_98C2		;984c
	call L_98C8		;984f
	ld a,006h		;9852
	call 09203h		;9854
	ld a,014h		;9857
	call 09206h		;9859
	ld hl,01058h		;985c
	ld bc,04058h		;985f
	ld a,0bbh		;9862
	ld d,000h		;9864
	call 0829fh		;9866
	ld hl,09b40h		;9869
	ld de,05010h		;986c
	ld c,003h		;986f
	ld a,001h		;9871
	call 08218h		;9873
	ld a,007h		;9876
	call 09203h		;9878
	ld a,0a8h		;987b
	call 09206h		;987d
	ld hl,09b60h		;9880
	ld de,01068h		;9883
	ld c,008h		;9886
	ld a,001h		;9888
	call 08218h		;988a
	ld a,008h		;988d
	call 09203h		;988f
	ld a,00eh		;9892
	call 09206h		;9894
	ld hl,09b9ah		;9897
	ld de,06860h		;989a
	ld c,002h		;989d
	ld a,001h		;989f
	call 08218h		;98a1
	ld hl,09b9eh		;98a4
	ld de,0d2a8h		;98a7
	ld bc,00014h		;98aa
	ldir		;98ad
	ld a,005h		;98af
	call 09203h		;98b1
	ld a,056h		;98b4
	call 09206h		;98b6
	call L_98D5		;98b9
	call L_9917		;98bc
	jp 08209h		;98bf
L_98C2:
	ld hl,099b7h		;98c2
	jp 082dbh		;98c5
L_98C8:
	ld hl,099d7h		;98c8
	ld de,00000h		;98cb
	ld c,020h		;98ce
	ld a,001h		;98d0
	jp 08218h		;98d2
L_98D5:
	call L_9902		;98d5
	call 0828ah		;98d8
	ld hl,0ac60h		;98db
	ld de,04028h		;98de
	call L_A064		;98e1
	ld hl,09bb2h		;98e4
	xor a			;98e7
	jp L_A196		;98e8
L_98EB:
	ld hl,(0cd28h)		;98eb
	ld de,00888h		;98ee
	ld bc,(0cd2ah)		;98f1
	jr L_990B		;98f5
L_98F7:
	ld hl,0c078h		;98f7
	ld de,06088h		;98fa
	ld bc,03818h		;98fd
	jr L_990B		;9900
L_9902:
	ld hl,0ac60h		;9902
	ld de,00888h		;9905
	ld bc,04028h		;9908
L_990B:
	ld a,010h		;990b
	jp 0820ch		;990d
L_9910:
	ld a,003h		;9910
	ld (0982dh),a		;9912
	jr L_991C		;9915
L_9917:
	ld a,002h		;9917
	ld (0982dh),a		;9919
L_991C:
	ld a,(0982dh)		;991c
	ld hl,09bcfh		;991f
	call 0826ch		;9922
	ld de,0b010h		;9925
	ld a,001h		;9928
	ld c,008h		;992a
	jp 08218h		;992c
L_992F:
	xor a			;992f
	ld (0982dh),a		;9930
	call L_9D82		;9933
	ld hl,0c681h		;9936
	ld (0d280h),hl		;9939
	call L_98F7		;993c
	call 0828ah		;993f
	ld hl,0c078h		;9942
	ld de,03818h		;9945
	call L_A064		;9948
	ld hl,09c8fh		;994b
	jp 08275h		;994e
L_9951:
	ld a,(0d1c3h)		;9951
	and 003h		;9954
	ret nz			;9956
	call 0830ch		;9957
	ld a,(0982dh)		;995a
	xor 001h		;995d
	ld (0982dh),a		;995f
	jp L_991C		;9962
L_9965:
	ld de,0c078h		;9965
	ld hl,06088h		;9968
	ld bc,03818h		;996b
	call L_9989		;996e
	call 0828ah		;9971
	ld de,0ac60h		;9974
	ld hl,00888h		;9977
	ld bc,04028h		;997a
	call L_9989		;997d
	call 0828ah		;9980
	ld a,0e0h		;9983
	ld (0d280h),a		;9985
	ret			;9988
L_9989:
	ld a,040h		;9989
	jp 0820ch		;998b
L_998E:
	ld hl,0b010h		;998e
	ld bc,04040h		;9991
	call 082b4h		;9994
	call L_9F0B		;9997
	ld hl,0d1d8h		;999a
	inc (hl)			;999d
	inc (hl)			;999e
	ret			;999f
L_99A0:
	call L_9CA1		;99a0
	ld ix,09c96h		;99a3
	jp 0920fh		;99a7
L_99AA:
	ld hl,09c9dh		;99aa
	ld de,0b010h		;99ad
	ld a,001h		;99b0
	ld c,008h		;99b2
	jp 08218h		;99b4

; ----------------------------------------------------------------------
; DATOS paleta_99B7: paleta: 16 colores de 2 bytes; lo usa 0x98C5 (32 bytes)
;   0x99b7..0x99d7  (32 bytes)
DATA_paleta_99B7:
	defb 000h,000h,027h,002h,073h,003h,006h,000h,040h,000h,075h,007h,074h,006h,047h,004h	; 99b7  ..'.s...@.u.t.G.
	defb 070h,000h,052h,004h,030h,007h,074h,006h,055h,005h,030h,004h,077h,007h,000h,000h	; 99c7  p.R.0.t.U.0.w...

; ----------------------------------------------------------------------
; DATOS casillas_99D7: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x98D2 (361 bytes)
;   0x99d7..0x9b40  (361 bytes)
DATA_casillas_99D7:
	defb 0a1h,000h,016h,015h,000h,016h,015h,000h,016h,015h,000h,016h,015h,000h,016h,015h	; 99d7  ................
	defb 000h,016h,015h,000h,016h,015h,000h,016h,015h,000h,016h,015h,000h,016h,015h,000h	; 99e7  ................
	defb 016h,015h,014h,00dh,081h,001h,008h,002h,083h,003h,015h,016h,004h,00dh,082h,011h	; 99f7  ................
	defb 012h,006h,00dh,082h,011h,012h,006h,00dh,081h,004h,008h,000h,083h,005h,000h,000h	; 9a07  ................
	defb 004h,00dh,082h,013h,014h,006h,00dh,082h,013h,014h,006h,00dh,081h,004h,008h,000h	; 9a17  ................
	defb 083h,005h,016h,015h,014h,00dh,081h,004h,008h,000h,083h,005h,015h,016h,014h,00dh	; 9a27  ................
	defb 081h,004h,008h,000h,083h,005h,000h,000h,00fh,00dh,082h,011h,012h,003h,00dh,081h	; 9a37  ................
	defb 004h,008h,000h,083h,005h,016h,015h,009h,00dh,082h,011h,012h,004h,00dh,082h,013h	; 9a47  ................
	defb 014h,003h,00dh,081h,004h,008h,000h,083h,005h,015h,016h,004h,00dh,082h,011h,012h	; 9a57  ................
	defb 003h,00dh,082h,013h,014h,009h,00dh,081h,004h,008h,000h,083h,005h,000h,000h,004h	; 9a67  ................
	defb 00dh,082h,013h,014h,00eh,00dh,081h,004h,008h,000h,083h,005h,016h,015h,014h,00dh	; 9a77  ................
	defb 081h,006h,008h,007h,084h,008h,015h,016h,00dh,008h,000h,011h,00dh,087h,011h,012h	; 9a87  ................
	defb 00dh,00dh,000h,000h,00dh,008h,000h,011h,00dh,087h,013h,014h,00dh,00dh,016h,015h	; 9a97  ................
	defb 00dh,008h,000h,006h,00dh,082h,011h,012h,00dh,00dh,083h,015h,016h,00dh,008h,000h	; 9aa7  ................
	defb 006h,00dh,082h,013h,014h,00dh,00dh,002h,000h,081h,00dh,008h,000h,00dh,00dh,082h	; 9ab7  ................
	defb 011h,012h,006h,00dh,083h,016h,015h,00dh,008h,000h,00dh,00dh,082h,013h,014h,006h	; 9ac7  ................
	defb 00dh,083h,015h,016h,00dh,008h,000h,015h,00dh,002h,000h,081h,00dh,008h,000h,015h	; 9ad7  ................
	defb 00dh,083h,016h,015h,00dh,008h,000h,012h,00dh,086h,011h,012h,00dh,015h,016h,00dh	; 9ae7  ................
	defb 008h,000h,083h,00dh,011h,012h,007h,00dh,082h,011h,012h,006h,00dh,086h,013h,014h	; 9af7  ................
	defb 00dh,000h,000h,00dh,008h,000h,083h,00dh,013h,014h,007h,00dh,082h,013h,014h,009h	; 9b07  ................
	defb 00dh,082h,016h,015h,01eh,00dh,0a1h,015h,016h,000h,015h,016h,000h,015h,016h,000h	; 9b17  ................
	defb 015h,016h,000h,015h,016h,000h,015h,016h,000h,015h,016h,000h,015h,016h,000h,015h	; 9b27  ................
	defb 016h,000h,015h,016h,000h,015h,016h,000h,000h	; 9b37  .........

; ----------------------------------------------------------------------
; DATOS casillas_9B40: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9873 (32 bytes)
;   0x9b40..0x9b60  (32 bytes)
DATA_casillas_9B40:
	defb 09eh,00ch,00dh,004h,00eh,00fh,005h,00eh,00fh,005h,00eh,00fh,005h,00eh,00fh,005h	; 9b40  ................
	defb 00eh,00fh,005h,00eh,00fh,005h,00eh,00fh,005h,010h,011h,00bh,012h,013h,014h,000h	; 9b50  ................

; ----------------------------------------------------------------------
; DATOS casillas_9B60: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x988A (58 bytes)
;   0x9b60..0x9b9a  (58 bytes)
DATA_casillas_9B60:
	defb 088h,09fh,09dh,09eh,09fh,09fh,09dh,09eh,09fh,080h,004h,041h,080h,004h,071h,080h	; 9b60  ...........A..q.
	defb 004h,045h,080h,004h,075h,080h,004h,061h,080h,004h,079h,080h,004h,065h,080h,004h	; 9b70  .E..u..a..y..e..
	defb 07dh,080h,004h,059h,080h,004h,021h,080h,004h,05dh,080h,004h,025h,080h,004h,051h	; 9b80  }..Y..!..]..%..Q
	defb 080h,004h,091h,080h,004h,055h,080h,004h,095h,000h	; 9b90  .....U....

; ----------------------------------------------------------------------
; DATOS casillas_9B9A: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x98A1 (4 bytes)
;   0x9b9a..0x9b9e  (4 bytes)
DATA_casillas_9B9A:
	defb 080h,00eh,001h,000h	; 9b9a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9b9e..0x9c8f  (241 bytes)
DATA_9B9E:
	defb 078h,070h,09ch,001h,078h,070h,0a0h,003h,078h,070h,0a4h,00eh,078h,070h,0a8h,006h	; 9b9e  xp..xp..xp..xp..
	defb 078h,070h,0ach,00fh,0bah,09bh,0c0h,09bh,0cdh,0d1h,002h,000h,06ah,0b3h,000h,07ah	; 9bae  xp..........j..z
	defb 0b3h,000h,0bch,06ah,04fh,01ah,0c4h,022h,029h,0feh,0bch,07ah,04fh,005h,02ch,028h	; 9bbe  ...jO..")..zO.,(
	defb 0ffh,0d7h,09bh,00ah,09ch,035h,09ch,060h,09ch,004h,000h,082h,03eh,03dh,005h,000h	; 9bce  .....5.`....>=..
	defb 084h,042h,041h,040h,03fh,003h,000h,094h,042h,046h,045h,044h,043h,000h,000h,042h	; 9bde  .BA@?...BFEDC..B
	defb 046h,04ah,049h,048h,047h,000h,000h,04fh,04eh,04dh,04ch,04bh,003h,000h,084h,053h	; 9bee  FJIHG..ONMLK...S
	defb 052h,051h,050h,004h,000h,083h,056h,055h,054h,00ch,000h,000h,084h,000h,000h,023h	; 9bfe  RQP...VUT......#
	defb 024h,005h,000h,080h,004h,025h,004h,000h,080h,004h,029h,081h,028h,003h,000h,080h	; 9c0e  $....%....).(...
	defb 004h,02dh,082h,02ch,028h,003h,000h,080h,005h,031h,004h,000h,080h,004h,036h,005h	; 9c1e  .-.,(....1....6.
	defb 000h,080h,003h,03ah,009h,000h,000h,002h,000h,080h,004h,001h,004h,000h,080h,004h	; 9c2e  ...:............
	defb 005h,004h,000h,080h,004h,009h,004h,000h,080h,004h,00dh,004h,000h,080h,004h,011h	; 9c3e  ................
	defb 004h,000h,080h,004h,015h,004h,000h,080h,004h,019h,004h,000h,080h,004h,01dh,002h	; 9c4e  ................
	defb 000h,000h,086h,000h,000h,001h,002h,021h,004h,004h,000h,084h,005h,006h,022h,008h	; 9c5e  .......!......".
	defb 004h,000h,080h,004h,009h,004h,000h,080h,004h,00dh,004h,000h,080h,004h,011h,004h	; 9c6e  ................
	defb 000h,080h,004h,015h,004h,000h,080h,004h,019h,004h,000h,080h,004h,01dh,002h,000h	; 9c7e  ................
	defb 000h	; 9c8e

; ----------------------------------------------------------------------
; DATOS texto_9C8F: texto: x, y y las letras hasta 0xFF; lo usa 0x994E (7
;   bytes)
;   0x9c8f..0x9c96  (7 bytes)
DATA_texto_9C8F:
	defb 0d0h,081h,00dh,014h,032h,0d4h,0ffh	; 9c8f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c96..0x9c9d  (7 bytes)
DATA_9C96:
	defb 020h,044h,004h,0a0h,078h,0c4h,080h	; 9c96

; ----------------------------------------------------------------------
; DATOS casillas_9C9D: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x99B4 (4 bytes)
;   0x9c9d..0x9ca1  (4 bytes)
DATA_casillas_9C9D:
	defb 080h,040h,001h,000h	; 9c9d

; ======================================================================
; CODIGO 0x9ca1..0x9cc2  (33 bytes)
; ======================================================================


L_9CA1:
	ld a,(09223h)		;9ca1
	cp 007h		;9ca4
	ret z			;9ca6
	ld hl,09cc2h		;9ca7
	add a,a			;9caa
	call 08221h		;9cab
	ld c,(hl)			;9cae
	inc hl			;9caf
	ld b,(hl)			;9cb0
	ld de,0c435h		;9cb1
	ld hl,00500h		;9cb4
	call 08215h		;9cb7
	jr c,L_9CA1		;9cba
	ld a,0ffh		;9cbc
	ld (0e0fdh),a		;9cbe
	ret			;9cc1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9cc2..0x9cd7  (21 bytes)
DATA_9CC2:
	defb 0e6h,003h,0e1h,003h,0d7h,003h,0d2h,003h,0dch,003h,0cdh,003h,0ebh,003h,0b7h,0c2h	; 9cc2  ................
	defb 097h,09dh,03ah,08fh,09ch	; 9cd2

; ======================================================================
; CODIGO 0x9cd7..0x9d7a  (163 bytes)
; ======================================================================


L_9CD7:
	ld de,0de00h		;9cd7
	ld bc,003b5h		;9cda
	xor a			;9cdd
	ld (09cd0h),de		;9cde
	ld (09cd2h),bc		;9ce2
	ld (09cd4h),a		;9ce6
L_9CE9:
	ld b,002h		;9ce9
L_9CEB:
	ld hl,0b000h		;9ceb
	ld (09cd5h),hl		;9cee
	push bc			;9cf1
	call L_9D07		;9cf2
	call L_9D1C		;9cf5
	ld hl,(09cd2h)		;9cf8
	ld a,006h		;9cfb
	call 08221h		;9cfd
	ld (09cd2h),hl		;9d00
	pop bc			;9d03
	djnz L_9CEB		;9d04
	ret			;9d06
L_9D07:
	ld bc,(09cd2h)		;9d07
	ld de,0b000h		;9d0b
	ld hl,00600h		;9d0e
	call 08215h		;9d11
	jr c,L_9D07		;9d14
	ld a,0ffh		;9d16
	ld (0e0fdh),a		;9d18
	ret			;9d1b
L_9D1C:
	ld b,004h		;9d1c
L_9D1E:
	push bc			;9d1e
	ld hl,09213h		;9d1f
	ld a,(09cd4h)		;9d22
	call 08221h		;9d25
	ld a,(hl)			;9d28
	ld c,a			;9d29
	call L_9D50		;9d2a
	ld a,c			;9d2d
	call L_9D64		;9d2e
	ld de,(09cd0h)		;9d31
	ld bc,00020h		;9d35
	ldir		;9d38
	ld (09cd0h),de		;9d3a
	ld de,00300h		;9d3e
	ld hl,(09cd5h)		;9d41
	add hl,de			;9d44
	ld (09cd5h),hl		;9d45
	ld hl,09cd4h		;9d48
	inc (hl)			;9d4b
	pop bc			;9d4c
	djnz L_9D1E		;9d4d
	ret			;9d4f
L_9D50:
	ld hl,00000h		;9d50
	and 00fh		;9d53
	ld b,a			;9d55
	ld de,00060h		;9d56
	jr z,L_9D5E		;9d59
L_9D5B:
	add hl,de			;9d5b
	djnz L_9D5B		;9d5c
L_9D5E:
	ld de,(09cd5h)		;9d5e
	add hl,de			;9d62
	ret			;9d63
L_9D64:
	push hl			;9d64
	ld hl,00000h		;9d65
	rlca			;9d68
	rlca			;9d69
	rlca			;9d6a
	rlca			;9d6b
	and 00fh		;9d6c
	ld b,a			;9d6e
	ld de,00020h		;9d6f
	jr z,L_9D77		;9d72
L_9D74:
	add hl,de			;9d74
	djnz L_9D74		;9d75
L_9D77:
	pop de			;9d77
	add hl,de			;9d78
	ret			;9d79

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d7a..0x9d82  (8 bytes)
DATA_9D7A:
	defb 032h,08dh,09ch,021h,088h,09ch,0beh,0d8h	; 9d7a  2..!....

; ======================================================================
; CODIGO 0x9d82..0x9dd9  (87 bytes)
; ======================================================================


L_9D82:
	call L_9D94		;9d82
	call L_9DA3		;9d85
	call L_9DC2		;9d88
	call L_9E8D		;9d8b
	call L_9EB4		;9d8e
	jp L_9EDF		;9d91
L_9D94:
	ld hl,09213h		;9d94
	ld de,09214h		;9d97
	ld a,0ffh		;9d9a
	ld (hl),a			;9d9c
	ld bc,0000fh		;9d9d
	ldir		;9da0
	ret			;9da2
L_9DA3:
	call L_9EF3		;9da3
	ld hl,0d1c3h		;9da6
	add a,(hl)			;9da9
	rlca			;9daa
	rlca			;9dab
	rlca			;9dac
	neg		;9dad
	ld d,a			;9daf
	push iy		;9db0
	pop bc			;9db2
	add a,b			;9db3
	add a,c			;9db4
	ld hl,04000h		;9db5
	call 08221h		;9db8
	ld a,(hl)			;9dbb
	and 007h		;9dbc
	ld (09223h),a		;9dbe
	ret			;9dc1
L_9DC2:
	ld hl,09dd9h		;9dc2
	ld a,(09223h)		;9dc5
	call 0826ch		;9dc8
	call L_9EF3		;9dcb
	and 001h		;9dce
	ld b,a			;9dd0
	ld c,009h		;9dd1
	call L_9EF8		;9dd3
	jp 08221h		;9dd6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9dd9..0x9e8d  (180 bytes)
DATA_9DD9:
	defb 0ebh,09dh,0fdh,09dh,00fh,09eh,021h,09eh,033h,09eh,045h,09eh,057h,09eh,069h,09eh	; 9dd9  ......!.3.E.W.i.
	defb 07bh,09eh,001h,005h,004h,003h,001h,001h,001h,000h,000h,003h,005h,005h,003h,000h	; 9de9  {...............
	defb 000h,000h,000h,000h,001h,003h,004h,003h,003h,001h,001h,000h,000h,002h,002h,004h	; 9df9  ................
	defb 004h,003h,001h,000h,000h,000h,001h,002h,003h,004h,003h,002h,001h,000h,000h,004h	; 9e09  ................
	defb 001h,002h,003h,002h,002h,001h,001h,000h,001h,001h,002h,003h,003h,002h,002h,001h	; 9e19  ................
	defb 001h,004h,000h,001h,002h,003h,002h,002h,001h,001h,003h,000h,000h,004h,000h,004h	; 9e29  ................
	defb 002h,001h,002h,004h,001h,001h,001h,001h,002h,002h,002h,002h,001h,001h,002h,002h	; 9e39  ................
	defb 002h,003h,002h,001h,002h,001h,001h,002h,002h,002h,003h,002h,001h,002h,001h,001h	; 9e49  ................
	defb 001h,001h,002h,003h,002h,003h,002h,001h,001h,001h,001h,002h,003h,002h,003h,002h	; 9e59  ................
	defb 001h,000h,000h,001h,001h,004h,004h,003h,002h,001h,000h,000h,001h,001h,004h,004h	; 9e69  ................
	defb 003h,002h,002h,000h,000h,001h,001h,002h,001h,004h,005h,005h,000h,000h,000h,000h	; 9e79  ................
	defb 001h,000h,003h,007h	; 9e89

; ======================================================================
; CODIGO 0x9e8d..0x9f07  (122 bytes)
; ======================================================================


L_9E8D:
	call L_9E92		;9e8d
	jr L_9EA0		;9e90
L_9E92:
	ld c,(hl)			;9e92
	inc hl			;9e93
	ld b,008h		;9e94
	ld de,09d7ah		;9e96
L_9E99:
	ld a,(hl)			;9e99
	ld (de),a			;9e9a
	inc hl			;9e9b
	inc de			;9e9c
	djnz L_9E99		;9e9d
	ret			;9e9f
L_9EA0:
	ld b,c			;9ea0
	ld a,c			;9ea1
	and a			;9ea2
	jr z,L_9EB3		;9ea3
L_9EA5:
	ld hl,09d7ah		;9ea5
	call L_9EF3		;9ea8
	and 007h		;9eab
	call 08221h		;9ead
	inc (hl)			;9eb0
	djnz L_9EA5		;9eb1
L_9EB3:
	ret			;9eb3
L_9EB4:
	ld hl,09d7ah		;9eb4
	ld b,008h		;9eb7
	ld c,000h		;9eb9
L_9EBB:
	push bc			;9ebb
	ld a,(hl)			;9ebc
	and a			;9ebd
	jr z,L_9EC3		;9ebe
	call L_9EC9		;9ec0
L_9EC3:
	inc hl			;9ec3
	pop bc			;9ec4
	inc c			;9ec5
	djnz L_9EBB		;9ec6
	ret			;9ec8
L_9EC9:
	ld b,a			;9ec9
L_9ECA:
	call L_9EF3		;9eca
	and 00fh		;9ecd
	ld de,09213h		;9ecf
	call 08206h		;9ed2
	ld a,(de)			;9ed5
	cp 0ffh		;9ed6
	jr nz,L_9ECA		;9ed8
	ld a,c			;9eda
	ld (de),a			;9edb
	djnz L_9ECA		;9edc
	ret			;9ede
L_9EDF:
	ld hl,09213h		;9edf
	ld b,010h		;9ee2
L_9EE4:
	call L_9EF3		;9ee4
	and 030h		;9ee7
	cp 030h		;9ee9
	jr z,L_9EE4		;9eeb
	or (hl)			;9eed
	ld (hl),a			;9eee
	inc hl			;9eef
	djnz L_9EE4		;9ef0
	ret			;9ef2
L_9EF3:
	ld a,r		;9ef3
	sra a		;9ef5
	ret			;9ef7
L_9EF8:
	xor a			;9ef8
L_9EF9:
	inc c			;9ef9
	dec c			;9efa
	jr z,L_9F06		;9efb
	srl c		;9efd
	jr nc,L_9F02		;9eff
	add a,b			;9f01
L_9F02:
	sla b		;9f02
	jr L_9EF9		;9f04
L_9F06:
	ret			;9f06

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f07..0x9f0b  (4 bytes)
DATA_9F07:
	defb 09fh,0c1h,0e1h,04fh	; 9f07

; ======================================================================
; CODIGO 0x9f0b..0x9f2d  (34 bytes)
; ======================================================================


L_9F0B:
	call L_A025		;9f0b
	call L_9F16		;9f0e
	call 08361h		;9f11
	jr $+98		;9f14
L_9F16:
	ld hl,09f2dh		;9f16
	ld de,09f07h		;9f19
	ld bc,00004h		;9f1c
	ldir		;9f1f
L_9F21:
	ld hl,09f31h		;9f21
	ld de,0d2d0h		;9f24
	ld bc,00008h		;9f27
	ldir		;9f2a
	ret			;9f2c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f2d..0x9f39  (12 bytes)
DATA_9F2D:
	defb 000h,000h,028h,0e0h,0e0h,000h,0e0h,009h,0e0h,000h,0e4h,00eh	; 9f2d  ..(.........

; ======================================================================
; CODIGO 0x9f39..0x9f9d  (100 bytes)
; ======================================================================


L_9F39:
	ld a,(0d1c3h)		;9f39
	and 003h		;9f3c
	jr nz,L_9F44		;9f3e
	call L_9F56		;9f40
	ret c			;9f43
L_9F44:
	call L_9F49		;9f44
	jr L_9F76		;9f47
L_9F49:
	ld a,(0d1c3h)		;9f49
	and 001h		;9f4c
	ret nz			;9f4e
	ld hl,09f07h		;9f4f
	ld a,(hl)			;9f52
	cpl			;9f53
	ld (hl),a			;9f54
	ret			;9f55
L_9F56:
	ld hl,09f08h		;9f56
	ld a,(hl)			;9f59
	ld de,09f9dh		;9f5a
	call 08206h		;9f5d
	ld a,(de)			;9f60
	or a			;9f61
	jr z,L_9F74		;9f62
	inc (hl)			;9f64
	push hl			;9f65
	call L_A002		;9f66
	ex de,hl			;9f69
	pop hl			;9f6a
	inc hl			;9f6b
	ld a,e			;9f6c
	add a,(hl)			;9f6d
	ld (hl),a			;9f6e
	inc hl			;9f6f
	ld a,d			;9f70
	add a,(hl)			;9f71
	ld (hl),a			;9f72
	scf			;9f73
L_9F74:
	ccf			;9f74
	ret			;9f75
L_9F76:
	ld ix,0d2d0h		;9f76
	ld a,(09f07h)		;9f7a
	ld b,0e0h		;9f7d
	and a			;9f7f
	jr nz,L_9F84		;9f80
	ld b,0e8h		;9f82
L_9F84:
	ld (ix+002h),b		;9f84
	ld a,004h		;9f87
	add a,b			;9f89
	ld (ix+006h),a		;9f8a
	ld hl,(09f09h)		;9f8d
	ld (ix+000h),l		;9f90
	ld (ix+004h),l		;9f93
	ld (ix+001h),h		;9f96
	ld (ix+005h),h		;9f99
	ret			;9f9c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f9d..0xa002  (101 bytes)
DATA_9F9D:
	defb 0a1h,092h,0a1h,092h,0a1h,0a2h,0a1h,0a0h,0a0h,0a9h,0a9h,09ah,09ah,00ah,00ah,01ah	; 9f9d  ................
	defb 01ah,01ah,02ah,029h,029h,029h,020h,021h,021h,012h,002h,002h,012h,002h,002h,092h	; 9fad  ..*))) !!.......
	defb 092h,092h,091h,0a1h,0a1h,0a1h,0a2h,0a1h,091h,0a1h,0a1h,0a9h,0a9h,0aah,0aah,0aah	; 9fbd  ................
	defb 00ah,00ah,00ah,00ah,00ah,01ah,01ah,01ah,02ah,01ah,029h,02ah,020h,029h,029h,020h	; 9fcd  ........*.)* ))
	defb 020h,012h,092h,0a1h,0a1h,0a1h,0a1h,0a0h,0a0h,0a9h,0a9h,0a9h,0a9h,0a1h,0a0h,0a2h	; 9fdd   ...............
	defb 0a2h,092h,002h,002h,002h,012h,021h,022h,002h,092h,091h,0a1h,0a1h,0a1h,0a1h,0a0h	; 9fed  ......!"........
	defb 0a1h,0a1h,0a1h,0a2h,000h	; 9ffd

; ======================================================================
; CODIGO 0xa002..0xa02e  (44 bytes)
; ======================================================================


L_A002:
	ld b,a			;a002
	and 007h		;a003
	ld l,a			;a005
	ld a,b			;a006
	and 008h		;a007
	ld a,l			;a009
	jr z,L_A00E		;a00a
	neg		;a00c
L_A00E:
	ld l,a			;a00e
	ld a,b			;a00f
	and 070h		;a010
	srl a		;a012
	srl a		;a014
	srl a		;a016
	srl a		;a018
	ld h,a			;a01a
	ld a,b			;a01b
	and 080h		;a01c
	ld a,h			;a01e
	jr z,L_A023		;a01f
	neg		;a021
L_A023:
	ld h,a			;a023
	ret			;a024
L_A025:
	ld de,0a02eh		;a025
	ld hl,0ff00h		;a028
	jp 0821bh		;a02b

; ----------------------------------------------------------------------
; DATOS vram_A02E: RLE a la VRAM hasta el 0; lo usa 0xA02B (54 bytes)
;   0xa02e..0xa064  (54 bytes)
DATA_vram_A02E:
	defb 006h,000h,082h,002h,001h,010h,000h,083h,0c0h,0e0h,040h,00ah,000h,002h,001h,083h	; a02e  ..........@.....
	defb 006h,003h,001h,00ch,000h,082h,080h,0c0h,00eh,000h,082h,002h,001h,010h,000h,002h	; a03e  ................
	defb 0e0h,081h,0c0h,00ah,000h,002h,001h,084h,006h,00fh,00fh,006h,009h,000h,084h,0c0h	; a04e  ................
	defb 0e0h,0e0h,0c0h,008h,000h,000h	; a05e

; ======================================================================
; CODIGO 0xa064..0xa244  (480 bytes)
; ======================================================================


L_A064:
	ld (0dd00h),hl		;a064
	ld (0dd02h),de		;a067
	ld a,h			;a06b
	add a,008h		;a06c
	ld h,a			;a06e
	ld a,(0dd03h)		;a06f
	sub 010h		;a072
	ld b,a			;a074
	ld a,(0dd02h)		;a075
	ld c,a			;a078
	xor a			;a079
	ld d,000h		;a07a
	call 0829fh		;a07c
	ld hl,(0dd00h)		;a07f
	ld a,l			;a082
	add a,008h		;a083
	ld l,a			;a085
	ld a,(0dd02h)		;a086
	sub 010h		;a089
	ld c,a			;a08b
	ld a,(0dd03h)		;a08c
	ld b,a			;a08f
	xor a			;a090
	ld d,000h		;a091
	call 0829fh		;a093
	ld de,(0dd00h)		;a096
	ld a,0c9h		;a09a
	call L_A180		;a09c
	call 082a8h		;a09f
	ex de,hl			;a0a2
	ld a,(0dd03h)		;a0a3
	sub 010h		;a0a6
	ld b,a			;a0a8
	ld c,00eh		;a0a9
	call L_A127		;a0ab
	ld de,(0dd00h)		;a0ae
	ld a,(0dd03h)		;a0b2
	sub 008h		;a0b5
	add a,d			;a0b7
	ld d,a			;a0b8
	ld a,0cah		;a0b9
	call L_A180		;a0bb
	ld hl,(0dd00h)		;a0be
	ld a,008h		;a0c1
	add a,l			;a0c3
	ld l,a			;a0c4
	ld a,(0dd02h)		;a0c5
	sub 010h		;a0c8
	ld b,a			;a0ca
	ld c,00eh		;a0cb
	call L_A153		;a0cd
	ld de,(0dd00h)		;a0d0
	ld a,(0dd02h)		;a0d4
	sub 008h		;a0d7
	add a,e			;a0d9
	ld e,a			;a0da
	ld a,0cbh		;a0db
	call L_A180		;a0dd
	ld hl,(0dd00h)		;a0e0
	ld a,(0dd03h)		;a0e3
	dec a			;a0e6
	add a,h			;a0e7
	ld h,a			;a0e8
	ld a,008h		;a0e9
	add a,l			;a0eb
	ld l,a			;a0ec
	ld a,(0dd02h)		;a0ed
	sub 010h		;a0f0
	ld b,a			;a0f2
	ld c,00eh		;a0f3
	call L_A153		;a0f5
	ld de,(0dd00h)		;a0f8
	ld a,(0dd02h)		;a0fc
	sub 008h		;a0ff
	add a,e			;a101
	ld e,a			;a102
	ld a,(0dd03h)		;a103
	sub 008h		;a106
	add a,d			;a108
	ld d,a			;a109
	ld a,0cch		;a10a
	call L_A180		;a10c
	ld hl,(0dd00h)		;a10f
	ld a,008h		;a112
	add a,h			;a114
	ld h,a			;a115
	ld a,(0dd02h)		;a116
	dec a			;a119
	add a,l			;a11a
	ld l,a			;a11b
	ld a,(0dd03h)		;a11c
	sub 010h		;a11f
	ld b,a			;a121
	ld c,00eh		;a122
	jp L_A127		;a124
L_A127:
	ld a,024h		;a127
	ld (0d226h),a		;a129
	call 08287h		;a12c
	out (c),h		;a12f
	xor a			;a131
	out (c),a		;a132
	out (c),l		;a134
	out (c),a		;a136
	ld hl,(0d227h)		;a138
	out (c),h		;a13b
	xor a			;a13d
	cp h			;a13e
	jr nz,L_A142		;a13f
	inc a			;a141
L_A142:
	out (c),a		;a142
	xor a			;a144
	out (c),a		;a145
	out (c),a		;a147
	out (c),l		;a149
	out (c),a		;a14b
	ld a,070h		;a14d
	out (c),a		;a14f
	ei			;a151
	ret			;a152
L_A153:
	ld a,024h		;a153
	ld (0d226h),a		;a155
	call 08287h		;a158
	out (c),h		;a15b
	xor a			;a15d
	out (c),a		;a15e
	out (c),l		;a160
	out (c),a		;a162
	ld hl,(0d227h)		;a164
	out (c),h		;a167
	xor a			;a169
	cp h			;a16a
	jr nz,L_A16E		;a16b
	inc a			;a16d
L_A16E:
	out (c),a		;a16e
	xor a			;a170
	out (c),a		;a171
	out (c),a		;a173
	out (c),l		;a175
	inc a			;a177
	out (c),a		;a178
	ld a,070h		;a17a
	out (c),a		;a17c
	ei			;a17e
	ret			;a17f
L_A180:
	push bc			;a180
	push hl			;a181
	push de			;a182
	call 08281h		;a183
	ld a,l			;a186
	add a,080h		;a187
	ld l,a			;a189
	ld bc,00808h		;a18a
	ld a,048h		;a18d
	call 0820ch		;a18f
	pop de			;a192
	pop hl			;a193
	pop bc			;a194
	ret			;a195
L_A196:
	ld (0a3d2h),a		;a196
	call L_A247		;a199
	ld (0d200h),de		;a19c
	call L_A247		;a1a0
	ld (0d206h),de		;a1a3
	call L_A247		;a1a7
	ld (0d202h),de		;a1aa
	ld a,(hl)			;a1ae
	inc hl			;a1af
	ld (0d232h),a		;a1b0
	ld a,(hl)			;a1b3
	inc hl			;a1b4
	ld (0d233h),a		;a1b5
	call L_A202		;a1b8
	ld hl,(0d206h)		;a1bb
	call 08275h		;a1be
	ld a,0ffh		;a1c1
	ld (0d20ch),a		;a1c3
	inc a			;a1c6
	ld (0a3d1h),a		;a1c7
	ld c,001h		;a1ca
	ld hl,(0d202h)		;a1cc
	ld a,(hl)			;a1cf
	ld b,a			;a1d0
	ld hl,0d233h		;a1d1
	ld a,(hl)			;a1d4
	or a			;a1d5
	jr z,L_A1F6		;a1d6
	ld a,b			;a1d8
L_A1D9:
	sub (hl)			;a1d9
	jr c,L_A1DF		;a1da
	inc c			;a1dc
	jr L_A1D9		;a1dd
L_A1DF:
	add a,(hl)			;a1df
	inc a			;a1e0
	ld (0d205h),a		;a1e1
	ld a,c			;a1e4
L_A1E5:
	ld (0d204h),a		;a1e5
	ld a,(0d205h)		;a1e8
	ld hl,0d233h		;a1eb
	cp (hl)			;a1ee
	ret nz			;a1ef
	ld a,001h		;a1f0
	ld (0a3d1h),a		;a1f2
	ret			;a1f5
L_A1F6:
	ld a,001h		;a1f6
	ld (0d205h),a		;a1f8
	ld hl,(0d202h)		;a1fb
	ld a,(hl)			;a1fe
	inc a			;a1ff
	jr L_A1E5		;a200
L_A202:
	call 082bdh		;a202
	ld hl,(0d202h)		;a205
	ld a,(hl)			;a208
	ld hl,(0d200h)		;a209
	ld c,a			;a20c
	add a,a			;a20d
	add a,c			;a20e
	call 08221h		;a20f
	ld de,0d20dh		;a212
	ld bc,00003h		;a215
	ldir		;a218
	ld a,(0d20fh)		;a21a
	cp 001h		;a21d
	ret z			;a21f
	ld hl,0a377h		;a220
	call 0826ch		;a223
	ld b,(hl)			;a226
	inc hl			;a227
	ld de,0d280h		;a228
L_A22B:
	ld a,(0d20dh)		;a22b
	add a,(hl)			;a22e
	ld (de),a			;a22f
	inc hl			;a230
	inc de			;a231
	ld a,(0d20eh)		;a232
	add a,(hl)			;a235
	ld (de),a			;a236
	inc hl			;a237
	inc de			;a238
	ld a,(hl)			;a239
	ld (de),a			;a23a
	inc hl			;a23b
	inc de			;a23c
	ld a,(hl)			;a23d
	ld (de),a			;a23e
	inc hl			;a23f
	inc de			;a240
	djnz L_A22B		;a241
	ret			;a243

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa244..0xa247  (3 bytes)
DATA_A244:
	defb 0cdh,01eh,082h	; a244

; ======================================================================
; CODIGO 0xa247..0xa377  (304 bytes)
; ======================================================================


L_A247:
	ld e,(hl)			;a247
	inc hl			;a248
	ld d,(hl)			;a249
	inc hl			;a24a
	ret			;a24b
L_A24C:
	ld a,(0d1c8h)		;a24c
	cp 010h		;a24f
	jp z,L_A360		;a251
	ld c,a			;a254
	ld a,(0d233h)		;a255
	and a			;a258
	push bc			;a259
	call nz,L_A311		;a25a
	pop bc			;a25d
	ld a,(0d204h)		;a25e
	and a			;a261
	jr z,L_A29A		;a262
	ld a,c			;a264
	cp 001h		;a265
	jp z,L_A2ED		;a267
	cp 002h		;a26a
	jr nz,L_A29A		;a26c
	ld a,(0d204h)		;a26e
	inc a			;a271
	ld hl,0d232h		;a272
	ld e,(hl)			;a275
	inc e			;a276
	cp e			;a277
	ret nc			;a278
	ld (0d204h),a		;a279
	ld e,a			;a27c
	ld a,(0a3d1h)		;a27d
	or a			;a280
	jr z,L_A291		;a281
	ld a,e			;a283
	cp (hl)			;a284
	jr nz,L_A291		;a285
	ld a,(0d233h)		;a287
	ld hl,0a3d2h		;a28a
	sub (hl)			;a28d
	ld (0d205h),a		;a28e
L_A291:
	call L_A29C		;a291
	call L_A2AD		;a294
	call L_A202		;a297
L_A29A:
	xor a			;a29a
	ret			;a29b
L_A29C:
	ld a,(0d1c0h)		;a29c
	cp 004h		;a29f
	jr nz,L_A2AA		;a2a1
	ld a,(0d1d7h)		;a2a3
	dec a			;a2a6
	jp z,08370h		;a2a7
L_A2AA:
	jp 082eeh		;a2aa
L_A2AD:
	ld a,(0d233h)		;a2ad
	or a			;a2b0
	jr z,L_A2DE		;a2b1
	ld a,(0d232h)		;a2b3
	or a			;a2b6
	jr z,L_A2E4		;a2b7
	ld a,(0d204h)		;a2b9
	dec a			;a2bc
	jr z,L_A2CD		;a2bd
	ld b,a			;a2bf
	ld a,(0d233h)		;a2c0
	or a			;a2c3
	jr z,L_A2EA		;a2c4
	ld hl,0d233h		;a2c6
	xor a			;a2c9
L_A2CA:
	add a,(hl)			;a2ca
	djnz L_A2CA		;a2cb
L_A2CD:
	ld b,a			;a2cd
	ld a,(0d233h)		;a2ce
	or a			;a2d1
	jr z,L_A2D7		;a2d2
	ld a,(0d205h)		;a2d4
L_A2D7:
	dec a			;a2d7
	add a,b			;a2d8
L_A2D9:
	ld hl,(0d202h)		;a2d9
	ld (hl),a			;a2dc
	ret			;a2dd
L_A2DE:
	ld a,(0d204h)		;a2de
	dec a			;a2e1
	jr L_A2D9		;a2e2
L_A2E4:
	ld a,(0d205h)		;a2e4
	dec a			;a2e7
	jr L_A2D9		;a2e8
L_A2EA:
	ld a,b			;a2ea
	jr L_A2D9		;a2eb
L_A2ED:
	ld a,(0d204h)		;a2ed
	dec a			;a2f0
	ret z			;a2f1
	ld (0d204h),a		;a2f2
	ld a,(0a3d1h)		;a2f5
	or a			;a2f8
	jr z,L_A291		;a2f9
	ld a,(0d233h)		;a2fb
	ld (0d205h),a		;a2fe
	jr L_A291		;a301
L_A303:
	xor a			;a303
	ld (0a3d1h),a		;a304
	ld a,(0d205h)		;a307
	dec a			;a30a
	ret z			;a30b
	ld (0d205h),a		;a30c
	jr L_A291		;a30f
L_A311:
	ld a,c			;a311
	cp 004h		;a312
	jr z,L_A303		;a314
	cp 008h		;a316
	jp nz,L_A29A		;a318
	ld a,(0d205h)		;a31b
	inc a			;a31e
	ld b,a			;a31f
	ld a,(0d204h)		;a320
	ld hl,0d232h		;a323
	cp (hl)			;a326
	ld a,(0d233h)		;a327
	call z,L_A358		;a32a
	ld e,a			;a32d
	ld a,b			;a32e
	cp e			;a32f
	jr z,L_A34F		;a330
	inc e			;a332
	cp e			;a333
	jr nc,L_A340		;a334
	ld (0d205h),a		;a336
	xor a			;a339
	ld (0a3d1h),a		;a33a
	jp L_A291		;a33d
L_A340:
	ld a,(0d204h)		;a340
	ld hl,0d232h		;a343
	cp (hl)			;a346
	ret z			;a347
	ld a,001h		;a348
	ld (0a3d1h),a		;a34a
	or a			;a34d
	ret			;a34e
L_A34F:
	ld (0d205h),a		;a34f
	call L_A340		;a352
	jp L_A291		;a355
L_A358:
	push af			;a358
	ld a,(0a3d2h)		;a359
	ld e,a			;a35c
	pop af			;a35d
	sub e			;a35e
	ret			;a35f
L_A360:
	call L_A36B		;a360
	jp z,L_A29A		;a363
	call 082f3h		;a366
	scf			;a369
	ret			;a36a
L_A36B:
	ld a,(0d1d6h)		;a36b
	cp 003h		;a36e
	ret nz			;a370
	ld a,(0d1dah)		;a371
	cp 0feh		;a374
	ret			;a376

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa377..0xa3d3  (92 bytes)
DATA_A377:
	defb 08bh,0a3h,090h,0a3h,095h,0a3h,09ah,0a3h,0a3h,0a3h,0a8h,0a3h,0adh,0a3h,0b6h,0a3h	; a377  ................
	defb 0bfh,0a3h,0c8h,0a3h,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; a387  ................
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; a397  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; a3a7  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; a3b7  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,006h,00ah	; a3c7  ............

; ======================================================================
; CODIGO 0xa3d3..0xa3dc  (9 bytes)
; ======================================================================


L_A3D3:
	ld de,0a3dch		;a3d3
	ld hl,0fce0h		;a3d6
	jp 0821bh		;a3d9

; ----------------------------------------------------------------------
; DATOS vram_A3DC: RLE a la VRAM hasta el 0; lo usa 0xA3D9 (327 bytes)
;   0xa3dc..0xa523  (327 bytes)
DATA_vram_A3DC:
	defb 084h,000h,00fh,00fh,001h,003h,000h,086h,001h,08fh,01fh,070h,080h,003h,004h,000h	; a3dc  ...........p....
	defb 002h,0c0h,081h,0e0h,005h,0f0h,084h,070h,060h,0e0h,0c0h,00ch,000h,085h,080h,00fh	; a3ec  .......p`.......
	defb 071h,000h,003h,004h,000h,082h,020h,010h,003h,008h,002h,00ch,085h,08ch,098h,01eh	; a3fc  q..... .........
	defb 03ch,0f0h,004h,000h,086h,010h,03eh,03fh,017h,017h,00eh,003h,000h,082h,00eh,00ch	; a40c  <.....>?........
	defb 018h,000h,084h,020h,060h,070h,070h,003h,000h,083h,060h,010h,03fh,00fh,000h,096h	; a41c  ... `pp...`.?...
	defb 0c0h,000h,00fh,010h,020h,040h,040h,048h,088h,080h,000h,060h,080h,000h,090h,06ch	; a42c  .... @@H...`...l
	defb 040h,03fh,0c0h,020h,010h,008h,003h,004h,003h,002h,093h,006h,001h,002h,00ch,030h	; a43c  @?. ...........0
	defb 0e0h,000h,000h,00fh,03fh,03fh,07fh,03eh,000h,080h,083h,01fh,0ffh,070h,005h,000h	; a44c  ....??.>.....p..
	defb 08ah,080h,0e0h,0f0h,0fah,0feh,07ch,0fch,0f8h,0f0h,080h,00ah,000h,083h,001h,003h	; a45c  ......|.........
	defb 001h,003h,000h,081h,00fh,00ah,000h,086h,082h,002h,006h,00eh,07eh,0fch,009h,000h	; a46c  ............~...
	defb 084h,040h,07ch,02eh,02ch,01eh,000h,002h,040h,084h,060h,000h,000h,018h,00fh,000h	; a47c  .@|.,...@.`.....
	defb 088h,078h,0f0h,000h,000h,00fh,030h,040h,040h,003h,080h,002h,010h,08ch,080h,000h	; a48c  .x....0@@.......
	defb 080h,067h,019h,000h,000h,080h,060h,010h,00ah,005h,006h,001h,084h,002h,084h,008h	; a49c  .g....`.........
	defb 0f0h,004h,000h,08ah,008h,018h,030h,021h,007h,06eh,000h,000h,00fh,009h,004h,000h	; a4ac  ......0!.n......
	defb 087h,004h,000h,000h,084h,078h,0f8h,0d0h,003h,000h,081h,0c0h,007h,000h,002h,004h	; a4bc  .....x..........
	defb 085h,00eh,018h,010h,001h,00fh,008h,000h,003h,002h,002h,006h,086h,02ch,0f8h,0f8h	; a4cc  .............,..
	defb 038h,038h,010h,013h,000h,085h,070h,048h,034h,03ch,018h,00bh,000h,081h,001h,004h	; a4dc  88....pH4<......
	defb 003h,004h,000h,08ch,060h,000h,070h,026h,003h,000h,000h,080h,080h,0c0h,0c0h,060h	; a4ec  ....`.p&.......`
	defb 007h,000h,002h,0e0h,0a1h,000h,001h,002h,004h,00ch,010h,020h,041h,046h,0e8h,090h	; a4fc  ........... AF..
	defb 090h,0ffh,080h,050h,02ch,003h,0f0h,00ch,032h,009h,001h,001h,081h,001h,002h,004h	; a50c  ...P,...2.......
	defb 004h,0c4h,004h,008h,010h,0e0h,000h	; a51c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa523..0xa600  (221 bytes)
DATA_A523:
	defb 007h,009h,008h,009h,00bh,009h,00ch,009h,00dh,009h,00eh,009h,00fh,009h,011h,009h	; a523  ................
	defb 013h,009h,014h,009h,015h,009h,016h,009h,019h,009h,01bh,009h,01dh,009h,000h,00ah	; a533  ................
	defb 002h,00ah,004h,00ah,006h,00ah,008h,00ah,00ah,00ah,00ch,00ah,00eh,00ah,010h,00ah	; a543  ................
	defb 012h,00ah,014h,00ah,016h,00ah,018h,00ah,01ah,00ah,01ch,00ah,000h,00bh,002h,00bh	; a553  ................
	defb 005h,00bh,007h,00bh,009h,00bh,00bh,00bh,00eh,00bh,010h,00bh,012h,00bh,014h,00bh	; a563  ................
	defb 017h,00bh,019h,00bh,01bh,00bh,000h,000h,002h,000h,004h,000h,006h,000h,009h,000h	; a573  ................
	defb 00bh,000h,00dh,000h,010h,000h,012h,000h,015h,000h,017h,000h,019h,000h,01bh,000h	; a583  ................
	defb 01dh,000h,000h,001h,003h,001h,006h,001h,008h,001h,00ah,001h,00ch,001h,00eh,001h	; a593  ................
	defb 010h,001h,012h,001h,014h,001h,016h,001h,017h,001h,019h,001h,01bh,001h,01dh,001h	; a5a3  ................
	defb 000h,002h,001h,002h,003h,002h,005h,002h,007h,002h,009h,002h,00ah,002h,00ch,002h	; a5b3  ................
	defb 00eh,002h,010h,002h,011h,002h,012h,002h,013h,002h,015h,002h,016h,002h,017h,002h	; a5c3  ................
	defb 019h,002h,01ah,002h,01ch,002h,01dh,002h,000h,003h,002h,003h,003h,003h,004h,003h	; a5d3  ................
	defb 006h,003h,007h,003h,009h,003h,00ah,003h,00bh,003h,00ch,003h,00eh,003h,01fh,01dh	; a5e3  ................
	defb 01fh,01eh,01fh,01eh,01fh,01fh,01eh,01fh,01eh,01fh,023h,0feh,0ffh	; a5f3  ..........#..
