; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p09 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x982a  (42 bytes)
; ======================================================================


L_9800:
	ld a,(0daf1h)		;9800
	ld b,000h		;9803
	call L_9DB8		;9805
	dec a			;9808
	ld l,a			;9809
	ld h,000h		;980a
	add hl,hl			;980c
	ld de,09d22h		;980d
	add hl,de			;9810
	ld c,(hl)			;9811
	inc hl			;9812
	ld b,(hl)			;9813
	ld de,0ca00h		;9814
	ld hl,00300h		;9817
	call 08215h		;981a
	jr c,L_9800		;981d
	ld a,0ffh		;981f
	ld (0e0fdh),a		;9821
	call L_9CD7		;9824
	jp L_982B		;9827

; ----------------------------------------------------------------------
; DATOS sin identificar  0x982a..0x982b  (1 bytes)
DATA_982A:
	defb 03eh	; 982a

; ======================================================================
; CODIGO 0x982b..0x997a  (335 bytes)
; ======================================================================


L_982B:
	call L_983A		;982b
	call L_986F		;982e
	call L_995F		;9831
	call L_9984		;9834
	jp L_9A24		;9837
L_983A:
	call L_9850		;983a
	ld hl,09224h		;983d
	ld a,b			;9840
	add a,(hl)			;9841
	ld (hl),a			;9842
	dec hl			;9843
	ld a,c			;9844
	add a,(hl)			;9845
	ld (hl),a			;9846
	ld a,(09225h)		;9847
	ld hl,09224h		;984a
	add a,(hl)			;984d
	ld (hl),a			;984e
	ret			;984f
L_9850:
	ld hl,09df9h		;9850
	ld a,(09226h)		;9853
	and a			;9856
	jr z,L_985C		;9857
	ld hl,09e11h		;9859
L_985C:
	ld a,(0921ch)		;985c
	dec a			;985f
	call 0826ch		;9860
	ld a,(0921dh)		;9863
	dec a			;9866
	add a,a			;9867
	call 08221h		;9868
	ld c,(hl)			;986b
	inc hl			;986c
	ld b,(hl)			;986d
	ret			;986e
L_986F:
	call L_987D		;986f
	call L_9889		;9872
	call L_98AD		;9875
	call L_9895		;9878
	jr L_98A1		;987b
L_987D:
	ld hl,09224h		;987d
	ld a,(hl)			;9880
	ld bc,03b00h		;9881
	call L_9905		;9884
	jr L_98E9		;9887
L_9889:
	ld hl,09223h		;9889
	ld a,(hl)			;988c
	ld bc,01700h		;988d
	call L_9905		;9890
	jr L_98E9		;9893
L_9895:
	ld hl,09221h		;9895
	ld a,(hl)			;9898
	ld bc,0c001h		;9899
	call L_9905		;989c
	jr L_98E9		;989f
L_98A1:
	ld hl,09220h		;98a1
	ld a,(hl)			;98a4
	ld bc,04b01h		;98a5
	call L_9905		;98a8
	jr L_98E9		;98ab
L_98AD:
	ld hl,09222h		;98ad
	ld a,(hl)			;98b0
	ld c,a			;98b1
	bit 7,a		;98b2
	jr nz,L_98C6		;98b4
	ld a,(0921ch)		;98b6
	dec a			;98b9
	call L_98D2		;98ba
	cp c			;98bd
	ret nc			;98be
	ld b,a			;98bf
	ld a,c			;98c0
	sub b			;98c1
	ld (hl),a			;98c2
	dec hl			;98c3
	inc (hl)			;98c4
	ret			;98c5
L_98C6:
	ld a,(0921bh)		;98c6
	dec a			;98c9
	call L_98D2		;98ca
	add a,c			;98cd
	ld (hl),a			;98ce
	dec hl			;98cf
	inc (hl)			;98d0
	ret			;98d1
L_98D2:
	ld b,a			;98d2
	ld de,0a5f1h		;98d3
	call 08206h		;98d6
	ld a,(de)			;98d9
	ld d,a			;98da
	ld a,b			;98db
	cp 001h		;98dc
	jr nz,L_98E7		;98de
	ld a,(09226h)		;98e0
	and a			;98e3
	jr z,L_98E7		;98e4
	dec d			;98e6
L_98E7:
	ld a,d			;98e7
	ret			;98e8
L_98E9:
	ld (hl),a			;98e9
	ld a,(09227h)		;98ea
	ld b,a			;98ed
	and 00fh		;98ee
	ld c,a			;98f0
	ld a,b			;98f1
	sla a		;98f2
	jr c,L_98FC		;98f4
	sla a		;98f6
	ld a,c			;98f8
	jr c,L_98FF		;98f9
	ret			;98fb
L_98FC:
	ld a,c			;98fc
	neg		;98fd
L_98FF:
	dec hl			;98ff
	ld b,a			;9900
	ld a,(hl)			;9901
	add a,b			;9902
	ld (hl),a			;9903
	ret			;9904
L_9905:
	ld ix,09227h		;9905
	ld (ix+001h),a		;9909
	ld (ix+002h),b		;990c
	ld (ix+003h),c		;990f
	ld (ix+000h),000h		;9912
	ld c,000h		;9916
	call L_9920		;9918
	call L_992F		;991b
	jr L_9940		;991e
L_9920:
	bit 7,a		;9920
	ret z			;9922
	add a,b			;9923
	ld c,(ix+000h)		;9924
	inc c			;9927
	set 7,c		;9928
	ld (ix+000h),c		;992a
	jr L_9920		;992d
L_992F:
	ld b,(ix+003h)		;992f
	cp b			;9932
	ret nc			;9933
	add a,b			;9934
	ld c,(ix+000h)		;9935
	inc c			;9938
	set 7,c		;9939
	ld (ix+000h),c		;993b
	jr L_992F		;993e
L_9940:
	ld b,(ix+002h)		;9940
	cp b			;9943
	ret c			;9944
	ret z			;9945
	call L_9955		;9946
	sub b			;9949
	ld c,(ix+000h)		;994a
	inc c			;994d
	set 6,c		;994e
	ld (ix+000h),c		;9950
	jr L_9940		;9953
