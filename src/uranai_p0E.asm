; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p0E (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_9A2B:	equ 0x09a2b

; ======================================================================
; CODIGO 0x9800..0x980c  (12 bytes)
; ======================================================================


L_9800:
	jp L_9823		;9800
L_9803:
	jp L_98CD		;9803
L_9806:
	jp 09821h		;9806
L_9809:
	jp L_9856		;9809

; ----------------------------------------------------------------------
; DATOS cabecera_p0C: seis jp copiados tal cual de la cabecera de la p0C (alli
;   0x985C, 0x9F10, 0x9C5D, 0x983F, 0x9913 y 0x9950 son rutinas); en la p0E
;   caen en mitad de una instruccion o en las casillas de 0x9AB1, asi que no
;   llevan a nada (18 bytes)
;   0x980c..0x981e  (18 bytes)
DATA_cabecera_p0C:
	defb 0c3h,05ch,098h	; 980c
	defb 0c3h,010h,09fh	; 980f
	defb 0c3h,05dh,09ch	; 9812
	defb 0c3h,03fh,098h	; 9815
	defb 0c3h,013h,099h	; 9818
	defb 0c3h,050h,099h	; 981b

; ======================================================================
; CODIGO 0x981e..0x9821  (3 bytes)
; ======================================================================


L_981E:
	jp L_9987		;981e

; ----------------------------------------------------------------------
; DATOS nop_9821: dos bytes que se cambian solos: empiezan valiendo cd 31 y la
;   parte los pone a 0 (0x9827, 0x982A); desde entonces son nop ; nop y 0x9806
;   (jp 0x9821) sigue en 0x9823 (2 bytes)
;   0x9821..0x9823  (2 bytes)
DATA_nop_9821:
	defb 0cdh,031h	; 9821

; ======================================================================
; CODIGO 0x9823..0x98da  (183 bytes)
; ======================================================================


L_9823:
	call L_985E		;9823
	xor a			;9826
	ld (09821h),a		;9827
	ld (09822h),a		;982a
	call 09203h		;982d
	ld a,0f0h		;9830
	call 09206h		;9832
	call 08212h		;9835
	call 0826fh		;9838
	call 08260h		;983b
	call 08251h		;983e
	call L_9867		;9841
	ld hl,09ab1h		;9844
	ld de,00000h		;9847
	ld c,020h		;984a
	ld a,001h		;984c
	call 08218h		;984e
	ld a,001h		;9851
	call 09203h		;9853
L_9856:
	ld a,0d5h		;9856
	call 09206h		;9858
	jp L_986D		;985b
L_985E:
	ld de,09df0h		;985e
	ld hl,0fc00h		;9861
	jp 0821bh		;9864
L_9867:
	ld hl,09d6bh		;9867
	jp 082dbh		;986a
L_986D:
	call L_987F		;986d
	call L_989A		;9870
	ld hl,09d8bh		;9873
	ld de,09809h		;9876
	ld bc,00018h		;9879
	ldir		;987c
	ret			;987e
L_987F:
	ld hl,09806h		;987f
	ld de,09807h		;9882
	ld bc,0001ah		;9885
	ld (hl),000h		;9888
	ldir		;988a
	ld a,03ch		;988c
	ld (09807h),a		;988e
	ld hl,09fa3h		;9891
	call L_9A5B		;9894
	jp 08209h		;9897
L_989A:
	ld hl,0d280h		;989a
	ld de,00058h		;989d
	xor a			;98a0
L_98A1:
	ld b,008h		;98a1
	ex af,af'			;98a3
L_98A4:
	ld (hl),e			;98a4
	inc hl			;98a5
	ld (hl),d			;98a6
	inc hl			;98a7
	ld a,010h		;98a8
	ld (hl),a			;98aa
	inc hl			;98ab
	xor a			;98ac
	ld (hl),a			;98ad
	inc hl			;98ae
	djnz L_98A4		;98af
	ld a,010h		;98b1
	add a,e			;98b3
	ex af,af'			;98b4
	inc a			;98b5
	cp 002h		;98b6
	jr nz,L_98A1		;98b8
	ret			;98ba
L_98BB:
	ld b,a			;98bb
	call 0828ah		;98bc
	ld a,(00007h)		;98bf
	inc a			;98c2
	ld c,a			;98c3
	di			;98c4
	out (c),b		;98c5
	ld a,092h		;98c7
	out (c),a		;98c9
	ei			;98cb
	ret			;98cc
L_98CD:
	call L_9A7F		;98cd
	call L_98FC		;98d0
	ret c			;98d3
	ld a,(09806h)		;98d4
	call 0822dh		;98d7

; ----------------------------------------------------------------------
; DATOS saltos_98DA: 17 destinos del despachador (call 0x822D en 0x98D7) (34
;   bytes)
;   0x98da..0x98fc  (34 bytes)
DATA_saltos_98DA:
	defw 099e3h,099f4h,09a05h,09a39h,099e3h,099f4h,09a05h,09a39h	; 98da
	defw 099e3h,099f4h,09a05h,09a39h,099e3h,099f4h,09a05h,09a39h	; 98ea
	defw 09a4ah	; 98fa  -> L_9A4A

; ======================================================================
; CODIGO 0x98fc..0x9ab1  (437 bytes)
; ======================================================================


L_98FC:
	ld ix,09809h		;98fc
	ld b,004h		;9900
L_9902:
	push bc			;9902
	ld a,(ix+000h)		;9903
	cp 0ffh		;9906
	jr z,L_9930		;9908
	ld a,(ix+001h)		;990a
	cp 0ffh		;990d
	jr z,L_9930		;990f
	call L_993F		;9911
	jr nc,L_9930		;9914
	call L_9947		;9916
	inc (ix+002h)		;9919
	ld b,(ix+000h)		;991c
	ld c,010h		;991f
	call L_9988		;9921
	ld hl,0d2c0h		;9924
	call 08221h		;9927
	ld a,(ix+005h)		;992a
	call L_9997		;992d
L_9930:
	pop bc			;9930
	ld a,(ix+000h)		;9931
	ld de,00006h		;9934
	add ix,de		;9937
	djnz L_9902		;9939
	cp 0ffh		;993b
	ccf			;993d
	ret			;993e
L_993F:
	sub 001h		;993f
	jr c,L_9946		;9941
	ld (ix+001h),a		;9943
L_9946:
	ret			;9946
L_9947:
	ld hl,09da3h		;9947
	ld a,(ix+000h)		;994a
	and 003h		;994d
	jr z,L_9958		;994f
	xor 003h		;9951
	jr z,L_9958		;9953
	ld hl,09dcch		;9955
L_9958:
	ld a,(ix+002h)		;9958
	call 08221h		;995b
	ld a,(hl)			;995e
	and a			;995f
	jr z,L_9983		;9960
	call L_99C0		;9962
	ld a,(ix+000h)		;9965
	and 002h		;9968
	jr z,L_9970		;996a
	ld a,h			;996c
	neg		;996d
	ld h,a			;996f
L_9970:
	ld e,(ix+003h)		;9970
	ld d,(ix+004h)		;9973
	ld a,l			;9976
	add a,e			;9977
	ld e,a			;9978
	ld a,h			;9979
	add a,d			;997a
	ld d,a			;997b
	ld (ix+003h),e		;997c
	ld (ix+004h),d		;997f
	ret			;9982
L_9983:
	ld (ix+000h),0ffh		;9983
L_9987:
	ret			;9987
L_9988:
	xor a			;9988
L_9989:
	inc c			;9989
	dec c			;998a
	jr z,L_9996		;998b
	srl c		;998d
	jr nc,L_9992		;998f
	add a,b			;9991
L_9992:
	sla b		;9992
	jr L_9989		;9994
L_9996:
	ret			;9996
L_9997:
	push af			;9997
	ld a,010h		;9998
	add a,d			;999a
	ld b,a			;999b
	ld a,010h		;999c
	add a,e			;999e
	ld c,a			;999f
	pop af			;99a0
	push bc			;99a1
	push de			;99a2
	call L_99B4		;99a3
	ld d,b			;99a6
	call L_99B4		;99a7
	pop de			;99aa
	ld e,c			;99ab
	call L_99B4		;99ac
	pop de			;99af
	call L_99B4		;99b0
	ret			;99b3
L_99B4:
	ld (hl),e			;99b4
	inc hl			;99b5
	ld (hl),d			;99b6
	inc hl			;99b7
	ld (hl),a			;99b8
	inc hl			;99b9
	ld (hl),008h		;99ba
	inc hl			;99bc
	add a,004h		;99bd
	ret			;99bf
L_99C0:
	ld b,a			;99c0
	and 007h		;99c1
	ld l,a			;99c3
	ld a,b			;99c4
	and 008h		;99c5
	ld a,l			;99c7
	jr z,L_99CC		;99c8
	neg		;99ca
L_99CC:
	ld l,a			;99cc
	ld a,b			;99cd
	and 070h		;99ce
	srl a		;99d0
	srl a		;99d2
	srl a		;99d4
	srl a		;99d6
	ld h,a			;99d8
	ld a,b			;99d9
	and 080h		;99da
	ld a,h			;99dc
	jr z,L_99E1		;99dd
	neg		;99df
L_99E1:
	ld h,a			;99e1
	ret			;99e2
L_99E3:
	call L_9A65		;99e3
	ret nc			;99e6
	call 0837ah		;99e7
	ld hl,0a0c7h		;99ea
	call L_9A5B		;99ed
	ld a,050h		;99f0
	jr L_9A52		;99f2
L_99F4:
	call L_9A65		;99f4
	ret nc			;99f7
	ld hl,0a035h		;99f8
	call L_9A5B		;99fb
	call 08343h		;99fe
	ld a,00fh		;9a01
	jr L_9A52		;9a03
L_9A05:
	call L_9A16		;9a05
	ret nc			;9a08
	ld hl,0a0c7h		;9a09
	call L_9A5B		;9a0c
	call L_9A6D		;9a0f
	ld a,03ch		;9a12
	jr L_9A52		;9a14
L_9A16:
	ld a,(0d1c3h)		;9a16
	rra			;9a19
	ret nc			;9a1a
	ld hl,09807h		;9a1b
	ld a,(hl)			;9a1e
	sub 001h		;9a1f
	jr c,L_9A38		;9a21
	ld (hl),a			;9a23
	cp 007h		;9a24
	jr c,$+5		;9a26
	or 006h		;9a28
	res 3,a		;9a2a
	bit 0,a		;9a2c
	jr z,L_9A32		;9a2e
	add a,008h		;9a30
L_9A32:
	and 00eh		;9a32
	call L_98BB		;9a34
	xor a			;9a37
L_9A38:
	ret			;9a38
L_9A39:
	call L_9A65		;9a39
	call L_9A7E		;9a3c
	ret nc			;9a3f
	ld hl,09fa3h		;9a40
	call L_9A5B		;9a43
	ld a,03ch		;9a46
	jr L_9A52		;9a48
L_9A4A:
	ld hl,09fa3h		;9a4a
	call L_9A5B		;9a4d
	xor a			;9a50
	ret			;9a51
L_9A52:
	ld (09807h),a		;9a52
	ld hl,09806h		;9a55
	inc (hl)			;9a58
	xor a			;9a59
	ret			;9a5a
L_9A5B:
	ld de,09018h		;9a5b
	ld a,001h		;9a5e
	ld c,00bh		;9a60
	jp 08218h		;9a62
L_9A65:
	ld hl,09807h		;9a65
	ld a,(hl)			;9a68
	sub 001h		;9a69
	ld (hl),a			;9a6b
	ret			;9a6c
L_9A6D:
	ld hl,09808h		;9a6d
	ld a,(hl)			;9a70
	inc (hl)			;9a71
	ld hl,0980ah		;9a72
	add a,a			;9a75
	ld b,a			;9a76
	add a,a			;9a77
	add a,b			;9a78
	call 08221h		;9a79
	ld (hl),00ah		;9a7c
L_9A7E:
	ret			;9a7e
L_9A7F:
	ld a,(09821h)		;9a7f
	cp 004h		;9a82
	ret nc			;9a84
	ld hl,0d2c0h		;9a85
	add a,a			;9a88
	add a,a			;9a89
	add a,a			;9a8a
	add a,a			;9a8b
	call 08221h		;9a8c
	ld a,(hl)			;9a8f
	ld b,a			;9a90
	ld a,(09822h)		;9a91
	or a			;9a94
	jr nz,L_9AA4		;9a95
	ld a,b			;9a97
	cp 0e0h		;9a98
	ret z			;9a9a
L_9A9B:
	ld a,(09822h)		;9a9b
	xor 001h		;9a9e
	ld (09822h),a		;9aa0
	ret			;9aa3
L_9AA4:
	ld a,b			;9aa4
	cp 098h		;9aa5
	ret c			;9aa7
	call 08348h		;9aa8
	ld hl,09821h		;9aab
	inc (hl)			;9aae
	jr L_9A9B		;9aaf

; ----------------------------------------------------------------------
; DATOS casillas_9AB1: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x984E (698 bytes)
;   0x9ab1..0x9d6b  (698 bytes)
DATA_casillas_9AB1:
	defb 005h,004h,016h,005h,005h,004h,005h,014h,016h,015h,005h,014h,002h,0a7h,083h,022h	; 9ab1  ..............."
	defb 023h,024h,016h,025h,0b7h,0a6h,0a7h,022h,027h,028h,030h,031h,032h,033h,034h,035h	; 9ac1  #$.%..."'(012345
	defb 0c6h,0b6h,031h,035h,03ah,03bh,03ch,03dh,03eh,03fh,0dbh,0dch,033h,0b7h,0b7h,0e6h	; 9ad1  ..15:.<=>?..3...
	defb 034h,039h,0c6h,0b6h,0b7h,034h,035h,032h,033h,038h,0d6h,095h,095h,0d6h,0d6h,095h	; 9ae1  49...45238......
	defb 046h,047h,095h,049h,04ah,04bh,04ch,04dh,015h,015h,0ebh,0ech,005h,0d6h,0f8h,095h	; 9af1  FG.IJKLM........
	defb 046h,047h,0d6h,0d6h,095h,095h,0d6h,0d6h,050h,051h,052h,052h,050h,051h,056h,057h	; 9b01  FG......PQRRPQVW
	defb 050h,059h,05ah,05bh,05ch,05dh,05eh,015h,015h,08bh,052h,052h,050h,051h,052h,052h	; 9b11  PYZ[\]^...RRPQRR
	defb 056h,057h,052h,052h,050h,051h,052h,052h,060h,061h,062h,063h,060h,061h,0c6h,0b6h	; 9b21  VWRRPQRR`abc`a..
	defb 068h,069h,06ah,06bh,06ch,06dh,06eh,06fh,015h,09bh,09ch,063h,060h,061h,062h,063h	; 9b31  hijklmno...c`abc
	defb 0c6h,0b6h,062h,063h,060h,061h,062h,063h,070h,071h,072h,072h,070h,071h,0c6h,0b6h	; 9b41  ..bc`abcpqrrpq..
	defb 078h,079h,07ah,07bh,07ch,07dh,07eh,07fh,015h,08eh,08fh,002h,001h,002h,001h,002h	; 9b51  xyz{|}~.........
	defb 0c6h,0b6h,072h,072h,070h,071h,072h,072h,042h,042h,082h,083h,042h,042h,0c6h,0b6h	; 9b61  ..rrpqrrBB..BB..
	defb 088h,089h,08ah,015h,05ch,08dh,05eh,003h,015h,08ah,09fh,012h,011h,012h,011h,012h	; 9b71  ....\.^.........
	defb 0c6h,0b6h,082h,083h,003h,042h,090h,065h,042h,091h,092h,093h,0e4h,042h,0c6h,0b6h	; 9b81  .....B.eB....B..
	defb 098h,089h,08ah,015h,05ch,08dh,05eh,003h,015h,0ebh,09fh,012h,011h,012h,011h,012h	; 9b91  ....\.^.........
	defb 0c6h,0b6h,092h,093h,0e4h,042h,0d2h,067h,0a0h,0a1h,0a2h,0b1h,0a4h,042h,0c6h,0b6h	; 9ba1  .....B.g.....B..
	defb 0a8h,0a9h,0aah,06bh,0ach,08dh,0aeh,0afh,015h,09bh,074h,012h,073h,012h,073h,012h	; 9bb1  ...k......t.s.s.
	defb 0c6h,0b6h,0a2h,0b1h,0a4h,042h,043h,044h,0b0h,0b1h,0b2h,0b3h,0b4h,0b5h,0c6h,0b6h	; 9bc1  .....BCD........
	defb 0b8h,0b9h,0bah,0bbh,0bch,0bdh,0beh,0bfh,015h,045h,053h,007h,006h,007h,006h,007h	; 9bd1  .........ES.....
	defb 0c6h,0b6h,0b2h,0b3h,0b4h,0b5h,0c5h,054h,0c0h,0c1h,0c2h,0c3h,0c4h,0c5h,0c6h,0b6h	; 9be1  .......T........
	defb 0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0cfh,015h,019h,01ah,017h,016h,017h,016h,017h	; 9bf1  ................
	defb 0c6h,0b6h,0c2h,0c3h,0c4h,003h,0c5h,0e9h,0d0h,0d1h,09dh,0d3h,0d4h,0d5h,0c6h,0b6h	; 9c01  ................
	defb 0d8h,0d9h,0dah,0deh,0deh,0ddh,0deh,0dfh,015h,029h,02ah,009h,008h,009h,008h,009h	; 9c11  .........)*.....
	defb 0c6h,0b6h,09dh,0d3h,0d4h,0d5h,0c5h,086h,0e0h,0e1h,09dh,0e3h,0e4h,0e5h,0c6h,0b6h	; 9c21  ................
	defb 0e8h,0e9h,0eah,0eeh,0eeh,0edh,0eeh,0efh,015h,02bh,02ch,009h,018h,009h,018h,009h	; 9c31  .........+,.....
	defb 0c6h,0b6h,09dh,0e3h,0e4h,0e5h,066h,067h,0f0h,0e7h,0e2h,0d7h,0c7h,0d2h,0c6h,0b6h	; 9c41  ......fg........
	defb 0a3h,0a5h,0adh,0abh,09ah,099h,096h,094h,064h,010h,003h,04eh,0a3h,0a5h,0adh,0abh	; 9c51  ........d..N....
	defb 0c6h,0b6h,0e2h,0d7h,0c7h,0d2h,076h,075h,090h,09dh,09eh,08ch,085h,042h,084h,081h	; 9c61  ......vu.....B..
	defb 080h,003h,042h,089h,090h,09dh,09eh,08ch,085h,042h,026h,02eh,080h,003h,042h,0ffh	; 9c71  ..B......B&...B.
	defb 084h,081h,09eh,08ch,085h,042h,026h,02eh,042h,041h,040h,037h,040h,037h,040h,037h	; 9c81  .....B&.BA@7@7@7
	defb 040h,037h,040h,037h,040h,037h,040h,037h,040h,037h,040h,037h,040h,037h,040h,037h	; 9c91  @7@7@7@7@7@7@7@7
	defb 040h,037h,040h,037h,040h,037h,044h,02eh,020h,021h,04fh,05fh,048h,04fh,04fh,05fh	; 9ca1  @7@7@7D. !O_HOO_
	defb 048h,04fh,04fh,05fh,048h,04fh,04fh,05fh,048h,04fh,04fh,05fh,048h,04fh,04fh,05fh	; 9cb1  HOO_HOO_HOO_HOO_
	defb 048h,04fh,04fh,05fh,048h,04fh,00eh,00fh,00ah,013h,02fh,01ch,00ch,02fh,02fh,01ch	; 9cc1  HOO_HO..../..//.
	defb 00ch,02fh,02fh,01ch,00ch,02fh,02fh,01ch,00ch,02fh,02fh,01ch,00ch,02fh,02fh,01ch	; 9cd1  .//..//..//..//.
	defb 00ch,02fh,02fh,01ch,00ch,02fh,01eh,01fh,00dh,037h,048h,04fh,04fh,05fh,048h,04fh	; 9ce1  .//../...7HOO_HO
	defb 04fh,05fh,048h,04fh,04fh,05fh,048h,04fh,04fh,05fh,048h,04fh,04fh,05fh,048h,002h	; 9cf1  O_HOO_HOO_HOO_H.
	defb 04fh,0bch,05fh,048h,04fh,04fh,05fh,040h,00dh,077h,037h,00ch,02fh,02fh,01ch,00ch	; 9d01  O._HOO_@.w7.//..
	defb 02fh,02fh,01ch,00ch,02fh,02fh,01ch,00ch,02fh,02fh,01ch,00ch,02fh,02fh,01ch,00ch	; 9d11  //..//..//..//..
	defb 02fh,02fh,01ch,00ch,02fh,02fh,01ch,040h,01dh,055h,037h,04fh,05fh,048h,04fh,04fh	; 9d21  //..//.@.U7O_HOO
	defb 05fh,048h,048h,04fh,05fh,048h,04fh,04fh,05fh,048h,04fh,04fh,05fh,048h,003h,04fh	; 9d31  _HHO_HOO_HOO_H.O
	defb 0a8h,048h,04fh,04fh,05fh,048h,04fh,040h,00bh,058h,037h,02fh,01ch,00ch,02fh,02fh	; 9d41  .HOO_HO@.X7/..//
	defb 01ch,00ch,02fh,02fh,01ch,00ch,02fh,02fh,01ch,00ch,02fh,02fh,01ch,00ch,02fh,02fh	; 9d51  ..//..//..//..//
	defb 01ch,00ch,02fh,02fh,01ch,00ch,02fh,040h,01bh,000h	; 9d61  ..//../@..

