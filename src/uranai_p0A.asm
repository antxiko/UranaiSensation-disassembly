; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p0A (se ejecuta en 0x9800)
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
	jp L_9822		;9800
L_9803:
	jp L_9CA8		;9803
L_9806:
	jp L_9822		;9806
L_9809:
	jp L_9822		;9809
L_980C:
	jp L_9822		;980c
L_980F:
	jp L_9822		;980f
L_9812:
	jp L_9822		;9812
L_9815:
	jp L_9822		;9815
L_9818:
	jp L_9822		;9818
L_981B:
	jp L_9822		;981b
L_981E:
	jp L_9C49		;981e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9821..0x9822  (1 bytes)
DATA_9821:
	defb 032h	; 9821

; ======================================================================
; CODIGO 0x9822..0x98a7  (133 bytes)
; ======================================================================


L_9822:
	call L_9921		;9822
	ld a,002h		;9825
	call 09209h		;9827
	xor a			;982a
	call 09203h		;982b
	ld a,0e6h		;982e
	call 09206h		;9830
	call 08212h		;9833
	call 0826fh		;9836
	call 08260h		;9839
	call L_9EDE		;983c
	call 0920fh		;983f
	call L_9930		;9842
	ld a,001h		;9845
	call 09203h		;9847
	ld a,094h		;984a
	call 09206h		;984c
	call L_993D		;984f
	call L_987D		;9852
	call L_988B		;9855
	ld a,(0daf1h)		;9858
	call L_9C93		;985b
	ld hl,020a8h		;985e
	ex de,hl			;9861
	call L_9C53		;9862
	ld hl,098a7h		;9865
	call 08275h		;9868
	call L_9894		;986b
	call L_98B2		;986e
	ld hl,020a0h		;9871
	ld de,00e04h		;9874
	ld bc,02010h		;9877
	jp L_9E48		;987a
L_987D:
	ld bc,0a018h		;987d
	ld hl,0189eh		;9880
	ld de,02870h		;9883
	ld a,010h		;9886
	jp 0820ch		;9888
L_988B:
	ld hl,0189eh		;988b
	ld de,0a018h		;988e
	jp L_9D10		;9891
L_9894:
	ld de,048a8h		;9894
	ld a,0fbh		;9897
	ld b,003h		;9899
L_989B:
	push af			;989b
	call 0827eh		;989c
	call 082a8h		;989f
	pop af			;98a2
	inc a			;98a3
	djnz L_989B		;98a4
	ret			;98a6

; ----------------------------------------------------------------------
; DATOS texto_98A7: texto: x, y y las letras hasta 0xFF; lo usa 0x9868 (8
;   bytes)
;   0x98a7..0x98af  (8 bytes)
DATA_texto_98A7:
	defb 040h,0a8h,019h,000h,000h,000h,01ah,0ffh	; 98a7  @.......

; ----------------------------------------------------------------------
; DATOS texto_98AF: texto: x, y y las letras hasta 0xFF; lo usa 0x98D3 (3
;   bytes)
;   0x98af..0x98b2  (3 bytes)
DATA_texto_98AF:
	defb 0cbh,00dh,0ffh	; 98af

; ======================================================================
; CODIGO 0x98b2..0x98d6  (36 bytes)
; ======================================================================


L_98B2:
	ld a,(09232h)		;98b2
	ld hl,098d6h		;98b5
	call 0826ch		;98b8
	ld bc,000ffh		;98bb
	ld a,b			;98be
	ld (0d1cch),a		;98bf
	ld de,070a8h		;98c2
	call 08278h		;98c5
	ld a,0fdh		;98c8
	call 0827eh		;98ca
	call 082a8h		;98cd
	ld hl,098afh		;98d0
	jp 08278h		;98d3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x98d6..0x9921  (75 bytes)