L_9955:
	push af			;9955
	ld a,(ix+003h)		;9956
	and a			;9959
	jr nz,L_995D		;995a
	inc b			;995c
L_995D:
	pop af			;995d
	ret			;995e
L_995F:
	ld hl,09220h		;995f
	ld a,(hl)			;9962
	and a			;9963
	jr z,L_996B		;9964
	cp 04ch		;9966
	jr nc,L_9970		;9968
	ret			;996a
L_996B:
	ld de,0997ah		;996b
	jr L_9973		;996e
L_9970:
	ld de,0997fh		;9970
L_9973:
	ld bc,00005h		;9973
	ex de,hl			;9976
	ldir		;9977
	ret			;9979

; ----------------------------------------------------------------------
; DATOS sin identificar  0x997a..0x9984  (10 bytes)
DATA_997A:
	defb 001h,001h,001h,000h,000h,04bh,00ch,01fh,017h,03bh	; 997a  .....K....

; ======================================================================
; CODIGO 0x9984..0x9cb4  (816 bytes)
; ======================================================================


L_9984:
	call L_998A		;9984
	jp L_99B6		;9987
L_998A:
	call L_99AD		;998a
	ld a,(09224h)		;998d
	ld c,a			;9990
	ld ix,0922bh		;9991
	ld e,006h		;9995
	ld a,005h		;9997
L_9999:
	ld b,000h		;9999
	call L_9B5C		;999b
	ld a,b			;999e
	add a,a			;999f
	call 08221h		;99a0
	ld a,(hl)			;99a3
	ld (ix+000h),a		;99a4
	inc hl			;99a7
	ld a,(hl)			;99a8
	ld (ix+001h),a		;99a9
	ret			;99ac
L_99AD:
	ld a,(09223h)		;99ad
	ld hl,0a3e1h		;99b0
	jp 0826ch		;99b3
L_99B6:
	call L_99BE		;99b6
	call L_99CD		;99b9
	jr L_99E8		;99bc
L_99BE:
	ld a,(0922ch)		;99be
	ld bc,00b00h		;99c1
	call L_9905		;99c4
	ld hl,09232h		;99c7
	ld (hl),a			;99ca
	jr L_99FA		;99cb
L_99CD:
	ld b,00ch		;99cd
	ld hl,00000h		;99cf
	ld ix,0923eh		;99d2
L_99D6:
	ld de,0001eh		;99d6
	ld (ix+000h),l		;99d9
	ld (ix+001h),h		;99dc
	add hl,de			;99df
	ld de,00002h		;99e0
	add ix,de		;99e3
	djnz L_99D6		;99e5
	ret			;99e7
L_99E8:
	ld ix,09256h		;99e8
	ld a,(0922bh)		;99ec
	ld (ix+000h),a		;99ef
	ld hl,0001eh		;99f2
	call 08221h		;99f5
	jr L_9A0B		;99f8
L_99FA:
	ld b,00ch		;99fa
L_99FC:
	push bc			;99fc
	ld bc,00b00h		;99fd
	ld a,(hl)			;9a00
	inc a			;9a01
	call L_9905		;9a02
	inc hl			;9a05
	ld (hl),a			;9a06
	pop bc			;9a07
	djnz L_99FC		;9a08
	ret			;9a0a
L_9A0B:
	ld b,00ch		;9a0b
L_9A0D:
	push bc			;9a0d
	ld de,0001eh		;9a0e
	add hl,de			;9a11
	call L_9CB5		;9a12
	ld (ix+000h),l		;9a15
	ld (ix+001h),h		;9a18
	ld de,00002h		;9a1b
	add ix,de		;9a1e
	pop bc			;9a20
	djnz L_9A0D		;9a21
	ret			;9a23
L_9A24:
	call L_9A3F		;9a24
	call L_9A5B		;9a27
	call L_9A77		;9a2a
	call L_9A93		;9a2d
	call L_9AAF		;9a30
	call L_9ACB		;9a33
	call L_9AE7		;9a36
	call L_9B03		;9a39
	jp L_9B1F		;9a3c
L_9A3F:
	ld hl,0ca00h		;9a3f
	ld b,008h		;9a42
	call L_9B3B		;9a44
	ld de,00a0ah		;9a47
	call L_9B46		;9a4a
	ld hl,0926eh		;9a4d
	call L_9C0B		;9a50
	ld b,001h		;9a53
	ld hl,(0926eh)		;9a55
	jp L_9C31		;9a58
L_9A5B:
	ld hl,0ca60h		;9a5b
	ld b,016h		;9a5e
	call L_9B3B		;9a60
	ld de,00303h		;9a63
	call L_9B46		;9a66
	ld hl,09270h		;9a69
	call L_9C0B		;9a6c
	ld b,002h		;9a6f
	ld hl,(09270h)		;9a71
	jp L_9C31		;9a74
L_9A77:
	ld hl,0cb68h		;9a77
	ld b,012h		;9a7a
	call L_9B3B		;9a7c
	ld de,00404h		;9a7f
	call L_9B46		;9a82
	ld hl,09272h		;9a85
	call L_9C0B		;9a88
	ld b,004h		;9a8b
	ld hl,(09272h)		;9a8d
	jp L_9C31		;9a90
L_9A93:
	ld hl,0cc40h		;9a93
	ld b,012h		;9a96
	call L_9B3B		;9a98
	ld de,00404h		;9a9b
	call L_9B46		;9a9e
	ld hl,09274h		;9aa1
	call L_9C0B		;9aa4
	ld b,008h		;9aa7
	ld hl,(09274h)		;9aa9
	jp L_9C31		;9aac
L_9AAF:
	ld hl,0cd18h		;9aaf
	ld b,008h		;9ab2
	call L_9B3B		;9ab4
	ld de,0090ah		;9ab7
	call L_9B62		;9aba
	ld hl,09276h		;9abd
	call L_9C0B		;9ac0
	ld b,001h		;9ac3
	ld hl,(09276h)		;9ac5
	jp L_9C4F		;9ac8
L_9ACB:
	ld hl,0cd78h		;9acb
	ld b,008h		;9ace
	call L_9B3B		;9ad0
	ld de,0090ah		;9ad3
	call L_9B62		;9ad6
	ld hl,09278h		;9ad9
	call L_9C0B		;9adc
	ld b,002h		;9adf
	ld hl,(09278h)		;9ae1
	jp L_9C4F		;9ae4