; ----------------------------------------------------------------------
; DATOS paleta_9D6B: paleta: 16 colores de 2 bytes; lo usa 0x986A (32 bytes)
;   0x9d6b..0x9d8b  (32 bytes)
DATA_paleta_9D6B:
	defb 000h,000h,004h,000h,047h,004h,027h,002h,030h,000h,040h,003h,000h,004h,023h,002h	; 9d6b  ....G.'.0.@...#.
	defb 070h,000h,052h,004h,003h,007h,070h,004h,055h,005h,070h,007h,077h,007h,000h,000h	; 9d7b  p.R...p.U.p.w...

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d8b..0x9df0  (101 bytes)
DATA_9D8B:
	defb 000h,0ffh,000h,058h,068h,080h,001h,0ffh,000h,058h,068h,090h,002h,0ffh,000h,058h	; 9d8b  ...Xh....Xh....X
	defb 068h,0a0h,003h,0ffh,000h,058h,068h,0b0h,002h,002h,002h,002h,002h,002h,002h,092h	; 9d9b  h....Xh.........
	defb 002h,092h,002h,002h,092h,002h,092h,092h,092h,092h,092h,0a2h,0a2h,0a2h,0a2h,0a2h	; 9dab  ................
	defb 0b2h,0b2h,0c2h,0d2h,0b1h,0b1h,0b1h,0b1h,0b1h,0b1h,0b1h,0c1h,0c0h,0c0h,0c0h,0c0h	; 9dbb  ................
	defb 000h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,092h,002h,002h,002h,002h	; 9dcb  ................
	defb 092h,092h,002h,002h,092h,002h,092h,092h,092h,092h,092h,092h,092h,0a2h,0a2h,0a2h	; 9ddb  ................
	defb 0a1h,0a1h,0a0h,090h,000h	; 9deb

