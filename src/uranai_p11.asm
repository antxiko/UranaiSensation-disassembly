; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p11 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9806  (6 bytes)
; ======================================================================


L_9800:
	jp L_980F		;9800
L_9803:
	jp L_98B1		;9803

; ----------------------------------------------------------------------
; DATOS leido_9806: lo usa el codigo: 0x9810 ld (09806h),a; 0x98B5 ld
;   a,(09806h); 0x98C7 ld hl,09807h (en +1); 0x9931 ld (09807h),a (en +1) (9
;   bytes)
;   0x9806..0x980f  (9 bytes)
DATA_leido_9806:
	defb 006h,0b2h,011h,000h,0b2h,001h,006h,000h,0edh	; 9806  .........

; ======================================================================
; CODIGO 0x980f..0x98bb  (172 bytes)
; ======================================================================


L_980F:
	xor a			;980f
	ld (09806h),a		;9810
	call 09203h		;9813
	ld a,0b9h		;9816
	call 09206h		;9818
	call 08212h		;981b
	call 0826fh		;981e
	call 08260h		;9821
	call 08251h		;9824
	call L_99C7		;9827
	ld hl,099cdh		;982a
	ld de,00000h		;982d
	ld c,020h		;9830
	xor a			;9832
	call 08218h		;9833
	ld a,001h		;9836
	call 09203h		;9838
	ld a,0a8h		;983b
	call 09206h		;983d
	ld hl,09c58h		;9840
	ld de,07010h		;9843
	ld c,00eh		;9846
	xor a			;9848
	call 08218h		;9849
	ld hl,09ce4h		;984c
	ld de,03080h		;984f
	ld c,006h		;9852
	xor a			;9854
	call 08218h		;9855
	ld hl,09d59h		;9858
	ld de,00078h		;985b
	call L_9883		;985e
	ld a,002h		;9861
	call 09203h		;9863
	ld a,0cbh		;9866
	call 09206h		;9868
	ld hl,09d83h		;986b
	ld de,08078h		;986e
	call L_9883		;9871
	ld hl,09e3eh		;9874
	ld de,00040h		;9877
	call L_9883		;987a
	call 0841ah		;987d
	jp 08209h		;9880
L_9883:
	push de			;9883
L_9884:
	ld a,(hl)			;9884
	inc hl			;9885
	ld c,a			;9886
	inc a			;9887
	jr z,L_989D		;9888
	inc a			;988a
	jr nz,L_9894		;988b
	pop de			;988d
	ld a,008h		;988e
	add a,e			;9890
	ld e,a			;9891
	jr L_9883		;9892
L_9894:
	ld a,c			;9894
	call L_989F		;9895
	call 082a8h		;9898
	jr L_9884		;989b
L_989D:
	pop de			;989d
	ret			;989e
L_989F:
	push bc			;989f
	push hl			;98a0
	push de			;98a1
	call 08281h		;98a2
	ld bc,00808h		;98a5
	ld a,005h		;98a8
	call 08284h		;98aa
	pop de			;98ad
	pop hl			;98ae
	pop bc			;98af
	ret			;98b0
L_98B1:
	ld hl,09808h		;98b1
	inc (hl)			;98b4
	ld a,(09806h)		;98b5
	call 0822dh		;98b8

; ----------------------------------------------------------------------
; DATOS saltos_98BB: 6 destinos del despachador (call 0x822D en 0x98B8) (12
;   bytes)
;   0x98bb..0x98c7  (12 bytes)
DATA_saltos_98BB:
	defw 098c7h,098e4h,098fah,0990fh,0991fh,09943h	; 98bb

; ======================================================================
; CODIGO 0x98c7..0x99c1  (250 bytes)
; ======================================================================