L_9AE7:
	ld hl,0cdd8h		;9ae7
	ld b,006h		;9aea
	call L_9B3B		;9aec
	ld de,00e0fh		;9aef
	call L_9B62		;9af2
	ld hl,0927ah		;9af5
	call L_9C0B		;9af8
	ld b,004h		;9afb
	ld hl,(0927ah)		;9afd
	jp L_9C4F		;9b00
L_9B03:
	ld hl,0ce20h		;9b03
	ld b,006h		;9b06
	call L_9B3B		;9b08
	ld de,00e0fh		;9b0b
	call L_9B62		;9b0e
	ld hl,0927ch		;9b11
	call L_9C0B		;9b14
	ld b,008h		;9b17
	ld hl,(0927ch)		;9b19
	jp L_9C4F		;9b1c
L_9B1F:
	ld hl,0ce68h		;9b1f
	ld b,004h		;9b22
	call L_9B3B		;9b24
	ld de,01e1fh		;9b27
	call L_9B62		;9b2a
	ld hl,0927eh		;9b2d
	call L_9C0B		;9b30
	ld b,010h		;9b33
	ld hl,(0927eh)		;9b35
	jp L_9C4F		;9b38
L_9B3B:
	ld a,(09221h)		;9b3b
	dec a			;9b3e
	ld c,a			;9b3f
	call L_9CA7		;9b40
	jp 08221h		;9b43
L_9B46:
	ld a,(09222h)		;9b46
	ld c,a			;9b49
	ld a,d			;9b4a
	ld ix,0922bh		;9b4b
	ld b,000h		;9b4f
	call L_9B5C		;9b51
	call L_9B6E		;9b54
	call L_9B8E		;9b57
	jr L_9BA8		;9b5a
L_9B5C:
	cp c			;9b5c
	ret nc			;9b5d
	add a,e			;9b5e
	inc b			;9b5f
	jr L_9B5C		;9b60
L_9B62:
	ld a,(09222h)		;9b62
	ld c,a			;9b65
	ld a,d			;9b66
	ld ix,0922bh		;9b67
	jp L_9999		;9b6b
L_9B6E:
	sub e			;9b6e
	inc a			;9b6f
	ld (ix+004h),a		;9b70
	ld a,b			;9b73
	add a,a			;9b74
	call 08221h		;9b75
	ld a,(hl)			;9b78
	and 07fh		;9b79
	ld (ix+000h),a		;9b7b
	inc hl			;9b7e
	ld a,(hl)			;9b7f
	ld (ix+001h),a		;9b80
	inc hl			;9b83
	ld a,(hl)			;9b84
	ld (ix+002h),a		;9b85
	inc hl			;9b88
	ld a,(hl)			;9b89
	ld (ix+003h),a		;9b8a
	ret			;9b8d
L_9B8E:
	ld hl,0982ah		;9b8e
	ld c,000h		;9b91
	ld a,(ix+002h)		;9b93
	ld b,a			;9b96
	add a,080h		;9b97
	jr nc,L_9BA2		;9b99
	ld b,a			;9b9b
	cp (ix+000h)		;9b9c
	jr z,L_9BA2		;9b9f
	inc c			;9ba1
L_9BA2:
	ld (hl),c			;9ba2
	ld a,b			;9ba3
	ld (ix+002h),a		;9ba4
	ret			;9ba7
L_9BA8:
	ld b,(ix+002h)		;9ba8
	ld c,(ix+000h)		;9bab
	ld a,(0982ah)		;9bae
	and a			;9bb1
	jr z,L_9BB7		;9bb2
	ld a,b			;9bb4
	ld b,c			;9bb5
	ld c,a			;9bb6
L_9BB7:
	ld a,b			;9bb7
	cp c			;9bb8
	jr nc,L_9BBD		;9bb9
	add a,01eh		;9bbb
L_9BBD:
	sub c			;9bbd
	ld l,a			;9bbe
	ld c,e			;9bbf
	call L_9C99		;9bc0
	ld (ix+005h),l		;9bc3
	ld a,(09222h)		;9bc6
	sub (ix+004h)		;9bc9
	ld (ix+004h),a		;9bcc
	ld b,a			;9bcf
	ld c,l			;9bd0
	call L_9CA7		;9bd1
	ld (ix+006h),a		;9bd4
	ld b,a			;9bd7
	ld a,(0982ah)		;9bd8
	and a			;9bdb
	ld a,b			;9bdc
	jr z,L_9BE1		;9bdd
	neg		;9bdf
L_9BE1:
	add a,(ix+000h)		;9be1
	ld b,(ix+001h)		;9be4
	ld d,01eh		;9be7
	call L_9BF9		;9be9
	ld (ix+000h),a		;9bec
	ld a,b			;9bef
	ld d,00ch		;9bf0
	call L_9BF9		;9bf2
	ld (ix+001h),a		;9bf5
	ret			;9bf8
L_9BF9:
	ld c,a			;9bf9
	bit 7,a		;9bfa
	jr nz,L_9C03		;9bfc
	cp d			;9bfe
	jr nc,L_9C07		;9bff
	ld a,c			;9c01
	ret			;9c02
L_9C03:
	add a,d			;9c03
	dec b			;9c04
	jr L_9BF9		;9c05
L_9C07:
	sub d			;9c07
	inc b			;9c08
	jr L_9BF9		;9c09
L_9C0B:
	push hl			;9c0b
	call L_9C22		;9c0c
	ld a,b			;9c0f
	ld hl,0923eh		;9c10
	call 0826ch		;9c13
	ex de,hl			;9c16
	ld a,(0922bh)		;9c17
	call 08206h		;9c1a
	pop hl			;9c1d
	ld (hl),e			;9c1e
	inc hl			;9c1f
	ld (hl),d			;9c20
	ret			;9c21
L_9C22:
	ld b,000h		;9c22
	ld hl,09232h		;9c24
	ld a,(0922ch)		;9c27