; ----------------------------------------------------------------------
; DATOS vram_9DF0: RLE a la VRAM hasta el 0; lo usa 0x9864 (435 bytes)
;   0x9df0..0x9fa3  (435 bytes)
DATA_vram_9DF0:
	defb 082h,000h,001h,004h,000h,087h,001h,003h,007h,00fh,03fh,07fh,03fh,003h,000h,085h	; 9df0  ..........?.?...
	defb 070h,0fch,07ch,03fh,03fh,003h,0ffh,004h,0feh,002h,07eh,002h,07fh,084h,01ch,00fh	; 9e00  p.|??.....~.....
	defb 007h,0c7h,003h,0ffh,086h,087h,000h,000h,001h,000h,01fh,003h,0ffh,087h,000h,080h	; 9e10  ................
	defb 0c0h,0e0h,0e0h,0f0h,0f0h,003h,0f8h,09bh,0f0h,060h,000h,0c0h,0e0h,0f0h,000h,001h	; 9e20  .........`......
	defb 007h,00fh,01fh,03eh,03ch,078h,07ch,03eh,01fh,00fh,007h,003h,000h,000h,07fh,0ffh	; 9e30  ...><x|>........
	defb 0feh,0feh,07eh,004h,03eh,081h,07fh,003h,0ffh,002h,0feh,083h,03ch,0f8h,0c0h,003h	; 9e40  ..~.>.......<...
	defb 000h,002h,080h,002h,0c0h,08ah,070h,07fh,03fh,01fh,00fh,007h,001h,0f8h,07ch,03ch	; 9e50  ......p.?.....|<
	defb 004h,03eh,002h,07eh,081h,0feh,003h,0fch,002h,0f8h,081h,0e0h,005h,000h,084h,001h	; 9e60  .>.~............
	defb 007h,003h,001h,007h,000h,08ah,01fh,03fh,07ch,078h,0f8h,0f0h,0f0h,0f1h,0e3h,003h	; 9e70  .......?|x......
	defb 004h,007h,002h,00fh,08ah,000h,0c0h,0c0h,061h,071h,0f0h,0f8h,0f8h,0f0h,0e0h,003h	; 9e80  ........aq......
	defb 0c0h,002h,080h,004h,000h,089h,0c0h,0e0h,0f0h,078h,07ch,03ch,07ch,078h,078h,003h	; 9e90  .........x|<|xx.
	defb 0f8h,08eh,0f0h,000h,003h,00fh,01fh,07fh,07eh,07ch,078h,03ch,03eh,01fh,007h,003h	; 9ea0  ........~|x<>...
	defb 003h,000h,081h,01fh,004h,0ffh,081h,01fh,003h,03eh,089h,03ch,0fch,0fch,0f8h,0f1h	; 9eb0  .........>.<....
	defb 000h,000h,0c0h,0f8h,004h,0ffh,081h,03fh,003h,00fh,086h,01fh,03fh,07fh,0feh,078h	; 9ec0  .......?....?..x
	defb 000h,006h,0f0h,082h,0f8h,0fch,003h,0feh,082h,0beh,01ch,00dh,000h,086h,003h,007h	; 9ed0  ................
	defb 00fh,00fh,01fh,01fh,005h,000h,090h,001h,00fh,01fh,07fh,0ffh,0ffh,0feh,0f8h,0e0h	; 9ee0  ................
	defb 0c0h,0c0h,007h,003h,003h,00fh,07fh,003h,0ffh,083h,0fch,0e0h,080h,005h,000h,083h	; 9ef0  ................
	defb 080h,0e0h,0f0h,003h,0f8h,082h,0f0h,080h,008h,000h,002h,01fh,083h,00fh,007h,003h	; 9f00  ................
	defb 00bh,000h,005h,0ffh,082h,01fh,003h,009h,000h,082h,080h,0fch,005h,0ffh,087h,07fh	; 9f10  ................
	defb 01fh,00fh,007h,003h,001h,001h,004h,000h,087h,080h,0e0h,0f0h,0f8h,0f8h,0fch,0fch	; 9f20  ................
	defb 005h,0feh,08eh,0fch,03ch,008h,01eh,01fh,00fh,007h,007h,00fh,00eh,01eh,01fh,01fh	; 9f30  ....<...........
	defb 00fh,004h,007h,002h,000h,084h,080h,0c0h,0c0h,080h,004h,000h,082h,080h,0c0h,004h	; 9f40  ................
	defb 0e0h,002h,000h,089h,0f7h,07fh,038h,01ch,01ch,00ch,000h,000h,003h,003h,001h,004h	; 9f50  ......8.........
	defb 000h,083h,080h,0e0h,0e0h,004h,070h,089h,060h,000h,080h,080h,0c0h,0c0h,0e0h,00fh	; 9f60  ......p.`.......
	defb 00fh,006h,01fh,003h,00fh,087h,007h,003h,001h,000h,000h,0c0h,0c0h,007h,080h,082h	; 9f70  ................
	defb 0c0h,0f8h,004h,0ffh,081h,03fh,003h,000h,002h,001h,002h,003h,002h,007h,082h,00fh	; 9f80  .....?..........
	defb 03fh,003h,0ffh,084h,0fch,0f0h,0e0h,0e0h,005h,0f0h,003h,0e0h,002h,0c0h,081h,080h	; 9f90  ?...............
	defb 02bh,000h,000h	; 9fa0

