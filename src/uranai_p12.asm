; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p12 (se ejecuta en 0x9800)
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
	jp L_9842		;9800
L_9803:
	jp L_A073		;9803
L_9806:
	jp L_9866		;9806
L_9809:
	jp L_9871		;9809
L_980C:
	jp L_9895		;980c
L_980F:
	jp L_987A		;980f
L_9812:
	jp L_98A2		;9812
L_9815:
	jp L_98EB		;9815
L_9818:
	jp L_9928		;9818
L_981B:
	jp L_99D0		;981b
L_981E:
	jp L_9A70		;981e
L_9821:
	jp L_9A82		;9821
L_9824:
	jp L_9ABE		;9824
L_9827:
	jp L_9AF8		;9827

; ----------------------------------------------------------------------
; DATOS sin identificar  0x982a..0x9842  (24 bytes)
DATA_982A:
	defb 021h,0cdh,099h,011h,000h,000h,00eh,020h,0e0h,080h,004h,000h,0e0h,080h,004h,000h	; 982a  !...... ........
	defb 0e0h,080h,004h,000h,0e0h,080h,004h,000h	; 983a  ........

; ======================================================================
; CODIGO 0x9842..0x9944  (258 bytes)
; ======================================================================


L_9842:
	call 083f2h		;9842
	call 08251h		;9845
	xor a			;9848
	call L_98CB		;9849
	xor a			;984c
	call L_98DB		;984d
	call L_9B30		;9850
	call 08209h		;9853
	ld hl,01078h		;9856
	ld de,06838h		;9859
	call L_9E8B		;985c
	ld hl,09c1bh		;985f
	xor a			;9862
	jp L_9FBD		;9863
L_9866:
	ld a,005h		;9866
	call L_98DB		;9868
	ld a,010h		;986b
	ld (0d1d9h),a		;986d
	ret			;9870
L_9871:
	ld a,006h		;9871
	call L_98DB		;9873
	xor a			;9876
	ld (0982ah),a		;9877
L_987A:
	ld a,(0982ah)		;987a
	push af			;987d
	cp 00ah		;987e
	call z,08302h		;9880
	pop af			;9883
	ld hl,09dc7h		;9884
	add a,a			;9887
	add a,a			;9888
	call 08221h		;9889
	ld de,0d290h		;988c
	ld bc,00004h		;988f
	ldir		;9892
	ret			;9894
L_9895:
	ld a,004h		;9895
	ld (hl),a			;9897
	ld a,(0982ah)		;9898
	inc a			;989b
	ld (0982ah),a		;989c
	cp 010h		;989f
	ret			;98a1
L_98A2:
	call 08307h		;98a2
	ld a,0e0h		;98a5
	ld (0d290h),a		;98a7
	xor a			;98aa
	call L_98DB		;98ab
	call L_98B9		;98ae
	xor a			;98b1
	ld (0982bh),a		;98b2
	ld (0982ch),a		;98b5
	ret			;98b8
L_98B9:
	call 082bah		;98b9
	ld hl,05090h		;98bc
	ld de,08828h		;98bf
	call L_9E8B		;98c2
	ld hl,09e07h		;98c5
	jp 08275h		;98c8
L_98CB:
	ld hl,09c4dh		;98cb
	call 0826ch		;98ce
	ld de,06800h		;98d1
	ld a,001h		;98d4
	ld c,005h		;98d6
	jp 08218h		;98d8
L_98DB:
	ld hl,09cefh		;98db
	call 0826ch		;98de
	ld de,06850h		;98e1
	ld a,001h		;98e4
	ld c,004h		;98e6
	jp 08218h		;98e8
L_98EB:
	ld a,(09212h)		;98eb
	cp 058h		;98ee
	jp nc,L_99EB		;98f0
	call L_9BA5		;98f3
	ld a,(0982ch)		;98f6
	or a			;98f9
	jr nz,L_993D		;98fa
	ld a,(0982bh)		;98fc
	or a			;98ff
	jp nz,L_9981		;9900
	ld a,(0d1c8h)		;9903
	cp 010h		;9906
	jp z,L_9A45		;9908
	cp 002h		;990b
	jr z,L_9915		;990d
	and 00ch		;990f
	jp nz,L_9A51		;9911
	ret			;9914
L_9915:
	ld a,(0982bh)		;9915
	cp 002h		;9918
	jr nz,L_992C		;991a
	xor a			;991c
	call L_98CB		;991d
	ld a,003h		;9920
	call L_98DB		;9922
	jp L_9A66		;9925
L_9928:
	call 0825dh		;9928
	ret nz			;992b
L_992C:
	xor a			;992c
	ld (0d1d8h),a		;992d
	call L_98DB		;9930
L_9933:
	ld a,010h		;9933
	ld (0d1d9h),a		;9935
	ld hl,0982ch		;9938
	inc (hl)			;993b
	ret			;993c
L_993D:
	ld a,(0982ch)		;993d
	dec a			;9940
	call 0822dh		;9941

; ----------------------------------------------------------------------
; DATOS saltos_9944: 3 destinos del despachador (call 0x822D en 0x9941) (6
;   bytes)
;   0x9944..0x994a  (6 bytes)
DATA_saltos_9944:
	defw 0994ah,09955h,09966h	; 9944  -> L_994A L_9955 L_9966

