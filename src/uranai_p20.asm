; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p20 (se ejecuta en 0x9800)
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
	jp L_9810		;9800
L_9803:
	jp L_9870		;9803

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9806..0x9810  (10 bytes)
DATA_9806:
	defb 0edh,073h,0feh,0e0h,0cdh,00eh,098h,0c9h,021h,03ah	; 9806  .s......!:

; ======================================================================
; CODIGO 0x9810..0x9876  (102 bytes)
; ======================================================================


L_9810:
	call L_987C		;9810
	ld hl,09808h		;9813
	ld de,09809h		;9816
	ld (hl),000h		;9819
	ld bc,00006h		;981b
	ldir		;981e
	ld de,09cf6h		;9820
	ld hl,0fb00h		;9823
	call 0821bh		;9826
	xor a			;9829
	call 09203h		;982a
	ld a,0fbh		;982d
	call 09206h		;982f
	call 08212h		;9832
	call 0826fh		;9835
	call 08260h		;9838
	call 08251h		;983b
	call L_9AD1		;983e
	ld hl,09ad7h		;9841
	ld de,00000h		;9844
	ld c,020h		;9847
	ld a,001h		;9849
	call 08218h		;984b
	ld a,001h		;984e
	call 09203h		;9850
	ld a,07ch		;9853
	call 09206h		;9855
	ld hl,09c95h		;9858
	ld de,02870h		;985b
	ld c,008h		;985e
	ld a,001h		;9860
	call 08218h		;9862
	ld a,080h		;9865
	call L_9890		;9867
	call 08415h		;986a
	jp 08209h		;986d
L_9870:
	ld a,(09806h)		;9870
	call 0822dh		;9873

; ----------------------------------------------------------------------
; DATOS saltos_9876: 3 destinos del despachador (call 0x822D en 0x9873) (5
;   bytes)
;   0x9876..0x987b  (5 bytes)
DATA_saltos_9876:
	defw 0989ah,098c7h	; 9876  -> L_989A L_98C7
	defb 0cbh	; 987a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x987b..0x987c  (1 bytes)
DATA_987B:
	defb 09ah	; 987b

; ======================================================================
; CODIGO 0x987c..0x98d0  (84 bytes)
; ======================================================================


L_987C:
	ld a,0ffh		;987c
	ld (09806h),a		;987e
L_9881:
	ld hl,09806h		;9881
	inc (hl)			;9884
L_9885:
	ld a,0ffh		;9885
	ld (09807h),a		;9887
L_988A:
	ld hl,09807h		;988a
	inc (hl)			;988d
	or a			;988e
	ret			;988f
L_9890:
	ld (09808h),a		;9890
	or a			;9893
	ret			;9894
L_9895:
	ld hl,09808h		;9895
	dec (hl)			;9898
	ret			;9899
L_989A:
	ld a,(09807h)		;989a
	and a			;989d
	jp nz,L_98BC		;989e
	call L_9895		;98a1
	ret nz			;98a4
	ld hl,09cbeh		;98a5
	ld de,03870h		;98a8
	ld c,006h		;98ab
	ld a,001h		;98ad
	call 08218h		;98af
	call 0839dh		;98b2
	ld a,040h		;98b5
	call L_9890		;98b7
	jr L_988A		;98ba
L_98BC:
	call L_9895		;98bc
	ret nz			;98bf
	ld a,040h		;98c0
	call L_9890		;98c2
	jr L_9881		;98c5
L_98C7:
	ld hl,09807h		;98c7
	ld a,(09807h)		;98ca
	call 0822dh		;98cd

; ----------------------------------------------------------------------
; DATOS saltos_98D0: 4 destinos del despachador (call 0x822D en 0x98CD) (7
;   bytes)
;   0x98d0..0x98d7  (7 bytes)
DATA_saltos_98D0:
	defw 098d8h,09939h,099d8h	; 98d0  -> L_98D8 L_9939 L_99D8
	defb 055h	; 98d6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x98d7..0x98d8  (1 bytes)
DATA_98D7:
	defb 09ah	; 98d7

; ======================================================================
; CODIGO 0x98d8..0x9921  (73 bytes)
; ======================================================================