L_98C7:
	ld hl,09807h		;98c7
	ld de,09808h		;98ca
	ld (hl),000h		;98cd
	ld bc,00007h		;98cf
	ldir		;98d2
	ld hl,0807ah		;98d4
	ld (0980bh),hl		;98d7
	ld hl,06812h		;98da
	ld (0980dh),hl		;98dd
	ld a,080h		;98e0
	jr L_9931		;98e2
L_98E4:
	call L_993A		;98e4
	ret nc			;98e7
	ld hl,00078h		;98e8
	ld de,03080h		;98eb
	ld bc,03030h		;98ee
	ld a,001h		;98f1
	call 08284h		;98f3
	ld a,020h		;98f6
	jr L_9931		;98f8
L_98FA:
	ld hl,09d0ah		;98fa
	ld de,07010h		;98fd
	ld c,00eh		;9900
	xor a			;9902
	call 08218h		;9903
	ld hl,09808h		;9906
	ld (hl),000h		;9909
	ld a,015h		;990b
	jr L_9931		;990d
L_990F:
	call L_993A		;990f
	ret nc			;9912
	ld a,(09808h)		;9913
	rra			;9916
	jr c,L_9949		;9917
	call L_9963		;9919
	ret nc			;991c
	jr L_9931		;991d
L_991F:
	call L_9949		;991f
	ld hl,09d26h		;9922
	ld de,06858h		;9925
	ld c,010h		;9928
	xor a			;992a
	call 08218h		;992b
	ld a,020h		;992e
	xor a			;9930
L_9931:
	ld (09807h),a		;9931
	ld hl,09806h		;9934
	inc (hl)			;9937
	or a			;9938
	ret			;9939
L_993A:
	ld hl,09807h		;993a
	ld a,(hl)			;993d
	sub 001h		;993e
	ret c			;9940
	ld (hl),a			;9941
	ret			;9942
L_9943:
	call L_993A		;9943
	ret nc			;9946
	scf			;9947
	ret			;9948
L_9949:
	ld hl,(0980bh)		;9949
	ld de,(0980dh)		;994c
	ld bc,08002h		;9950
	ld a,001h		;9953
	call 08284h		;9955
	ld hl,0980bh		;9958
	inc (hl)			;995b
	inc (hl)			;995c
	ld hl,0980dh		;995d
	inc (hl)			;9960
	inc (hl)			;9961
	ret			;9962
L_9963:
	ld hl,08078h		;9963
	ld de,06810h		;9966
	ld bc,00858h		;9969
	ld a,001h		;996c
	call 08284h		;996e
	ld hl,0f878h		;9971
	ld de,0e010h		;9974
	ld bc,00858h		;9977
	ld a,001h		;997a
	call 08284h		;997c
	call L_999B		;997f
	ld de,(0980dh)		;9982
	ld a,048h		;9986
	call 0820ch		;9988
	ld a,(0980ah)		;998b
	cpl			;998e
	ld (0980ah),a		;998f
	ld hl,09809h		;9992
	inc (hl)			;9995
	ld a,(hl)			;9996
	cp 025h		;9997
	ccf			;9999
	ret			;999a
L_999B:
	ld c,000h		;999b
	ld a,(09809h)		;999d
	cp 014h		;99a0
	jr nc,L_99AA		;99a2
	inc c			;99a4
	cp 00ah		;99a5
	jr nc,L_99AA		;99a7
	inc c			;99a9
L_99AA:
	ld a,c			;99aa
	ld hl,099c1h		;99ab
	call 0826ch		;99ae
	ex de,hl			;99b1
	ld h,000h		;99b2
	ld l,e			;99b4
	ld b,080h		;99b5
	ld c,d			;99b7
	ld a,(0980ah)		;99b8
	and a			;99bb
	jr z,L_99C0		;99bc
	ld h,080h		;99be
L_99C0:
	ret			;99c0

; ----------------------------------------------------------------------
; DATOS leido_99C1: lo usa el codigo: 0x99AB ld hl,099c1h -> 0x826C (tabla de
;   palabras: la de A) (6 bytes)
;   0x99c1..0x99c7  (6 bytes)
DATA_leido_99C1:
	defb 060h,018h,050h,010h,040h,010h	; 99c1

