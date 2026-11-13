; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p16 (se ejecuta en 0x9800)
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
	jp L_980B		;9800
L_9803:
	jp L_9918		;9803

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9806..0x980b  (5 bytes)
DATA_9806:
	defb 0ceh,03ah,017h,0d2h,0b7h	; 9806

; ======================================================================
; CODIGO 0x980b..0x9811  (6 bytes)
; ======================================================================


L_980B:
	ld a,(09226h)		;980b
	call 0822dh		;980e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9811..0x9817  (6 bytes)
DATA_9811:
	defb 017h,098h,03ah,098h,062h,098h	; 9811

; ======================================================================
; CODIGO 0x9817..0x98f7  (224 bytes)
; ======================================================================


L_9817:
	call 08251h		;9817
	ld a,070h		;981a
	ld (09806h),a		;981c
	ld a,009h		;981f
	call 09203h		;9821
	ld a,0bah		;9824
	call 09206h		;9826
	ld hl,00040h		;9829
	ld bc,00808h		;982c
	xor a			;982f
	ld d,001h		;9830
	call 0829fh		;9832
	call 0840bh		;9835
	jr L_9896		;9838
L_983A:
	call 08375h		;983a
	ld a,(0d1c3h)		;983d
	and 003h		;9840
	ret nz			;9842
	call L_989C		;9843
	call L_98FD		;9846
	ld hl,09806h		;9849
	dec (hl)			;984c
	ret nz			;984d
	call L_9853		;984e
	jr L_9896		;9851
L_9853:
	ld a,(09224h)		;9853
	or a			;9856
	jp z,083c0h		;9857
	cp 064h		;985a
	jp z,083bbh		;985c
	jp 08389h		;985f
L_9862:
	call L_9870		;9862
	call L_9904		;9865
	ld a,(09224h)		;9868
	call L_98AC		;986b
	scf			;986e
	ret			;986f
L_9870:
	ld a,(09224h)		;9870
	ld l,000h		;9873
	and a			;9875
	jr z,L_9887		;9876
	ld l,00ch		;9878
	cp 064h		;987a
	jr z,L_9887		;987c
	ld l,a			;987e
	ld c,014h		;987f
	call L_9975		;9881
	inc l			;9884
	sla l		;9885
L_9887:
	ld a,(09225h)		;9887
	ld c,a			;988a
	add a,a			;988b
	ld b,a			;988c
	add a,a			;988d
	add a,b			;988e
	add a,c			;988f
	add a,a			;9890
	add a,l			;9891
	ld (09807h),a		;9892
	ret			;9895
L_9896:
	ld hl,09226h		;9896
	inc (hl)			;9899
	xor a			;989a
	ret			;989b
L_989C:
	call L_9926		;989c
	ld (09808h),a		;989f
	ld a,b			;98a2
	ld (09809h),a		;98a3
	ld a,c			;98a6
	ld (0980ah),a		;98a7
	jr L_98CC		;98aa
L_98AC:
	ld de,00a0ah		;98ac
	cp 064h		;98af
	jr nc,L_98E9		;98b1
	cp 00ah		;98b3
	jr c,L_98BF		;98b5
	ld l,a			;98b7
	ld c,00ah		;98b8
	call L_9975		;98ba
	ld d,l			;98bd
	ld a,h			;98be
L_98BF:
	ld (0980ah),a		;98bf
	ld a,d			;98c2
	and a			;98c3
	jr nz,L_98C8		;98c4
	ld d,000h		;98c6
L_98C8:
	ld (09808h),de		;98c8
L_98CC:
	ld b,003h		;98cc
L_98CE:
	push bc			;98ce
	ld a,003h		;98cf
	sub b			;98d1
	ld b,a			;98d2
	ld hl,098f7h		;98d3
	call 0826ch		;98d6
	ex de,hl			;98d9
	ld a,b			;98da
	ld hl,09808h		;98db
	call 08221h		;98de
	ld a,(hl)			;98e1
	call L_9909		;98e2
	pop bc			;98e5
	djnz L_98CE		;98e6
	ret			;98e8
L_98E9:
	ld a,001h		;98e9
	ld (09808h),a		;98eb
	ld de,00000h		;98ee
	ld (09809h),de		;98f1
	jr L_98CC		;98f5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x98f7..0x98fd  (6 bytes)
DATA_98F7:
	defb 078h,070h,078h,080h,078h,090h	; 98f7

; ======================================================================
; CODIGO 0x98fd..0x9983  (134 bytes)
; ======================================================================


L_98FD:
	call L_9956		;98fd
	cp 029h		;9900
	jr nc,L_98FD		;9902
L_9904:
	add a,00bh		;9904
	ld de,05078h		;9906
L_9909:
	push de			;9909
	ld hl,09983h		;990a
	call 0826ch		;990d
	pop de			;9910
	ld c,(hl)			;9911
	inc hl			;9912
	ld a,001h		;9913
	jp 08218h		;9915