L_98D8:
	call L_9895		;98d8
	ret nz			;98db
	call 08393h		;98dc
	call L_9926		;98df
	ld hl,09809h		;98e2
	inc (hl)			;98e5
	ld hl,0d280h		;98e6
	ld de,08000h		;98e9
	ld a,007h		;98ec
	ld (0980fh),a		;98ee
	ld a,(0980eh)		;98f1
	call L_9A9E		;98f4
	ld hl,0d280h		;98f7
	ld a,004h		;98fa
	call 08221h		;98fc
	ld de,08000h		;98ff
	ld a,018h		;9902
	ld (0980fh),a		;9904
	ld a,(0980eh)		;9907
	add a,004h		;990a
	call L_9A9E		;990c
	ld a,(09809h)		;990f
	dec a			;9912
	ld hl,09921h		;9913
	call 08221h		;9916
	ld a,(hl)			;9919
	ld (0980ah),a		;991a
	or a			;991d
	jp L_988A		;991e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9921..0x9926  (5 bytes)
DATA_9921:
	defb 024h,01eh,018h,012h,012h	; 9921

; ======================================================================
; CODIGO 0x9926..0x9934  (14 bytes)
; ======================================================================


L_9926:
	ld a,(09809h)		;9926
	ld hl,09934h		;9929
	call 08221h		;992c
	ld a,(hl)			;992f
	ld (0980eh),a		;9930
	ret			;9933

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9934..0x9939  (5 bytes)
DATA_9934:
	defb 0a0h,080h,060h,0c0h,0c0h	; 9934

; ======================================================================
; CODIGO 0x9939..0x99b8  (127 bytes)
; ======================================================================


L_9939:
	ld ix,0d280h		;9939
	ld a,007h		;993d
	call L_9954		;993f
	ld ix,0d280h		;9942
	ld bc,00004h		;9946
	add ix,bc		;9949
	ld a,018h		;994b
	call L_9954		;994d
	or a			;9950
	jp L_9969		;9951
L_9954:
	ld (0980fh),a		;9954
	ld a,(ix+000h)		;9957
	add a,004h		;995a
	ld e,a			;995c
	ld d,(ix+001h)		;995d
	ld a,(ix+002h)		;9960
	push ix		;9963
	pop hl			;9965
	jp L_9A9E		;9966
L_9969:
	ld hl,0980ah		;9969
	dec (hl)			;996c
	ret nz			;996d
	ld a,040h		;996e
	call L_9890		;9970
	call 08398h		;9973
	ld a,(0980eh)		;9976
	cp 0c0h		;9979
	jp z,L_988A		;997b
	call L_9984		;997e
	jp L_9885		;9981
L_9984:
	ld a,(09809h)		;9984
	dec a			;9987
	sla a		;9988
	ld hl,099b8h		;998a
	call 08221h		;998d
	ld e,(hl)			;9990
	inc hl			;9991
	ld d,(hl)			;9992
	ex de,hl			;9993
	push hl			;9994
	ld a,(09809h)		;9995
	dec a			;9998
	sla a		;9999
	ld hl,099c0h		;999b
	call 08221h		;999e
	ld d,(hl)			;99a1
	inc hl			;99a2
	ld e,(hl)			;99a3
	pop hl			;99a4
	ld c,004h		;99a5
	ld a,001h		;99a7
	or a			;99a9
	call 08218h		;99aa
	ld de,000d8h		;99ad
	ld hl,0d280h		;99b0
	ld a,0c0h		;99b3
	jp L_9A9E		;99b5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99b8..0x99d8  (32 bytes)
DATA_99B8:
	defb 0c8h,099h,0cch,099h,0d0h,099h,0d4h,099h,080h,098h,080h,080h,080h,068h,0a8h,098h	; 99b8  .............h..
	defb 080h,00ch,065h,000h,080h,00ch,059h,000h,080h,00ch,04dh,000h,080h,00ch,071h,000h	; 99c8  ..e...Y...M...q.

; ======================================================================
; CODIGO 0x99d8..0x9a1c  (68 bytes)
; ======================================================================