; ----------------------------------------------------------------------
; DATOS casillas_9FA3: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A62 (146 bytes)
;   0x9fa3..0xa035  (146 bytes)
DATA_casillas_9FA3:
	defb 08bh,0c3h,095h,095h,089h,001h,0c1h,091h,096h,095h,0c2h,0c1h,004h,08eh,0aah,002h	; 9fa3  ................
	defb 0a3h,0beh,0bdh,08eh,08eh,0a3h,0b9h,0b9h,0bbh,0bah,003h,0b9h,0b7h,0b6h,0b9h,0b9h	; 9fb3  ................
	defb 0bbh,0a2h,0b2h,0b5h,0b4h,004h,0b2h,091h,096h,0b3h,0b2h,0b5h,0a6h,0d3h,0d4h,0d3h	; 9fc3  ................
	defb 005h,0d3h,091h,096h,0b0h,0b0h,0b1h,09fh,0cch,080h,005h,006h,085h,096h,0abh,0aah	; 9fd3  ................
	defb 0bfh,09fh,080h,008h,00bh,083h,0a4h,08ah,0aeh,080h,008h,013h,09ah,09ah,09ch,0b8h	; 9fe3  ................
	defb 0d0h,01bh,0d0h,0d1h,0d0h,091h,096h,099h,098h,097h,0c8h,0cah,01ch,0cah,0cbh,0cah	; 9ff3  ................
	defb 091h,096h,094h,093h,092h,0c6h,0ceh,080h,004h,01dh,087h,091h,096h,0a1h,090h,08fh	; a003  ................
	defb 0c5h,0ceh,080h,004h,021h,087h,091h,096h,0a1h,08bh,08ah,0d2h,0bch,080h,004h,025h	; a013  ....!..........%
	defb 087h,091h,096h,08ch,08dh,0d5h,0c7h,0c4h,080h,004h,029h,085h,0a9h,0ach,0a0h,0a7h	; a023  ..........).....
	defb 0a8h,000h	; a033