L_9918:
	ld a,(09807h)		;9918
	ld hl,0d1c3h		;991b
	bit 3,(hl)		;991e
	jr z,L_9923		;9920
	inc a			;9922
L_9923:
	jp L_9904		;9923
L_9926:
	ld hl,0d1c3h		;9926
	ld b,(hl)			;9929
	sla b		;992a
	sla b		;992c
	sla b		;992e
	sla b		;9930
	ld a,r		;9932
	rra			;9934
	ld c,a			;9935
	cpl			;9936
	add a,b			;9937
	ld d,a			;9938
	ld a,b			;9939
	call L_9949		;993a
	ld b,a			;993d
	ld a,d			;993e
	call L_9949		;993f
	ld d,a			;9942
	ld a,c			;9943
	call L_9949		;9944
	ld c,d			;9947
	ret			;9948
L_9949:
	push bc			;9949
	ld b,a			;994a
	xor a			;994b
L_994C:
	inc a			;994c
	cp 00ah		;994d
	jr c,L_9952		;994f
	xor a			;9951
L_9952:
	djnz L_994C		;9952
	pop bc			;9954
	ret			;9955
L_9956:
	ld hl,0d1c3h		;9956
	ld b,(hl)			;9959
	sla b		;995a
	sla b		;995c
	sla b		;995e
	sla b		;9960
	ld a,r		;9962
	rra			;9964
	ld c,a			;9965
	cpl			;9966
	add a,b			;9967
	push bc			;9968
	ld b,a			;9969
	xor a			;996a
L_996B:
	inc a			;996b
	cp 02ah		;996c
	jr c,L_9971		;996e
	xor a			;9970
L_9971:
	djnz L_996B		;9971
	pop bc			;9973
	ret			;9974
L_9975:
	ld b,008h		;9975
	ld h,000h		;9977
L_9979:
	add hl,hl			;9979
	ld a,h			;997a
	sub c			;997b
	jr c,L_9980		;997c
	inc l			;997e
	ld h,a			;997f