L_9C2A:
	ld c,(hl)			;9c2a
	cp c			;9c2b
	ret z			;9c2c
	inc b			;9c2d
	inc hl			;9c2e
	jr L_9C2A		;9c2f
L_9C31:
	push hl			;9c31
	ld ix,0923eh		;9c32
	call L_9C7C		;9c36
	ld hl,0929eh		;9c39
	call L_9C91		;9c3c
	pop hl			;9c3f
	ld ix,09256h		;9c40
	call L_9C6D		;9c44
	call L_9C7C		;9c47
	ld hl,09286h		;9c4a
	jr L_9C91		;9c4d
L_9C4F:
	push hl			;9c4f
	ld ix,0923eh		;9c50
	call L_9C7C		;9c54
	ld hl,0929fh		;9c57
	call L_9C91		;9c5a
	pop hl			;9c5d
	ld ix,09256h		;9c5e
	call L_9C6D		;9c62
	call L_9C7C		;9c65
	ld hl,09287h		;9c68
	jr L_9C91		;9c6b
L_9C6D:
	ld e,(ix+000h)		;9c6d
	ld d,(ix+001h)		;9c70
	sbc hl,de		;9c73
	ld a,01eh		;9c75
	call 08221h		;9c77
	jr $+59		;9c7a
L_9C7C:
	push bc			;9c7c
	ld de,0001dh		;9c7d
	ld bc,00c00h		;9c80
L_9C83:
	rst 20h			;9c83
	jr c,L_9C8C		;9c84
	ld a,01eh		;9c86
	call 08206h		;9c88
	inc c			;9c8b
L_9C8C:
	djnz L_9C83		;9c8c
	ld a,c			;9c8e
	pop bc			;9c8f
	ret			;9c90
L_9C91:
	add a,a			;9c91
	call 08221h		;9c92
	ld a,b			;9c95
	or (hl)			;9c96
	ld (hl),a			;9c97
	ret			;9c98
L_9C99:
	ld b,008h		;9c99
	ld h,000h		;9c9b
L_9C9D:
	add hl,hl			;9c9d
	ld a,h			;9c9e
	sub c			;9c9f
	jr c,L_9CA4		;9ca0
	inc l			;9ca2
	ld h,a			;9ca3
L_9CA4:
	djnz L_9C9D		;9ca4
	ret			;9ca6
L_9CA7:
	xor a			;9ca7
L_9CA8:
	inc c			;9ca8
	dec c			;9ca9
	ret z			;9caa
	srl c		;9cab
	jr nc,L_9CB0		;9cad
	add a,b			;9caf
L_9CB0:
	sla b		;9cb0
	jr L_9CA8		;9cb2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9cb4..0x9cb5  (1 bytes)
DATA_9CB4:
	defb 0c9h	; 9cb4

; ======================================================================
; CODIGO 0x9cb5..0x9d22  (109 bytes)
; ======================================================================


L_9CB5:
	push af			;9cb5
	push de			;9cb6
	call L_9CBD		;9cb7
	pop de			;9cba
	pop af			;9cbb
	ret			;9cbc
L_9CBD:
	ld a,h			;9cbd
	add a,080h		;9cbe
	jr nc,L_9CCC		;9cc0
L_9CC2:
	ld de,00168h		;9cc2
	add hl,de			;9cc5
	ld a,h			;9cc6
	add a,080h		;9cc7
	jr c,L_9CC2		;9cc9
	ret			;9ccb
L_9CCC:
	push hl			;9ccc
	ld de,00168h		;9ccd
	sbc hl,de		;9cd0
	pop de			;9cd2
	jr nc,L_9CCC		;9cd3
	ex de,hl			;9cd5
	ret			;9cd6
L_9CD7:
	call L_9CF3		;9cd7
	call L_9D16		;9cda
	ld a,(0921bh)		;9cdd
	inc a			;9ce0
	ld l,a			;9ce1
	ld c,004h		;9ce2
	call L_9C99		;9ce4
	ld b,000h		;9ce7
	ld a,h			;9ce9
	and a			;9cea
	jr nz,L_9CEE		;9ceb
	inc b			;9ced
L_9CEE:
	ld a,b			;9cee
	ld (09226h),a		;9cef
	ret			;9cf2
L_9CF3:
	ld hl,0921bh		;9cf3
	ld c,000h		;9cf6
	ld b,005h		;9cf8
L_9CFA:
	push bc			;9cfa
	ld b,c			;9cfb
	ld a,(0daf1h)		;9cfc
	push hl			;9cff
	call L_9DB8		;9d00
	pop hl			;9d03
	ld (hl),a			;9d04
	inc hl			;9d05
	pop bc			;9d06
	inc c			;9d07
	djnz L_9CFA		;9d08
	ld hl,0921bh		;9d0a
	ld de,09220h		;9d0d
	ld bc,00005h		;9d10
	ldir		;9d13
	ret			;9d15
L_9D16:
	ld a,(0daf1h)		;9d16
	ld b,005h		;9d19
	call L_9DB8		;9d1b
	ld (09225h),a		;9d1e
	ret			;9d21

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d22..0x9db8  (150 bytes)
DATA_9D22:
	defb 0bdh,004h,0c0h,004h,0c3h,004h,0c6h,004h,0c9h,004h,0cch,004h,0cfh,004h,0d2h,004h	; 9d22  ................
	defb 0d5h,004h,0d8h,004h,0dbh,004h,0deh,004h,0e1h,004h,0e4h,004h,0e7h,004h,0eah,004h	; 9d32  ................
	defb 0edh,004h,0f0h,004h,0f3h,004h,0f6h,004h,0f9h,004h,0fch,004h,0ffh,004h,002h,005h	; 9d42  ................
	defb 005h,005h,008h,005h,00bh,005h,00eh,005h,011h,005h,014h,005h,017h,005h,01ah,005h	; 9d52  ................
	defb 01dh,005h,020h,005h,023h,005h,026h,005h,029h,005h,02ch,005h,02fh,005h,032h,005h	; 9d62  .. .#.&.).,./.2.
	defb 035h,005h,038h,005h,03bh,005h,03eh,005h,041h,005h,044h,005h,047h,005h,04ah,005h	; 9d72  5.8...>.A.D.G.J.
	defb 04dh,005h,050h,005h,053h,005h,056h,005h,059h,005h,05ch,005h,05fh,005h,062h,005h	; 9d82  M.P.S.V.Y.\._.b.
	defb 065h,005h,068h,005h,06bh,005h,06eh,005h,071h,005h,074h,005h,077h,005h,07ah,005h	; 9d92  e.h.k.n.q.t.w.z.
	defb 07dh,005h,080h,005h,083h,005h,086h,005h,089h,005h,08ch,005h,08fh,005h,092h,005h	; 9da2  }...............
	defb 095h,005h,098h,005h,09bh,005h	; 9db2