; ----------------------------------------------------------------------
; DATOS casillas_A035: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A62 (146 bytes)
;   0xa035..0xa0c7  (146 bytes)
DATA_casillas_A035:
	defb 08bh,0c3h,095h,095h,089h,02dh,0c1h,091h,096h,095h,0c2h,0c1h,004h,08eh,0a9h,02eh	; a035  .....-..........
	defb 0a3h,0beh,0bdh,08eh,08eh,0a3h,0b9h,0b9h,0bbh,0bah,02fh,0b9h,0b7h,0b6h,0b9h,0b9h	; a045  ........../.....
	defb 0bbh,0a2h,0b2h,0b5h,0b4h,030h,0b2h,091h,096h,0b3h,0b2h,0b5h,0a6h,0d3h,0d4h,031h	; a055  .....0.........1
	defb 032h,0d3h,091h,096h,0b0h,0b0h,0b1h,09fh,080h,005h,033h,085h,091h,096h,0abh,0aah	; a065  2.........3.....
	defb 0bfh,080h,008h,038h,083h,0a5h,0a4h,08ah,080h,008h,040h,0b0h,09eh,09ah,09ch,0b8h	; a075  ...8......@.....
	defb 048h,0d1h,0d0h,0d1h,0d0h,091h,096h,099h,098h,097h,0c8h,049h,0cbh,0cah,0cbh,0cah	; a085  H..........I....
	defb 091h,096h,094h,093h,092h,0c6h,04ah,04bh,04ch,0cfh,0ceh,091h,096h,0a1h,090h,08fh	; a095  ......JKL.......
	defb 0c5h,04dh,04eh,04fh,0c9h,0ceh,091h,096h,0a1h,08bh,08ah,0d2h,080h,004h,050h,087h	; a0a5  .MNO..........P.
	defb 09bh,091h,096h,08ch,08dh,0d5h,0c7h,080h,004h,054h,086h,0bfh,0a9h,0ach,0a0h,0a7h	; a0b5  .........T......
	defb 0a8h,000h	; a0c5