L_9980:
	djnz L_9979		;9980
	ret			;9982

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9983..0x9c00  (637 bytes)
DATA_9983:
	defb 0edh,099h,0f6h,099h,0ffh,099h,008h,09ah,011h,09ah,01ah,09ah,023h,09ah,02ch,09ah	; 9983  ............#.,.
	defb 035h,09ah,03eh,09ah,047h,09ah,050h,09ah,050h,09ah,05ch,09ah,05ch,09ah,068h,09ah	; 9993  5.>.G.P.P.\.\.h.
	defb 068h,09ah,074h,09ah,074h,09ah,080h,09ah,080h,09ah,08ch,09ah,098h,09ah,0a4h,09ah	; 99a3  h.t.t...........
	defb 0b0h,09ah,0bch,09ah,0bch,09ah,0c8h,09ah,0c8h,09ah,0d4h,09ah,0d4h,09ah,0e0h,09ah	; 99b3  ................
	defb 0e0h,09ah,0ech,09ah,0ech,09ah,0f8h,09ah,004h,09bh,010h,09bh,01ch,09bh,028h,09bh	; 99c3  ..............(.
	defb 028h,09bh,034h,09bh,034h,09bh,040h,09bh,040h,09bh,04ch,09bh,04ch,09bh,058h,09bh	; 99d3  (.4.4.@.@.L.L.X.
	defb 058h,09bh,064h,09bh,070h,09bh,07ch,09bh,088h,09bh,002h,086h,001h,002h,003h,004h	; 99e3  X.d.p.|.........
	defb 005h,006h,000h,002h,086h,000h,008h,007h,004h,000h,009h,000h,002h,086h,00ah,002h	; 99f3  ................
	defb 00bh,00ch,005h,00dh,000h,002h,086h,00ah,002h,00eh,00fh,010h,006h,000h,002h,086h	; 9a03  ................
	defb 011h,008h,012h,00fh,000h,009h,000h,002h,086h,001h,013h,012h,014h,010h,006h,000h	; 9a13  ................
	defb 002h,086h,001h,013h,015h,014h,005h,006h,000h,002h,086h,00ah,002h,007h,004h,000h	; 9a23  ................
	defb 009h,000h,002h,086h,001h,002h,015h,00fh,005h,006h,000h,002h,086h,001h,002h,012h	; 9a33  ................
	defb 00fh,010h,006h,000h,002h,086h,000h,000h,007h,007h,000h,000h,000h,003h,089h,000h	; 9a43  ................
	defb 04eh,04fh,050h,051h,052h,053h,054h,055h,000h,003h,089h,046h,047h,048h,049h,04ah	; 9a53  NOPQRSTU...FGHIJ
	defb 04bh,04ch,045h,04dh,000h,003h,089h,000h,041h,000h,035h,042h,043h,044h,045h,040h	; 9a63  KLEM....A.5BCDE@
	defb 000h,003h,089h,000h,03bh,000h,035h,03ch,03dh,03eh,03fh,040h,000h,003h,089h,000h	; 9a73  ......5<=>?@....
	defb 034h,000h,035h,036h,037h,038h,039h,03ah,000h,003h,089h,000h,02dh,000h,02eh,02fh	; 9a83  4.56789:....-../
	defb 030h,031h,032h,033h,000h,003h,089h,024h,025h,026h,027h,028h,029h,02ah,02bh,02ch	; 9a93  0123...$%&'()*+,
	defb 000h,003h,089h,000h,01eh,01fh,000h,020h,021h,022h,023h,000h,000h,003h,089h,016h	; 9aa3  ....... !"#.....
	defb 017h,018h,019h,01ah,01bh,01ch,01dh,000h,000h,003h,089h,000h,000h,000h,0b5h,0b6h	; 9ab3  ................
	defb 0b7h,0b8h,0b9h,0bah,000h,003h,089h,0afh,0b0h,0a7h,0b1h,0b2h,0aah,0abh,0b4h,000h	; 9ac3  ................
	defb 000h,003h,089h,0a5h,0a6h,0a7h,0a8h,0adh,0aah,0abh,0aeh,000h,000h,003h,089h,0a5h	; 9ad3  ................
	defb 0a6h,0a7h,0a8h,0a9h,0aah,0abh,0ach,000h,000h,003h,089h,0a3h,09bh,09ch,0a4h,09eh	; 9ae3  ................
	defb 09fh,0a0h,0a1h,0a2h,000h,003h,089h,09ah,09bh,09ch,09dh,09eh,09fh,0a0h,0a1h,0a2h	; 9af3  ................
	defb 000h,003h,089h,091h,092h,093h,094h,095h,096h,097h,098h,099h,000h,003h,089h,089h	; 9b03  ................
	defb 08ah,08bh,08ch,08dh,08eh,000h,08fh,090h,000h,003h,089h,080h,081h,082h,083h,084h	; 9b13  ................
	defb 085h,086h,087h,088h,000h,003h,089h,000h,000h,000h,000h,07fh,000h,06dh,06eh,06fh	; 9b23  .............mno
	defb 000h,003h,089h,000h,07dh,000h,000h,07eh,000h,06dh,06eh,06fh,000h,003h,089h,07bh	; 9b33  ....}..~.mno...{
	defb 07ch,000h,077h,07ah,000h,06dh,06eh,06fh,000h,003h,089h,075h,079h,000h,077h,07ah	; 9b43  |.wz.mno...uy.wz
	defb 000h,06dh,06eh,06fh,000h,003h,089h,075h,076h,000h,077h,073h,078h,06dh,06eh,06fh	; 9b53  .mno...uv.wsxmno
	defb 000h,003h,089h,070h,071h,000h,072h,073h,074h,06dh,06eh,06fh,000h,003h,089h,067h	; 9b63  ...pq.rstmno...g
	defb 068h,069h,06ah,06bh,06ch,06dh,06eh,06fh,000h,003h,089h,05fh,060h,061h,062h,05ah	; 9b73  hijklmno..._`abZ
	defb 063h,064h,065h,066h,000h,003h,089h,056h,057h,058h,059h,05ah,05bh,05ch,05dh,05eh	; 9b83  cdef...VWXYZ[\]^
	defb 000h,0b1h,0b2h,0b3h,0a2h,008h,0ceh,086h,0a3h,0b4h,0b5h,0b6h,0b7h,0a2h,008h,0ceh	; 9b93  ................
	defb 086h,0a3h,0b8h,0b9h,0bah,0bbh,0a2h,008h,0ceh,086h,0a3h,0bch,0bdh,0beh,0bfh,0a2h	; 9ba3  ................
	defb 008h,0ceh,086h,0a3h,0c0h,0c1h,0c2h,09ch,0c3h,008h,09ch,084h,0c4h,09ch,09ch,0c6h	; 9bb3  ................
	defb 00dh,0ceh,081h,0c8h,00dh,0ceh,081h,0a2h,00dh,0ceh,081h,0a2h,00dh,0ceh,081h,0a2h	; 9bc3  ................
	defb 00dh,0ceh,081h,0a2h,00dh,0ceh,081h,0a2h,00dh,0ceh,081h,0cch,00dh,09ch,000h,02ch	; 9bd3  ...............,
	defb 092h,047h,0afh,0cdh,00ch,082h,021h,02eh,092h,035h,0cah,011h,09ch,03ah,029h,092h	; 9be3  .G....!..5...:).
	defb 03dh,0c2h,004h,09ch,021h,02ah,092h,07eh,0c6h,018h,077h,023h,07eh	; 9bf3  =...!*.~..w#~