; ======================================================================
; CODIGO 0x9db8..0x9df9  (65 bytes)
; ======================================================================


L_9DB8:
	push bc			;9db8
	call L_9DE8		;9db9
	pop bc			;9dbc
	ld a,b			;9dbd
	add a,00fh		;9dbe
	call 08206h		;9dc0
	ex de,hl			;9dc3
	ld c,(hl)			;9dc4
	ld a,b			;9dc5
	cp 005h		;9dc6
	jr nc,L_9DCD		;9dc8
	call L_9DCF		;9dca
L_9DCD:
	ld a,c			;9dcd
	ret			;9dce
L_9DCF:
	ld a,c			;9dcf
	srl a		;9dd0
	srl a		;9dd2
	srl a		;9dd4
	srl a		;9dd6
	call L_9DE2		;9dd8
	ld b,a			;9ddb
	ld a,c			;9ddc
	and 00fh		;9ddd
	add a,b			;9ddf
	ld c,a			;9de0
	ret			;9de1
L_9DE2:
	add a,a			;9de2
	ld b,a			;9de3
	add a,a			;9de4
	add a,a			;9de5
	add a,b			;9de6
	ret			;9de7
L_9DE8:
	ld l,a			;9de8
	ld h,000h		;9de9
	add hl,hl			;9deb
	add hl,hl			;9dec
	add hl,hl			;9ded
	add hl,hl			;9dee
	push hl			;9def
	pop bc			;9df0
	add hl,hl			;9df1
	add hl,bc			;9df2
	ld de,0d700h		;9df3
	add hl,de			;9df6
	ex de,hl			;9df7
	ret			;9df8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9df9..0xa600  (2055 bytes)