; ----------------------------------------------------------------------
; DATOS casillas_A0C7: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9A62 (145 bytes)
;   0xa0c7..0xa158  (145 bytes)
DATA_casillas_A0C7:
	defb 08bh,0c3h,095h,095h,089h,058h,0c1h,091h,096h,095h,0c2h,0c1h,004h,08eh,0abh,059h	; a0c7  .....X.........Y
	defb 0a3h,0beh,0bdh,08eh,08eh,0a3h,0b9h,0b9h,0bbh,0bah,05ah,05bh,0b7h,0b6h,0b9h,0b9h	; a0d7  ..........Z[....
	defb 0bbh,0a2h,0b2h,0b5h,0b4h,05ch,05dh,091h,096h,0b3h,0b2h,0b5h,0a6h,0d3h,0d4h,0d3h	; a0e7  .....\].........
	defb 0d4h,05eh,091h,096h,0b0h,0b0h,0b1h,09fh,0cch,0cdh,080h,006h,05fh,084h,0aah,0bfh	; a0f7  .^.........._...
	defb 09fh,0cch,080h,008h,065h,083h,08ah,0aeh,0cch,080h,008h,06dh,09ah,09ch,0b8h,0d0h	; a107  ....e......m....
	defb 0d1h,075h,076h,0d0h,091h,096h,099h,098h,097h,0c8h,0cah,0cbh,077h,078h,0cah,091h	; a117  .uv.........wx..
	defb 096h,094h,093h,092h,0c6h,0ceh,0cfh,080h,004h,079h,087h,096h,0a1h,090h,08fh,0c5h	; a127  .........y......
	defb 0ceh,0c9h,080h,004h,07dh,087h,096h,0a1h,08bh,08ah,0d2h,0bch,09dh,080h,004h,081h	; a137  ....}...........
	defb 087h,096h,08ch,08dh,0d5h,0c7h,0c4h,0adh,080h,004h,085h,084h,0ach,0a0h,0a7h,0a8h	; a147  ................
	defb 000h	; a157

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa158..0xa200  (168 bytes)
DATA_A158:
	defb 019h,0c9h,032h,096h,0a3h,0cdh,00bh,0a2h,0edh,053h,000h,0d2h,0cdh,00bh,0a2h,0edh	; a158  ..2......S......
	defb 053h,006h,0d2h,0cdh,00bh,0a2h,0edh,053h,002h,0d2h,07eh,023h,032h,032h,0d2h,07eh	; a168  S......S..~#22.~
	defb 023h,032h,033h,0d2h,0cdh,0c6h,0a1h,02ah,006h,0d2h,0cdh,075h,082h,03eh,0ffh,032h	; a178  #23....*...u.>.2
	defb 00ch,0d2h,03ch,032h,095h,0a3h,00eh,001h,02ah,002h,0d2h,07eh,047h,021h,033h,0d2h	; a188  ..<2....*..~G!3.
	defb 07eh,0b7h,028h,01eh,078h,096h,038h,003h,00ch,018h,0fah,086h,03ch,032h,005h,0d2h	; a198  ~.(.x.8.....<2..
	defb 079h,032h,004h,0d2h,03ah,005h,0d2h,021h,033h,0d2h,0beh,0c0h,03eh,001h,032h,095h	; a1a8  y2..:..!3...>.2.
	defb 0a3h,0c9h,03eh,001h,032h,005h,0d2h,02ah,002h,0d2h,07eh,03ch,018h,0e3h,0cdh,0bdh	; a1b8  ..>.2..*..~<....
	defb 082h,02ah,002h,0d2h,07eh,02ah,000h,0d2h,04fh,087h,081h,0cdh,021h,082h,011h,00dh	; a1c8  .*..~*..O...!...
	defb 0d2h,001h,003h,000h,0edh,0b0h,03ah,00fh,0d2h,0feh,001h,0c8h,021h,03bh,0a3h,0cdh	; a1d8  ......:.....!...
	defb 06ch,082h,046h,023h,011h,080h,0d2h,03ah,00dh,0d2h,086h,012h,023h,013h,03ah,00eh	; a1e8  l.F#...:....#.:.
	defb 0d2h,086h,012h,023h,013h,07eh,012h,023h	; a1f8  ...#.~.#
