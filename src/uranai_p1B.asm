; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p1B (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x99da  (474 bytes)
; ======================================================================


L_9800:
	jp L_98A7		;9800
L_9803:
	jp L_98A7		;9803
L_9806:
	jp L_9863		;9806
L_9809:
	jp L_9D03		;9809
L_980C:
	jp L_9CD4		;980c
L_980F:
	jp L_9A21		;980f
L_9812:
	jp L_A309		;9812
L_9815:
	jp L_9D6F		;9815
L_9818:
	jp L_A32D		;9818
L_981B:
	jp L_A356		;981b
L_981E:
	jp L_9D7F		;981e
L_9821:
	jp L_9DCD		;9821
L_9824:
	jp L_A2B4		;9824
L_9827:
	jp L_9DFD		;9827
L_982A:
	jp L_9E53		;982a
L_982D:
	jp L_A556		;982d
L_9830:
	jp L_A417		;9830
L_9833:
	jp L_9E65		;9833
L_9836:
	jp L_A58A		;9836
L_9839:
	jp L_A42E		;9839
L_983C:
	jp L_A59E		;983c
L_983F:
	jp L_A495		;983f
L_9842:
	jp L_9D5E		;9842
L_9845:
	jp L_9F84		;9845
L_9848:
	jp L_9D41		;9848
L_984B:
	jp L_A0B2		;984b
L_984E:
	jp L_A153		;984e
L_9851:
	jp L_9FA2		;9851
L_9854:
	jp L_A154		;9854
L_9857:
	jp L_A267		;9857
L_985A:
	jp L_A284		;985a
L_985D:
	jp L_9D2B		;985d
L_9860:
	jp L_9E49		;9860
L_9863:
	ld a,(09223h)		;9863
	cp 007h		;9866
	ret z			;9868
	ld a,(0d1cfh)		;9869
	or a			;986c
	jr nz,L_988E		;986d
	jr L_9889		;986f
L_9871:
	ld hl,(0cd28h)		;9871
	ld de,(0cd2ah)		;9874
	call L_98A8		;9878
	ld de,(0cd2ch)		;987b
	ld bc,(0cd2eh)		;987f
	ld hl,0ccf8h		;9883
	call L_99EB		;9886
L_9889:
	ld hl,0d1cfh		;9889
	inc (hl)			;988c
	ret			;988d
L_988E:
	ld a,(0d1cfh)		;988e
	dec a			;9891
	jr z,L_9871		;9892
	ld a,(0d1cfh)		;9894
	cp 003h		;9897
	ret z			;9899
	call L_9CD4		;989a
	call L_9A38		;989d
	ld a,(0d1c7h)		;98a0
	or a			;98a3
	ret nz			;98a4
	jr L_9889		;98a5
L_98A7:
	ret			;98a7
L_98A8:
	ld (0dd00h),hl		;98a8
	ld (0dd02h),de		;98ab
	ld a,h			;98af
	add a,008h		;98b0
	ld h,a			;98b2
	ld a,(0dd03h)		;98b3
	sub 010h		;98b6
	ld b,a			;98b8
	ld a,(0dd02h)		;98b9
	ld c,a			;98bc
	xor a			;98bd
	ld d,000h		;98be
	call 0829fh		;98c0
	ld hl,(0dd00h)		;98c3
	ld a,l			;98c6
	add a,008h		;98c7
	ld l,a			;98c9
	ld a,(0dd02h)		;98ca
	sub 010h		;98cd
	ld c,a			;98cf
	ld a,(0dd03h)		;98d0
	ld b,a			;98d3
	xor a			;98d4
	ld d,000h		;98d5
	call 0829fh		;98d7
	ld de,(0dd00h)		;98da
	ld a,0c9h		;98de
	call L_99C4		;98e0
	call 082a8h		;98e3
	ex de,hl			;98e6
	ld a,(0dd03h)		;98e7
	sub 010h		;98ea
	ld b,a			;98ec
	ld c,00eh		;98ed
	call L_996B		;98ef
	ld de,(0dd00h)		;98f2
	ld a,(0dd03h)		;98f6
	sub 008h		;98f9
	add a,d			;98fb
	ld d,a			;98fc
	ld a,0cah		;98fd
	call L_99C4		;98ff
	ld hl,(0dd00h)		;9902
	ld a,008h		;9905
	add a,l			;9907
	ld l,a			;9908
	ld a,(0dd02h)		;9909
	sub 010h		;990c
	ld b,a			;990e
	ld c,00eh		;990f
	call L_9997		;9911
	ld de,(0dd00h)		;9914
	ld a,(0dd02h)		;9918
	sub 008h		;991b
	add a,e			;991d
	ld e,a			;991e
	ld a,0cbh		;991f
	call L_99C4		;9921
	ld hl,(0dd00h)		;9924
	ld a,(0dd03h)		;9927
	dec a			;992a
	add a,h			;992b
	ld h,a			;992c
	ld a,008h		;992d
	add a,l			;992f
	ld l,a			;9930
	ld a,(0dd02h)		;9931
	sub 010h		;9934
	ld b,a			;9936
	ld c,00eh		;9937
	call L_9997		;9939
	ld de,(0dd00h)		;993c
	ld a,(0dd02h)		;9940
	sub 008h		;9943
	add a,e			;9945
	ld e,a			;9946
	ld a,(0dd03h)		;9947
	sub 008h		;994a
	add a,d			;994c
	ld d,a			;994d
	ld a,0cch		;994e
	call L_99C4		;9950
	ld hl,(0dd00h)		;9953
	ld a,008h		;9956
	add a,h			;9958
	ld h,a			;9959
	ld a,(0dd02h)		;995a
	dec a			;995d
	add a,l			;995e
	ld l,a			;995f
	ld a,(0dd03h)		;9960
	sub 010h		;9963
	ld b,a			;9965
	ld c,00eh		;9966
	jp L_996B		;9968
L_996B:
	ld a,024h		;996b
	ld (0d226h),a		;996d
	call 08287h		;9970
	out (c),h		;9973
	xor a			;9975
	out (c),a		;9976
	out (c),l		;9978
	out (c),a		;997a
	ld hl,(0d227h)		;997c
	out (c),h		;997f
	xor a			;9981
	cp h			;9982
	jr nz,L_9986		;9983
	inc a			;9985
L_9986:
	out (c),a		;9986
	xor a			;9988
	out (c),a		;9989
	out (c),a		;998b
	out (c),l		;998d
	out (c),a		;998f
	ld a,070h		;9991
	out (c),a		;9993
	ei			;9995
	ret			;9996
L_9997:
	ld a,024h		;9997
	ld (0d226h),a		;9999
	call 08287h		;999c
	out (c),h		;999f
	xor a			;99a1
	out (c),a		;99a2
	out (c),l		;99a4
	out (c),a		;99a6
	ld hl,(0d227h)		;99a8
	out (c),h		;99ab
	xor a			;99ad
	cp h			;99ae
	jr nz,L_99B2		;99af
	inc a			;99b1
L_99B2:
	out (c),a		;99b2
	xor a			;99b4
	out (c),a		;99b5
	out (c),a		;99b7
	out (c),l		;99b9
	inc a			;99bb
	out (c),a		;99bc
	ld a,070h		;99be
	out (c),a		;99c0
	ei			;99c2
	ret			;99c3
L_99C4:
	push bc			;99c4
	push hl			;99c5
	push de			;99c6
	call 08281h		;99c7
	ld a,l			;99ca
	add a,080h		;99cb
	ld l,a			;99cd
	ld bc,00808h		;99ce
	ld a,048h		;99d1
	call 0820ch		;99d3
	pop de			;99d6
	pop hl			;99d7
	pop bc			;99d8
	ret			;99d9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99da..0x99eb  (17 bytes)
DATA_99DA:
	defb 0f1h,03ch,010h,0e8h,021h,0cfh,09ch,011h,0a5h,09ch,001h,024h,000h,0edh,0b0h,0c1h	; 99da  .<..!......$....
	defb 078h	; 99ea

; ======================================================================
; CODIGO 0x99eb..0x9d02  (791 bytes)
; ======================================================================


L_99EB:
	ld a,b			;99eb
	ld (099dah),a		;99ec
	ld (099dbh),a		;99ef
	ld a,c			;99f2
	ld (099dch),a		;99f3
	ld (099ddh),de		;99f6
	ld (099dfh),de		;99fa
	call L_9A19		;99fe
	xor a			;9a01
	ld (099e1h),a		;9a02
	ld (0d1c6h),a		;9a05
	ld (099e2h),a		;9a08
	ld (099e3h),a		;9a0b
	ld (099e8h),a		;9a0e
	inc a			;9a11
	ld (0d1c7h),a		;9a12
	ld (0dcf4h),a		;9a15
	ret			;9a18
L_9A19:
	ld (099e4h),hl		;9a19
	ld (099e6h),de		;9a1c
	ret			;9a20
L_9A21:
	ld a,(0d1c6h)		;9a21
	or a			;9a24
	jp nz,L_9AEB		;9a25
	ld a,(099e3h)		;9a28
	or a			;9a2b
	jp nz,L_9BBC		;9a2c
	call L_9C9E		;9a2f
	ld a,(0d1c3h)		;9a32
	and 003h		;9a35
	ret nz			;9a37
L_9A38:
	ld a,(0d1c7h)		;9a38
	or a			;9a3b
	ret z			;9a3c
	ld a,(099e8h)		;9a3d
	or a			;9a40
	jp nz,L_9B33		;9a41
	ld de,(099e6h)		;9a44
	ld hl,(099e4h)		;9a48
	ld a,(hl)			;9a4b
	inc hl			;9a4c
	call L_9AA3		;9a4d
	cp 0ffh		;9a50
	jp z,L_9B1A		;9a52
	cp 0feh		;9a55
	jr z,L_9AAD		;9a57
	cp 0fdh		;9a59
	jp z,L_9B0E		;9a5b
	cp 0fch		;9a5e
	jp z,L_9B24		;9a60
	cp 0fbh		;9a63
	jp z,L_9B00		;9a65
L_9A68:
	cp 0ffh		;9a68
	jr nz,L_9A6D		;9a6a
	xor a			;9a6c
L_9A6D:
	cp 043h		;9a6d
	call z,L_9C7C		;9a6f
	cp 044h		;9a72
	call z,L_9C7C		;9a74
	ld c,a			;9a77
	ld a,(0d1ffh)		;9a78
	or a			;9a7b
	jr nz,L_9A90		;9a7c
	call L_9800		;9a7e
	ld a,c			;9a81
	add a,042h		;9a82
	cp 019h		;9a84
	call c,L_9C2A		;9a86
	sub 019h		;9a89
	cp 024h		;9a8b
	call c,L_9C57		;9a8d
L_9A90:
	push hl			;9a90
	push bc			;9a91
	pop bc			;9a92
	pop hl			;9a93
	ld a,c			;9a94
	call 0827eh		;9a95
	ld a,001h		;9a98
	ld (0dcf5h),a		;9a9a
	call 082a8h		;9a9d
	jp L_9A19		;9aa0
L_9AA3:
	push hl			;9aa3
	push af			;9aa4
	ld a,(hl)			;9aa5
	inc a			;9aa6
	ld (0dcf4h),a		;9aa7
	pop af			;9aaa
	pop hl			;9aab
	ret			;9aac
L_9AAD:
	ld (099e4h),hl		;9aad
	ld a,(099dbh)		;9ab0
	ld (099dah),a		;9ab3
	ld a,(099e2h)		;9ab6
	and a			;9ab9
	jp nz,L_9BAA		;9aba
	ld hl,(099ddh)		;9abd
	ld a,l			;9ac0
	add a,010h		;9ac1
	ld l,a			;9ac3
	ld (099ddh),hl		;9ac4
	ld (099e6h),hl		;9ac7
L_9ACA:
	ld a,(099e1h)		;9aca
	inc a			;9acd
	ld (099e1h),a		;9ace
	ld hl,099dch		;9ad1
	cp (hl)			;9ad4
	ret c			;9ad5
	ld a,(099e2h)		;9ad6
	or a			;9ad9
	call z,L_9BAA		;9ada
	ld a,0ffh		;9add
	ld (099e1h),a		;9adf
	inc a			;9ae2
	inc a			;9ae3
	ld (099e2h),a		;9ae4
	ld (0d1c6h),a		;9ae7
	ret			;9aea
L_9AEB:
	xor a			;9aeb
	ld (0dcf5h),a		;9aec
	call L_9B77		;9aef
	call L_9C8C		;9af2
	ret z			;9af5
	call L_9BB6		;9af6
	xor a			;9af9
	ld (0d1c6h),a		;9afa
	jp L_9B84		;9afd
L_9B00:
	ld (099e4h),hl		;9b00
	ld a,(0d216h)		;9b03
	xor 001h		;9b06
	ld (0d216h),a		;9b08
	jp L_9803		;9b0b
L_9B0E:
	ld (099e4h),hl		;9b0e
	ld a,(0d1ffh)		;9b11
	xor 001h		;9b14
	ld (0d1ffh),a		;9b16
	ret			;9b19
L_9B1A:
	ld a,0ffh		;9b1a
	ld (099e1h),a		;9b1c
	xor a			;9b1f
	ld (0d1c7h),a		;9b20
	ret			;9b23
L_9B24:
	ld a,004h		;9b24
	ld (099e8h),a		;9b26
	ld (099e9h),hl		;9b29
	ld hl,0d218h		;9b2c
	ld (099e4h),hl		;9b2f
	ret			;9b32
L_9B33:
	ld de,(099e6h)		;9b33
	ld hl,(099e4h)		;9b37
	ld a,(hl)			;9b3a
	inc hl			;9b3b
	call L_9A68		;9b3c
	ld hl,(099e6h)		;9b3f
	ld a,h			;9b42
	sub 008h		;9b43
	ld h,a			;9b45
	ld a,l			;9b46
	sub 008h		;9b47
	ld l,a			;9b49
	ld a,(0d1d6h)		;9b4a
	cp 003h		;9b4d
	jr z,L_9B68		;9b4f
	ld e,004h		;9b51
	ld a,(0d1d6h)		;9b53
	dec a			;9b56
	jr z,L_9B5E		;9b57
	ld e,009h		;9b59
	dec a			;9b5b
	jr z,L_9B5E		;9b5c
L_9B5E:
	ld e,009h		;9b5e
	ld d,00eh		;9b60
	ld bc,00810h		;9b62
	call L_A7DF		;9b65
L_9B68:
	ld a,(099e8h)		;9b68
	dec a			;9b6b
	ld (099e8h),a		;9b6c
	ret nz			;9b6f
	ld hl,(099e9h)		;9b70
	ld (099e4h),hl		;9b73
	ret			;9b76
L_9B77:
	ld a,(0d1c3h)		;9b77
	and 00fh		;9b7a
	bit 3,a		;9b7c
	ld a,000h		;9b7e
	jr z,L_9B84		;9b80
	ld a,050h		;9b82
L_9B84:
	push af			;9b84
	ld a,(099dch)		;9b85
	dec a			;9b88
	ld l,a			;9b89
	ld h,000h		;9b8a
	add hl,hl			;9b8c
	call L_9BA6		;9b8d
	ex de,hl			;9b90
	ld a,(099dbh)		;9b91
	ld l,a			;9b94
	ld h,000h		;9b95
	call L_9BA6		;9b97
	ld h,l			;9b9a
	ld l,e			;9b9b
	ld de,(099dfh)		;9b9c
	add hl,de			;9ba0
	pop af			;9ba1
	ex de,hl			;9ba2
	jp 0827eh		;9ba3
L_9BA6:
	add hl,hl			;9ba6
	add hl,hl			;9ba7
	add hl,hl			;9ba8
	ret			;9ba9
L_9BAA:
	ld a,(099dch)		;9baa
	dec a			;9bad
	ld b,a			;9bae
	ld a,(099e1h)		;9baf
	cp b			;9bb2
	jp z,L_9ACA		;9bb3
L_9BB6:
	ld a,010h		;9bb6
	ld (099e3h),a		;9bb8
	ret			;9bbb
L_9BBC:
	xor a			;9bbc
	ld (0dcf5h),a		;9bbd
	ld de,(099dfh)		;9bc0
	ld a,e			;9bc4
	sub 007h		;9bc5
	ld e,a			;9bc7
	ex de,hl			;9bc8
	ld de,(099dfh)		;9bc9
	ld a,e			;9bcd
	sub 008h		;9bce
	ld e,a			;9bd0
	ld a,(099dch)		;9bd1
	call L_9C25		;9bd4
	dec a			;9bd7
	ld c,a			;9bd8
	ld a,(099dbh)		;9bd9
	call L_9C26		;9bdc
	ld b,a			;9bdf
	xor a			;9be0
	call 08284h		;9be1
	ld de,(099dfh)		;9be4
	ld a,e			;9be8
	sub 008h		;9be9
	ld e,a			;9beb
	ld a,(099dch)		;9bec
	call L_9C25		;9bef
	dec a			;9bf2
	add a,e			;9bf3
	ld e,a			;9bf4
	ex de,hl			;9bf5
	ld a,(099dbh)		;9bf6
	call L_9C26		;9bf9
	ld b,a			;9bfc
	ld c,001h		;9bfd
	xor a			;9bff
	ld d,a			;9c00
	call 0829fh		;9c01
	ld a,(099e3h)		;9c04
	dec a			;9c07
	or a			;9c08
	ld (099e3h),a		;9c09
	ret nz			;9c0c
	ld de,(099dfh)		;9c0d
	ld a,(099dch)		;9c11
	dec a			;9c14
	call L_9C25		;9c15
	add a,e			;9c18
	ld e,a			;9c19
	ld (099ddh),de		;9c1a
	ld (099e6h),de		;9c1e
	jp L_9ACA		;9c22
L_9C25:
	add a,a			;9c25
L_9C26:
	add a,a			;9c26
	add a,a			;9c27
	add a,a			;9c28
	ret			;9c29
L_9C2A:
	push af			;9c2a
	push de			;9c2b
	push hl			;9c2c
	push bc			;9c2d
	call L_9C37		;9c2e
	pop bc			;9c31
	pop hl			;9c32
	pop de			;9c33
	ld c,a			;9c34
	pop af			;9c35
	ret			;9c36
L_9C37:
	ex af,af'			;9c37
	ld a,e			;9c38
	sub 008h		;9c39
	ld e,a			;9c3b
	ex af,af'			;9c3c
	ld b,043h		;9c3d
	cp 014h		;9c3f
	jr c,L_9C45		;9c41
	ld b,044h		;9c43
L_9C45:
	push af			;9c45
	ld a,b			;9c46
	call 0827eh		;9c47
	ld a,e			;9c4a
	add a,008h		;9c4b
	ld e,a			;9c4d
	pop af			;9c4e
	ld hl,0919fh		;9c4f
	call 08221h		;9c52
	ld a,(hl)			;9c55
	ret			;9c56
L_9C57:
	push hl			;9c57
	push bc			;9c58
	call L_9C60		;9c59
	pop bc			;9c5c
	pop hl			;9c5d
	ld c,a			;9c5e
	ret			;9c5f
L_9C60:
	cp 015h		;9c60
	jr c,L_9C6B		;9c62
	push af			;9c64
	add a,0f3h		;9c65
	call L_9C37		;9c67
	pop af			;9c6a
L_9C6B:
	ld hl,091b8h		;9c6b
	add a,a			;9c6e
	call 08221h		;9c6f
	ld a,(hl)			;9c72
	call 0827eh		;9c73
	call 082a8h		;9c76
	inc hl			;9c79
	ld a,(hl)			;9c7a
	ret			;9c7b
L_9C7C:
	push de			;9c7c
	push hl			;9c7d
	ex af,af'			;9c7e
	ld a,e			;9c7f
	sub 008h		;9c80
	ld e,a			;9c82
	ex af,af'			;9c83
	call 0827eh		;9c84
	pop hl			;9c87
	pop de			;9c88
	ld a,(hl)			;9c89
	inc hl			;9c8a
	ret			;9c8b
L_9C8C:
	ld a,(0d1c8h)		;9c8c
	ld b,a			;9c8f
	and 010h		;9c90
	jr nz,L_9C98		;9c92
	ld a,b			;9c94
	and 040h		;9c95
	ret z			;9c97
L_9C98:
	call 0833eh		;9c98
	or 0ffh		;9c9b
	ret			;9c9d
L_9C9E:
	ld a,(0d1d6h)		;9c9e
	cp 002h		;9ca1
	jr nz,L_9CAB		;9ca3
	ld a,(0d1d7h)		;9ca5
	cp 004h		;9ca8
	ret z			;9caa
L_9CAB:
	ld a,(0d1d6h)		;9cab
	cp 003h		;9cae
	ret z			;9cb0
	ld hl,0d1e7h		;9cb1
	ld a,(0d216h)		;9cb4
	or a			;9cb7
	jr z,L_9CBD		;9cb8
	ld hl,0d1e8h		;9cba
L_9CBD:
	ld a,(hl)			;9cbd
	ld hl,08320h		;9cbe
	cp 007h		;9cc1
	jr c,L_9CD3		;9cc3
	ld hl,08339h		;9cc5
	cp 00eh		;9cc8
	jr z,L_9CD3		;9cca
	cp 00bh		;9ccc
	jr z,L_9CD3		;9cce
	ld hl,0831bh		;9cd0
L_9CD3:
	jp (hl)			;9cd3
L_9CD4:
	ld a,(0dcf4h)		;9cd4
	or a			;9cd7
	jr z,L_9CE4		;9cd8
	ld a,(0dcf5h)		;9cda
	or a			;9cdd
	ret z			;9cde
	ld a,(0dcf3h)		;9cdf
	xor 001h		;9ce2
L_9CE4:
	ld (0dcf3h),a		;9ce4
	ld hl,0dcb3h		;9ce7
	or a			;9cea
	jr z,L_9CF0		;9ceb
	ld hl,0dcd3h		;9ced
L_9CF0:
	ld de,(0dcb0h)		;9cf0
	ld a,(0dcb2h)		;9cf4
	ld c,a			;9cf7
	ld a,001h		;9cf8
	call 08218h		;9cfa
	xor a			;9cfd
	ld (0dcf5h),a		;9cfe
	ret			;9d01

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d02..0x9d03  (1 bytes)
DATA_9D02:
	defb 09dh	; 9d02

; ======================================================================
; CODIGO 0x9d03..0x9d20  (29 bytes)
; ======================================================================


L_9D03:
	ld a,(09223h)		;9d03
	ld hl,0a2f8h		;9d06
	add a,a			;9d09
	call 08221h		;9d0a
	ld c,(hl)			;9d0d
	inc hl			;9d0e
	ld b,(hl)			;9d0f
	ld (09d20h),bc		;9d10
L_9D14:
	ld hl,09d20h		;9d14
	call 082c9h		;9d17
	call 082c3h		;9d1a
	jr c,L_9D14		;9d1d
	ret			;9d1f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d20..0x9d2b  (11 bytes)
DATA_9D20:
	defb 000h,000h,000h,0b4h,000h,006h,001h,003h,00eh,006h,00fh	; 9d20  ...........

; ======================================================================
; CODIGO 0x9d2b..0x9d93  (104 bytes)
; ======================================================================


L_9D2B:
	ld b,010h		;9d2b
	ld hl,09213h		;9d2d
L_9D30:
	res 7,(hl)		;9d30
	inc hl			;9d32
	djnz L_9D30		;9d33
	ld de,00868h		;9d35
	ld hl,00058h		;9d38
	ld bc,0aa48h		;9d3b
	call L_9D67		;9d3e
L_9D41:
	ld hl,0d2abh		;9d41
	ld de,09d26h		;9d44
	ld b,005h		;9d47
L_9D49:
	ld a,(de)			;9d49
	ld (hl),a			;9d4a
	inc de			;9d4b
	ld a,004h		;9d4c
	call 08221h		;9d4e
	djnz L_9D49		;9d51
	ld de,00830h		;9d53
	ld hl,00000h		;9d56
	ld bc,07858h		;9d59
	jr L_9D67		;9d5c
L_9D5E:
	ld de,00840h		;9d5e
	ld hl,00000h		;9d61
	ld bc,06028h		;9d64
L_9D67:
	ld a,080h		;9d67
	call 0820ch		;9d69
	jp 082bah		;9d6c
L_9D6F:
	ld de,(0dd00h)		;9d6f
	ld hl,00888h		;9d73
	ld bc,(0dd02h)		;9d76
	ld a,040h		;9d7a
	jp 0820ch		;9d7c
L_9D7F:
	xor a			;9d7f
	ld (0d1ddh),a		;9d80
	ld de,09d93h		;9d83
	ld hl,0fb00h		;9d86
	call 0821bh		;9d89
	ld ix,09dc8h		;9d8c
	jp L_A863		;9d90

; ----------------------------------------------------------------------
; DATOS vram_9D93: RLE a la VRAM hasta el 0; lo usa 0x9D89 (53 bytes)
;   0x9d93..0x9dc8  (53 bytes)
DATA_vram_9D93:
	defb 004h,000h,08ch,001h,002h,004h,00ch,01dh,02eh,02fh,02fh,031h,05eh,0a0h,0f0h,003h	; 9d93  .........//1^...
	defb 000h,004h,080h,085h,0f8h,010h,020h,0c0h,080h,008h,000h,08ch,001h,003h,007h,00bh	; 9da3  ...... .........
	defb 012h,031h,030h,030h,02fh,07eh,0e0h,0f0h,003h,000h,004h,080h,085h,0f8h,0f0h,0e0h	; 9db3  .100/~..........
	defb 040h,080h,004h,000h,000h	; 9dc3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9dc8..0x9dcd  (5 bytes)
DATA_9DC8:
	defb 002h,002h,060h,068h,000h	; 9dc8

; ======================================================================
; CODIGO 0x9dcd..0x9dda  (13 bytes)
; ======================================================================


L_9DCD:
	call L_9E2F		;9dcd
	call L_9E69		;9dd0
	ld hl,09ddah		;9dd3
	xor a			;9dd6
	jp L_A92C		;9dd7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9dda..0x9dfd  (35 bytes)
DATA_9DDA:
	defb 0e2h,09dh,0fah,09dh,025h,092h,004h,002h,068h,008h,007h,068h,048h,008h,078h,008h	; 9dda  ....%...h..hH.x.
	defb 007h,078h,048h,008h,088h,008h,007h,088h,048h,008h,098h,008h,007h,098h,048h,008h	; 9dea  .xH.....H.....H.
	defb 000h,000h,0ffh	; 9dfa

; ======================================================================
; CODIGO 0x9dfd..0x9e17  (26 bytes)
; ======================================================================


L_9DFD:
	ld hl,09e17h		;9dfd
	ld a,(09224h)		;9e00
	add a,a			;9e03
	add a,a			;9e04
	add a,a			;9e05
	call 08221h		;9e06
	ld a,(09225h)		;9e09
	call 08221h		;9e0c
	ld a,(hl)			;9e0f
	ld (09226h),a		;9e10
	ld (0d1dah),a		;9e13
	ret			;9e16

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e17..0x9e2f  (24 bytes)
DATA_9E17:
	defb 000h,004h,001h,005h,002h,006h,003h,0ffh,007h,00bh,008h,00ch,009h,00dh,00ah,0ffh	; 9e17  ................
	defb 00eh,0feh,00fh,0feh,0fdh,0feh,0fch,0ffh	; 9e27  ........

; ======================================================================
; CODIGO 0x9e2f..0x9e7c  (77 bytes)
; ======================================================================


L_9E2F:
	ld a,(0d1ddh)		;9e2f
	or a			;9e32
	ret nz			;9e33
	ld a,001h		;9e34
	ld (0d1ddh),a		;9e36
	ld a,(09223h)		;9e39
	cp 002h		;9e3c
	jp c,083f7h		;9e3e
L_9E41:
	cp 005h		;9e41
	jp c,08401h		;9e43
	jp 083fch		;9e46
L_9E49:
	ld a,(09223h)		;9e49
	cp 002h		;9e4c
	jp c,083b1h		;9e4e
	jr L_9E41		;9e51
L_9E53:
	ld de,0cd00h		;9e53
	ld a,(09226h)		;9e56
	ld l,a			;9e59
	ld h,000h		;9e5a
	add hl,hl			;9e5c
	add hl,hl			;9e5d
	add hl,hl			;9e5e
	add hl,hl			;9e5f
	add hl,hl			;9e60
	add hl,de			;9e61
	jp L_A6B8		;9e62
L_9E65:
	ld a,003h		;9e65
	jr L_9E6C		;9e67
L_9E69:
	ld a,(09224h)		;9e69
L_9E6C:
	ld hl,09e7ch		;9e6c
	call 0826ch		;9e6f
	ld de,01068h		;9e72
	ld c,008h		;9e75
	ld a,001h		;9e77
	jp 08218h		;9e79

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e7c..0x9f84  (264 bytes)
DATA_9E7C:
	defb 084h,09eh,0beh,09eh,0f8h,09eh,032h,09fh,088h,09fh,09dh,09eh,09fh,09fh,09dh,09eh	; 9e7c  ......2.........
	defb 09fh,080h,004h,041h,080h,004h,071h,080h,004h,045h,080h,004h,075h,080h,004h,061h	; 9e8c  ...A..q..E..u..a
	defb 080h,004h,079h,080h,004h,065h,080h,004h,07dh,080h,004h,059h,080h,004h,021h,080h	; 9e9c  ..y..e..}..Y..!.
	defb 004h,05dh,080h,004h,025h,080h,004h,051h,080h,004h,091h,080h,004h,055h,080h,004h	; 9eac  .]..%..Q.....U..
	defb 095h,000h,088h,09fh,09dh,09eh,09fh,09fh,09dh,09eh,09fh,080h,004h,001h,080h,004h	; 9ebc  ................
	defb 009h,080h,004h,005h,080h,004h,00dh,080h,004h,039h,080h,004h,069h,080h,004h,03dh	; 9ecc  .........9..i..=
	defb 080h,004h,06dh,080h,004h,049h,080h,004h,029h,080h,004h,04dh,080h,004h,02dh,080h	; 9edc  ..m..I..)..M..-.
	defb 004h,011h,080h,004h,091h,080h,004h,015h,080h,004h,095h,000h,088h,09fh,09dh,09eh	; 9eec  ................
	defb 09fh,09fh,09dh,09eh,09fh,080h,004h,031h,080h,004h,0a0h,080h,004h,035h,080h,004h	; 9efc  .......1.....5..
	defb 0a4h,080h,004h,019h,080h,004h,0a0h,080h,004h,01dh,080h,004h,0a4h,080h,004h,081h	; 9f0c  ................
	defb 080h,004h,0a0h,080h,004h,085h,080h,004h,0a4h,080h,004h,089h,080h,004h,091h,080h	; 9f1c  ................
	defb 004h,08dh,080h,004h,095h,000h,088h,09fh,09dh,09eh,09fh,09fh,09dh,09eh,09fh,088h	; 9f2c  ................
	defb 0a8h,099h,09ah,0a8h,0a8h,099h,09ah,0a8h,088h,0a8h,09bh,09ch,0a8h,0a8h,09bh,09ch	; 9f3c  ................
	defb 0a8h,088h,0a8h,099h,09ah,0a8h,0a8h,099h,09ah,0a8h,088h,0a8h,09bh,09ch,0a8h,0a8h	; 9f4c  ................
	defb 09bh,09ch,0a8h,088h,0a8h,099h,09ah,0a8h,0a8h,099h,09ah,0a8h,088h,0a8h,09bh,09ch	; 9f5c  ................
	defb 0a8h,0a8h,09bh,09ch,0a8h,088h,0a8h,099h,09ah,0a8h,0a8h,099h,09ah,0a8h,088h,0a8h	; 9f6c  ................
	defb 09bh,09ch,0a8h,0a8h,09bh,09ch,0a8h,000h	; 9f7c  ........