L_99D8:
	ld a,(0980bh)		;99d8
	sla a		;99db
	ld hl,09a1ch		;99dd
	call 08221h		;99e0
	ld d,(hl)			;99e3
	inc hl			;99e4
	ld e,(hl)			;99e5
	ld a,007h		;99e6
	ld (0980fh),a		;99e8
	ld a,d			;99eb
	cp 0ffh		;99ec
	jp z,L_9A48		;99ee
	ld hl,0d280h		;99f1
	ld a,0c0h		;99f4
	call L_9A9E		;99f6
	ld hl,0980bh		;99f9
	ld a,(hl)			;99fc
	inc (hl)			;99fd
	sla a		;99fe
	ld hl,09a1ch		;9a00
	call 08221h		;9a03
	ld d,(hl)			;9a06
	inc hl			;9a07
	ld e,(hl)			;9a08
	ld a,018h		;9a09
	ld (0980fh),a		;9a0b
	ld hl,0d280h		;9a0e
	ld a,004h		;9a11
	call 08221h		;9a13
	ld a,0c4h		;9a16
	or a			;9a18
	jp L_9A9E		;9a19

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a1c..0x9a48  (44 bytes)
DATA_9A1C:
	defb 080h,048h,082h,043h,085h,040h,088h,03dh,08bh,03ah,08dh,03ah,08fh,039h,091h,039h	; 9a1c  .H.C.@.=.:.:.9.9
	defb 093h,039h,095h,039h,097h,039h,099h,03ah,09bh,03bh,09dh,03ch,09fh,03dh,0a1h,03fh	; 9a2c  .9.9.9.:...<.=.?
	defb 0a3h,042h,0a5h,045h,0a6h,048h,0a7h,04ch,0a8h,050h,0ffh,0ffh	; 9a3c  .B.E.H.L.P..

; ======================================================================
; CODIGO 0x9a48..0x9ad7  (143 bytes)
; ======================================================================


L_9A48:
	ld a,040h		;9a48
	call L_9890		;9a4a
	ld a,010h		;9a4d
	ld (0980ah),a		;9a4f
	jp L_988A		;9a52
L_9A55:
	ld ix,0d280h		;9a55
	ld a,007h		;9a59
	call L_9954		;9a5b
	ld ix,0d280h		;9a5e
	ld bc,00004h		;9a62
	add ix,bc		;9a65
	ld a,018h		;9a67
	call L_9A6F		;9a69
	jp L_9A84		;9a6c
L_9A6F:
	ld (0980fh),a		;9a6f
	ld a,(ix+000h)		;9a72
	add a,004h		;9a75
	ld e,a			;9a77
	ld d,(ix+001h)		;9a78
	ld a,(ix+002h)		;9a7b
	push ix		;9a7e
	pop hl			;9a80
	jp L_9A9E		;9a81
L_9A84:
	or a			;9a84
	ld hl,0980ah		;9a85
	dec (hl)			;9a88
	ret nz			;9a89
	call 083a2h		;9a8a
	call L_9984		;9a8d
	ld de,000d8h		;9a90
	ld hl,0d280h		;9a93
	ld a,0c0h		;9a96
	call L_9A9E		;9a98
	jp L_9881		;9a9b
L_9A9E:
	push af			;9a9e
	ld a,010h		;9a9f
	add a,d			;9aa1
	ld b,a			;9aa2
	ld a,010h		;9aa3
	add a,e			;9aa5
	ld c,a			;9aa6
	pop af			;9aa7
	push bc			;9aa8
	push de			;9aa9
	call L_9AB7		;9aaa
	ld d,b			;9aad
	call L_9AB7		;9aae
	pop de			;9ab1
	ld e,c			;9ab2
	call L_9AB7		;9ab3
	pop de			;9ab6
L_9AB7:
	ld (hl),e			;9ab7
	inc hl			;9ab8
	ld (hl),d			;9ab9
	inc hl			;9aba
	ld (hl),a			;9abb
	inc hl			;9abc
	push af			;9abd
	ld a,(0980fh)		;9abe
	ld (hl),a			;9ac1
	pop af			;9ac2
	inc hl			;9ac3
	inc hl			;9ac4
	inc hl			;9ac5
	inc hl			;9ac6
	inc hl			;9ac7
	add a,008h		;9ac8
	ret			;9aca