DATA_98D6:
	defb 0eeh,098h,0f3h,098h,0f8h,098h,0fch,098h,000h,099h,003h,099h,006h,099h,00bh,099h	; 98d6  ................
	defb 010h,099h,014h,099h,018h,099h,01dh,099h,01ah,008h,026h,003h,0ffh,007h,02eh,0edh	; 98e6  ..........&.....
	defb 003h,0ffh,00fh,003h,0c4h,0ffh,0d9h,006h,002h,0ffh,00ch,00ch,0ffh,0dch,0f1h,0ffh	; 98f6  ................
	defb 013h,02eh,0ceh,02eh,0ffh,013h,02eh,006h,012h,0ffh,0c4h,02eh,0cdh,0ffh,01fh,006h	; 9906  ................
	defb 012h,0ffh,01eh,003h,01dh,002h,0ffh,00fh,003h,0eeh,0ffh	; 9916  ...........

; ======================================================================
; CODIGO 0x9921..0x9988  (103 bytes)
; ======================================================================


L_9921:
	ld a,(0daf1h)		;9921
	call L_9C98		;9924
	ld de,0d218h		;9927
	ld bc,00008h		;992a
	ldir		;992d
	ret			;992f
L_9930:
	ld hl,09a2fh		;9930
	ld de,00000h		;9933
	ld c,020h		;9936
L_9938:
	ld a,001h		;9938
	jp 08218h		;993a
L_993D:
	call L_997F		;993d
	call L_99A2		;9940
	ld hl,09c30h		;9943
	ld de,01010h		;9946
	ld c,00ch		;9949
	jr L_9938		;994b
L_994D:
	push de			;994d
L_994E:
	ld a,(hl)			;994e
	inc hl			;994f
	ld c,a			;9950
	inc a			;9951
	jr z,L_9967		;9952
	inc a			;9954
	jr nz,L_995E		;9955
	pop de			;9957
	ld a,008h		;9958
	add a,e			;995a
	ld e,a			;995b
	jr L_994D		;995c
L_995E:
	ld a,c			;995e
	call L_9969		;995f
	call 082a8h		;9962
	jr L_994E		;9965
L_9967:
	pop de			;9967
	ret			;9968
L_9969:
	push bc			;9969
	push hl			;996a
	push de			;996b
	call 08281h		;996c
	ld a,040h		;996f
	add a,l			;9971
	ld l,a			;9972
	ld bc,00808h		;9973
	ld a,005h		;9976
	call 08284h		;9978
	pop de			;997b
	pop hl			;997c
	pop bc			;997d
	ret			;997e
L_997F:
	ld hl,099fdh		;997f
	ld de,00080h		;9982
	jp L_994D		;9985

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9988..0x99a2  (26 bytes)
DATA_9988:
	defb 07ch,0c6h,080h,030h,00ah,011h,068h,001h,019h,07ch,0c6h,080h,038h,0f7h,0c9h,0e5h	; 9988  |..0..h..|..8...
	defb 011h,068h,001h,0edh,052h,0d1h,030h,0f7h,0ebh,0c9h	; 9998  .h..R.0...

; ======================================================================
; CODIGO 0x99a2..0x99cd  (43 bytes)
; ======================================================================


L_99A2:
	ld b,00ch		;99a2
	ld hl,09232h		;99a4
L_99A7:
	ld a,(hl)			;99a7
	push bc			;99a8
	push hl			;99a9
	ld hl,099cdh		;99aa
	call 0826ch		;99ad
	push hl			;99b0
	ld a,00ch		;99b1
	sub b			;99b3
	ld hl,099e5h		;99b4
	call 0826ch		;99b7
	ex de,hl			;99ba
	pop hl			;99bb
	call L_99C5		;99bc
	pop hl			;99bf
	pop bc			;99c0
	inc hl			;99c1
	djnz L_99A7		;99c2
	ret			;99c4