; ======================================================================
; CODIGO 0x994a..0x9a41  (247 bytes)
; ======================================================================


L_994A:
	call 0825dh		;994a
	ret nz			;994d
	ld a,001h		;994e
	call L_98DB		;9950
	jr $-32		;9953
L_9955:
	call 0825dh		;9955
	ret nz			;9958
	call 082f8h		;9959
	call L_9B7F		;995c
	ld a,002h		;995f
	call L_98DB		;9961
	jr $-49		;9964
L_9966:
	ld a,(0d1c8h)		;9966
	cp 002h		;9969
	jr z,L_997B		;996b
	call 0825dh		;996d
	ret nz			;9970
	xor a			;9971
	ld (0d1d8h),a		;9972
	ld (0982ch),a		;9975
	jp L_98DB		;9978
L_997B:
	ld a,001h		;997b
	ld (0982ch),a		;997d
	ret			;9980
L_9981:
	ld a,(0982bh)		;9981
	dec a			;9984
	jr z,L_99A5		;9985
	ld a,001h		;9987
	call L_98CB		;9989
	ld a,004h		;998c
	call L_98DB		;998e
	ld a,(0d1c9h)		;9991
	cp 008h		;9994
	jr z,L_99B9		;9996
L_9998:
	call 0825dh		;9998
	ret nz			;999b
	ld a,003h		;999c
	ld (0d1d8h),a		;999e
	ld (0d1d9h),a		;99a1
	ret			;99a4
L_99A5:
	xor a			;99a5
	call L_98CB		;99a6
	ld a,003h		;99a9
	call L_98DB		;99ab
	ld a,(0d1c9h)		;99ae
	cp 004h		;99b1
	ld a,002h		;99b3
	jr z,L_99BB		;99b5
	jr L_9998		;99b7
L_99B9:
	ld a,001h		;99b9
L_99BB:
	ld (0982bh),a		;99bb
	call 082fdh		;99be
	call L_99E6		;99c1
	jr L_99E0		;99c4
L_99C6:
	call L_99E6		;99c6
	ld a,001h		;99c9
	ld (0982bh),a		;99cb
	jr L_99E0		;99ce
L_99D0:
	call 0825dh		;99d0
	ret nz			;99d3
	call 082fdh		;99d4
	ld a,002h		;99d7
	ld (0982bh),a		;99d9
	xor a			;99dc
	ld (0d1d8h),a		;99dd
L_99E0:
	ld a,015h		;99e0
	ld (0d1d9h),a		;99e2
	ret			;99e5
L_99E6:
	ld hl,09212h		;99e6
	inc (hl)			;99e9
	ret			;99ea
L_99EB:
	call L_9C0D		;99eb
	ld a,002h		;99ee
	call L_98CB		;99f0
	xor a			;99f3
	ld (0982dh),a		;99f4
	ld hl,07007h		;99f7
	ld (0982eh),hl		;99fa
	ld hl,00040h		;99fd
	ld (09830h),hl		;9a00
	call L_9A10		;9a03
	xor a			;9a06
	call L_98DB		;9a07
	ld a,004h		;9a0a
	ld (0d1d8h),a		;9a0c
	ret			;9a0f
L_9A10:
	call L_9A23		;9a10
	call L_9A2D		;9a13
	ld hl,0d2abh		;9a16
	ld (hl),00dh		;9a19
	ld a,004h		;9a1b
	call 08221h		;9a1d
	ld (hl),01bh		;9a20
	ret			;9a22
L_9A23:
	ld hl,(0982eh)		;9a23
	ld (0d2a8h),hl		;9a26
	ld (0d2ach),hl		;9a29
	ret			;9a2c
L_9A2D:
	ld hl,09a41h		;9a2d
	ld a,(0982dh)		;9a30
	add a,a			;9a33
	call 08221h		;9a34
	ld a,(hl)			;9a37
	ld (0d2aah),a		;9a38
	inc hl			;9a3b
	ld a,(hl)			;9a3c
	ld (0d2aeh),a		;9a3d
	ret			;9a40

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a41..0x9a45  (4 bytes)
DATA_9A41:
	defb 094h,098h,08ch,090h	; 9a41

; ======================================================================
; CODIGO 0x9a45..0x9b8d  (328 bytes)
; ======================================================================


L_9A45:
	call L_9B20		;9a45
	ld hl,0d1d7h		;9a48
	inc (hl)			;9a4b
	xor a			;9a4c
	ld (0d1d8h),a		;9a4d
	ret			;9a50
L_9A51:
	cp 008h		;9a51
	jp z,L_99C6		;9a53
	ld a,003h		;9a56
	call L_98DB		;9a58
	call L_99E6		;9a5b
	call L_9A66		;9a5e
	jr L_9A66		;9a61
L_9A63:
	call 0834dh		;9a63
L_9A66:
	ld a,004h		;9a66
	ld (0d1d9h),a		;9a68
	ld hl,0d1d8h		;9a6b
	inc (hl)			;9a6e
	ret			;9a6f
