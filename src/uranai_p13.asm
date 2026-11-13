; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p13 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x986f  (111 bytes)
; ======================================================================


L_9800:
	call L_9956		;9800
	call L_981B		;9803
	call L_9885		;9806
	call L_98FB		;9809
	call L_992E		;980c
	ld hl,09221h		;980f
	ld a,(hl)			;9812
	inc hl			;9813
	add a,(hl)			;9814
	inc hl			;9815
	add a,(hl)			;9816
	ld (09224h),a		;9817
	ret			;981a
L_981B:
	ld hl,0daf2h		;981b
	ld de,09219h		;981e
	call L_9841		;9821
	ld hl,0daf3h		;9824
	ld de,0921ah		;9827
	call L_9841		;982a
	ld a,(09219h)		;982d
	ld d,a			;9830
	ld a,(0921ah)		;9831
	ld e,a			;9834
	ld b,00ch		;9835
	ld hl,09a3dh		;9837
	call L_9923		;983a
	ld (09221h),a		;983d
	ret			;9840
L_9841:
	push de			;9841
	push hl			;9842
	ld a,(hl)			;9843
	ld b,001h		;9844
	call L_9B06		;9846
	dec a			;9849
	call L_9865		;984a
	call L_987B		;984d
	pop hl			;9850
	push bc			;9851
	ld a,(hl)			;9852
	ld b,002h		;9853
	call L_9B06		;9855
	pop bc			;9858
	cp c			;9859
	jr c,L_985D		;985a
	inc b			;985c
L_985D:
	ld a,b			;985d
	call L_987D		;985e
	pop de			;9861
	ld a,b			;9862
	ld (de),a			;9863
	ret			;9864
L_9865:
	push af			;9865
	ld hl,0986fh		;9866
	call 08221h		;9869
	ld c,(hl)			;986c
	pop af			;986d
	ret			;986e

; ----------------------------------------------------------------------
; DATOS leido_986F: lo usa el codigo: 0x9866 ld hl,0986fh -> 0x8221 (tabla de
;   bytes: HL + A) (12 bytes)
;   0x986f..0x987b  (12 bytes)
DATA_leido_986F:
	defb 014h,013h,015h,014h,015h,016h,017h,017h,017h,018h,016h,016h	; 986f  ............

; ======================================================================
; CODIGO 0x987b..0x98a9  (46 bytes)
; ======================================================================


L_987B:
	add a,009h		;987b
L_987D:
	cp 00ch		;987d
	jr c,L_9883		;987f
	sub 00ch		;9881
L_9883:
	ld b,a			;9883
	ret			;9884
L_9885:
	ld a,(0921bh)		;9885
	call L_989F		;9888
	ld d,(hl)			;988b
	ld a,(0921ch)		;988c
	call L_989F		;988f
	ld e,(hl)			;9892
	ld b,005h		;9893
	ld hl,09acdh		;9895
	call L_9923		;9898
	ld (09222h),a		;989b
	ret			;989e
L_989F:
	sub 001h		;989f
	ld hl,098a9h		;98a1
	call 08221h		;98a4
	ld a,(hl)			;98a7
	ret			;98a8

; ----------------------------------------------------------------------
; DATOS leido_98A9: lo usa el codigo: 0x98A1 ld hl,098a9h -> 0x8221 (tabla de
;   bytes: HL + A) (82 bytes)
;   0x98a9..0x98fb  (82 bytes)
DATA_leido_98A9:
	defb 002h,002h,002h,002h,002h,000h,000h,000h,000h,000h,003h,003h,003h,003h,003h,001h	; 98a9  ................
	defb 001h,001h,001h,001h,001h,001h,001h,001h,001h,004h,004h,004h,004h,004h,004h,004h	; 98b9  ................
	defb 004h,004h,004h,002h,002h,002h,001h,001h,001h,001h,001h,002h,002h,002h,002h,002h	; 98c9  ................
	defb 001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 98d9  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 98e9  ................
	defb 000h,000h	; 98f9

; ======================================================================
; CODIGO 0x98fb..0x9948  (77 bytes)
; ======================================================================