L_99C5:
	ld bc,01010h		;99c5
	ld a,048h		;99c8
	jp 0820ch		;99ca

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99cd..0x9a2f  (98 bytes)
DATA_99CD:
	defb 080h,000h,080h,010h,080h,020h,080h,030h,080h,040h,080h,070h,080h,060h,080h,050h	; 99cd  ..... .0.@.p.`.P
	defb 080h,080h,080h,090h,080h,0a0h,080h,0b0h,03bh,07eh,04ch,07fh,063h,08ah,06eh,09fh	; 99dd  .........~L.c.n.
	defb 06eh,0b1h,062h,0c7h,04fh,0d3h,03bh,0d3h,027h,0c8h,019h,0b2h,01ah,0a0h,026h,08ah	; 99ed  n.b.O...'.....&.
	defb 080h,081h,07ch,07dh,078h,079h,074h,075h,070h,071h,064h,065h,068h,069h,06ch,06dh	; 99fd  ..|}xytupqdehilm
	defb 060h,061h,08ch,08dh,088h,089h,084h,085h,0feh,082h,083h,07eh,07fh,07ah,07bh,076h	; 9a0d  `a.........~.z{v
	defb 077h,072h,073h,066h,067h,06ah,06bh,06eh,06fh,062h,063h,08eh,08fh,08ah,08bh,086h	; 9a1d  wrsfgjknobc.....
	defb 087h,0ffh	; 9a2d

; ----------------------------------------------------------------------
; DATOS casillas_9A2F: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x993A (513 bytes)
;   0x9a2f..0x9c30  (513 bytes)
DATA_casillas_9A2F:
	defb 0a1h,00dh,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h	; 9a2f  ................
	defb 001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h,001h,002h	; 9a3f  ................
	defb 00eh,003h,012h,000h,086h,013h,014h,015h,016h,017h,018h,006h,000h,082h,005h,004h	; 9a4f  ................
	defb 00eh,000h,08dh,010h,000h,019h,01ah,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,00eh	; 9a5f  ............ !".
	defb 003h,000h,082h,006h,003h,00fh,000h,08ch,023h,024h,025h,026h,027h,028h,029h,02ah	; 9a6f  ........#$%&'()*
	defb 02bh,02ch,02dh,02eh,003h,000h,082h,005h,004h,00eh,000h,092h,02fh,030h,031h,032h	; 9a7f  +,-........./012
	defb 033h,034h,035h,036h,037h,038h,039h,03ah,03bh,02eh,000h,000h,006h,003h,00dh,000h	; 9a8f  3456789:........
	defb 093h,03dh,03eh,03fh,040h,041h,042h,043h,044h,045h,046h,047h,048h,049h,04ah,04bh	; 9a9f  .=>?@ABCDEFGHIJK
	defb 000h,000h,005h,004h,007h,000h,082h,007h,009h,004h,000h,095h,04ch,04dh,04eh,04fh	; 9aaf  ............LMNO
	defb 050h,051h,052h,053h,054h,055h,056h,057h,058h,059h,05ah,05bh,000h,006h,003h,000h	; 9abf  PQRSTUVWXYZ[....
	defb 00fh,005h,000h,082h,00ah,008h,004h,000h,093h,05ch,05dh,05eh,05fh,060h,061h,062h	; 9acf  .........\]^_`ab
	defb 063h,064h,065h,066h,067h,068h,069h,06ah,06bh,000h,005h,004h,003h,000h,081h,00ch	; 9adf  cdefghijk.......
	defb 009h,000h,093h,06ch,06dh,06eh,06fh,000h,070h,071h,072h,073h,074h,075h,000h,076h	; 9aef  ...lmno.pqrstu.v
	defb 034h,077h,078h,000h,006h,003h,00dh,000h,084h,079h,07ah,07bh,07ch,003h,07dh,08ch	; 9aff  4wx......yz{|.}.
	defb 07fh,080h,081h,07dh,07dh,082h,083h,084h,085h,000h,005h,004h,004h,000h,081h,00dh	; 9b0f  ...}}...........
	defb 003h,000h,081h,00ch,004h,000h,093h,086h,087h,088h,089h,000h,08ah,08bh,08ch,08dh	; 9b1f  ................
	defb 08eh,08fh,000h,090h,034h,091h,092h,000h,006h,003h,00bh,000h,095h,00bh,000h,093h	; 9b2f  ....4...........
	defb 094h,095h,096h,097h,098h,099h,09ah,09bh,09ch,09dh,09eh,09fh,0a0h,0a1h,0a2h,000h	; 9b3f  ................
	defb 005h,004h,003h,000h,081h,00ch,009h,000h,093h,0a3h,0a4h,0a5h,0a6h,0a7h,0a8h,0a9h	; 9b4f  ................
	defb 053h,054h,0aah,0abh,0ach,0adh,0aeh,0afh,0b1h,000h,006h,003h,004h,000h,081h,00ch	; 9b5f  ST..............
	defb 003h,000h,081h,00eh,004h,000h,095h,0b0h,0b2h,0b3h,0b4h,034h,0b5h,0b6h,0b7h,0b8h	; 9b6f  ...........4....
	defb 0b9h,0bah,0bbh,0bch,0bdh,0beh,000h,000h,005h,004h,000h,008h,00ch,000h,092h,0bfh	; 9b7f  ................
	defb 0c0h,0c1h,0c2h,0c3h,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,0cch,000h,000h,006h	; 9b8f  ................
	defb 003h,00ah,000h,091h,00ch,000h,000h,010h,000h,0cdh,0ceh,0cfh,0d0h,0d1h,0d2h,0d3h	; 9b9f  ................
	defb 0d4h,0d5h,0d6h,0d7h,0cch,003h,000h,082h,005h,004h,010h,000h,08ah,0d8h,0d9h,0dah	; 9baf  ................
	defb 0dbh,0dch,0ddh,0deh,0dfh,0e0h,0e1h,004h,000h,084h,006h,003h,000h,00ch,011h,000h	; 9bbf  ................
	defb 084h,0e2h,0e3h,0e4h,0e5h,007h,000h,082h,005h,004h,017h,000h,081h,00ch,006h,000h	; 9bcf  ................
	defb 082h,006h,003h,005h,000h,081h,00bh,00ch,000h,081h,00bh,007h,000h,081h,00eh,003h	; 9bdf  ................
	defb 000h,084h,005h,004h,000h,00bh,00dh,000h,081h,00fh,00eh,000h,082h,006h,003h,007h	; 9bef  ................
	defb 000h,081h,010h,00bh,000h,081h,00bh,00ah,000h,082h,005h,004h,01eh,000h,0a1h,006h	; 9bff  ................
	defb 010h,011h,012h,011h,012h,011h,012h,011h,012h,011h,012h,011h,012h,011h,012h,011h	; 9c0f  ................
	defb 012h,011h,012h,011h,012h,011h,012h,011h,012h,011h,012h,011h,012h,011h,012h,00fh	; 9c1f  ................
	defb 000h	; 9c2f

; ----------------------------------------------------------------------
; DATOS casillas_9C30: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x993A (25 bytes)
;   0x9c30..0x9c49  (25 bytes)
DATA_casillas_9C30:
	defb 083h,049h,04ah,043h,008h,044h,081h,042h,080h,00bh,04bh,082h,047h,041h,080h,00ah	; 9c30  .IJC.D.B..K.GA..
	defb 056h,082h,047h,045h,00ah,046h,081h,048h,000h	; 9c40  V.GE.F.H.

; ======================================================================
; CODIGO 0x9c49..0x9d05  (188 bytes)
; ======================================================================


L_9C49:
	ld a,001h		;9c49
	call 09203h		;9c4b
	ld a,094h		;9c4e
	jp 09206h		;9c50
L_9C53:
	ld a,(09821h)		;9c53
	cp 008h		;9c56
	jr z,L_9C87		;9c58
	ld a,(hl)			;9c5a
	inc hl			;9c5b
	cp 0ffh		;9c5c
	jr z,L_9C87		;9c5e
	cp 043h		;9c60
	jr z,L_9C73		;9c62
	cp 044h		;9c64
	jr z,L_9C73		;9c66
	call 0827eh		;9c68
	call 082a8h		;9c6b
	call L_9C8C		;9c6e
	jr L_9C53		;9c71
L_9C73:
	push af			;9c73
	push hl			;9c74
	push de			;9c75
	ex af,af'			;9c76
	ld a,e			;9c77
	sub 008h		;9c78
	ld e,a			;9c7a
	ex af,af'			;9c7b
	call 0827eh		;9c7c
	pop de			;9c7f
	pop hl			;9c80
	pop af			;9c81
	call L_9C8C		;9c82
	jr L_9C53		;9c85
L_9C87:
	xor a			;9c87
	ld (09821h),a		;9c88
	ret			;9c8b
L_9C8C:
	push hl			;9c8c
	ld hl,09821h		;9c8d
	inc (hl)			;9c90
	pop hl			;9c91
	ret			;9c92
L_9C93:
	call L_9C98		;9c93
	ex de,hl			;9c96
	ret			;9c97
L_9C98:
	ld l,a			;9c98
	ld h,000h		;9c99
	add hl,hl			;9c9b
	add hl,hl			;9c9c
	add hl,hl			;9c9d
	add hl,hl			;9c9e
	push hl			;9c9f
	pop bc			;9ca0
	add hl,hl			;9ca1
	add hl,bc			;9ca2
	ld de,0d700h		;9ca3
	add hl,de			;9ca6
	ret			;9ca7
L_9CA8:
	ld a,(0d1e5h)		;9ca8
	or a			;9cab
	jp nz,L_9CD4		;9cac
	ld hl,0d1e5h		;9caf
	inc (hl)			;9cb2
	call L_9CE7		;9cb3
	ld ix,09d05h		;9cb6
	call 09212h		;9cba
	xor a			;9cbd
	ld (09219h),a		;9cbe
	call L_9CC7		;9cc1
	jp 08209h		;9cc4
L_9CC7:
	ld hl,09d0ch		;9cc7
	ld de,01840h		;9cca
	ld c,00ah		;9ccd
	ld a,001h		;9ccf
	jp 08218h		;9cd1
L_9CD4:
	ld a,(0d1c3h)		;9cd4
	and 007h		;9cd7
	ret nz			;9cd9
	ld b,000h		;9cda
	ld a,002h		;9cdc
	call 09215h		;9cde
	ret c			;9ce1
	xor a			;9ce2
	ld (0d1e5h),a		;9ce3
	ret			;9ce6
L_9CE7:
	ld a,(09232h)		;9ce7
	ld hl,09ec6h		;9cea
	add a,a			;9ced
	call 08221h		;9cee
	ld c,(hl)			;9cf1
	inc hl			;9cf2
	ld b,(hl)			;9cf3
	ld de,0c200h		;9cf4
	ld hl,00700h		;9cf7
	call 08215h		;9cfa
	jr c,L_9CE7		;9cfd
	ld a,0ffh		;9cff
	ld (0e0fdh),a		;9d01
	ret			;9d04

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d05..0x9d0c  (7 bytes)
DATA_9D05:
	defb 020h,064h,004h,0a0h,000h,0c2h,080h	; 9d05

; ----------------------------------------------------------------------
; DATOS casillas_9D0C: casillas en el RLE de 0x8EC7 (nucleo), hasta el 0; lo
;   usa 0x9CD1 (4 bytes)
;   0x9d0c..0x9d10  (4 bytes)
DATA_casillas_9D0C:
	defb 080h,064h,001h,000h	; 9d0c

; ======================================================================
; CODIGO 0x9d10..0x9e42  (306 bytes)
; ======================================================================


L_9D10:
	ld (0dd00h),hl		;9d10
	ld (0dd02h),de		;9d13
	ld a,h			;9d17
	add a,008h		;9d18
	ld h,a			;9d1a
	ld a,(0dd03h)		;9d1b
	sub 010h		;9d1e
	ld b,a			;9d20
	ld a,(0dd02h)		;9d21
	ld c,a			;9d24
	xor a			;9d25
	ld d,000h		;9d26
	call 0829fh		;9d28
	ld hl,(0dd00h)		;9d2b
	ld a,l			;9d2e
	add a,008h		;9d2f
	ld l,a			;9d31
	ld a,(0dd02h)		;9d32
	sub 010h		;9d35
	ld c,a			;9d37
	ld a,(0dd03h)		;9d38
	ld b,a			;9d3b
	xor a			;9d3c
	ld d,000h		;9d3d
	call 0829fh		;9d3f
	ld de,(0dd00h)		;9d42
	ld a,0c9h		;9d46
	call L_9E2C		;9d48
	call 082a8h		;9d4b
	ex de,hl			;9d4e
	ld a,(0dd03h)		;9d4f
	sub 010h		;9d52
	ld b,a			;9d54
	ld c,00eh		;9d55
	call L_9DD3		;9d57
	ld de,(0dd00h)		;9d5a
	ld a,(0dd03h)		;9d5e
	sub 008h		;9d61
	add a,d			;9d63
	ld d,a			;9d64
	ld a,0cah		;9d65
	call L_9E2C		;9d67
	ld hl,(0dd00h)		;9d6a
	ld a,008h		;9d6d
	add a,l			;9d6f
	ld l,a			;9d70
	ld a,(0dd02h)		;9d71
	sub 010h		;9d74
	ld b,a			;9d76
	ld c,00eh		;9d77
	call L_9DFF		;9d79
	ld de,(0dd00h)		;9d7c
	ld a,(0dd02h)		;9d80
	sub 008h		;9d83
	add a,e			;9d85
	ld e,a			;9d86
	ld a,0cbh		;9d87
	call L_9E2C		;9d89
	ld hl,(0dd00h)		;9d8c
	ld a,(0dd03h)		;9d8f
	dec a			;9d92
	add a,h			;9d93
	ld h,a			;9d94
	ld a,008h		;9d95
	add a,l			;9d97
	ld l,a			;9d98
	ld a,(0dd02h)		;9d99
	sub 010h		;9d9c
	ld b,a			;9d9e
	ld c,00eh		;9d9f
	call L_9DFF		;9da1
	ld de,(0dd00h)		;9da4
	ld a,(0dd02h)		;9da8
	sub 008h		;9dab
	add a,e			;9dad
	ld e,a			;9dae
	ld a,(0dd03h)		;9daf
	sub 008h		;9db2
	add a,d			;9db4
	ld d,a			;9db5
	ld a,0cch		;9db6
	call L_9E2C		;9db8
	ld hl,(0dd00h)		;9dbb
	ld a,008h		;9dbe
	add a,h			;9dc0
	ld h,a			;9dc1
	ld a,(0dd02h)		;9dc2
	dec a			;9dc5
	add a,l			;9dc6
	ld l,a			;9dc7
	ld a,(0dd03h)		;9dc8
	sub 010h		;9dcb
	ld b,a			;9dcd
	ld c,00eh		;9dce
	jp L_9DD3		;9dd0
L_9DD3:
	ld a,024h		;9dd3
	ld (0d226h),a		;9dd5
	call 08287h		;9dd8
	out (c),h		;9ddb
	xor a			;9ddd
	out (c),a		;9dde
	out (c),l		;9de0
	out (c),a		;9de2
	ld hl,(0d227h)		;9de4
	out (c),h		;9de7
	xor a			;9de9
	cp h			;9dea
	jr nz,L_9DEE		;9deb
	inc a			;9ded
L_9DEE:
	out (c),a		;9dee
	xor a			;9df0
	out (c),a		;9df1
	out (c),a		;9df3
	out (c),l		;9df5
	out (c),a		;9df7
	ld a,070h		;9df9
	out (c),a		;9dfb
	ei			;9dfd
	ret			;9dfe
L_9DFF:
	ld a,024h		;9dff
	ld (0d226h),a		;9e01
	call 08287h		;9e04
	out (c),h		;9e07
	xor a			;9e09
	out (c),a		;9e0a
	out (c),l		;9e0c
	out (c),a		;9e0e
	ld hl,(0d227h)		;9e10
	out (c),h		;9e13
	xor a			;9e15
	cp h			;9e16
	jr nz,L_9E1A		;9e17
	inc a			;9e19
L_9E1A:
	out (c),a		;9e1a
	xor a			;9e1c
	out (c),a		;9e1d
	out (c),a		;9e1f
	out (c),l		;9e21
	inc a			;9e23
	out (c),a		;9e24
	ld a,070h		;9e26
	out (c),a		;9e28
	ei			;9e2a
	ret			;9e2b
L_9E2C:
	push bc			;9e2c
	push hl			;9e2d
	push de			;9e2e
	call 08281h		;9e2f
	ld a,l			;9e32
	add a,080h		;9e33
	ld l,a			;9e35
	ld bc,00808h		;9e36
	ld a,048h		;9e39
	call 0820ch		;9e3b
	pop de			;9e3e
	pop hl			;9e3f
	pop bc			;9e40
	ret			;9e41

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e42..0x9e48  (6 bytes)
DATA_9E42:
	defb 01ch,007h,020h,007h,024h,007h	; 9e42

; ======================================================================
; CODIGO 0x9e48..0x9ec6  (126 bytes)
; ======================================================================


L_9E48:
	srl b		;9e48
	ex de,hl			;9e4a
	push hl			;9e4b
	call L_9EBA		;9e4c
	pop de			;9e4f
	ld (09e42h),bc		;9e50
	ld (09e44h),hl		;9e54
	ld (09e46h),de		;9e57
L_9E5B:
	push bc			;9e5b
	ld hl,(09e44h)		;9e5c
	ld de,0d300h		;9e5f
	ld a,(09e43h)		;9e62
	ld c,a			;9e65
	ld b,000h		;9e66
	call 08266h		;9e68
	call L_9E8E		;9e6b
	ld de,(09e44h)		;9e6e
	ld hl,0d300h		;9e72
	ld a,(09e43h)		;9e75
	ld c,a			;9e78
	ld b,000h		;9e79
	call 08224h		;9e7b
	ld hl,(09e44h)		;9e7e
	ld a,080h		;9e81
	call 08221h		;9e83
	ld (09e44h),hl		;9e86
	pop bc			;9e89
	dec c			;9e8a
	jr nz,L_9E5B		;9e8b
	ret			;9e8d
L_9E8E:
	ld hl,0d300h		;9e8e
	ld de,(09e46h)		;9e91
	ld a,(09e43h)		;9e95
	ld b,a			;9e98
L_9E99:
	ld a,(hl)			;9e99
	rra			;9e9a
	rra			;9e9b
	rra			;9e9c
	rra			;9e9d
	and 00fh		;9e9e
	cp d			;9ea0
	jr nz,L_9EA4		;9ea1
	ld a,e			;9ea3
L_9EA4:
	rla			;9ea4
	rla			;9ea5
	rla			;9ea6
	rla			;9ea7
	and 0f0h		;9ea8
	ld c,a			;9eaa
	ld a,(hl)			;9eab
	and 00fh		;9eac
	cp d			;9eae
	jr nz,L_9EB2		;9eaf
	ld a,e			;9eb1
L_9EB2:
	and 00fh		;9eb2
	or c			;9eb4
	ld (hl),a			;9eb5
	inc hl			;9eb6
	djnz L_9E99		;9eb7
	ret			;9eb9
L_9EBA:
	srl e		;9eba
	rr d		;9ebc
	ld h,e			;9ebe
	ld l,d			;9ebf
	ld de,(0d223h)		;9ec0
	add hl,de			;9ec4
	ret			;9ec5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ec6..0x9ede  (24 bytes)
DATA_9EC6:
	defb 0e7h,001h,0e0h,001h,0d9h,001h,0d2h,001h,0cbh,001h,0c4h,001h,0bdh,001h,0b6h,001h	; 9ec6  ................
	defb 0afh,001h,0a8h,001h,0a1h,001h,09ah,001h	; 9ed6  ........

; ======================================================================
; CODIGO 0x9ede..0x9ee7  (9 bytes)
; ======================================================================


L_9EDE:
	ld de,09ee7h		;9ede
	ld hl,0fc00h		;9ee1
	jp 0821bh		;9ee4

; ----------------------------------------------------------------------
; DATOS vram_9EE7: RLE a la VRAM hasta el 0; lo usa 0x9EE4 (235 bytes)
;   0x9ee7..0x9fd2  (235 bytes)
DATA_vram_9EE7:
	defb 004h,000h,088h,003h,004h,008h,009h,009h,008h,004h,003h,008h,000h,088h,0c0h,020h	; 9ee7  ...............
	defb 010h,090h,090h,010h,020h,0c0h,008h,000h,088h,004h,003h,004h,004h,003h,001h,007h	; 9ef7  .... ...........
	defb 001h,008h,000h,087h,040h,080h,040h,040h,080h,000h,0c0h,009h,000h,081h,003h,003h	; 9f07  ....@.@@........
	defb 004h,084h,003h,001h,007h,001h,008h,000h,081h,080h,003h,040h,083h,080h,000h,0c0h	; 9f17  ...........@....
	defb 00bh,000h,086h,007h,00ch,008h,008h,00ch,007h,008h,000h,088h,0f0h,030h,050h,090h	; 9f27  .............0P.
	defb 040h,040h,0c0h,080h,008h,000h,081h,008h,004h,004h,081h,00fh,00dh,000h,002h,080h	; 9f37  @@..............
	defb 083h,0f0h,080h,080h,008h,000h,087h,004h,00eh,004h,005h,006h,004h,004h,00ch,000h	; 9f47  ................
	defb 085h,080h,040h,020h,020h,040h,008h,000h,088h,008h,009h,00fh,009h,00bh,004h,004h	; 9f57  ..@  @..........
	defb 003h,008h,000h,002h,020h,086h,0e0h,020h,0a0h,040h,040h,080h,008h,000h,088h,009h	; 9f67  .... .. .@@.....
	defb 007h,001h,007h,001h,003h,004h,003h,008h,000h,088h,020h,0c0h,000h,0c0h,000h,080h	; 9f77  .......... .....
	defb 040h,080h,008h,000h,081h,007h,004h,004h,083h,007h,004h,007h,008h,000h,088h,080h	; 9f87  @...............
	defb 040h,020h,020h,040h,080h,000h,0c0h,00ch,000h,081h,003h,003h,007h,081h,003h,008h	; 9f97  @  @............
	defb 000h,084h,070h,0f8h,0c8h,0e8h,004h,0f8h,01ah,000h,082h,030h,010h,009h,000h,081h	; 9fa7  ..p........0....
	defb 004h,004h,000h,081h,020h,003h,000h,081h,008h,005h,000h,087h,002h,000h,000h,040h	; 9fb7  .... ..........@
	defb 000h,000h,010h,004h,000h,084h,020h,000h,004h,000h,000h	; 9fc7  ...... ....

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9fd2..0xa000  (46 bytes)
DATA_9FD2:
	defb 020h,014h,024h,014h,028h,014h,02ch,014h,030h,014h,034h,014h,038h,015h,000h,015h	; 9fd2   .$.(.,.0.4.8...
	defb 004h,015h,008h,015h,00ch,015h,010h,015h,014h,015h,017h,015h,01bh,015h,01fh,015h	; 9fe2  ................
	defb 023h,015h,027h,015h,02bh,015h,02fh,015h,033h,015h,037h,015h,03bh,016h	; 9ff2  #.'.+./.3.7...