DATA_9DF9:
	defb 029h,09eh,067h,09eh,0a1h,09eh,0dfh,09eh,01bh,09fh,059h,09fh,095h,09fh,0d3h,09fh	; 9df9  ).g.......Y.....
	defb 011h,0a0h,04dh,0a0h,08bh,0a0h,0c7h,0a0h,005h,0a1h,043h,0a1h,07dh,0a1h,0bbh,0a1h	; 9e09  ..M.......C.}...
	defb 0f7h,0a1h,035h,0a2h,071h,0a2h,0afh,0a2h,0edh,0a2h,029h,0a3h,067h,0a3h,0a3h,0a3h	; 9e19  ..5.q.....).g...
	defb 006h,028h,006h,02ch,006h,030h,006h,034h,006h,038h,007h,000h,007h,004h,007h,008h	; 9e29  .(.,.0.4.8......
	defb 007h,00ch,007h,010h,007h,014h,007h,018h,007h,01ch,007h,020h,007h,024h,007h,027h	; 9e39  ........... .$.'
	defb 007h,02ah,007h,02fh,007h,033h,007h,037h,007h,03bh,008h,003h,008h,007h,008h,00bh	; 9e49  .*./.3.7........
	defb 008h,00fh,008h,013h,008h,017h,008h,01bh,008h,01fh,008h,023h,008h,027h,008h,02bh	; 9e59  ...........#.'.+
	defb 008h,02eh,008h,032h,008h,036h,009h,002h,009h,006h,009h,00ah,009h,00eh,009h,012h	; 9e69  ...2.6..........
	defb 009h,016h,009h,01ah,009h,01eh,009h,022h,009h,026h,009h,02ah,009h,02eh,009h,032h	; 9e79  .......".&.*...2
	defb 009h,036h,009h,039h,00ah,001h,00ah,005h,00ah,009h,00ah,00dh,00ah,011h,00ah,015h	; 9e89  .6.9............
	defb 00ah,019h,00ah,01dh,00ah,020h,00ah,020h,00ah,020h,00ah,025h,00ah,029h,00ah,02dh	; 9e99  ..... . . .%.).-
	defb 00ah,031h,00ah,035h,00ah,039h,00bh,001h,00bh,004h,00bh,008h,00bh,00ch,00bh,010h	; 9ea9  .1.5.9..........
	defb 00bh,014h,00bh,018h,00bh,01ch,00bh,020h,00bh,024h,00bh,028h,00bh,02ch,00bh,030h	; 9eb9  ....... .$.(.,.0
	defb 00bh,034h,00bh,038h,00ch,000h,00ch,004h,00ch,008h,00ch,00bh,00ch,00fh,00ch,013h	; 9ec9  .4.8............
	defb 00ch,017h,00ch,01bh,00ch,01fh,00ch,023h,00ch,027h,00ch,02bh,00ch,02fh,00ch,033h	; 9ed9  .......#.'.+./.3
	defb 00ch,037h,00ch,03bh,00dh,003h,00dh,007h,00dh,00bh,00dh,00fh,00dh,013h,00dh,016h	; 9ee9  .7..............
	defb 00dh,01ah,00dh,01eh,00dh,022h,00dh,026h,00dh,02ah,00dh,02eh,00dh,032h,00dh,036h	; 9ef9  .....".&.*...2.6
	defb 00dh,03ah,00eh,002h,00eh,006h,00eh,00ah,00eh,00eh,00eh,012h,00eh,016h,00eh,01ah	; 9f09  .:..............
	defb 00ch,01dh,00eh,021h,00eh,025h,00eh,029h,00eh,02dh,00eh,031h,00eh,035h,00eh,039h	; 9f19  ...!.%.).-.1.5.9
	defb 00fh,001h,00fh,005h,00fh,009h,00fh,00dh,00fh,011h,00fh,015h,00fh,019h,00fh,01dh	; 9f29  ................
	defb 00fh,021h,00fh,025h,00fh,028h,00fh,02ch,00fh,030h,00fh,034h,00fh,038h,010h,000h	; 9f39  .!.%.(.,.0.4.8..
	defb 010h,004h,010h,008h,010h,00ch,010h,010h,010h,014h,010h,018h,010h,01ch,010h,020h	; 9f49  ...............
	defb 010h,024h,010h,028h,010h,02ch,010h,02fh,010h,033h,010h,037h,010h,03bh,011h,003h	; 9f59  .$.(.,./.3.7....
	defb 011h,007h,011h,00bh,011h,00fh,011h,013h,011h,017h,011h,01bh,011h,01fh,011h,023h	; 9f69  ...............#
	defb 011h,031h,011h,02bh,011h,02fh,011h,033h,011h,036h,011h,03ah,012h,002h,012h,006h	; 9f79  .1.+./.3.6.:....
	defb 012h,00ah,012h,00eh,012h,012h,012h,016h,012h,01ah,012h,01eh,012h,022h,012h,026h	; 9f89  .............".&
	defb 012h,02ah,012h,02eh,012h,032h,012h,036h,012h,03ah,013h,002h,013h,005h,013h,009h	; 9f99  .*...2.6.:......
	defb 013h,00dh,013h,011h,013h,015h,013h,019h,013h,01dh,013h,021h,013h,025h,013h,029h	; 9fa9  ...........!.%.)
	defb 013h,02dh,013h,031h,013h,035h,013h,039h,014h,001h,014h,005h,014h,009h,014h,00ch	; 9fb9  .-.1.5.9........
	defb 014h,010h,014h,014h,014h,018h,014h,01ch,014h,020h,014h,024h,014h,028h,014h,02ch	; 9fc9  ......... .$.(.,
	defb 014h,030h,014h,034h,014h,038h,015h,000h,015h,004h,015h,008h,015h,00ch,015h,010h	; 9fd9  .0.4.8..........
	defb 015h,014h,015h,017h,015h,01bh,015h,01fh,015h,023h,015h,027h,015h,02bh,015h,02fh	; 9fe9  .........#.'.+./
	defb 015h,033h,015h,037h,015h,03bh,016h,003h,016h,007h,016h,00bh,016h,00fh,016h,013h	; 9ff9  .3.7............
	defb 016h,017h,016h,01bh,016h,01eh,016h,022h,016h,026h,016h,02ah,016h,02eh,016h,032h	; a009  .......".&.*...2
	defb 016h,036h,016h,03ah,017h,002h,017h,006h,017h,00ah,017h,00eh,017h,012h,017h,016h	; a019  .6.:............
	defb 017h,01ah,017h,01eh,017h,022h,017h,026h,017h,029h,017h,02dh,017h,031h,017h,035h	; a029  .....".&.).-.1.5
	defb 017h,039h,000h,001h,000h,005h,000h,009h,000h,00dh,000h,011h,000h,015h,000h,019h	; a039  .9..............
	defb 000h,01dh,000h,021h,000h,025h,000h,029h,000h,02dh,000h,030h,000h,034h,000h,038h	; a049  ...!.%.).-.0.4.8
	defb 001h,000h,001h,004h,001h,008h,001h,00ch,001h,010h,001h,014h,001h,018h,001h,01ch	; a059  ................
	defb 001h,020h,001h,024h,001h,028h,001h,02ch,001h,030h,001h,034h,001h,037h,001h,03bh	; a069  . .$.(.,.0.4.7..
	defb 002h,003h,002h,007h,002h,00bh,002h,00fh,002h,013h,002h,017h,002h,01bh,002h,01fh	; a079  ................
	defb 002h,023h,002h,027h,002h,02bh,002h,02fh,002h,033h,002h,037h,002h,03bh,003h,003h	; a089  .#.'.+./.3.7....
	defb 003h,006h,003h,00ah,003h,00eh,003h,012h,003h,016h,003h,01ah,003h,01eh,003h,022h	; a099  ..............."
	defb 003h,026h,003h,02ah,003h,02eh,003h,032h,003h,036h,003h,03ah,004h,002h,004h,006h	; a0a9  .&.*...2.6.:....
	defb 004h,00ah,004h,00dh,004h,011h,004h,015h,004h,019h,004h,01dh,004h,021h,004h,025h	; a0b9  .............!.%
	defb 004h,029h,004h,02dh,004h,031h,004h,035h,004h,039h,005h,001h,005h,005h,005h,009h	; a0c9  .).-.1.5.9......
	defb 005h,00dh,005h,011h,005h,015h,005h,018h,005h,01ch,005h,020h,005h,024h,005h,028h	; a0d9  ........... .$.(
	defb 005h,02ch,005h,030h,005h,034h,005h,038h,006h,000h,006h,004h,006h,008h,006h,00ch	; a0e9  .,.0.4.8........
	defb 006h,010h,006h,014h,006h,018h,006h,01ch,006h,01fh,006h,023h,006h,027h,006h,02bh	; a0f9  ...........#.'.+
	defb 006h,02fh,006h,032h,006h,036h,006h,03ah,007h,002h,007h,006h,007h,00ah,007h,00eh	; a109  ./.2.6.:........
	defb 007h,012h,007h,016h,007h,01ah,007h,01eh,007h,022h,007h,026h,007h,02ah,007h,02eh	; a119  .........".&.*..
	defb 007h,032h,007h,036h,007h,03ah,008h,001h,008h,005h,008h,009h,008h,00dh,008h,011h	; a129  .2.6.:..........
	defb 008h,015h,008h,019h,008h,01dh,008h,021h,008h,025h,008h,029h,008h,02dh,008h,031h	; a139  .......!.%.).-.1
	defb 008h,035h,009h,001h,009h,005h,009h,008h,009h,00ch,009h,010h,009h,014h,009h,018h	; a149  .5..............
	defb 009h,01ch,009h,020h,009h,024h,009h,028h,009h,02ch,009h,030h,009h,034h,009h,038h	; a159  ... .$.(.,.0.4.8
	defb 00ah,000h,00ah,004h,00ah,008h,00ah,00ch,00ah,00fh,00ah,013h,00ah,017h,00ah,01bh	; a169  ................
	defb 00ah,01fh,00ah,023h,00ah,023h,00ah,027h,00ah,02bh,00ah,02fh,00ah,033h,00ah,037h	; a179  ...#.#.'.+./.3.7
	defb 00ah,03bh,00bh,003h,00bh,007h,00bh,00bh,00bh,00fh,00bh,013h,00bh,017h,00bh,01ah	; a189  ................
	defb 00bh,01eh,00bh,022h,00bh,026h,00bh,02ah,00bh,02eh,00bh,032h,00bh,036h,00bh,03ah	; a199  ...".&.*...2.6.:
	defb 00ch,002h,00ch,006h,00ch,00ah,00ch,00eh,00ch,012h,00ch,016h,00ch,01ah,00ch,01eh	; a1a9  ................
	defb 00ch,021h,00ch,025h,00ch,029h,00ch,02dh,00ch,031h,00ch,035h,00ch,039h,00dh,001h	; a1b9  .!.%.).-.1.5.9..
	defb 00dh,005h,00dh,009h,00dh,00dh,00dh,011h,00dh,015h,00dh,019h,00dh,01dh,00dh,021h	; a1c9  ...............!
	defb 00dh,025h,00dh,029h,00dh,02ch,00dh,030h,00dh,034h,00dh,038h,00eh,000h,00eh,004h	; a1d9  .%.).,.0.4.8....
	defb 00eh,008h,00eh,00ch,00eh,010h,00eh,014h,00eh,018h,00eh,01ch,00ch,020h,00eh,024h	; a1e9  ............. .$
	defb 00eh,028h,00eh,02ch,00eh,030h,00eh,033h,00eh,037h,00eh,03bh,00fh,003h,00fh,007h	; a1f9  .(.,.0.3.7......
	defb 00fh,00bh,00fh,00fh,00fh,013h,00fh,017h,00fh,01bh,00fh,01fh,00fh,023h,00fh,027h	; a209  .............#.'
	defb 00fh,02bh,00fh,02fh,00fh,033h,00fh,037h,00fh,03ah,010h,002h,010h,006h,010h,00ah	; a219  .+./.3.7.:......
	defb 010h,00eh,010h,012h,010h,016h,010h,01ah,010h,01eh,010h,022h,010h,026h,010h,02ah	; a229  ...........".&.*
	defb 010h,02eh,010h,032h,010h,036h,010h,03ah,011h,002h,011h,006h,011h,009h,011h,00dh	; a239  ...2.6.:........
	defb 011h,011h,011h,015h,011h,019h,011h,01dh,011h,021h,011h,025h,011h,029h,011h,02dh	; a249  .........!.%.).-
	defb 011h,031h,011h,035h,011h,039h,012h,001h,012h,005h,012h,009h,012h,00dh,012h,010h	; a259  .1.5.9..........
	defb 012h,014h,012h,018h,012h,01ch,012h,020h,012h,024h,012h,028h,012h,02ch,012h,030h	; a269  ....... .$.(.,.0
	defb 012h,034h,012h,038h,013h,000h,013h,004h,013h,008h,013h,00ch,013h,010h,013h,014h	; a279  .4.8............
	defb 013h,018h,013h,01bh,013h,01fh,013h,023h,013h,027h,013h,02bh,013h,02fh,013h,033h	; a289  .......#.'.+./.3
	defb 013h,037h,013h,03bh,014h,003h,014h,007h,014h,001h,014h,00fh,014h,013h,014h,017h	; a299  .7..............
	defb 014h,01bh,014h,01fh,014h,022h,014h,026h,014h,02ah,014h,02eh,014h,032h,014h,036h	; a2a9  .....".&.*...2.6
	defb 014h,03ah,015h,002h,015h,006h,015h,00ah,015h,00eh,015h,012h,015h,016h,015h,01ah	; a2b9  .:..............
	defb 015h,01eh,015h,022h,015h,026h,015h,02ah,015h,02dh,015h,031h,015h,035h,015h,039h	; a2c9  ...".&.*.-.1.5.9
	defb 016h,001h,016h,005h,016h,009h,016h,00dh,016h,011h,016h,015h,016h,019h,016h,01dh	; a2d9  ................
	defb 016h,021h,016h,025h,016h,029h,016h,02dh,016h,031h,016h,034h,016h,038h,017h,000h	; a2e9  .!.%.).-.1.4.8..
	defb 017h,004h,017h,008h,017h,00ch,017h,010h,017h,014h,017h,018h,017h,01ch,017h,020h	; a2f9  ...............
	defb 017h,024h,017h,028h,017h,02ch,017h,030h,017h,02ah,017h,038h,017h,03bh,000h,003h	; a309  .$.(.,.0.*.8....
	defb 000h,007h,000h,00bh,000h,00fh,000h,013h,000h,017h,000h,01bh,000h,01fh,000h,023h	; a319  ...............#
	defb 000h,027h,000h,02bh,000h,02ch,000h,029h,000h,037h,000h,03bh,001h,003h,001h,007h	; a329  .'.+.,.).7......
	defb 001h,00ah,001h,00eh,001h,012h,001h,00ch,001h,01ah,001h,01eh,001h,022h,001h,026h	; a339  .............".&
	defb 001h,02ah,001h,02eh,001h,032h,001h,036h,001h,03ah,002h,002h,002h,006h,002h,00ah	; a349  .*...2.6.:......
	defb 002h,00eh,002h,011h,002h,015h,002h,019h,002h,01dh,002h,021h,002h,025h,002h,029h	; a359  ...........!.%.)
	defb 002h,02dh,002h,031h,002h,035h,002h,039h,003h,001h,003h,005h,003h,009h,003h,00dh	; a369  .-.1.5.9........
	defb 003h,011h,003h,015h,003h,019h,003h,01ch,003h,020h,003h,024h,003h,028h,003h,02ch	; a379  ......... .$.(.,
	defb 003h,030h,003h,034h,003h,038h,003h,032h,004h,004h,004h,008h,004h,00ch,004h,010h	; a389  .0.4.8.2........
	defb 004h,014h,004h,018h,004h,01ch,004h,020h,004h,023h,004h,027h,004h,02bh,004h,02fh	; a399  ....... .#.'.+./
	defb 004h,033h,004h,037h,004h,03bh,005h,003h,005h,007h,005h,00bh,005h,00fh,005h,013h	; a3a9  .3.7............
	defb 005h,017h,005h,01bh,005h,01fh,005h,023h,005h,027h,005h,02ah,005h,02eh,005h,032h	; a3b9  .......#.'.*...2
	defb 005h,036h,005h,03ah,006h,002h,006h,006h,006h,00ah,006h,00eh,006h,012h,006h,016h	; a3c9  .6.:............
	defb 006h,01ah,006h,01eh,006h,022h,006h,026h,011h,0a4h,025h,0a4h,039h,0a4h,04dh,0a4h	; a3d9  .....".&..%.9.M.
	defb 061h,0a4h,075h,0a4h,089h,0a4h,09dh,0a4h,0b1h,0a4h,0c5h,0a4h,0d9h,0a4h,0edh,0a4h	; a3e9  a.u.............
	defb 001h,0a5h,015h,0a5h,029h,0a5h,03dh,0a5h,051h,0a5h,065h,0a5h,079h,0a5h,08dh,0a5h	; a3f9  ....).=.Q.e.y...
	defb 0a1h,0a5h,0b5h,0a5h,0c9h,0a5h,0ddh,0a5h,00fh,003h,010h,003h,011h,003h,013h,003h	; a409  ................
	defb 014h,003h,015h,003h,017h,003h,018h,003h,019h,003h,01bh,003h,01ch,003h,01dh,003h	; a419  ................
	defb 000h,004h,001h,004h,003h,004h,004h,004h,005h,004h,006h,004h,007h,004h,009h,004h	; a429  ................
	defb 00ah,004h,00bh,004h,00dh,004h,00eh,004h,00fh,004h,010h,004h,011h,004h,012h,004h	; a439  ................
	defb 014h,004h,015h,004h,016h,004h,017h,004h,018h,004h,01ah,004h,01bh,004h,01ch,004h	; a449  ................
	defb 01dh,004h,001h,005h,002h,005h,003h,005h,005h,005h,006h,005h,007h,005h,008h,005h	; a459  ................
	defb 00ah,005h,00bh,005h,00ch,005h,00dh,005h,00eh,005h,010h,005h,012h,005h,013h,005h	; a469  ................
	defb 014h,005h,015h,005h,016h,005h,017h,005h,018h,005h,01ah,005h,01bh,005h,01dh,005h	; a479  ................
	defb 000h,006h,001h,006h,002h,006h,003h,006h,005h,006h,006h,006h,007h,006h,008h,006h	; a489  ................
	defb 009h,006h,00bh,006h,00ch,006h,00dh,006h,00eh,006h,010h,006h,011h,006h,012h,006h	; a499  ................
	defb 013h,006h,015h,006h,016h,006h,018h,006h,019h,006h,01ah,006h,01bh,006h,01ch,006h	; a4a9  ................
	defb 000h,007h,001h,007h,002h,007h,003h,007h,005h,007h,006h,007h,007h,007h,008h,007h	; a4b9  ................
	defb 009h,007h,00ah,007h,00bh,007h,00dh,007h,00eh,007h,00fh,007h,010h,007h,012h,007h	; a4c9  ................
	defb 013h,007h,014h,007h,015h,007h,016h,007h,018h,007h,019h,007h,01ah,007h,01ch,007h	; a4d9  ................
	defb 01dh,007h,000h,008h,001h,008h,002h,008h,003h,008h,005h,008h,006h,008h,008h,008h	; a4e9  ................
	defb 009h,008h,00ah,008h,00ch,008h,00dh,008h,00eh,008h,00fh,008h,010h,008h,012h,008h	; a4f9  ................
	defb 013h,008h,015h,008h,016h,008h,017h,008h,018h,008h,01ah,008h,01ch,008h,01dh,008h	; a509  ................
	defb 000h,009h,001h,009h,003h,009h,005h,009h,006h,009h,007h,009h,008h,009h,00bh,009h	; a519  ................
	defb 00ch,009h,00dh,009h,00eh,009h,00fh,009h,011h,009h,013h,009h,014h,009h,015h,009h	; a529  ................
	defb 016h,009h,019h,009h,01bh,009h,01dh,009h,000h,00ah,002h,00ah,004h,00ah,006h,00ah	; a539  ................
	defb 008h,00ah,00ah,00ah,00ch,00ah,00eh,00ah,010h,00ah,012h,00ah,014h,00ah,016h,00ah	; a549  ................
	defb 018h,00ah,01ah,00ah,01ch,00ah,000h,00bh,002h,00bh,005h,00bh,007h,00bh,009h,00bh	; a559  ................
	defb 00bh,00bh,00eh,00bh,010h,00bh,012h,00bh,014h,00bh,017h,00bh,019h,00bh,01bh,00bh	; a569  ................
	defb 000h,000h,002h,000h,004h,000h,006h,000h,009h,000h,00bh,000h,00dh,000h,010h,000h	; a579  ................
	defb 012h,000h,015h,000h,017h,000h,019h,000h,01bh,000h,01dh,000h,000h,001h,003h,001h	; a589  ................
	defb 006h,001h,008h,001h,00ah,001h,00ch,001h,00eh,001h,010h,001h,012h,001h,014h,001h	; a599  ................
	defb 016h,001h,017h,001h,019h,001h,01bh,001h,01dh,001h,000h,002h,001h,002h,003h,002h	; a5a9  ................
	defb 005h,002h,007h,002h,009h,002h,00ah,002h,00ch,002h,00eh,002h,010h,002h,011h,002h	; a5b9  ................
	defb 012h,002h,013h,002h,015h,002h,016h,002h,017h,002h,019h,002h,01ah,002h,01ch,002h	; a5c9  ................
	defb 01dh,002h,000h,003h,002h,003h,003h,003h,004h,003h,006h,003h,007h,003h,009h,003h	; a5d9  ................
	defb 00ah,003h,00bh,003h,00ch,003h,00eh,003h,01fh,01dh,01fh,01eh,01fh,01eh,01fh,01fh	; a5e9  ................
	defb 01eh,01fh,01eh,01fh,023h,0feh,0ffh	; a5f9