L_98FB:
	ld a,(0921dh)		;98fb
	ld e,a			;98fe
	ld a,(0921eh)		;98ff
	ld d,a			;9902
	ld a,(0921fh)		;9903
	and a			;9906
	jr z,L_990C		;9907
	ld b,e			;9909
	ld e,d			;990a
	ld d,b			;990b
L_990C:
	ld hl,09220h		;990c
	add a,(hl)			;990f
	ld hl,09af6h		;9910
	and 001h		;9913
	jr z,L_991A		;9915
	ld hl,09ae6h		;9917
L_991A:
	ld b,004h		;991a
	call L_9923		;991c
	ld (09223h),a		;991f
	ret			;9922
L_9923:
	ld a,e			;9923
	ld c,e			;9924
	call L_9939		;9925
	add a,d			;9928
	call 08221h		;9929
	ld a,(hl)			;992c
	ret			;992d
L_992E:
	ld a,(0921fh)		;992e
	ld hl,09220h		;9931
	add a,(hl)			;9934
	ld (09225h),a		;9935
	ret			;9938
L_9939:
	xor a			;9939
L_993A:
	inc c			;993a
	dec c			;993b
	jr z,L_9947		;993c
	srl c		;993e
	jr nc,L_9943		;9940
	add a,b			;9942
L_9943:
	sla b		;9943
	jr L_993A		;9945
L_9947:
	ret			;9947

; ----------------------------------------------------------------------
; DATOS suelto_9948: nadie lo lee ni lo apunta (14 bytes)
;   0x9948..0x9956  (14 bytes)
DATA_suelto_9948:
	defb 006h,008h,026h,000h,029h,07ch,091h,038h,002h,02ch,067h,010h,0f7h,0c9h	; 9948  ..&.)|.8.,g...

; ======================================================================
; CODIGO 0x9956..0x9a3d  (231 bytes)
; ======================================================================


L_9956:
	call L_9A1C		;9956
	ld a,(hl)			;9959
	call L_9A0B		;995a
	ld (0921bh),a		;995d
	ld a,(0daf3h)		;9960
	call L_9A2D		;9963
	ld a,(hl)			;9966
	call L_9A0B		;9967
	ld (0921ch),a		;996a
	ld a,(0daf2h)		;996d
	ld b,006h		;9970
	call L_9B06		;9972
	ld (0921dh),a		;9975
	ld a,(0daf3h)		;9978
	ld b,006h		;997b
	call L_9B06		;997d
	ld (0921eh),a		;9980
	ld a,(0daf2h)		;9983
	ld b,007h		;9986
	call L_9B06		;9988
	ld (0921fh),a		;998b
	ld a,(0daf3h)		;998e
	ld b,007h		;9991
	call L_9B06		;9993
	ld (09220h),a		;9996
	ld a,(0daf2h)		;9999
	ld b,000h		;999c
	call L_9B06		;999e
	ld (09227h),a		;99a1
	ld a,(0daf3h)		;99a4
	ld b,000h		;99a7
	call L_9B06		;99a9
	ld (09228h),a		;99ac
	ld a,(0daf2h)		;99af
	ld b,001h		;99b2
	call L_9B06		;99b4
	ld (0d272h),a		;99b7
	ld a,(0daf3h)		;99ba
	ld b,001h		;99bd
	call L_9B06		;99bf
	ld (0d273h),a		;99c2
	ld a,(0daf2h)		;99c5
	ld b,002h		;99c8
	call L_9B06		;99ca
	ld (0d274h),a		;99cd
	ld a,(0daf3h)		;99d0
	ld b,002h		;99d3
	call L_9B06		;99d5
	ld (0d275h),a		;99d8
	xor a			;99db
	ld (0d276h),a		;99dc
	ld a,(09227h)		;99df
	ld hl,09228h		;99e2
	cp (hl)			;99e5
	jp z,L_99ED		;99e6
	ret nc			;99e9
	jp L_9A05		;99ea
L_99ED:
	ld a,(0d272h)		;99ed
	ld hl,0d273h		;99f0
	cp (hl)			;99f3
	jp z,L_99FB		;99f4
	ret nc			;99f7
	jp L_9A05		;99f8