L_9A70:
	call 0825dh		;9a70
	ret nz			;9a73
	xor a			;9a74
	ld (0982bh),a		;9a75
	ld (0d1d8h),a		;9a78
	call L_98CB		;9a7b
	xor a			;9a7e
	jp L_98DB		;9a7f
L_9A82:
	ld a,(0982eh)		;9a82
	ld d,a			;9a85
	ld e,000h		;9a86
	ld hl,(09830h)		;9a88
	add hl,de			;9a8b
	ld a,h			;9a8c
	cp 050h		;9a8d
	jr c,L_9A93		;9a8f
	ld a,050h		;9a91
L_9A93:
	ld (0982eh),a		;9a93
	ld hl,(09830h)		;9a96
	ld de,00050h		;9a99
	add hl,de			;9a9c
	ld (09830h),hl		;9a9d
	call L_9A10		;9aa0
	ld a,(0982eh)		;9aa3
	cp 050h		;9aa6
	ret nz			;9aa8
	call 08325h		;9aa9
	ld a,007h		;9aac
	call L_98DB		;9aae
	ld a,0ffh		;9ab1
	ld (09831h),a		;9ab3
	ld a,004h		;9ab6
	ld (0d1d9h),a		;9ab8
	jp L_9A66		;9abb
L_9ABE:
	call 0825dh		;9abe
	ret nz			;9ac1
	ld a,004h		;9ac2
	ld (0d1d9h),a		;9ac4
	ld a,(09831h)		;9ac7
	inc a			;9aca
	ld (09831h),a		;9acb
	cp 014h		;9ace
	jp nc,L_9A63		;9ad0
	cp 008h		;9ad3
	call z,L_9AF0		;9ad5
	ld hl,09e2eh		;9ad8
	ld e,a			;9adb
	add a,a			;9adc
	add a,e			;9add
	call 08221h		;9ade
	ld e,(hl)			;9ae1
	inc hl			;9ae2
	ld d,(hl)			;9ae3
	inc hl			;9ae4
	ld a,(hl)			;9ae5
	ld (0982dh),a		;9ae6
	ld (0982eh),de		;9ae9
	jp L_9A10		;9aed
L_9AF0:
	push af			;9af0
	ld a,008h		;9af1
	call L_98DB		;9af3
	pop af			;9af6
	ret			;9af7
L_9AF8:
	call L_9B11		;9af8
	ld a,(0982fh)		;9afb
	sub 001h		;9afe
	ld (0982fh),a		;9b00
	jp nc,L_9A10		;9b03
	ld a,0e0h		;9b06
	ld (0d2a8h),a		;9b08
	ld (0d2ach),a		;9b0b
	jp L_9A45		;9b0e
L_9B11:
	ld a,(0d1c3h)		;9b11
	and 003h		;9b14
	ret nz			;9b16
	ld a,(0982dh)		;9b17
	xor 001h		;9b1a
	ld (0982dh),a		;9b1c
	ret			;9b1f
L_9B20:
	ld hl,09880h		;9b20
	ld de,06028h		;9b23
	call L_9E8B		;9b26
	ld hl,09e6ah		;9b29
	xor a			;9b2c
	jp L_9FBD		;9b2d
L_9B30:
	ld b,00ch		;9b30
	ld ix,0d2c0h		;9b32
L_9B36:
	ld (ix+000h),0e0h		;9b36
	ld (ix+001h),048h		;9b3a
	ld de,00004h		;9b3e
	add ix,de		;9b41
	djnz L_9B36		;9b43
	ld hl,09c02h		;9b45
	ld de,0d2c2h		;9b48
	call L_9B5D		;9b4b
	ld hl,0a006h		;9b4e
	ld de,0d2c6h		;9b51
	call L_9B5D		;9b54
	ld hl,0a40fh		;9b57
	ld de,0d2cah		;9b5a
L_9B5D:
	ld a,h			;9b5d
	ld (L_9B6F+3),a		;9b5e
	ld a,l			;9b61
	ld (09b76h),a		;9b62
	ld (09b6bh),de		;9b65
	ld ix,0d2c2h		;9b69
	ld b,004h		;9b6d
L_9B6F:
	ld (ix+000h),09ch		;9b6f
	ld (ix+001h),002h		;9b73
	ld de,0000ch		;9b77
	add ix,de		;9b7a
	djnz L_9B6F		;9b7c
	ret			;9b7e
L_9B7F:
	call L_9B91		;9b7f
	ret c			;9b82
	ld de,09b8dh		;9b83
	ex de,hl			;9b86
	ld bc,00004h		;9b87
	ldir		;9b8a
	ret			;9b8c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9b8d..0x9b91  (4 bytes)
DATA_9B8D:
	defb 048h,080h,004h,000h	; 9b8d

; ======================================================================
; CODIGO 0x9b91..0x9bf2  (97 bytes)
; ======================================================================


L_9B91:
	ld hl,09832h		;9b91
	ld b,004h		;9b94
L_9B96:
	ld a,0e0h		;9b96
	cp (hl)			;9b98
	jr z,L_9BA3		;9b99
	inc hl			;9b9b
	inc hl			;9b9c
	inc hl			;9b9d
	inc hl			;9b9e
	djnz L_9B96		;9b9f
	scf			;9ba1
	ret			;9ba2