; ======================================================================
; CODIGO 0x9f84..0x9fc9  (69 bytes)
; ======================================================================


L_9F84:
	ld a,(0e100h)		;9f84
	or a			;9f87
	jr z,L_9F90		;9f88
	call L_A05B		;9f8a
	jp c,L_A03B		;9f8d
L_9F90:
	ld hl,0d2abh		;9f90
	ld b,005h		;9f93
L_9F95:
	xor a			;9f95
	ld (hl),a			;9f96
	inc de			;9f97
	ld a,004h		;9f98
	call 08221h		;9f9a
	djnz L_9F95		;9f9d
	call L_A080		;9f9f
L_9FA2:
	ld hl,00830h		;9fa2
	ld de,07858h		;9fa5
	call L_98A8		;9fa8
	ld a,(0e100h)		;9fab
	or a			;9fae
	jr z,L_9FBE		;9faf
	ld hl,09fc9h		;9fb1
	xor a			;9fb4
	call L_A92C		;9fb5
L_9FB8:
	ld a,002h		;9fb8
	ld (0d1d8h),a		;9fba
	ret			;9fbd
L_9FBE:
	ld hl,0a01eh		;9fbe
	call 08275h		;9fc1
	call 08203h		;9fc4
	jr L_9FB8		;9fc7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9fc9..0xa01e  (85 bytes)