; ======================================================================
; CODIGO 0x99c7..0x99cd  (6 bytes)
; ======================================================================


L_99C7:
	ld hl,09f25h		;99c7
	jp 082dbh		;99ca

; ----------------------------------------------------------------------
; DATOS casillas_99CD: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9833 (651 bytes)
;   0x99cd..0x9c58  (651 bytes)
DATA_casillas_99CD:
	defb 0ceh,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h	; 99cd  ................
	defb 002h,073h,002h,001h,002h,001h,074h,075h,076h,001h,077h,078h,002h,001h,002h,001h	; 99dd  .s....tuv.wx....
	defb 002h,002h,001h,002h,003h,004h,005h,006h,007h,002h,001h,002h,001h,002h,001h,002h	; 99ed  ................
	defb 001h,079h,07ah,002h,07bh,07ch,07dh,002h,001h,07eh,07fh,080h,001h,002h,001h,002h	; 99fd  .yz.{|}..~......
	defb 001h,001h,002h,001h,008h,009h,00ah,00bh,00ch,00dh,002h,001h,002h,001h,002h,00eh	; 9a0d  ................
	defb 01fh,092h,001h,002h,001h,002h,002h,001h,002h,00eh,00fh,010h,002h,011h,012h,013h	; 9a1d  ................
	defb 014h,001h,002h,001h,00eh,01fh,092h,002h,001h,081h,082h,001h,002h,001h,015h,016h	; 9a2d  ................
	defb 017h,018h,002h,019h,01ah,01bh,002h,001h,002h,00eh,01fh,092h,001h,083h,084h,085h	; 9a3d  ................
	defb 002h,001h,002h,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h,002h,001h,00eh,01fh	; 9a4d  ....... !"#$....
	defb 092h,086h,087h,088h,001h,001h,002h,001h,002h,025h,026h,027h,028h,001h,002h,001h	; 9a5d  .........%&'(...
	defb 02ah,02bh,002h,00eh,01fh,092h,089h,002h,001h,002h,002h,001h,002h,001h,031h,032h	; 9a6d  *+............12
	defb 038h,001h,002h,001h,002h,034h,035h,001h,00eh,01fh,092h,002h,001h,002h,001h,001h	; 9a7d  8....45.........
	defb 002h,001h,002h,036h,037h,033h,002h,001h,002h,001h,039h,03ah,002h,00eh,01fh,092h	; 9a8d  ...673....9:....
	defb 001h,002h,001h,002h,002h,001h,002h,001h,03dh,03ch,038h,001h,002h,001h,002h,001h	; 9a9d  ........=<8.....
	defb 002h,001h,00eh,01fh,092h,002h,001h,002h,001h,001h,002h,001h,002h,03bh,03fh,033h	; 9aad  ..............?3
	defb 002h,001h,002h,001h,002h,001h,002h,00eh,01fh,092h,001h,002h,001h,002h,002h,001h	; 9abd  ................
	defb 002h,001h,03dh,03eh,038h,001h,002h,001h,002h,001h,002h,001h,00eh,01fh,092h,002h	; 9acd  ..=>8...........
	defb 001h,002h,001h,001h,002h,001h,002h,03bh,03fh,033h,002h,001h,002h,001h,002h,001h	; 9add  ........?3......
	defb 002h,00eh,01fh,0ffh,08ah,002h,001h,002h,002h,001h,002h,001h,03dh,03eh,038h,001h	; 9aed  ............=>8.
	defb 002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,08bh,08ch,08dh	; 9afd  ................
	defb 08eh,001h,002h,08fh,090h,091h,002h,001h,001h,002h,001h,002h,03bh,03fh,033h,002h	; 9b0d  .............?3.
	defb 001h,002h,040h,041h,001h,002h,001h,002h,001h,002h,001h,002h,092h,093h,094h,002h	; 9b1d  ..@A............
	defb 095h,002h,001h,002h,096h,097h,001h,002h,002h,001h,002h,001h,03dh,03eh,038h,001h	; 9b2d  ............=>8.
	defb 002h,001h,042h,043h,044h,045h,002h,001h,002h,001h,002h,001h,098h,099h,002h,001h	; 9b3d  ..BCDE..........
	defb 002h,001h,002h,001h,09ah,09bh,002h,001h,001h,002h,001h,002h,03bh,03fh,033h,002h	; 9b4d  .............?3.
	defb 001h,046h,047h,048h,049h,04ah,04bh,002h,001h,002h,001h,002h,09ch,09dh,001h,002h	; 9b5d  .FGHIJK.........
	defb 001h,002h,001h,0ffh,002h,09eh,09fh,001h,002h,002h,001h,002h,001h,03dh,03eh,038h	; 9b6d  .............=>8
	defb 001h,002h,04ch,04dh,001h,002h,04eh,04fh,050h,002h,001h,002h,001h,0a0h,0a1h,002h	; 9b7d  ..LM..NOP.......
	defb 001h,002h,001h,002h,001h,0a2h,0a3h,002h,001h,001h,002h,001h,002h,051h,052h,053h	; 9b8d  .............QRS
	defb 002h,054h,055h,056h,002h,001h,002h,057h,058h,001h,002h,001h,002h,0a4h,0a5h,001h	; 9b9d  .TUV...WX.......
	defb 002h,001h,002h,0a6h,0a7h,0a8h,002h,001h,002h,002h,001h,002h,001h,059h,05ah,05bh	; 9bad  .............YZ[
	defb 05ch,05dh,05eh,05fh,060h,061h,062h,063h,064h,002h,001h,002h,001h,0a9h,0aah,0abh	; 9bbd  \]^_`abcd.......
	defb 0ach,0adh,0aeh,0afh,0b0h,002h,001h,002h,001h,001h,002h,001h,002h,065h,066h,01fh	; 9bcd  .............ef.
	defb 067h,068h,002h,001h,069h,06ah,06bh,06ch,06dh,001h,002h,001h,002h,001h,002h,0b1h	; 9bdd  gh..ijklm.......
	defb 0b2h,0b3h,0b4h,0e6h,0b5h,002h,001h,002h,001h,002h,002h,001h,002h,001h,06eh,06fh	; 9bed  ..............no
	defb 01fh,070h,002h,001h,002h,071h,072h,001h,002h,001h,002h,001h,002h,001h,002h,001h	; 9bfd  .p...qr.........
	defb 002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h	; 9c0d  ................
	defb 0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h	; 9c1d  ................
	defb 0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b6h,0b7h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h	; 9c2d  ................
	defb 0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h	; 9c3d  ................
	defb 0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,0b8h,0b9h,000h	; 9c4d  ...........

; ----------------------------------------------------------------------
; DATOS casillas_9C58: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9849 (140 bytes)
;   0x9c58..0x9ce4  (140 bytes)
DATA_casillas_9C58:
	defb 081h,001h,00ch,002h,082h,003h,004h,006h,005h,098h,006h,007h,008h,009h,00ah,005h	; 9c58  ................
	defb 00bh,004h,00ch,00dh,00eh,00fh,010h,011h,012h,005h,013h,005h,014h,005h,00bh,004h	; 9c68  ................
	defb 015h,016h,003h,005h,0c3h,017h,018h,019h,01ah,01bh,01ch,01dh,00bh,004h,01eh,01fh	; 9c78  ................
	defb 020h,005h,005h,021h,022h,023h,024h,025h,026h,027h,00bh,004h,028h,029h,02ah,02bh	; 9c88   ..!"#$%&'..()*+
	defb 02ch,02dh,02eh,02fh,030h,031h,032h,033h,034h,004h,035h,036h,037h,038h,038h,039h	; 9c98  ,-./01234.567889
	defb 03ah,03bh,03ch,03dh,03eh,03fh,00bh,004h,040h,041h,042h,043h,044h,045h,046h,047h	; 9ca8  :.<=>?..@ABCDEFG
	defb 048h,04eh,04eh,049h,00bh,004h,04ah,04bh,004h,038h,082h,04ch,04dh,003h,04eh,08bh	; 9cb8  HNNI..JK.8.LM.N.
	defb 04fh,00bh,050h,051h,052h,053h,054h,055h,056h,057h,058h,003h,04eh,083h,059h,05ah	; 9cc8  O.PQRSTUVWX.N.YZ
	defb 05bh,006h,05ch,087h,05dh,05eh,05fh,060h,061h,061h,062h,000h	; 9cd8  [.\.]^_`aab.