L_9ACB:
	call L_9895		;9acb
	ret nz			;9ace
	scf			;9acf
	ret			;9ad0
L_9AD1:
	ld hl,09cd6h		;9ad1
	jp 082dbh		;9ad4

; ----------------------------------------------------------------------
; DATOS casillas_9AD7: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x984B (446 bytes)
;   0x9ad7..0x9c95  (446 bytes)
DATA_casillas_9AD7:
	defb 080h,007h,001h,081h,007h,010h,008h,002h,007h,080h,00ah,009h,004h,013h,008h,014h	; 9ad7  ................
	defb 082h,015h,016h,006h,014h,004h,013h,080h,007h,017h,009h,01eh,083h,01fh,020h,01eh	; 9ae7  .............. .
	defb 080h,003h,021h,081h,01eh,080h,009h,024h,081h,01eh,080h,003h,02dh,083h,033h,01eh	; 9af7  ..!....$....-.3.
	defb 034h,009h,01eh,080h,004h,035h,081h,01eh,080h,005h,039h,007h,01eh,086h,03eh,01eh	; 9b07  4....5....9...>.
	defb 03fh,033h,01eh,034h,009h,01eh,080h,003h,040h,080h,003h,030h,080h,004h,043h,007h	; 9b17  ?3.4....@..0..C.
	defb 01eh,086h,03eh,01eh,03fh,033h,01eh,034h,004h,01eh,085h,07bh,07ch,02ch,027h,0f2h	; 9b27  ..>.?3.4...{|,'.
	defb 080h,004h,047h,081h,01eh,080h,006h,04bh,006h,01eh,086h,03eh,01eh,03fh,033h,01eh	; 9b37  ..G....K...>.?3.
	defb 034h,006h,01eh,083h,051h,052h,0f3h,080h,00bh,053h,006h,01eh,086h,03eh,01eh,03fh	; 9b47  4...QR...S...>.?
	defb 033h,01eh,034h,006h,01eh,080h,007h,05eh,081h,01eh,080h,006h,065h,08eh,028h,029h	; 9b57  3.4....^....e.()
	defb 06bh,06ch,02ch,01eh,03eh,01eh,03fh,033h,01eh,034h,01eh,028h,080h,003h,0a2h,081h	; 9b67  kl,.>.?3.4.(....
	defb 02ch,080h,00eh,06dh,006h,01eh,086h,03eh,01eh,03fh,033h,01eh,034h,006h,01eh,081h	; 9b77  ,..m...>.?3.4...
	defb 036h,080h,00dh,07eh,081h,027h,080h,003h,02ah,088h,01eh,01eh,03eh,01eh,03fh,033h	; 9b87  6..~.'..*...>.?3
	defb 01eh,034h,007h,01eh,080h,004h,08bh,081h,01eh,080h,007h,08fh,007h,01eh,086h,03eh	; 9b97  .4.............>
	defb 01eh,03fh,033h,01eh,034h,007h,01eh,080h,00ch,096h,084h,027h,0b1h,0b2h,02ch,003h	; 9ba7  .?3.4......'..,.
	defb 01eh,086h,03eh,01eh,03fh,033h,01eh,034h,003h,01eh,084h,0bdh,06ch,02ch,027h,080h	; 9bb7  ..>.?3.4....l,'.
	defb 00ch,0a5h,007h,01eh,086h,03eh,01eh,03fh,033h,01eh,034h,008h,01eh,083h,0b3h,0b4h	; 9bc7  .....>.?3.4.....
	defb 01eh,080h,005h,0b5h,084h,0bbh,0bah,0bch,027h,080h,003h,027h,089h,0bdh,06ch,02ch	; 9bd7  ........'..'..l,
	defb 03eh,01eh,03fh,033h,01eh,034h,009h,01eh,082h,0beh,027h,080h,005h,0bfh,083h,0f2h	; 9be7  >.?3.4....'.....
	defb 0c4h,0c5h,007h,01eh,086h,03eh,01eh,03fh,033h,01eh,034h,009h,01eh,080h,009h,0c6h	; 9bf7  .....>.?3.4.....
	defb 080h,003h,027h,083h,0a3h,0a4h,02ch,002h,01eh,086h,03eh,01eh,03fh,033h,01eh,034h	; 9c07  ..'...,...>.?3.4
	defb 009h,01eh,080h,005h,0cfh,081h,0f7h,083h,0d4h,0d5h,0d6h,008h,01eh,086h,03eh,01eh	; 9c17  ..............>.
	defb 03fh,0d7h,0d8h,034h,00bh,01eh,080h,006h,0d9h,005h,027h,08ah,06bh,06ch,02ch,01eh	; 9c27  ?..4......'.kl,.
	defb 03eh,0dfh,0e6h,0e1h,0e2h,034h,005h,0e3h,010h,0e4h,005h,0e3h,081h,03eh,080h,004h	; 9c37  >....4.......>..
	defb 0e5h,006h,0e9h,010h,0ebh,006h,0e9h,082h,0eah,0ech,040h,0edh,0c0h,0eeh,0efh,0eeh	; 9c47  ..........@.....
	defb 0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh	; 9c57  ................
	defb 0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0efh,0f0h,0f1h,0f0h	; 9c67  ................
	defb 0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h	; 9c77  ................
	defb 0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,0f0h,0f1h,000h	; 9c87  ..............

; ----------------------------------------------------------------------
; DATOS casillas_9C95: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9862 (41 bytes)
;   0x9c95..0x9cbe  (41 bytes)
DATA_casillas_9C95:
	defb 080h,008h,001h,002h,001h,080h,004h,009h,084h,001h,00dh,001h,001h,080h,004h,00eh	; 9c95  ................
	defb 083h,007h,012h,001h,080h,006h,013h,001h,001h,080h,00ah,019h,001h,001h,080h,00fh	; 9ca5  ................
	defb 023h,086h,001h,032h,033h,001h,034h,035h,000h	; 9cb5  #..23.45.

; ----------------------------------------------------------------------
; DATOS casillas_9CBE: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x98AF (24 bytes)
;   0x9cbe..0x9cd6  (24 bytes)
DATA_casillas_9CBE:
	defb 080h,003h,036h,083h,007h,007h,008h,080h,004h,039h,082h,001h,00dh,080h,004h,03dh	; 9cbe  ..6......9.....=
	defb 001h,007h,080h,00ch,041h,001h,020h,000h	; 9cce  ....A. .

; ----------------------------------------------------------------------
; DATOS paleta_9CD6: paleta: 16 colores de 2 bytes; lo usa 0x9AD4 (32 bytes)
;   0x9cd6..0x9cf6  (32 bytes)
DATA_paleta_9CD6:
	defb 000h,000h,053h,006h,011h,003h,005h,001h,027h,002h,042h,004h,030h,000h,074h,006h	; 9cd6  ..S.....'.B.0.t.
	defb 070h,000h,070h,005h,060h,007h,040h,003h,055h,005h,055h,005h,077h,007h,000h,000h	; 9ce6  p.p.`.@.U.U.w...

; ----------------------------------------------------------------------
; DATOS vram_9CF6: RLE a la VRAM hasta el 0; lo usa 0x9826 (600 bytes)
;   0x9cf6..0x9f4e  (600 bytes)
DATA_vram_9CF6:
	defb 00dh,000h,082h,003h,007h,009h,000h,082h,01fh,0f0h,003h,000h,002h,0e1h,00bh,000h	; 9cf6  ................
	defb 004h,003h,082h,000h,01fh,009h,000h,081h,00fh,003h,0ffh,083h,0dfh,01eh,0ffh,008h	; 9d06  ................
	defb 000h,088h,0f8h,028h,018h,028h,0f0h,040h,0feh,001h,00eh,000h,002h,080h,008h,000h	; 9d16  ...(.(.@........
	defb 081h,018h,003h,0f8h,084h,0f0h,0c0h,001h,0ffh,00eh,000h,002h,080h,003h,000h,002h	; 9d26  ................
	defb 01fh,004h,000h,086h,07fh,000h,000h,001h,002h,001h,004h,000h,002h,0e1h,004h,000h	; 9d36  ................
	defb 087h,0e1h,020h,021h,0c0h,001h,000h,081h,004h,01fh,081h,000h,005h,07fh,002h,000h	; 9d46  .. !............
	defb 084h,002h,003h,001h,000h,003h,0ffh,082h,0dfh,01eh,004h,0ffh,084h,0dfh,01fh,01fh	; 9d56  ................
	defb 03fh,003h,0ffh,085h,002h,001h,002h,0ffh,0ffh,004h,000h,087h,0ffh,0c0h,040h,0c0h	; 9d66  ?.............@.
	defb 080h,080h,000h,003h,080h,087h,000h,0a0h,060h,0a0h,060h,0a0h,0c0h,006h,000h,004h	; 9d76  ........`.`.....
	defb 0ffh,081h,000h,005h,0ffh,003h,0c0h,002h,080h,081h,000h,003h,080h,082h,000h,060h	; 9d86  ...............`
	defb 004h,0e0h,081h,0c0h,00eh,000h,083h,003h,000h,078h,004h,000h,081h,078h,008h,000h	; 9d96  .........x...x..
	defb 088h,0d3h,030h,070h,010h,000h,010h,001h,0f1h,009h,000h,002h,007h,005h,07fh,008h	; 9da6  ..0p............
	defb 000h,083h,030h,0ffh,0cfh,004h,0ffh,081h,07eh,008h,000h,081h,0ffh,004h,000h,083h	; 9db6  ..0.....~.......
	defb 0f8h,040h,0f0h,008h,000h,088h,0a0h,060h,0a0h,060h,0a0h,060h,0a0h,060h,009h,000h	; 9dc6  .@.....`.`.`.`..
	defb 005h,0ffh,082h,0c7h,00fh,008h,000h,081h,060h,007h,0e0h,08ah,008h,010h,020h,040h	; 9dd6  ........`..... @
	defb 000h,000h,008h,010h,028h,070h,006h,000h,094h,070h,030h,000h,010h,001h,051h,030h	; 9de6  ....(p...p0...Q0
	defb 050h,030h,050h,031h,051h,030h,050h,030h,050h,007h,00fh,01fh,03fh,005h,07fh,081h	; 9df6  P0P1Q0P0P...?...
	defb 077h,006h,007h,082h,0bfh,0dfh,003h,0ffh,081h,0feh,005h,0ffh,081h,0feh,004h,0ffh	; 9e06  w...............
	defb 003h,000h,083h,0f8h,040h,0f0h,003h,000h,083h,0f8h,040h,0f0h,004h,000h,090h,0a0h	; 9e16  ....@.....@.....
	defb 060h,0a0h,060h,0a0h,060h,0a0h,060h,0a0h,060h,0a0h,060h,0a0h,060h,0a0h,040h,004h	; 9e26  `.`.`.`.`.`.`.@.
	defb 0ffh,082h,0c7h,00fh,004h,0ffh,082h,0c7h,00fh,004h,0ffh,00fh,0e0h,081h,0c0h,018h	; 9e36  ................
	defb 000h,083h,01fh,000h,001h,004h,000h,081h,001h,019h,000h,007h,03fh,008h,000h,088h	; 9e46  ............?...
	defb 060h,0a0h,0feh,003h,005h,003h,005h,07eh,018h,000h,002h,0e0h,081h,002h,004h,0ffh	; 9e56  `......~........
	defb 081h,0feh,010h,000h,081h,03fh,004h,000h,087h,005h,003h,005h,003h,005h,003h,007h	; 9e66  .....?..........
	defb 004h,000h,081h,0c0h,004h,000h,081h,0ffh,005h,000h,081h,0ffh,005h,000h,00ah,07fh	; 9e76  ................
	defb 081h,07ch,004h,07fh,081h,03fh,005h,0ffh,006h,000h,004h,0ffh,081h,07fh,004h,000h	; 9e86  .|...?..........
	defb 081h,0f0h,005h,000h,081h,0e0h,004h,000h,091h,0e0h,060h,0a0h,060h,0a0h,060h,0a0h	; 9e96  ..........`.`.`.
	defb 060h,0a0h,060h,0a0h,060h,0a0h,060h,0a0h,060h,000h,005h,0ffh,005h,00fh,081h,01fh	; 9ea6  `.`.`.`.`.......
	defb 004h,0ffh,081h,060h,00fh,0e0h,008h,000h,088h,01fh,001h,000h,001h,000h,001h,002h	; 9eb6  ...`............
	defb 001h,008h,000h,085h,0c0h,040h,0c0h,040h,0c0h,003h,080h,009h,000h,004h,03fh,003h	; 9ec6  .....@.@......?.
	defb 07fh,008h,000h,081h,040h,004h,0c0h,003h,080h,00bh,000h,084h,01ch,007h,043h,001h	; 9ed6  ....@.........C.
	defb 00eh,000h,083h,080h,040h,0a0h,00bh,000h,085h,064h,079h,07ch,03fh,01fh,00dh,000h	; 9ee6  ....@....dy|?...
	defb 08dh,080h,0c0h,0e0h,002h,001h,002h,001h,002h,001h,002h,001h,000h,001h,006h,000h	; 9ef6  ................
	defb 007h,080h,089h,040h,0c0h,078h,0ach,0d8h,018h,030h,060h,0c0h,007h,07fh,003h,03fh	; 9f06  ...@.x...0`....?
	defb 002h,01fh,002h,00fh,082h,007h,003h,007h,080h,002h,0c0h,087h,0e8h,0dch,038h,0f8h	; 9f16  ..............8.
	defb 0f0h,0e0h,0c0h,005h,000h,084h,020h,031h,01ah,00fh,007h,000h,088h,060h,0a0h,060h	; 9f26  ...... 1.....`.`
	defb 0a0h,060h,0a0h,040h,080h,008h,000h,004h,01fh,003h,03fh,082h,01fh,00fh,007h,000h	; 9f36  .`.@......?.....
	defb 006h,0e0h,082h,0c0h,080h,008h,000h,000h	; 9f46  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f4e..0xa000  (178 bytes)
DATA_9F4E:
	defb 0feh,004h,030h,014h,07eh,0feh,0ffh,028h,00fh,0cdh,0bdh,09fh,012h,03ah,041h,09ah	; 9f4e  ..0.~..(.....:A.
	defb 03ch,032h,041h,09ah,023h,013h,018h,0e5h,0cdh,0dch,09fh,011h,00fh,000h,019h,0e5h	; 9f5e  <2A.#...........
	defb 011h,037h,0a0h,0cdh,011h,0a0h,0e1h,023h,0e5h,011h,03ah,0a0h,0cdh,011h,0a0h,0e1h	; 9f6e  .7.....#..:.....
	defb 023h,0e5h,011h,03dh,0a0h,0cdh,011h,0a0h,0e1h,023h,0e5h,011h,048h,0a0h,0cdh,011h	; 9f7e  #..=.....#..H...
	defb 0a0h,0e1h,023h,0e5h,011h,04bh,0a0h,0cdh,011h,0a0h,0e1h,023h,023h,0e5h,07eh,021h	; 9f8e  ..#..K.....##.~!
	defb 0b0h,0a0h,087h,0cdh,021h,082h,011h,057h,0a0h,006h,002h,07eh,012h,023h,013h,010h	; 9f9e  ....!..W...~.#..
	defb 0fah,0e1h,023h,07eh,0b7h,03eh,063h,028h,002h,03eh,064h,032h,062h,0a0h,0c9h,023h	; 9fae  ..#~.>c(.>d2b..#
	defb 047h,0feh,043h,028h,007h,0feh,044h,028h,00fh,078h,02bh,0c9h,07eh,0d6h,006h,0feh	; 9fbe  G.C(..D(.x+.~...
	defb 014h,038h,002h,0d6h,005h,0c6h,0beh,0c9h,07eh,0d6h,01ah,0c6h,0d2h,0c9h,0cdh,0ech	; 9fce  .8......~.......
	defb 09fh,029h,029h,029h,029h,0e5h,0c1h,029h,009h,011h,000h,0d7h,019h,0c9h,03ah,0d6h	; 9fde  .))))..)......:.
	defb 0d1h,021h,0fah,09fh,0cdh,06ch,082h,07eh,06fh,026h,000h,0c9h,0f2h,0dah,0f1h,0dah	; 9fee  .!...l.~o&......
	defb 0f0h,0dah	; 9ffe