DATA_9FC9:
	defb 0d1h,09fh,0e3h,09fh,0eeh,0d1h,003h,002h,038h,010h,000h,038h,046h,000h,048h,010h	; 9fc9  ........8..8F.H.
	defb 000h,048h,046h,000h,058h,010h,000h,058h,046h,000h,018h,038h,00ch,02bh,008h,02bh	; 9fd9  .HF.X..XF..8.+.+
	defb 037h,0feh,04eh,038h,00ch,02bh,008h,02bh,038h,0feh,018h,048h,00ch,02bh,008h,02bh	; 9fe9  7.N8.+.+8..H.+.+
	defb 039h,0feh,04eh,048h,00ch,02bh,008h,02bh,03ah,0feh,018h,058h,006h,000h,027h,000h	; 9ff9  9.NH.+.+:..X..'.
	defb 04bh,0feh,04eh,058h,024h,000h,022h,000h,029h,0feh,018h,068h,0dbh,029h,002h,01ah	; a009  K.NX$.".)..h.)..
	defb 000h,0cch,02ah,051h,0ffh	; a019

; ----------------------------------------------------------------------
; DATOS texto_A01E: texto: x, y y las letras hasta 0xFF; lo usa 0x9FC1 (29
;   bytes)
;   0xa01e..0xa03b  (29 bytes)
DATA_texto_A01E:
	defb 018h,03ah,01ah,02eh,0cbh,034h,000h,0d4h,028h,02eh,010h,04bh,0cbh,0feh,018h,04ah	; a01e  .:...4..(..K...J
	defb 0d4h,028h,02eh,014h,001h,003h,014h,00ch,01fh,00dh,052h,052h,0ffh	; a02e  .(........RR.

; ======================================================================
; CODIGO 0xa03b..0xa099  (94 bytes)
; ======================================================================


L_A03B:
	call L_A08B		;a03b
	call 082bah		;a03e
	ld hl,00840h		;a041
	ld de,06028h		;a044
	call L_98A8		;a047
	ld hl,0a099h		;a04a
	call 08275h		;a04d
	ld a,006h		;a050
	ld (0d1d8h),a		;a052
	ld a,080h		;a055
	ld (0d1d9h),a		;a057
	ret			;a05a
L_A05B:
	ld h,001h		;a05b
L_A05D:
	ld c,000h		;a05d
L_A05F:
	ld b,000h		;a05f
L_A061:
	call 000a8h		;a061   ; BIOS LPTSTT - Tests printer status
	jr z,L_A069		;a064
	cp 0ffh		;a066
	ret z			;a068
L_A069:
	djnz L_A061		;a069
	dec c			;a06b
	jr nz,L_A05F		;a06c
	dec h			;a06e
	jr nz,L_A05D		;a06f
	ld c,001h		;a071
	scf			;a073
	ret			;a074
L_A075:
	ld hl,00868h		;a075
	ld de,00058h		;a078
	ld bc,0aa48h		;a07b
	jr L_A094		;a07e
L_A080:
	ld hl,00830h		;a080
	ld de,00000h		;a083
	ld bc,07858h		;a086
	jr L_A094		;a089
L_A08B:
	ld hl,00840h		;a08b
	ld de,00000h		;a08e
	ld bc,06028h		;a091
L_A094:
	ld a,020h		;a094
	jp 0820ch		;a096

; ----------------------------------------------------------------------
; DATOS texto_A099: texto: x, y y las letras hasta 0xFF; lo usa 0xA04D (25
;   bytes)
;   0xa099..0xa0b2  (25 bytes)
DATA_texto_A099:
	defb 010h,04ah,0d4h,028h,02eh,010h,04bh,0beh,000h,00eh,032h,014h,0feh,010h,05ah,00bh	; a099  .J.(..K...2...Z.
	defb 02ah,013h,002h,01fh,00eh,02eh,052h,052h,0ffh	; a0a9  *.....RR.

; ======================================================================
; CODIGO 0xa0b2..0xa0f6  (68 bytes)
; ======================================================================


L_A0B2:
	ld a,(0e100h)		;a0b2
	or a			;a0b5
	jp z,08251h		;a0b6
	ld a,(0d1eeh)		;a0b9
	ld hl,0a0f6h		;a0bc
	call 0826ch		;a0bf
	ld (0a0e6h),hl		;a0c2
	ld hl,02a0ah		;a0c5
	ld (0a0e9h),hl		;a0c8
	ld de,00006h		;a0cb
	ld bc,00e0fh		;a0ce
	call L_A0E4		;a0d1
	ld hl,01862h		;a0d4
	ld bc,06010h		;a0d7
	call 082b4h		;a0da
	ld hl,0a100h		;a0dd
	xor a			;a0e0
	jp L_A92C		;a0e1
L_A0E4:
	push bc			;a0e4
	ld hl,020a8h		;a0e5
	ld bc,02808h		;a0e8
	push hl			;a0eb
	push bc			;a0ec
	call L_A7DF		;a0ed
	pop bc			;a0f0
	pop hl			;a0f1
	pop de			;a0f2
	jp L_A7DF		;a0f3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa0f6..0xa125  (47 bytes)
DATA_A0F6:
	defb 037h,018h,037h,04eh,047h,018h,047h,04eh,057h,018h,008h,0a1h,00eh,0a1h,0cdh,0d1h	; a0f6  7.7NG.GNW.......
	defb 000h,002h,07ah,018h,000h,07ah,038h,000h,018h,06ah,00ah,02ah,0cbh,000h,002h,002h	; a106  ..z..z8..j.*....
	defb 0cbh,00dh,006h,051h,0feh,020h,07ah,01ah,002h,000h,000h,002h,002h,004h,0ffh	; a116  ...Q. z........

; ======================================================================
; CODIGO 0xa125..0xa16f  (74 bytes)
; ======================================================================


L_A125:
	ld de,00a00h		;a125
	ld (0a146h),de		;a128
	ld de,00f0eh		;a12c
	ld (0a14eh),de		;a12f
	jr L_A143		;a133
L_A135:
	ld de,0000ah		;a135
	ld (0a146h),de		;a138
	ld de,00e0fh		;a13c
	ld (0a14eh),de		;a13f
L_A143:
	push hl			;a143
	push bc			;a144
	ld de,00200h		;a145
	call L_A7DF		;a148
	pop bc			;a14b
	pop hl			;a14c
	ld de,00f0eh		;a14d
	jp L_A7DF		;a150
L_A153:
	ret			;a153
L_A154:
	call L_A075		;a154
	ld hl,00868h		;a157
	ld de,0aa48h		;a15a
	call L_98A8		;a15d
	call L_A1D4		;a160
	xor a			;a163
	ld (0d1e0h),a		;a164
	ld hl,0a16fh		;a167
	ld a,002h		;a16a
	jp L_A92C		;a16c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa16f..0xa1d4  (101 bytes)
DATA_A16F:
	defb 077h,0a1h,0b3h,0a1h,0e0h,0d1h,004h,005h,06bh,010h,000h,06bh,030h,000h,06bh,050h	; a16f  w.......k..k0.kP
	defb 000h,06bh,070h,000h,06bh,090h,000h,077h,010h,000h,077h,030h,000h,077h,050h,000h	; a17f  .kp.k..w..w0.wP.
	defb 077h,070h,000h,077h,090h,000h,083h,010h,000h,083h,030h,000h,083h,050h,000h,083h	; a18f  wp.w......0..P..
	defb 070h,000h,083h,090h,000h,08fh,010h,000h,08fh,030h,000h,08fh,060h,000h,08fh,060h	; a19f  p........0..`..`
	defb 000h,08fh,060h,000h,038h,090h,00dh,010h,04bh,014h,000h,000h,024h,022h,029h,0feh	; a1af  ..`.8...K...$").
	defb 018h,0a0h,0d4h,028h,02eh,014h,000h,00dh,029h,023h,019h,02dh,004h,027h,02eh,0cbh	; a1bf  ...(....)#.-.'..
	defb 008h,0c8h,00bh,002h,0ffh	; a1cf

; ======================================================================
; CODIGO 0xa1d4..0xa204  (48 bytes)
; ======================================================================


L_A1D4:
	ld b,010h		;a1d4
	ld hl,0a204h		;a1d6
	ld de,0186ch		;a1d9
L_A1DC:
	push bc			;a1dc
	push hl			;a1dd
	call L_A1F9		;a1de
	call 082a8h		;a1e1
	call 082a8h		;a1e4
	ld a,d			;a1e7
	cp 0b8h		;a1e8
	jr c,L_A1F2		;a1ea
	ld d,018h		;a1ec
	ld a,e			;a1ee
	add a,00ch		;a1ef
	ld e,a			;a1f1
L_A1F2:
	pop hl			;a1f2
	inc hl			;a1f3
	inc hl			;a1f4
	pop bc			;a1f5
	djnz L_A1DC		;a1f6
	ret			;a1f8
L_A1F9:
	call L_A1FD		;a1f9
	inc hl			;a1fc
L_A1FD:
	ld a,(hl)			;a1fd
	call 0827eh		;a1fe
	jp 082a8h		;a201

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa204..0xa22f  (43 bytes)
DATA_A204:
	defb 07bh,0f8h,0a9h,0a8h,0afh,05bh,09bh,09ch,0a1h,0b0h,0a0h,0c8h,09fh,062h,072h,071h	; a204  {....[.......brq
	defb 06fh,0aah,0a5h,0a6h,0a3h,0a6h,09eh,0a2h,0f0h,0f1h,05ch,0fah,067h,068h,078h,0dch	; a214  o.........\.ghx.
	defb 047h,021h,013h,092h,0cdh,021h,082h,0cbh,07eh,0c0h,078h	; a224  G!...!..~.x

; ======================================================================
; CODIGO 0xa22f..0xa243  (20 bytes)
; ======================================================================


L_A22F:
	push af			;a22f
	ld hl,0a243h		;a230
	call 0826ch		;a233
	pop af			;a236
	cp 010h		;a237
	ld bc,0220ah		;a239
	jr z,L_A241		;a23c
	ld bc,0120ah		;a23e
L_A241:
	xor a			;a241
	ret			;a242

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa243..0xa267  (36 bytes)
DATA_A243:
	defb 06bh,018h,06bh,038h,06bh,058h,06bh,078h,06bh,098h,077h,018h,077h,038h,077h,058h	; a243  k.k8kXkxk.w.w8wX
	defb 077h,078h,077h,098h,083h,018h,083h,038h,083h,058h,083h,078h,083h,098h,08fh,018h	; a253  wxw....8.X.x....
	defb 08fh,038h,08fh,068h	; a263

; ======================================================================
; CODIGO 0xa267..0xa2f8  (145 bytes)
; ======================================================================


L_A267:
	ld a,(0d204h)		;a267
	cp 004h		;a26a
	ret c			;a26c
	ld a,(0d205h)		;a26d
	cp 004h		;a270
	ret c			;a272
	ld a,003h		;a273
	ld (0d205h),a		;a275
	ld a,(0d1e0h)		;a278
	cp 012h		;a27b
	ret c			;a27d
	ld a,011h		;a27e
	ld (0d1e0h),a		;a280
	ret			;a283
L_A284:
	ld a,(0d1e0h)		;a284
	cp 011h		;a287
	ret nc			;a289
	push af			;a28a
	push af			;a28b
	cp 010h		;a28c
	jr nc,L_A29A		;a28e
	ld hl,09213h		;a290
	call 08221h		;a293
	ld a,(hl)			;a296
	xor 080h		;a297
	ld (hl),a			;a299
L_A29A:
	pop af			;a29a
	call L_A22F		;a29b
	pop af			;a29e
	cp 010h		;a29f
	jp nc,L_A135		;a2a1
	push hl			;a2a4
	ld hl,09213h		;a2a5
	call 08221h		;a2a8
	bit 7,(hl)		;a2ab
	pop hl			;a2ad
	jp z,L_A125		;a2ae
	jp L_A135		;a2b1
L_A2B4:
	ld a,(0d1d7h)		;a2b4
	cp 00dh		;a2b7
	jr nz,L_A2D9		;a2b9
	ld a,(0d1d8h)		;a2bb
	cp 003h		;a2be
	jr z,L_A2EC		;a2c0
	cp 002h		;a2c2
	jr nz,L_A2D9		;a2c4
	ld a,(0e100h)		;a2c6
	or a			;a2c9
	jr nz,L_A2D9		;a2ca
	ld a,(0d1c8h)		;a2cc
	cp 080h		;a2cf
	jr z,L_A2DC		;a2d1
	cp 010h		;a2d3
	jr z,L_A2E3		;a2d5
	or a			;a2d7
	ret			;a2d8
L_A2D9:
	jp L_A9E2		;a2d9
L_A2DC:
	call 08251h		;a2dc
	ld a,005h		;a2df
	jr L_A2E7		;a2e1
L_A2E3:
	call 082f3h		;a2e3
	xor a			;a2e6
L_A2E7:
	ld (0d1eeh),a		;a2e7
	scf			;a2ea
	ret			;a2eb
L_A2EC:
	ld a,(0e100h)		;a2ec
	or a			;a2ef
	jr nz,L_A2D9		;a2f0
	xor a			;a2f2
	ld (0d1cdh),a		;a2f3
	scf			;a2f6
	ret			;a2f7

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa2f8..0xa309  (17 bytes)
DATA_A2F8:
	defb 095h,003h,08fh,003h,089h,003h,083h,003h,07dh,003h,077h,003h,071h,003h,06bh,003h	; a2f8  ........}.w.q.k.
	defb 001h	; a308

; ======================================================================
; CODIGO 0xa309..0xa401  (248 bytes)
; ======================================================================


L_A309:
	ld a,(09223h)		;a309
	ld hl,0a408h		;a30c
	call 08221h		;a30f
	ld a,(hl)			;a312
	ld (0a402h),a		;a313
	ld ix,0a401h		;a316
	call 0920fh		;a31a
	ld a,(09223h)		;a31d
	cp 002h		;a320
	jp c,08357h		;a322
	cp 005h		;a325
	jp c,08357h		;a327
	jp 08352h		;a32a
L_A32D:
	xor a			;a32d
	ld (0a308h),a		;a32e
	ld hl,00858h		;a331
	ld bc,08050h		;a334
	ld a,0bbh		;a337
	ld d,001h		;a339
	call 0829fh		;a33b
	call 0828ah		;a33e
	ld hl,0b400h		;a341
	ld de,00858h		;a344
	call L_A3C9		;a347
	ld hl,0de00h		;a34a
	ld de,0cd00h		;a34d
	ld bc,00200h		;a350
	ldir		;a353
	ret			;a355
L_A356:
	ld a,(0a308h)		;a356
	cp 038h		;a359
	jr c,L_A35F		;a35b
	xor a			;a35d
	ret			;a35e
L_A35F:
	call L_A36C		;a35f
	call L_A396		;a362
	ld hl,0a308h		;a365
	inc (hl)			;a368
	or 00fh		;a369
	ret			;a36b
L_A36C:
	ld hl,0a308h		;a36c
	ld a,050h		;a36f
	sub (hl)			;a371
	ld h,a			;a372
	ld l,010h		;a373
	dec a			;a375
	ld d,a			;a376
	ld e,l			;a377
	ld bc,00850h		;a378
	xor a			;a37b
	push hl			;a37c
	call 0820ch		;a37d
	pop de			;a380
	ld a,047h		;a381
	ld hl,0a308h		;a383
	sub (hl)			;a386
	ld h,a			;a387
	ld l,058h		;a388
	ld a,007h		;a38a
	add a,d			;a38c
	ld d,a			;a38d
	ld bc,00150h		;a38e
	ld a,040h		;a391
	jp 0820ch		;a393
L_A396:
	ld hl,0a308h		;a396
	ld a,067h		;a399
	add a,(hl)			;a39b
	ld h,a			;a39c
	ld l,010h		;a39d
	inc a			;a39f
	ld d,a			;a3a0
	ld e,l			;a3a1
	ld bc,01050h		;a3a2
	ld a,004h		;a3a5
	ld (0d225h),a		;a3a7
	xor a			;a3aa
	push hl			;a3ab
	call 0820ch		;a3ac
	pop de			;a3af
	xor a			;a3b0
	ld (0d225h),a		;a3b1
	ld a,048h		;a3b4
	ld hl,0a308h		;a3b6
	add a,(hl)			;a3b9
	ld h,a			;a3ba
	ld l,058h		;a3bb
	ld a,d			;a3bd
	sub 00fh		;a3be
	ld d,a			;a3c0
	ld bc,00150h		;a3c1
	ld a,040h		;a3c4
	jp 0820ch		;a3c6
L_A3C9:
	push de			;a3c9
L_A3CA:
	ld a,(hl)			;a3ca
	inc hl			;a3cb
	ld c,a			;a3cc
	inc a			;a3cd
	jr z,L_A3E3		;a3ce
	inc a			;a3d0
	jr nz,L_A3DA		;a3d1
	pop de			;a3d3
	ld a,008h		;a3d4
	add a,e			;a3d6
	ld e,a			;a3d7
	jr L_A3C9		;a3d8
L_A3DA:
	ld a,c			;a3da
	call L_A3E5		;a3db
	call 082a8h		;a3de
	jr L_A3CA		;a3e1
L_A3E3:
	pop de			;a3e3
	ret			;a3e4
L_A3E5:
	push bc			;a3e5
	push hl			;a3e6
	push de			;a3e7
	call 08281h		;a3e8
	ld a,(0d1cch)		;a3eb
	inc a			;a3ee
	jr z,L_A3F5		;a3ef
	ld a,040h		;a3f1
	add a,l			;a3f3
	ld l,a			;a3f4
L_A3F5:
	ld bc,00808h		;a3f5
	ld a,005h		;a3f8
	call 08284h		;a3fa
	pop de			;a3fd
	pop hl			;a3fe
	pop bc			;a3ff
	ret			;a400

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa401..0xa417  (22 bytes)
DATA_A401:
	defb 020h,000h,004h,0a0h,099h,0b4h,080h,054h,058h,059h,05bh,033h,031h,051h,053h,006h	; a401   ......TXY[31QS.
	defb 027h,0feh,01fh,0beh,032h,013h	; a411

; ======================================================================
; CODIGO 0xa417..0xa4e5  (206 bytes)
; ======================================================================


L_A417:
	ld hl,06860h		;a417
	ld (0a411h),hl		;a41a
	ld hl,08888h		;a41d
	ld (0a413h),hl		;a420
	ld hl,0686ch		;a423
	ld (0a415h),hl		;a426
	xor a			;a429
	ld (0a410h),a		;a42a
	ret			;a42d
L_A42E:
	ld a,(0a410h)		;a42e
	ld hl,0a4f1h		;a431
	call 08221h		;a434
	ld a,(hl)			;a437
	and a			;a438
	jr z,L_A471		;a439
	push af			;a43b
	and 00fh		;a43c
	push af			;a43e
	ld de,(0a411h)		;a43f
	call L_A4D6		;a443
	pop af			;a446
	cp 003h		;a447
	call z,L_A477		;a449
	pop af			;a44c
	and 0f0h		;a44d
	jr z,L_A46B		;a44f
	rr a		;a451
	rr a		;a453
	rr a		;a455
	rr a		;a457
	rr a		;a459
	push af			;a45b
	ld hl,0a412h		;a45c
	ld a,(hl)			;a45f
	add a,010h		;a460
	ld (hl),a			;a462
	pop af			;a463
	ld de,(0a411h)		;a464
	call L_A4D6		;a468
L_A46B:
	ld hl,0a410h		;a46b
	inc (hl)			;a46e
	or a			;a46f
	ret			;a470
L_A471:
	xor a			;a471
	ld (0a410h),a		;a472
	ccf			;a475
	ret			;a476
L_A477:
	ld hl,(0a413h)		;a477
	ld de,(0a415h)		;a47a
	ld bc,01020h		;a47e
	ld a,001h		;a481
	call 08284h		;a483
	ld a,010h		;a486
	ld hl,0a416h		;a488
	add a,(hl)			;a48b
	ld (hl),a			;a48c
	ld a,010h		;a48d
	ld hl,0a414h		;a48f
	add a,(hl)			;a492
	ld (hl),a			;a493
	ret			;a494
L_A495:
	ld a,(0a410h)		;a495
	ld hl,0a500h		;a498
	call 08221h		;a49b
	ld a,(hl)			;a49e
	and a			;a49f
	jr z,L_A4D4		;a4a0
	push af			;a4a2
	and 00fh		;a4a3
	ld de,(0a411h)		;a4a5
	call L_A4D6		;a4a9
	pop af			;a4ac
	and 0f0h		;a4ad
	jr z,L_A4CB		;a4af
	push af			;a4b1
	ld hl,0a412h		;a4b2
	ld a,(hl)			;a4b5
	sub 010h		;a4b6
	ld (hl),a			;a4b8
	pop af			;a4b9
	rr a		;a4ba
	rr a		;a4bc
	rr a		;a4be
	rr a		;a4c0
	rr a		;a4c2
	ld de,(0a411h)		;a4c4
	call L_A4D6		;a4c8
L_A4CB:
	ld hl,0a410h		;a4cb
	ld a,(hl)			;a4ce
	inc (hl)			;a4cf
	call L_A53E		;a4d0
	scf			;a4d3
L_A4D4:
	ccf			;a4d4
	ret			;a4d5
L_A4D6:
	push de			;a4d6
	ld hl,0a4e5h		;a4d7
	call 0826ch		;a4da
	pop de			;a4dd
	ld c,002h		;a4de
	ld a,001h		;a4e0
	jp 08218h		;a4e2

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa4e5..0xa53e  (89 bytes)
DATA_A4E5:
	defb 00dh,0a5h,011h,0a5h,015h,0a5h,021h,0a5h,02bh,0a5h,02eh,0a5h,001h,053h,001h,053h	; a4e5  ......!.+....S.S
	defb 001h,053h,001h,053h,001h,053h,001h,053h,001h,003h,000h,005h,054h,005h,054h,005h	; a4f5  .S.S.S.S....T.T.
	defb 054h,005h,054h,005h,054h,005h,014h,000h,080h,00eh,0a9h,000h,080h,00eh,0b7h,000h	; a505  T.T.T...........
	defb 084h,0c5h,0c6h,0c8h,0c9h,080h,008h,0cbh,082h,0d4h,0d5h,000h,084h,0d6h,0d6h,0d7h	; a515  ................
	defb 0d7h,008h,0d8h,002h,0d9h,000h,00eh,0deh,000h,08eh,0dfh,0e6h,0e0h,0e7h,0e1h,0e8h	; a525  ................
	defb 0e2h,0e9h,0e3h,0eah,0e4h,0ebh,0e5h,0ech,000h	; a535  .........

; ======================================================================
; CODIGO 0xa53e..0xa565  (39 bytes)
; ======================================================================


L_A53E:
	ld de,0b880h		;a53e
	cp 005h		;a541
	jr z,L_A54B		;a543
	cp 00bh		;a545
	ret nz			;a547
	ld de,08870h		;a548
L_A54B:
	ld hl,058a0h		;a54b
	ld bc,01010h		;a54e
	ld a,000h		;a551
	jp 08284h		;a553
L_A556:
	ld hl,0a565h		;a556
	ld de,09227h		;a559
	ld bc,00005h		;a55c
	ldir		;a55f
	xor a			;a561
	jp L_A66A		;a562

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa565..0xa58a  (37 bytes)
DATA_A565:
	defb 000h,000h,000h,078h,070h,021h,076h,0a5h,011h,0a8h,0d2h,001h,014h,000h,0edh,0b0h	; a565  ...xp!v.........
	defb 0c9h,0e0h,000h,084h,00fh,0e0h,000h,088h,00eh,0e0h,000h,08ch,006h,0e0h,000h,090h	; a575  ................
	defb 001h,0e0h,000h,094h,003h	; a585

; ======================================================================
; CODIGO 0xa58a..0xa60f  (133 bytes)
; ======================================================================


L_A58A:
	ld ix,09227h		;a58a
	call L_A5C3		;a58e
	jr z,L_A5B7		;a591
	call L_A5FE		;a593
	call L_A5ED		;a596
	call L_A65D		;a599
	or a			;a59c
	ret			;a59d
L_A59E:
	ld ix,09227h		;a59e
	ld b,003h		;a5a2
	call L_A5C5		;a5a4
	jr z,L_A5B7		;a5a7
	call L_A5FE		;a5a9
	call L_A654		;a5ac
	call L_A5ED		;a5af
	call L_A65D		;a5b2
	or a			;a5b5
	ret			;a5b6
L_A5B7:
	xor a			;a5b7
	ld (0a410h),a		;a5b8
	ld (09228h),a		;a5bb
	call L_A66A		;a5be
	scf			;a5c1
	ret			;a5c2
L_A5C3:
	ld b,001h		;a5c3
L_A5C5:
	ld a,(0d1c3h)		;a5c5
	bit 3,a		;a5c8
	jr nz,L_A5CD		;a5ca
	inc b			;a5cc
L_A5CD:
	ld (ix+000h),b		;a5cd
	ld a,(ix+001h)		;a5d0
	inc (ix+001h)		;a5d3
	ld (ix+002h),000h		;a5d6
	and 003h		;a5da
	jr nz,L_A5E1		;a5dc
	inc (ix+002h)		;a5de
L_A5E1:
	ld a,(ix+001h)		;a5e1
	ld de,0a60fh		;a5e4
	call 08206h		;a5e7
	ld a,(de)			;a5ea
	or a			;a5eb
	ret			;a5ec
L_A5ED:
	ld a,l			;a5ed
	add a,(ix+003h)		;a5ee
	ld l,a			;a5f1
	ld a,h			;a5f2
	add a,(ix+004h)		;a5f3
	ld h,a			;a5f6
	ld (ix+003h),l		;a5f7
	ld (ix+004h),h		;a5fa
	ret			;a5fd
L_A5FE:
	ld b,a			;a5fe
	and 00fh		;a5ff
	ld l,a			;a601
	ld a,b			;a602
	and 0f0h		;a603
	srl a		;a605
	srl a		;a607
	srl a		;a609
	srl a		;a60b
	ld h,a			;a60d
	ret			;a60e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa60f..0xa654  (69 bytes)
DATA_A60F:
	defb 020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h	; a60f
	defb 020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h	; a61f
	defb 020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h	; a62f
	defb 020h,020h,020h,020h,020h,020h,000h,000h,020h,020h,020h,020h,020h,020h,000h,000h	; a63f        ..      ..
	defb 020h,020h,020h,020h,020h	; a64f

; ======================================================================
; CODIGO 0xa654..0xa680  (44 bytes)
; ======================================================================


L_A654:
	ld a,h			;a654
	neg		;a655
	ld h,a			;a657
	ld a,l			;a658
	neg		;a659
	ld l,a			;a65b
	ret			;a65c
L_A65D:
	ld a,(09227h)		;a65d
	ld hl,(0922ah)		;a660
	push hl			;a663
	call L_A66A		;a664
	pop hl			;a667
	jr $+49		;a668
L_A66A:
	ld hl,0a680h		;a66a
	call 0826ch		;a66d
	ld de,0d2aah		;a670
	ld b,005h		;a673
L_A675:
	ld a,(hl)			;a675
	ld (de),a			;a676
	inc hl			;a677
	ld a,004h		;a678
	call 08206h		;a67a
	djnz L_A675		;a67d
	ret			;a67f

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa680..0xa699  (25 bytes)
DATA_A680:
	defb 08ah,0a6h,08fh,0a6h,08ah,0a6h,094h,0a6h,08ah,0a6h,09ch,0a0h,0a4h,0a8h,0ach,0c4h	; a680  ................
	defb 0c8h,0cch,0d0h,0d4h,0b0h,0b4h,0b8h,0bch,0c0h	; a690  .........

; ======================================================================
; CODIGO 0xa699..0xa6a9  (16 bytes)
; ======================================================================


L_A699:
	ld (0d2a8h),hl		;a699
	ld (0d2ach),hl		;a69c
	ld (0d2b0h),hl		;a69f
	ld (0d2b4h),hl		;a6a2
	ld (0d2b8h),hl		;a6a5
	ret			;a6a8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6a9..0xa6b8  (15 bytes)
DATA_A6A9:
	defb 0afh,00ch,00dh,028h,009h,0cbh,039h,030h,001h,080h,0cbh,020h,018h,0f3h,0c9h	; a6a9  ...(..90... ...

; ======================================================================
; CODIGO 0xa6b8..0xa7d9  (289 bytes)
; ======================================================================


L_A6B8:
	call L_A793		;a6b8
	ld de,09090h		;a6bb
	ld a,0ffh		;a6be
	ld (0d1cch),a		;a6c0
L_A6C3:
	ld a,(hl)			;a6c3
	inc hl			;a6c4
	ld b,a			;a6c5
	inc b			;a6c6
	jp z,L_A76A		;a6c7
	inc b			;a6ca
	jp z,L_A764		;a6cb
	inc b			;a6ce
	jr z,L_A6FB		;a6cf
	inc b			;a6d1
	jp z,L_A7A2		;a6d2
	ld b,a			;a6d5
	ld a,(0d1ffh)		;a6d6
	or a			;a6d9
	jr nz,L_A6E7		;a6da
	ld a,b			;a6dc
	add a,042h		;a6dd
	cp 019h		;a6df
	jr c,L_A705		;a6e1
	cp 03dh		;a6e3
	jr c,L_A71E		;a6e5
L_A6E7:
	ld a,b			;a6e7
	cp 0eah		;a6e8
	call z,L_A759		;a6ea
	cp 0f7h		;a6ed
	call z,L_A759		;a6ef
L_A6F2:
	call L_A3E5		;a6f2
	ld a,d			;a6f5
	add a,008h		;a6f6
	ld d,a			;a6f8
	jr L_A6C3		;a6f9
L_A6FB:
	ld a,(0d1ffh)		;a6fb
	xor 001h		;a6fe
	ld (0d1ffh),a		;a700
	jr L_A6C3		;a703
L_A705:
	call L_A747		;a705
	ld b,043h		;a708
	cp 014h		;a70a
	jr c,L_A710		;a70c
	ld b,044h		;a70e
L_A710:
	call L_A74E		;a710
	exx			;a713
	ld hl,0919fh		;a714
	call 08221h		;a717
	ld a,(hl)			;a71a
	exx			;a71b
	jr L_A6F2		;a71c
L_A71E:
	sub 019h		;a71e
	cp 015h		;a720
	jr c,L_A732		;a722
	call L_A747		;a724
	ld b,043h		;a727
	cp 021h		;a729
	jr c,L_A72F		;a72b
	ld b,044h		;a72d
L_A72F:
	call L_A74E		;a72f
L_A732:
	push hl			;a732
	ld hl,091b8h		;a733
	add a,a			;a736
	call 08221h		;a737
	ld a,(hl)			;a73a
	call L_A3E5		;a73b
	ld a,d			;a73e
	add a,008h		;a73f
	ld d,a			;a741
	inc hl			;a742
	ld a,(hl)			;a743
	pop hl			;a744
	jr L_A6F2		;a745
L_A747:
	ex af,af'			;a747
	ld a,e			;a748
	sub 008h		;a749
	ld e,a			;a74b
	ex af,af'			;a74c
	ret			;a74d
L_A74E:
	push af			;a74e
	ld a,b			;a74f
	call L_A3E5		;a750
	ld a,e			;a753
	add a,008h		;a754
	ld e,a			;a756
	pop af			;a757
	ret			;a758
L_A759:
	push af			;a759
	call L_A747		;a75a
	ld b,043h		;a75d
	call L_A74E		;a75f
	pop af			;a762
	ret			;a763
L_A764:
	ld de,090a0h		;a764
	jp L_A6C3		;a767
L_A76A:
	ld hl,08000h		;a76a
	ld (0d223h),hl		;a76d
	ld hl,08888h		;a770
	ld bc,07028h		;a773
	ld de,00e0fh		;a776
	call L_A7DF		;a779
	ld hl,08888h		;a77c
	ld bc,07028h		;a77f
	ld de,0000eh		;a782
	call L_A7DF		;a785
	ld hl,00000h		;a788
	ld (0d223h),hl		;a78b
	xor a			;a78e
	ld (0d1cch),a		;a78f
	ret			;a792
L_A793:
	push hl			;a793
	ld hl,08888h		;a794
	ld bc,07028h		;a797
	xor a			;a79a
	ld d,001h		;a79b
	call 0829fh		;a79d
	pop hl			;a7a0
	ret			;a7a1
L_A7A2:
	push hl			;a7a2
	ld b,004h		;a7a3
	ld hl,0d218h		;a7a5
L_A7A8:
	ld a,(hl)			;a7a8
	cp 0ffh		;a7a9
	jr nz,L_A7AE		;a7ab
	xor a			;a7ad
L_A7AE:
	inc hl			;a7ae
	cp 043h		;a7af
	jr z,L_A7C0		;a7b1
	cp 044h		;a7b3
	jr z,L_A7C0		;a7b5
L_A7B7:
	call L_A7D1		;a7b7
	djnz L_A7A8		;a7ba
	pop hl			;a7bc
	jp L_A6C3		;a7bd
L_A7C0:
	push bc			;a7c0
	push de			;a7c1
	push af			;a7c2
	ld a,e			;a7c3
	sub 008h		;a7c4
	ld e,a			;a7c6
	pop af			;a7c7
	call L_A3E5		;a7c8
	pop de			;a7cb
	pop bc			;a7cc
	ld a,(hl)			;a7cd
	inc hl			;a7ce
	jr L_A7B7		;a7cf
L_A7D1:
	call L_A3E5		;a7d1
	ld a,d			;a7d4
	add a,008h		;a7d5
	ld d,a			;a7d7
	ret			;a7d8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa7d9..0xa7df  (6 bytes)
DATA_A7D9:
	defb 004h,0d2h,021h,032h,0d2h,0beh	; a7d9

; ======================================================================
; CODIGO 0xa7df..0xa85d  (126 bytes)
; ======================================================================


L_A7DF:
	srl b		;a7df
	ex de,hl			;a7e1
	push hl			;a7e2
	call L_A851		;a7e3
	pop de			;a7e6
	ld (0a7d9h),bc		;a7e7
	ld (0a7dbh),hl		;a7eb
	ld (0a7ddh),de		;a7ee
L_A7F2:
	push bc			;a7f2
	ld hl,(0a7dbh)		;a7f3
	ld de,0d300h		;a7f6
	ld a,(0a7dah)		;a7f9
	ld c,a			;a7fc
	ld b,000h		;a7fd
	call 08266h		;a7ff
	call L_A825		;a802
	ld de,(0a7dbh)		;a805
	ld hl,0d300h		;a809
	ld a,(0a7dah)		;a80c
	ld c,a			;a80f
	ld b,000h		;a810
	call 08224h		;a812
	ld hl,(0a7dbh)		;a815
	ld a,080h		;a818
	call 08221h		;a81a
	ld (0a7dbh),hl		;a81d
	pop bc			;a820
	dec c			;a821
	jr nz,L_A7F2		;a822
	ret			;a824
L_A825:
	ld hl,0d300h		;a825
	ld de,(0a7ddh)		;a828
	ld a,(0a7dah)		;a82c
	ld b,a			;a82f
L_A830:
	ld a,(hl)			;a830
	rra			;a831
	rra			;a832
	rra			;a833
	rra			;a834
	and 00fh		;a835
	cp d			;a837
	jr nz,L_A83B		;a838
	ld a,e			;a83a
L_A83B:
	rla			;a83b
	rla			;a83c
	rla			;a83d
	rla			;a83e
	and 0f0h		;a83f
	ld c,a			;a841
	ld a,(hl)			;a842
	and 00fh		;a843
	cp d			;a845
	jr nz,L_A849		;a846
	ld a,e			;a848
L_A849:
	and 00fh		;a849
	or c			;a84b
	ld (hl),a			;a84c
	inc hl			;a84d
	djnz L_A830		;a84e
	ret			;a850
L_A851:
	srl e		;a851
	rr d		;a853
	ld h,e			;a855
	ld l,d			;a856
	ld de,(0d223h)		;a857
	add hl,de			;a85b
	ret			;a85c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa85d..0xa863  (6 bytes)
DATA_A85D:
	defb 000h,064h,01ah,002h,000h,000h	; a85d

; ======================================================================
; CODIGO 0xa863..0xa9da  (375 bytes)
; ======================================================================


L_A863:
	ld a,(ix+000h)		;a863
	dec a			;a866
	ret m			;a867
	push af			;a868
	call z,L_A877		;a869
	pop af			;a86c
	call nz,L_A8EC		;a86d
	ld bc,00004h		;a870
	add ix,bc		;a873
	jr L_A863		;a875
L_A877:
	ld a,(ix+001h)		;a877
	or a			;a87a
	ret z			;a87b
	call L_A8A2		;a87c
	call L_A8C1		;a87f
	call L_A888		;a882
	call L_A8CD		;a885
L_A888:
	ld hl,0d300h		;a888
	ld de,0d32fh		;a88b
	ld b,010h		;a88e
	call L_A89B		;a890
	ld hl,0d310h		;a893
	ld de,0d33fh		;a896
	ld b,010h		;a899
L_A89B:
	ld a,(hl)			;a89b
	ld (de),a			;a89c
	inc hl			;a89d
	dec de			;a89e
	djnz L_A89B		;a89f
	ret			;a8a1
L_A8A2:
	ld (0a85dh),a		;a8a2
	ld l,(ix+002h)		;a8a5
	ld h,000h		;a8a8
	add hl,hl			;a8aa
	add hl,hl			;a8ab
	add hl,hl			;a8ac
	ld bc,0f800h		;a8ad
	add hl,bc			;a8b0
	ld (0a85fh),hl		;a8b1
	ld l,(ix+003h)		;a8b4
	ld h,000h		;a8b7
	add hl,hl			;a8b9
	add hl,hl			;a8ba
	add hl,hl			;a8bb
	add hl,bc			;a8bc
	ld (0a861h),hl		;a8bd
	ret			;a8c0
L_A8C1:
	ld hl,(0a85fh)		;a8c1
	ld de,0d300h		;a8c4
	ld bc,00020h		;a8c7
	jp 08266h		;a8ca
L_A8CD:
	ld de,(0a861h)		;a8cd
	ld hl,0d320h		;a8d1
	ld bc,00020h		;a8d4
	call 08224h		;a8d7
	ld bc,00020h		;a8da
	ld hl,(0a85fh)		;a8dd
	add hl,bc			;a8e0
	ld (0a85fh),hl		;a8e1
	ld hl,(0a861h)		;a8e4
	add hl,bc			;a8e7
	ld (0a861h),hl		;a8e8
	ret			;a8eb
L_A8EC:
	ld a,(ix+001h)		;a8ec
	or a			;a8ef
	ret z			;a8f0
	call L_A8A2		;a8f1
L_A8F4:
	call L_A8C1		;a8f4
	call L_A904		;a8f7
	call L_A8CD		;a8fa
	ld hl,0a85dh		;a8fd
	dec (hl)			;a900
	jr nz,L_A8F4		;a901
	ret			;a903
L_A904:
	ld hl,0d300h		;a904
	ld de,0d330h		;a907
	ld b,010h		;a90a
	call L_A917		;a90c
	ld hl,0d310h		;a90f
	ld de,0d320h		;a912
	ld b,010h		;a915
L_A917:
	ld a,(hl)			;a917
	call L_A921		;a918
	ld (de),a			;a91b
	inc hl			;a91c
	inc de			;a91d
	djnz L_A917		;a91e
	ret			;a920
L_A921:
	push bc			;a921
	ld c,a			;a922
	ld b,008h		;a923
L_A925:
	rr c		;a925
	rla			;a927
	djnz L_A925		;a928
	pop bc			;a92a
	ret			;a92b
L_A92C:
	ld (0ab68h),a		;a92c
	call L_A9DD		;a92f
	ld (0d200h),de		;a932
	call L_A9DD		;a936
	ld (0d206h),de		;a939
	call L_A9DD		;a93d
	ld (0d202h),de		;a940
	ld a,(hl)			;a944
	inc hl			;a945
	ld (0d232h),a		;a946
	ld a,(hl)			;a949
	inc hl			;a94a
	ld (0d233h),a		;a94b
	call L_A998		;a94e
	ld hl,(0d206h)		;a951
	call 08275h		;a954
	ld a,0ffh		;a957
	ld (0d20ch),a		;a959
	inc a			;a95c
	ld (0ab67h),a		;a95d
	ld c,001h		;a960
	ld hl,(0d202h)		;a962
	ld a,(hl)			;a965
	ld b,a			;a966
	ld hl,0d233h		;a967
	ld a,(hl)			;a96a
	or a			;a96b
	jr z,L_A98C		;a96c
	ld a,b			;a96e
L_A96F:
	sub (hl)			;a96f
	jr c,L_A975		;a970
	inc c			;a972
	jr L_A96F		;a973
L_A975:
	add a,(hl)			;a975
	inc a			;a976
	ld (0d205h),a		;a977
	ld a,c			;a97a
L_A97B:
	ld (0d204h),a		;a97b
	ld a,(0d205h)		;a97e
	ld hl,0d233h		;a981
	cp (hl)			;a984
	ret nz			;a985
	ld a,001h		;a986
	ld (0ab67h),a		;a988
	ret			;a98b
L_A98C:
	ld a,001h		;a98c
	ld (0d205h),a		;a98e
	ld hl,(0d202h)		;a991
	ld a,(hl)			;a994
	inc a			;a995
	jr L_A97B		;a996
L_A998:
	call 082bdh		;a998
	ld hl,(0d202h)		;a99b
	ld a,(hl)			;a99e
	ld hl,(0d200h)		;a99f
	ld c,a			;a9a2
	add a,a			;a9a3
	add a,c			;a9a4
	call 08221h		;a9a5
	ld de,0d20dh		;a9a8
	ld bc,00003h		;a9ab
	ldir		;a9ae
	ld a,(0d20fh)		;a9b0
	cp 001h		;a9b3
	ret z			;a9b5
	ld hl,0ab0dh		;a9b6
	call 0826ch		;a9b9
	ld b,(hl)			;a9bc
	inc hl			;a9bd
	ld de,0d280h		;a9be
L_A9C1:
	ld a,(0d20dh)		;a9c1
	add a,(hl)			;a9c4
	ld (de),a			;a9c5
	inc hl			;a9c6
	inc de			;a9c7
	ld a,(0d20eh)		;a9c8
	add a,(hl)			;a9cb
	ld (de),a			;a9cc
	inc hl			;a9cd
	inc de			;a9ce
	ld a,(hl)			;a9cf
	ld (de),a			;a9d0
	inc hl			;a9d1
	inc de			;a9d2
	ld a,(hl)			;a9d3
	ld (de),a			;a9d4
	inc hl			;a9d5
	inc de			;a9d6
	djnz L_A9C1		;a9d7
	ret			;a9d9

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa9da..0xa9dd  (3 bytes)
DATA_A9DA:
	defb 0cdh,01eh,082h	; a9da

; ======================================================================
; CODIGO 0xa9dd..0xab0d  (304 bytes)
; ======================================================================


L_A9DD:
	ld e,(hl)			;a9dd
	inc hl			;a9de
	ld d,(hl)			;a9df
	inc hl			;a9e0
	ret			;a9e1
L_A9E2:
	ld a,(0d1c8h)		;a9e2
	cp 010h		;a9e5
	jp z,L_AAF6		;a9e7
	ld c,a			;a9ea
	ld a,(0d233h)		;a9eb
	and a			;a9ee
	push bc			;a9ef
	call nz,L_AAA7		;a9f0
	pop bc			;a9f3
	ld a,(0d204h)		;a9f4
	and a			;a9f7
	jr z,L_AA30		;a9f8
	ld a,c			;a9fa
	cp 001h		;a9fb
	jp z,L_AA83		;a9fd
	cp 002h		;aa00
	jr nz,L_AA30		;aa02
	ld a,(0d204h)		;aa04
	inc a			;aa07
	ld hl,0d232h		;aa08
	ld e,(hl)			;aa0b
	inc e			;aa0c
	cp e			;aa0d
	ret nc			;aa0e
	ld (0d204h),a		;aa0f
	ld e,a			;aa12
	ld a,(0ab67h)		;aa13
	or a			;aa16
	jr z,L_AA27		;aa17
	ld a,e			;aa19
	cp (hl)			;aa1a
	jr nz,L_AA27		;aa1b
	ld a,(0d233h)		;aa1d
	ld hl,0ab68h		;aa20
	sub (hl)			;aa23
	ld (0d205h),a		;aa24
L_AA27:
	call L_AA32		;aa27
	call L_AA43		;aa2a
	call L_A998		;aa2d
L_AA30:
	xor a			;aa30
	ret			;aa31
L_AA32:
	ld a,(0d1c0h)		;aa32
	cp 004h		;aa35
	jr nz,L_AA40		;aa37
	ld a,(0d1d7h)		;aa39
	dec a			;aa3c
	jp z,08370h		;aa3d
L_AA40:
	jp 082eeh		;aa40
L_AA43:
	ld a,(0d233h)		;aa43
	or a			;aa46
	jr z,L_AA74		;aa47
	ld a,(0d232h)		;aa49
	or a			;aa4c
	jr z,L_AA7A		;aa4d
	ld a,(0d204h)		;aa4f
	dec a			;aa52
	jr z,L_AA63		;aa53
	ld b,a			;aa55
	ld a,(0d233h)		;aa56
	or a			;aa59
	jr z,L_AA80		;aa5a
	ld hl,0d233h		;aa5c
	xor a			;aa5f
L_AA60:
	add a,(hl)			;aa60
	djnz L_AA60		;aa61
L_AA63:
	ld b,a			;aa63
	ld a,(0d233h)		;aa64
	or a			;aa67
	jr z,L_AA6D		;aa68
	ld a,(0d205h)		;aa6a
L_AA6D:
	dec a			;aa6d
	add a,b			;aa6e
L_AA6F:
	ld hl,(0d202h)		;aa6f
	ld (hl),a			;aa72
	ret			;aa73
L_AA74:
	ld a,(0d204h)		;aa74
	dec a			;aa77
	jr L_AA6F		;aa78
L_AA7A:
	ld a,(0d205h)		;aa7a
	dec a			;aa7d
	jr L_AA6F		;aa7e
L_AA80:
	ld a,b			;aa80
	jr L_AA6F		;aa81
L_AA83:
	ld a,(0d204h)		;aa83
	dec a			;aa86
	ret z			;aa87
	ld (0d204h),a		;aa88
	ld a,(0ab67h)		;aa8b
	or a			;aa8e
	jr z,L_AA27		;aa8f
	ld a,(0d233h)		;aa91
	ld (0d205h),a		;aa94
	jr L_AA27		;aa97
L_AA99:
	xor a			;aa99
	ld (0ab67h),a		;aa9a
	ld a,(0d205h)		;aa9d
	dec a			;aaa0
	ret z			;aaa1
	ld (0d205h),a		;aaa2
	jr L_AA27		;aaa5
L_AAA7:
	ld a,c			;aaa7
	cp 004h		;aaa8
	jr z,L_AA99		;aaaa
	cp 008h		;aaac
	jp nz,L_AA30		;aaae
	ld a,(0d205h)		;aab1
	inc a			;aab4
	ld b,a			;aab5
	ld a,(0d204h)		;aab6
	ld hl,0d232h		;aab9
	cp (hl)			;aabc
	ld a,(0d233h)		;aabd
	call z,L_AAEE		;aac0
	ld e,a			;aac3
	ld a,b			;aac4
	cp e			;aac5
	jr z,L_AAE5		;aac6
	inc e			;aac8
	cp e			;aac9
	jr nc,L_AAD6		;aaca
	ld (0d205h),a		;aacc
	xor a			;aacf
	ld (0ab67h),a		;aad0
	jp L_AA27		;aad3
L_AAD6:
	ld a,(0d204h)		;aad6
	ld hl,0d232h		;aad9
	cp (hl)			;aadc
	ret z			;aadd
	ld a,001h		;aade
	ld (0ab67h),a		;aae0
	or a			;aae3
	ret			;aae4
L_AAE5:
	ld (0d205h),a		;aae5
	call L_AAD6		;aae8
	jp L_AA27		;aaeb
L_AAEE:
	push af			;aaee
	ld a,(0ab68h)		;aaef
	ld e,a			;aaf2
	pop af			;aaf3
	sub e			;aaf4
	ret			;aaf5
L_AAF6:
	call L_AB01		;aaf6
	jp z,L_AA30		;aaf9
	call 082f3h		;aafc
	scf			;aaff
	ret			;ab00
L_AB01:
	ld a,(0d1d6h)		;ab01
	cp 003h		;ab04
	ret nz			;ab06
	ld a,(0d1dah)		;ab07
	cp 0feh		;ab0a
	ret			;ab0c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab0d..0xac00  (243 bytes)
DATA_AB0D:
	defb 021h,0abh,026h,0abh,02bh,0abh,030h,0abh,039h,0abh,03eh,0abh,043h,0abh,04ch,0abh	; ab0d  !.&.+.0.9.>.C.L.
	defb 055h,0abh,05eh,0abh,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; ab1d  U.^.............
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; ab2d  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; ab3d  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; ab4d  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,0ddh,0edh,053h,002h,0ddh,07ch	; ab5d  ............S..|
	defb 0c6h,008h,067h,03ah,003h,0ddh,0d6h,010h,047h,03ah,002h,0ddh,04fh,0afh,016h,000h	; ab6d  ..g:....G:..O...
	defb 0cdh,09fh,082h,02ah,000h,0ddh,07dh,0c6h,008h,06fh,03ah,002h,0ddh,0d6h,010h,04fh	; ab7d  ...*..}..o:....O
	defb 03ah,003h,0ddh,047h,0afh,016h,000h,0cdh,09fh,082h,0edh,05bh,000h,0ddh,03eh,0c9h	; ab8d  :..G.......[..>.
	defb 0cdh,081h,0ach,0cdh,0a8h,082h,0ebh,03ah,003h,0ddh,0d6h,010h,047h,00eh,00eh,0cdh	; ab9d  .......:....G...
	defb 028h,0ach,0edh,05bh,000h,0ddh,03ah,003h,0ddh,0d6h,008h,082h,057h,03eh,0cah,0cdh	; abad  (..[..:.....W>..
	defb 081h,0ach,02ah,000h,0ddh,03eh,008h,085h,06fh,03ah,002h,0ddh,0d6h,010h,047h,00eh	; abbd  ..*..>..o:....G.
	defb 00eh,0cdh,054h,0ach,0edh,05bh,000h,0ddh,03ah,002h,0ddh,0d6h,008h,083h,05fh,03eh	; abcd  ..T..[..:....._>
	defb 0cbh,0cdh,081h,0ach,02ah,000h,0ddh,03ah,003h,0ddh,03dh,084h,067h,03eh,008h,085h	; abdd  ....*..:..=.g>..
	defb 06fh,03ah,002h,0ddh,0d6h,010h,047h,00eh,00eh,0cdh,054h,0ach,0edh,05bh,000h,0ddh	; abed  o:....G...T..[..
	defb 03ah,002h,0ddh	; abfd