; ----------------------------------------------------------------------
; DATOS casillas_9CE4: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9855 (38 bytes)
;   0x9ce4..0x9d0a  (38 bytes)
DATA_casillas_9CE4:
	defb 0a4h,063h,064h,065h,066h,067h,068h,069h,06ah,06bh,06ch,06dh,06eh,06fh,070h,071h	; 9ce4  .cdefghijklmnopq
	defb 072h,073h,074h,075h,076h,077h,078h,079h,07ah,07bh,07ch,077h,07dh,07eh,07fh,080h	; 9cf4  rstuvwxyz{|w}~..
	defb 081h,082h,083h,084h,085h,000h	; 9d04

; ----------------------------------------------------------------------
; DATOS casillas_9D0A: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9903 (28 bytes)
;   0x9d0a..0x9d26  (28 bytes)
DATA_casillas_9D0A:
	defb 084h,091h,093h,093h,094h,003h,095h,004h,096h,002h,097h,08fh,098h,099h,09ah,09bh	; 9d0a  ................
	defb 09ch,09dh,09eh,09eh,09fh,0a0h,0a1h,0a2h,0a3h,0a4h,0a5h,000h	; 9d1a  ............

; ----------------------------------------------------------------------
; DATOS casillas_9D26: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x992B (51 bytes)
;   0x9d26..0x9d59  (51 bytes)
DATA_casillas_9D26:
	defb 084h,0a6h,0a7h,0a8h,0a8h,003h,0a9h,003h,0aah,004h,0abh,084h,0ach,0adh,0aeh,0afh	; 9d26  ................
	defb 004h,0b0h,003h,0b1h,006h,0b2h,082h,0b3h,0b4h,003h,0b5h,004h,0b6h,006h,0b7h,092h	; 9d36  ................
	defb 0b8h,0b9h,0bah,0bbh,0bch,0bbh,0bdh,0beh,0bfh,0c0h,0c1h,0c2h,0c3h,0c4h,0c5h,0c4h	; 9d46  ................
	defb 0c6h,0c7h,000h	; 9d56