L_9BA3:
	or a			;9ba3
	ret			;9ba4
L_9BA5:
	ld b,004h		;9ba5
	ld ix,09832h		;9ba7
	ld hl,0d2c0h		;9bab
L_9BAE:
	push bc			;9bae
	push hl			;9baf
	call L_9BC1		;9bb0
	pop hl			;9bb3
	ld de,0000ch		;9bb4
	add hl,de			;9bb7
	ld de,00004h		;9bb8
	add ix,de		;9bbb
	pop bc			;9bbd
	djnz L_9BAE		;9bbe
	ret			;9bc0
L_9BC1:
	call L_9BFC		;9bc1
	ld a,(ix+000h)		;9bc4
	cp 0e0h		;9bc7
	ret z			;9bc9
	ld a,(ix+002h)		;9bca
	sub 001h		;9bcd
	ld (ix+002h),a		;9bcf
	ret nc			;9bd2
	ld a,004h		;9bd3
	ld (ix+002h),a		;9bd5
	inc (ix+003h)		;9bd8
	ld a,(ix+003h)		;9bdb
	cp 005h		;9bde
	ret nc			;9be0
	add a,a			;9be1
	ld hl,09bf2h		;9be2
	call 08221h		;9be5
	ld a,(hl)			;9be8
	ld (ix+001h),a		;9be9
	inc hl			;9bec
	ld a,(hl)			;9bed
	ld (ix+000h),a		;9bee
	ret			;9bf1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9bf2..0x9bfc  (10 bytes)
DATA_9BF2:
	defb 080h,048h,082h,045h,083h,042h,083h,040h,080h,0e0h	; 9bf2  .H.E.B.@..

; ======================================================================
; CODIGO 0x9bfc..0x9c1b  (31 bytes)
; ======================================================================


L_9BFC:
	ld b,003h		;9bfc
L_9BFE:
	ld a,(ix+000h)		;9bfe
	ld (hl),a			;9c01
	inc hl			;9c02
	ld a,(ix+001h)		;9c03
	ld (hl),a			;9c06
	inc hl			;9c07
	inc hl			;9c08
	inc hl			;9c09
	djnz L_9BFE		;9c0a
	ret			;9c0c
L_9C0D:
	ld hl,0d2c0h		;9c0d
	ld b,00ch		;9c10
L_9C12:
	ld (hl),0e0h		;9c12
	inc hl			;9c14
	inc hl			;9c15
	inc hl			;9c16
	inc hl			;9c17
	djnz L_9C12		;9c18
	ret			;9c1a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c1b..0x9e07  (492 bytes)