L_99FB:
	ld a,(0d274h)		;99fb
	ld hl,0d275h		;99fe
	cp (hl)			;9a01
	jr z,L_9A05		;9a02
	ret nc			;9a04
L_9A05:
	ld a,001h		;9a05
	ld (0d276h),a		;9a07
	ret			;9a0a
L_9A0B:
	or a			;9a0b
	jr z,L_9A18		;9a0c
	cp 043h		;9a0e
	jr z,L_9A15		;9a10
	cp 044h		;9a12
	ret nz			;9a14
L_9A15:
	inc hl			;9a15
	ld a,(hl)			;9a16
	ret			;9a17
L_9A18:
	inc hl			;9a18
	ld a,(hl)			;9a19
	jr L_9A0B		;9a1a
L_9A1C:
	ld a,(0daf2h)		;9a1c
	call L_9A2D		;9a1f
	push hl			;9a22
	ld de,0d218h		;9a23
	ld bc,00008h		;9a26
	ldir		;9a29
	pop hl			;9a2b
	ret			;9a2c
L_9A2D:
	ld l,a			;9a2d
	ld h,000h		;9a2e
	add hl,hl			;9a30
	add hl,hl			;9a31
	add hl,hl			;9a32
	add hl,hl			;9a33
	push hl			;9a34
	pop bc			;9a35
	add hl,hl			;9a36
	add hl,bc			;9a37
	ld de,0d700h		;9a38
	add hl,de			;9a3b
	ret			;9a3c

; ----------------------------------------------------------------------
; DATOS leido_9A3D: lo usa el codigo: 0x9837 ld hl,09a3dh; 0x9895 ld hl,09acdh
;   (en +144); 0x9917 ld hl,09ae6h (en +169); 0x9910 ld hl,09af6h (en +185)
;   (201 bytes)
;   0x9a3d..0x9b06  (201 bytes)
DATA_leido_9A3D:
	defb 023h,000h,000h,000h,023h,000h,000h,000h,023h,000h,000h,000h,000h,023h,000h,000h	; 9a3d  #...#...#....#..
	defb 000h,023h,000h,000h,000h,023h,000h,000h,000h,000h,023h,000h,000h,000h,023h,000h	; 9a4d  .#...#....#...#.
	defb 000h,000h,023h,000h,000h,000h,000h,023h,000h,000h,000h,023h,000h,000h,000h,023h	; 9a5d  ..#....#...#...#
	defb 023h,000h,000h,000h,023h,000h,000h,000h,023h,000h,000h,000h,000h,023h,000h,000h	; 9a6d  #...#...#....#..
	defb 000h,023h,000h,000h,000h,023h,000h,000h,000h,000h,023h,000h,000h,000h,023h,000h	; 9a7d  .#...#....#...#.
	defb 000h,000h,023h,000h,000h,000h,000h,023h,000h,000h,000h,023h,000h,000h,000h,023h	; 9a8d  ..#....#...#...#
	defb 023h,000h,000h,000h,023h,000h,000h,000h,023h,000h,000h,000h,000h,023h,000h,000h	; 9a9d  #...#...#....#..
	defb 000h,023h,000h,000h,000h,023h,000h,000h,000h,000h,023h,000h,000h,000h,023h,000h	; 9aad  .#...#....#...#.
	defb 000h,000h,023h,000h,000h,000h,000h,023h,000h,000h,000h,023h,000h,000h,000h,023h	; 9abd  ..#....#...#...#
	defb 00dh,01eh,000h,000h,01eh,01eh,00dh,01eh,000h,000h,000h,01eh,00dh,01eh,000h,000h	; 9acd  ................
	defb 000h,01eh,00dh,01eh,01eh,000h,000h,01eh,00dh,00fh,019h,023h,000h,023h,00fh,000h	; 9add  ...........#.#..
	defb 019h,019h,000h,00fh,023h,000h,023h,019h,00fh,011h,023h,023h,000h,023h,011h,000h	; 9aed  ....#.#...##.#..
	defb 023h,023h,000h,011h,023h,000h,023h,023h,011h	; 9afd  ##..#.##.

; ======================================================================
; CODIGO 0x9b06..0x9b47  (65 bytes)
; ======================================================================