; ----------------------------------------------------------------------
; DATOS leido_9D59: lo usa el codigo: 0x9858 ld hl,09d59h; 0x986B ld hl,09d83h
;   (en +42); 0x9874 ld hl,09e3eh (en +229) (460 bytes)
;   0x9d59..0x9f25  (460 bytes)
DATA_leido_9D59:
	defb 086h,087h,088h,089h,08ah,08bh,0feh,08ch,08dh,08eh,08fh,090h,091h,0feh,092h,093h	; 9d59  ................
	defb 094h,095h,096h,097h,0feh,098h,099h,09ah,09bh,09ch,09dh,0feh,09eh,09fh,09ah,0a0h	; 9d69  ................
	defb 0a1h,0a2h,0feh,0a3h,0a4h,0a5h,0a6h,0a7h,0a8h,0ffh,0bah,04ch,04dh,04dh,04dh,04dh	; 9d79  ...........LMMMM
	defb 04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04eh,0cbh,0feh,0cbh,04fh,050h,050h,050h	; 9d89  MMMMMMMMN...OPPP
	defb 050h,050h,050h,050h,050h,050h,050h,050h,050h,051h,0bah,0feh,0bah,04fh,052h,053h	; 9d99  PPPPPPPPPQ...ORS
	defb 054h,055h,056h,057h,058h,059h,05ah,050h,050h,050h,051h,0cbh,0feh,0cbh,04fh,05bh	; 9da9  TUVWXYZPPPQ...O[
	defb 05ch,05dh,05eh,05fh,060h,061h,062h,063h,050h,050h,050h,051h,0c8h,0feh,0bah,04fh	; 9db9  \]^_`abcPPPQ...O
	defb 065h,066h,067h,068h,069h,06ah,06bh,06ch,06dh,050h,050h,050h,051h,0c9h,0feh,0cbh	; 9dc9  efghijklmPPPQ...
	defb 04fh,050h,050h,050h,050h,050h,050h,050h,050h,050h,050h,050h,050h,051h,0bah,0feh	; 9dd9  OPPPPPPPPPPPPQ..
	defb 0bah,04fh,06eh,06fh,070h,071h,072h,073h,050h,074h,075h,076h,050h,077h,051h,0cbh	; 9de9  .OnopqrsPtuvPwQ.
	defb 0feh,0cbh,04fh,078h,079h,07ah,07bh,07ch,07dh,07eh,07fh,080h,081h,050h,082h,051h	; 9df9  ..Oxyz{|}~...P.Q
	defb 0bah,0feh,0bah,04fh,083h,084h,085h,086h,087h,088h,089h,08ah,08bh,08ch,08dh,050h	; 9e09  ...O...........P
	defb 051h,0cbh,0feh,0cbh,04fh,050h,050h,050h,050h,050h,050h,050h,050h,050h,050h,050h	; 9e19  Q...OPPPPPPPPPPP
	defb 050h,051h,0bah,0feh,0bah,08eh,08fh,08fh,08fh,08fh,08fh,08fh,08fh,08fh,08fh,08fh	; 9e29  PQ..............
	defb 08fh,08fh,090h,0cah,0ffh,001h,002h,003h,003h,003h,003h,003h,003h,003h,003h,003h	; 9e39  ................
	defb 003h,003h,003h,004h,005h,00bh,00ch,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh	; 9e49  ................
	defb 00dh,00dh,00dh,00eh,00fh,0feh,006h,007h,008h,008h,008h,008h,008h,008h,008h,008h	; 9e59  ................
	defb 008h,008h,008h,008h,009h,00ah,010h,011h,012h,012h,012h,012h,012h,012h,012h,012h	; 9e69  ................
	defb 012h,012h,012h,012h,013h,014h,0feh,015h,016h,017h,017h,017h,017h,017h,017h,017h	; 9e79  ................
	defb 017h,017h,017h,017h,017h,018h,019h,01fh,020h,020h,020h,020h,020h,020h,020h,020h	; 9e89  ........
	defb 020h,020h,020h,020h,020h,020h,021h,0feh,01ah,01bh,01ch,01ch,01ch,01ch,01ch,01ch	; 9e99        !.........
	defb 01ch,01ch,01ch,01ch,01ch,01ch,01dh,01eh,022h,023h,024h,024h,024h,024h,024h,024h	; 9ea9  ........"#$$$$$$
	defb 024h,024h,024h,024h,024h,024h,025h,026h,0feh,027h,028h,029h,029h,029h,029h,029h	; 9eb9  $$$$$$%&.'()))))
	defb 029h,029h,02ah,02bh,02bh,02bh,02ch,02dh,02eh,038h,039h,03ah,03ah,03ah,03ah,03ah	; 9ec9  ))*+++,-.89:::::
	defb 03ah,03bh,03ch,03ch,03ch,03dh,03dh,03eh,03fh,0feh,02fh,030h,030h,030h,030h,030h	; 9ed9  :.<<<==>?./00000
	defb 030h,030h,030h,030h,030h,030h,030h,030h,030h,031h,040h,041h,042h,042h,042h,042h	; 9ee9  0000000001@ABBBB
	defb 042h,042h,042h,042h,042h,042h,042h,042h,043h,044h,0feh,032h,033h,033h,033h,033h	; 9ef9  BBBBBBBBCD.23333
	defb 033h,033h,033h,033h,034h,035h,035h,035h,035h,036h,037h,045h,046h,047h,047h,047h	; 9f09  33334555567EFGGG
	defb 047h,047h,047h,047h,048h,049h,049h,049h,049h,04ah,04bh,0ffh	; 9f19  GGGGHIIIIJK.

; ----------------------------------------------------------------------
; DATOS paleta_9F25: paleta: 16 colores de 2 bytes; lo usa 0x99CA (32 bytes)
;   0x9f25..0x9f45  (32 bytes)
DATA_paleta_9F25:
	defb 000h,000h,022h,007h,040h,002h,005h,000h,027h,002h,000h,004h,000h,007h,075h,002h	; 9f25  ..".@...'.....u.
	defb 070h,000h,070h,005h,070h,007h,060h,003h,055h,005h,075h,005h,077h,007h,000h,000h	; 9f35  p.p.p.`.U.u.w...