DATA_9C1B:
	defb 023h,09ch,029h,09ch,0cdh,0d1h,002h,000h,082h,018h,000h,092h,018h,000h,020h,082h	; 9c1b  #.)........... .
	defb 04fh,005h,020h,008h,0c4h,02dh,000h,01bh,008h,0feh,020h,092h,04fh,005h,020h,008h	; 9c2b  O. ..-.... .O. .
	defb 0c4h,02dh,01bh,008h,082h,016h,0feh,030h,0a2h,005h,01fh,002h,028h,02dh,000h,00dh	; 9c3b  .-.....0....(-..
	defb 029h,0ffh,053h,09ch,087h,09ch,0bbh,09ch,0b2h,0a6h,099h,001h,002h,09ah,000h,010h	; 9c4b  ).S.............
	defb 011h,012h,000h,000h,020h,021h,022h,023h,000h,000h,005h,025h,02fh,000h,000h,003h	; 9c5b  .... !"#...%/...
	defb 004h,000h,000h,000h,005h,013h,000h,000h,000h,003h,004h,000h,000h,000h,005h,013h	; 9c6b  ................
	defb 000h,0a7h,09bh,006h,007h,09dh,0a8h,09eh,015h,017h,0a0h,000h,0b2h,0a6h,008h,009h	; 9c7b  ................
	defb 00ah,09ah,030h,018h,019h,01ah,000h,000h,028h,029h,02ah,000h,000h,000h,027h,02fh	; 9c8b  ..0.....()*...'/
	defb 000h,000h,00bh,00ch,000h,000h,000h,01bh,01ch,000h,000h,000h,02bh,02ch,000h,000h	; 9c9b  ............+,..
	defb 000h,02dh,000h,000h,000h,00dh,00eh,098h,09ch,09dh,01dh,01fh,097h,09fh,0a0h,000h	; 9cab  .-..............
	defb 0b2h,0a6h,099h,001h,002h,09ah,000h,000h,071h,012h,000h,000h,000h,072h,022h,023h	; 9cbb  ........q....r"#
	defb 000h,000h,073h,025h,02fh,000h,000h,003h,004h,000h,000h,000h,005h,013h,000h,000h	; 9ccb  ..s%/...........
	defb 000h,003h,004h,000h,000h,000h,005h,013h,000h,0a7h,09bh,006h,007h,09dh,0a8h,09eh	; 9cdb  ................
	defb 015h,017h,0a0h,000h,001h,09dh,017h,09dh,02dh,09dh,043h,09dh,059h,09dh,06fh,09dh	; 9ceb  ........-.C.Y.o.
	defb 085h,09dh,09bh,09dh,0b1h,09dh,094h,031h,032h,03fh,040h,06dh,066h,043h,06fh,039h	; 9cfb  .......12?@mfCo9
	defb 066h,053h,03ch,056h,062h,063h,064h,035h,036h,036h,038h,000h,094h,031h,032h,03fh	; 9d0b  fS<Vbcd5668..12?
	defb 040h,049h,042h,043h,04ch,059h,066h,067h,05ch,061h,062h,063h,064h,035h,036h,036h	; 9d1b  @IBCLYfg\abcd566
	defb 038h,000h,094h,031h,032h,03fh,040h,055h,042h,043h,058h,05eh,066h,053h,05ch,061h	; 9d2b  8..12?@UBCX^fS\a
	defb 062h,063h,064h,035h,036h,036h,038h,000h,094h,069h,06ah,06bh,06ch,05ah,05bh,04eh	; 9d3b  bcd5668..ijklZ[N
	defb 054h,059h,066h,067h,068h,061h,062h,063h,064h,035h,036h,036h,038h,000h,094h,05fh	; 9d4b  TYfghabcd5668.._
	defb 048h,03bh,034h,037h,042h,043h,03dh,05eh,066h,053h,068h,061h,062h,063h,064h,035h	; 9d5b  H.47BC=^fShabcd5
	defb 036h,036h,038h,000h,094h,031h,032h,03bh,040h,04dh,066h,04fh,050h,059h,066h,053h	; 9d6b  668..12.@MfOPYfS
	defb 060h,061h,062h,063h,064h,035h,036h,036h,038h,000h,094h,031h,032h,03fh,034h,041h	; 9d7b  `abcd5668..12?4A
	defb 042h,043h,044h,051h,052h,053h,054h,061h,062h,063h,064h,035h,036h,036h,038h,000h	; 9d8b  BCDQRSTabcd5668.
	defb 094h,074h,075h,076h,077h,078h,079h,07ah,07bh,07ch,066h,053h,07dh,07eh,07fh,080h	; 9d9b  .tuvwxyz{|fS}~..
	defb 081h,092h,035h,036h,036h,000h,094h,093h,093h,094h,095h,082h,083h,084h,085h,086h	; 9dab  ..566...........
	defb 087h,088h,089h,08ah,08bh,08ch,08dh,08eh,08fh,090h,091h,000h,04bh,078h,080h,00dh	; 9dbb  ............Kx..
	defb 046h,079h,080h,00dh,03eh,07ah,080h,00dh,038h,07ah,084h,00dh,034h,07bh,084h,00dh	; 9dcb  Fy..>z..8z..4{..
	defb 031h,07ch,084h,00dh,02dh,07dh,084h,00dh,02ah,07eh,080h,00dh,027h,07fh,080h,00dh	; 9ddb  1|..-}..*~..'...
	defb 024h,081h,080h,00dh,024h,083h,088h,00dh,026h,085h,080h,00dh,029h,087h,080h,00dh	; 9deb  $...$...&...)...
	defb 02eh,088h,084h,00dh,036h,089h,084h,00dh,03dh,08ah,084h,00dh	; 9dfb  ....6...=...

; ----------------------------------------------------------------------
; DATOS texto_9E07: texto: x, y y las letras hasta 0xFF; lo usa 0x98C8 (39
;   bytes)
;   0x9e07..0x9e2e  (39 bytes)
DATA_texto_9E07:
	defb 058h,09ah,00dh,0c5h,02dh,01ch,029h,000h,04bh,000h,0fdh,0f3h,000h,0f2h,000h,0f5h	; 9e07  X...-.).K.......
	defb 0fdh,04bh,0feh,058h,0aah,006h,00ch,02ch,0cbh,02dh,000h,003h,012h,000h,04bh,000h	; 9e17  .K.X...,.-....K.
	defb 0fdh,0f4h,000h,0f5h,0fdh,04bh,0ffh	; 9e27

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e2e..0x9e8b  (93 bytes)
DATA_9E2E:
	defb 04eh,06eh,000h,04ch,06ch,000h,04ah,069h,001h,049h,065h,001h,049h,061h,000h,04ah	; 9e2e  Nn.Ll.Ji.Ie.Ia.J
	defb 05dh,000h,04bh,059h,001h,04dh,055h,001h,050h,052h,000h,053h,050h,000h,057h,04ch	; 9e3e  ].KY.MU.PR.SP.WL
	defb 001h,05ch,049h,001h,062h,046h,000h,06eh,044h,000h,073h,042h,001h,07bh,03dh,001h	; 9e4e  .\I.bF.nD.sB.{=.
	defb 08dh,036h,000h,09ch,030h,000h,0aah,02bh,001h,0b4h,028h,001h,072h,09eh,078h,09eh	; 9e5e  .6..0..+..(.r.x.
	defb 0cdh,0d1h,002h,000h,08ah,0a0h,000h,09ah,0a0h,000h,0a8h,08ah,04fh,005h,020h,008h	; 9e6e  ............O. .
	defb 0c4h,02dh,000h,01bh,008h,0feh,0a8h,09ah,04fh,005h,02ch,028h,0ffh	; 9e7e  .-......O.,(.

; ======================================================================
; CODIGO 0x9e8b..0xa06b  (480 bytes)
; ======================================================================


L_9E8B:
	ld (0dd00h),hl		;9e8b
	ld (0dd02h),de		;9e8e
	ld a,h			;9e92
	add a,008h		;9e93
	ld h,a			;9e95
	ld a,(0dd03h)		;9e96
	sub 010h		;9e99
	ld b,a			;9e9b
	ld a,(0dd02h)		;9e9c
	ld c,a			;9e9f
	xor a			;9ea0
	ld d,000h		;9ea1
	call 0829fh		;9ea3
	ld hl,(0dd00h)		;9ea6
	ld a,l			;9ea9
	add a,008h		;9eaa
	ld l,a			;9eac
	ld a,(0dd02h)		;9ead
	sub 010h		;9eb0
	ld c,a			;9eb2
	ld a,(0dd03h)		;9eb3
	ld b,a			;9eb6
	xor a			;9eb7
	ld d,000h		;9eb8
	call 0829fh		;9eba
	ld de,(0dd00h)		;9ebd
	ld a,0c9h		;9ec1
	call L_9FA7		;9ec3
	call 082a8h		;9ec6
	ex de,hl			;9ec9
	ld a,(0dd03h)		;9eca
	sub 010h		;9ecd
	ld b,a			;9ecf
	ld c,00eh		;9ed0
	call L_9F4E		;9ed2
	ld de,(0dd00h)		;9ed5
	ld a,(0dd03h)		;9ed9
	sub 008h		;9edc
	add a,d			;9ede
	ld d,a			;9edf
	ld a,0cah		;9ee0
	call L_9FA7		;9ee2
	ld hl,(0dd00h)		;9ee5
	ld a,008h		;9ee8
	add a,l			;9eea
	ld l,a			;9eeb
	ld a,(0dd02h)		;9eec
	sub 010h		;9eef
	ld b,a			;9ef1
	ld c,00eh		;9ef2
	call L_9F7A		;9ef4
	ld de,(0dd00h)		;9ef7
	ld a,(0dd02h)		;9efb
	sub 008h		;9efe
	add a,e			;9f00
	ld e,a			;9f01
	ld a,0cbh		;9f02
	call L_9FA7		;9f04
	ld hl,(0dd00h)		;9f07
	ld a,(0dd03h)		;9f0a
	dec a			;9f0d
	add a,h			;9f0e
	ld h,a			;9f0f
	ld a,008h		;9f10
	add a,l			;9f12
	ld l,a			;9f13
	ld a,(0dd02h)		;9f14
	sub 010h		;9f17
	ld b,a			;9f19
	ld c,00eh		;9f1a
	call L_9F7A		;9f1c
	ld de,(0dd00h)		;9f1f
	ld a,(0dd02h)		;9f23
	sub 008h		;9f26
	add a,e			;9f28
	ld e,a			;9f29
	ld a,(0dd03h)		;9f2a
	sub 008h		;9f2d
	add a,d			;9f2f
	ld d,a			;9f30
	ld a,0cch		;9f31
	call L_9FA7		;9f33
	ld hl,(0dd00h)		;9f36
	ld a,008h		;9f39
	add a,h			;9f3b
	ld h,a			;9f3c
	ld a,(0dd02h)		;9f3d
	dec a			;9f40
	add a,l			;9f41
	ld l,a			;9f42
	ld a,(0dd03h)		;9f43
	sub 010h		;9f46
	ld b,a			;9f48
	ld c,00eh		;9f49
	jp L_9F4E		;9f4b
L_9F4E:
	ld a,024h		;9f4e
	ld (0d226h),a		;9f50
	call 08287h		;9f53
	out (c),h		;9f56
	xor a			;9f58
	out (c),a		;9f59
	out (c),l		;9f5b
	out (c),a		;9f5d
	ld hl,(0d227h)		;9f5f
	out (c),h		;9f62
	xor a			;9f64
	cp h			;9f65
	jr nz,L_9F69		;9f66
	inc a			;9f68
L_9F69:
	out (c),a		;9f69
	xor a			;9f6b
	out (c),a		;9f6c
	out (c),a		;9f6e
	out (c),l		;9f70
	out (c),a		;9f72
	ld a,070h		;9f74
	out (c),a		;9f76
	ei			;9f78
	ret			;9f79
L_9F7A:
	ld a,024h		;9f7a
	ld (0d226h),a		;9f7c
	call 08287h		;9f7f
	out (c),h		;9f82
	xor a			;9f84
	out (c),a		;9f85
	out (c),l		;9f87
	out (c),a		;9f89
	ld hl,(0d227h)		;9f8b
	out (c),h		;9f8e
	xor a			;9f90
	cp h			;9f91
	jr nz,L_9F95		;9f92
	inc a			;9f94
L_9F95:
	out (c),a		;9f95
	xor a			;9f97
	out (c),a		;9f98
	out (c),a		;9f9a
	out (c),l		;9f9c
	inc a			;9f9e
	out (c),a		;9f9f
	ld a,070h		;9fa1
	out (c),a		;9fa3
	ei			;9fa5
	ret			;9fa6
L_9FA7:
	push bc			;9fa7
	push hl			;9fa8
	push de			;9fa9
	call 08281h		;9faa
	ld a,l			;9fad
	add a,080h		;9fae
	ld l,a			;9fb0
	ld bc,00808h		;9fb1
	ld a,048h		;9fb4
	call 0820ch		;9fb6
	pop de			;9fb9
	pop hl			;9fba
	pop bc			;9fbb
	ret			;9fbc
L_9FBD:
	ld (0a1f9h),a		;9fbd
	call L_A06E		;9fc0
	ld (0d200h),de		;9fc3
	call L_A06E		;9fc7
	ld (0d206h),de		;9fca
	call L_A06E		;9fce
	ld (0d202h),de		;9fd1
	ld a,(hl)			;9fd5
	inc hl			;9fd6
	ld (0d232h),a		;9fd7
	ld a,(hl)			;9fda
	inc hl			;9fdb
	ld (0d233h),a		;9fdc
	call L_A029		;9fdf
	ld hl,(0d206h)		;9fe2
	call 08275h		;9fe5
	ld a,0ffh		;9fe8
	ld (0d20ch),a		;9fea
	inc a			;9fed
	ld (0a1f8h),a		;9fee
	ld c,001h		;9ff1
	ld hl,(0d202h)		;9ff3
	ld a,(hl)			;9ff6
	ld b,a			;9ff7
	ld hl,0d233h		;9ff8
	ld a,(hl)			;9ffb
	or a			;9ffc
	jr z,L_A01D		;9ffd
	ld a,b			;9fff
L_A000:
	sub (hl)			;a000
	jr c,L_A006		;a001
	inc c			;a003
	jr L_A000		;a004
L_A006:
	add a,(hl)			;a006
	inc a			;a007
	ld (0d205h),a		;a008
	ld a,c			;a00b
L_A00C:
	ld (0d204h),a		;a00c
	ld a,(0d205h)		;a00f
	ld hl,0d233h		;a012
	cp (hl)			;a015
	ret nz			;a016
	ld a,001h		;a017
	ld (0a1f8h),a		;a019
	ret			;a01c
L_A01D:
	ld a,001h		;a01d
	ld (0d205h),a		;a01f
	ld hl,(0d202h)		;a022
	ld a,(hl)			;a025
	inc a			;a026
	jr L_A00C		;a027
L_A029:
	call 082bdh		;a029
	ld hl,(0d202h)		;a02c
	ld a,(hl)			;a02f
	ld hl,(0d200h)		;a030
	ld c,a			;a033
	add a,a			;a034
	add a,c			;a035
	call 08221h		;a036
	ld de,0d20dh		;a039
	ld bc,00003h		;a03c
	ldir		;a03f
	ld a,(0d20fh)		;a041
	cp 001h		;a044
	ret z			;a046
	ld hl,0a19eh		;a047
	call 0826ch		;a04a
	ld b,(hl)			;a04d
	inc hl			;a04e
	ld de,0d280h		;a04f
L_A052:
	ld a,(0d20dh)		;a052
	add a,(hl)			;a055
	ld (de),a			;a056
	inc hl			;a057
	inc de			;a058
	ld a,(0d20eh)		;a059
	add a,(hl)			;a05c
	ld (de),a			;a05d
	inc hl			;a05e
	inc de			;a05f
	ld a,(hl)			;a060
	ld (de),a			;a061
	inc hl			;a062
	inc de			;a063
	ld a,(hl)			;a064
	ld (de),a			;a065
	inc hl			;a066
	inc de			;a067
	djnz L_A052		;a068
	ret			;a06a

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa06b..0xa06e  (3 bytes)
DATA_A06B:
	defb 0cdh,01eh,082h	; a06b

; ======================================================================
; CODIGO 0xa06e..0xa19e  (304 bytes)
; ======================================================================


L_A06E:
	ld e,(hl)			;a06e
	inc hl			;a06f
	ld d,(hl)			;a070
	inc hl			;a071
	ret			;a072
L_A073:
	ld a,(0d1c8h)		;a073
	cp 010h		;a076
	jp z,L_A187		;a078
	ld c,a			;a07b
	ld a,(0d233h)		;a07c
	and a			;a07f
	push bc			;a080
	call nz,L_A138		;a081
	pop bc			;a084
	ld a,(0d204h)		;a085
	and a			;a088
	jr z,L_A0C1		;a089
	ld a,c			;a08b
	cp 001h		;a08c
	jp z,L_A114		;a08e
	cp 002h		;a091
	jr nz,L_A0C1		;a093
	ld a,(0d204h)		;a095
	inc a			;a098
	ld hl,0d232h		;a099
	ld e,(hl)			;a09c
	inc e			;a09d
	cp e			;a09e
	ret nc			;a09f
	ld (0d204h),a		;a0a0
	ld e,a			;a0a3
	ld a,(0a1f8h)		;a0a4
	or a			;a0a7
	jr z,L_A0B8		;a0a8
	ld a,e			;a0aa
	cp (hl)			;a0ab
	jr nz,L_A0B8		;a0ac
	ld a,(0d233h)		;a0ae
	ld hl,0a1f9h		;a0b1
	sub (hl)			;a0b4
	ld (0d205h),a		;a0b5
L_A0B8:
	call L_A0C3		;a0b8
	call L_A0D4		;a0bb
	call L_A029		;a0be
L_A0C1:
	xor a			;a0c1
	ret			;a0c2
L_A0C3:
	ld a,(0d1c0h)		;a0c3
	cp 004h		;a0c6
	jr nz,L_A0D1		;a0c8
	ld a,(0d1d7h)		;a0ca
	dec a			;a0cd
	jp z,08370h		;a0ce
L_A0D1:
	jp 082eeh		;a0d1
L_A0D4:
	ld a,(0d233h)		;a0d4
	or a			;a0d7
	jr z,L_A105		;a0d8
	ld a,(0d232h)		;a0da
	or a			;a0dd
	jr z,L_A10B		;a0de
	ld a,(0d204h)		;a0e0
	dec a			;a0e3
	jr z,L_A0F4		;a0e4
	ld b,a			;a0e6
	ld a,(0d233h)		;a0e7
	or a			;a0ea
	jr z,L_A111		;a0eb
	ld hl,0d233h		;a0ed
	xor a			;a0f0
L_A0F1:
	add a,(hl)			;a0f1
	djnz L_A0F1		;a0f2
L_A0F4:
	ld b,a			;a0f4
	ld a,(0d233h)		;a0f5
	or a			;a0f8
	jr z,L_A0FE		;a0f9
	ld a,(0d205h)		;a0fb
L_A0FE:
	dec a			;a0fe
	add a,b			;a0ff
L_A100:
	ld hl,(0d202h)		;a100
	ld (hl),a			;a103
	ret			;a104
L_A105:
	ld a,(0d204h)		;a105
	dec a			;a108
	jr L_A100		;a109
L_A10B:
	ld a,(0d205h)		;a10b
	dec a			;a10e
	jr L_A100		;a10f
L_A111:
	ld a,b			;a111
	jr L_A100		;a112
L_A114:
	ld a,(0d204h)		;a114
	dec a			;a117
	ret z			;a118
	ld (0d204h),a		;a119
	ld a,(0a1f8h)		;a11c
	or a			;a11f
	jr z,L_A0B8		;a120
	ld a,(0d233h)		;a122
	ld (0d205h),a		;a125
	jr L_A0B8		;a128
L_A12A:
	xor a			;a12a
	ld (0a1f8h),a		;a12b
	ld a,(0d205h)		;a12e
	dec a			;a131
	ret z			;a132
	ld (0d205h),a		;a133
	jr L_A0B8		;a136
L_A138:
	ld a,c			;a138
	cp 004h		;a139
	jr z,L_A12A		;a13b
	cp 008h		;a13d
	jp nz,L_A0C1		;a13f
	ld a,(0d205h)		;a142
	inc a			;a145
	ld b,a			;a146
	ld a,(0d204h)		;a147
	ld hl,0d232h		;a14a
	cp (hl)			;a14d
	ld a,(0d233h)		;a14e
	call z,L_A17F		;a151
	ld e,a			;a154
	ld a,b			;a155
	cp e			;a156
	jr z,L_A176		;a157
	inc e			;a159
	cp e			;a15a
	jr nc,L_A167		;a15b
	ld (0d205h),a		;a15d
	xor a			;a160
	ld (0a1f8h),a		;a161
	jp L_A0B8		;a164
L_A167:
	ld a,(0d204h)		;a167
	ld hl,0d232h		;a16a
	cp (hl)			;a16d
	ret z			;a16e
	ld a,001h		;a16f
	ld (0a1f8h),a		;a171
	or a			;a174
	ret			;a175
L_A176:
	ld (0d205h),a		;a176
	call L_A167		;a179
	jp L_A0B8		;a17c
L_A17F:
	push af			;a17f
	ld a,(0a1f9h)		;a180
	ld e,a			;a183
	pop af			;a184
	sub e			;a185
	ret			;a186
L_A187:
	call L_A192		;a187
	jp z,L_A0C1		;a18a
	call 082f3h		;a18d
	scf			;a190
	ret			;a191
L_A192:
	ld a,(0d1d6h)		;a192
	cp 003h		;a195
	ret nz			;a197
	ld a,(0d1dah)		;a198
	cp 0feh		;a19b
	ret			;a19d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa19e..0xa200  (98 bytes)
DATA_A19E:
	defb 0b2h,0a1h,0b7h,0a1h,0bch,0a1h,0c1h,0a1h,0cah,0a1h,0cfh,0a1h,0d4h,0a1h,0ddh,0a1h	; a19e  ................
	defb 0e6h,0a1h,0efh,0a1h,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; a1ae  ................
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; a1be  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; a1ce  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; a1de  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,0d2h,086h,012h,023h,013h,07eh	; a1ee  .............#.~
	defb 012h,023h	; a1fe