L_9B06:
	push bc			;9b06
	call L_9B36		;9b07
	pop bc			;9b0a
	ld a,b			;9b0b
	add a,00fh		;9b0c
	call 08206h		;9b0e
	ex de,hl			;9b11
	ld c,(hl)			;9b12
	ld a,b			;9b13
	cp 005h		;9b14
	jr nc,L_9B1B		;9b16
	call L_9B1D		;9b18
L_9B1B:
	ld a,c			;9b1b
	ret			;9b1c
L_9B1D:
	ld a,c			;9b1d
	srl a		;9b1e
	srl a		;9b20
	srl a		;9b22
	srl a		;9b24
	call L_9B30		;9b26
	ld b,a			;9b29
	ld a,c			;9b2a
	and 00fh		;9b2b
	add a,b			;9b2d
	ld c,a			;9b2e
	ret			;9b2f
L_9B30:
	add a,a			;9b30
	ld b,a			;9b31
	add a,a			;9b32
	add a,a			;9b33
	add a,b			;9b34
	ret			;9b35
L_9B36:
	ld l,a			;9b36
	ld h,000h		;9b37
	add hl,hl			;9b39
	add hl,hl			;9b3a
	add hl,hl			;9b3b
	add hl,hl			;9b3c
	push hl			;9b3d
	pop bc			;9b3e
	add hl,hl			;9b3f
	add hl,bc			;9b40
	ld de,0d700h		;9b41
	add hl,de			;9b44
	ex de,hl			;9b45
	ret			;9b46

; ----------------------------------------------------------------------
; DATOS resto_9B47: nadie lo lee; son los mismos bytes que p12 en esta misma
;   direccion: lo que habia en la memoria al grabar (185 bytes)
;   0x9b47..0x9c00  (185 bytes)
DATA_resto_9B47:
	defb 09ch,011h,0c2h,0d2h,0cdh,05dh,09bh,021h,006h,0a0h,011h,0c6h,0d2h,0cdh,05dh,09bh	; 9b47  .....].!......].
	defb 021h,00fh,0a4h,011h,0cah,0d2h,07ch,032h,072h,09bh,07dh,032h,076h,09bh,0edh,053h	; 9b57  !.....|2r.}2v..S
	defb 06bh,09bh,0ddh,021h,0c2h,0d2h,006h,004h,0ddh,036h,000h,09ch,0ddh,036h,001h,002h	; 9b67  k..!.....6...6..
	defb 011h,00ch,000h,0ddh,019h,010h,0f1h,0c9h,0cdh,091h,09bh,0d8h,011h,08dh,09bh,0ebh	; 9b77  ................
	defb 001h,004h,000h,0edh,0b0h,0c9h,048h,080h,004h,000h,021h,032h,098h,006h,004h,03eh	; 9b87  ......H...!2...>
	defb 0e0h,0beh,028h,008h,023h,023h,023h,023h,010h,0f5h,037h,0c9h,0b7h,0c9h,006h,004h	; 9b97  ..(.####..7.....
	defb 0ddh,021h,032h,098h,021h,0c0h,0d2h,0c5h,0e5h,0cdh,0c1h,09bh,0e1h,011h,00ch,000h	; 9ba7  .!2.!...........
	defb 019h,011h,004h,000h,0ddh,019h,0c1h,010h,0eeh,0c9h,0cdh,0fch,09bh,0ddh,07eh,000h	; 9bb7  ..............~.
	defb 0feh,0e0h,0c8h,0ddh,07eh,002h,0d6h,001h,0ddh,077h,002h,0d0h,03eh,004h,0ddh,077h	; 9bc7  ....~....w..>..w
	defb 002h,0ddh,034h,003h,0ddh,07eh,003h,0feh,005h,0d0h,087h,021h,0f2h,09bh,0cdh,021h	; 9bd7  ..4..~.....!...!
	defb 082h,07eh,0ddh,077h,001h,023h,07eh,0ddh,077h,000h,0c9h,080h,048h,082h,045h,083h	; 9be7  .~.w.#~.w...H.E.
	defb 042h,083h,040h,080h,0e0h,006h,003h,0ddh,07eh	; 9bf7  B.@.....~