; ----------------------------------------------------------------------
; DATOS resto_9F45: nadie lo lee; son los mismos bytes que p0E en esta misma
;   direccion: lo que habia en la memoria al grabar (187 bytes)
;   0x9f45..0xa000  (187 bytes)
DATA_resto_9F45:
	defb 084h,080h,0c0h,0c0h,080h,004h,000h,082h,080h,0c0h,004h,0e0h,002h,000h,089h,0f7h	; 9f45  ................
	defb 07fh,038h,01ch,01ch,00ch,000h,000h,003h,003h,001h,004h,000h,083h,080h,0e0h,0e0h	; 9f55  .8..............
	defb 004h,070h,089h,060h,000h,080h,080h,0c0h,0c0h,0e0h,00fh,00fh,006h,01fh,003h,00fh	; 9f65  .p.`............
	defb 087h,007h,003h,001h,000h,000h,0c0h,0c0h,007h,080h,082h,0c0h,0f8h,004h,0ffh,081h	; 9f75  ................
	defb 03fh,003h,000h,002h,001h,002h,003h,002h,007h,082h,00fh,03fh,003h,0ffh,084h,0fch	; 9f85  ?..........?....
	defb 0f0h,0e0h,0e0h,005h,0f0h,003h,0e0h,002h,0c0h,081h,080h,02bh,000h,000h,08bh,0c3h	; 9f95  ...........+....
	defb 095h,095h,089h,001h,0c1h,091h,096h,095h,0c2h,0c1h,004h,08eh,0aah,002h,0a3h,0beh	; 9fa5  ................
	defb 0bdh,08eh,08eh,0a3h,0b9h,0b9h,0bbh,0bah,003h,0b9h,0b7h,0b6h,0b9h,0b9h,0bbh,0a2h	; 9fb5  ................
	defb 0b2h,0b5h,0b4h,004h,0b2h,091h,096h,0b3h,0b2h,0b5h,0a6h,0d3h,0d4h,0d3h,005h,0d3h	; 9fc5  ................
	defb 091h,096h,0b0h,0b0h,0b1h,09fh,0cch,080h,005h,006h,085h,096h,0abh,0aah,0bfh,09fh	; 9fd5  ................
	defb 080h,008h,00bh,083h,0a4h,08ah,0aeh,080h,008h,013h,09ah,09ah,09ch,0b8h,0d0h,01bh	; 9fe5  ................
	defb 0d0h,0d1h,0d0h,091h,096h,099h,098h,097h,0c8h,0cah,01ch	; 9ff5  ...........
