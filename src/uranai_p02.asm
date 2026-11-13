; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p02 (se ejecuta en 0x9600)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09600


; ======================================================================
; CODIGO 0x9600..0x9650  (80 bytes)
; ======================================================================


L_9600:
	jp L_961E		;9600
L_9603:
	jp L_9646		;9603
L_9606:
	jp L_9A14		;9606
L_9609:
	jp L_9657		;9609
L_960C:
	jp L_970D		;960c
L_960F:
	jp L_989A		;960f
L_9612:
	jp L_96C3		;9612
L_9615:
	jp L_9A1E		;9615
L_9618:
	jp L_9A46		;9618
L_961B:
	jp L_9918		;961b
L_961E:
	ld (0d1e4h),a		;961e
L_9621:
	ld a,(0d1e4h)		;9621
	call L_9635		;9624
	ld de,0b000h		;9627
	call 08215h		;962a
	jr c,L_9621		;962d
	ld a,0ffh		;962f
	ld (0e0fdh),a		;9631
	ret			;9634
L_9635:
	add a,a			;9635
	add a,a			;9636
	ld hl,09ac7h		;9637
	call 08221h		;963a
	ld c,(hl)			;963d
	inc hl			;963e
	ld b,(hl)			;963f
	inc hl			;9640
	ld a,(hl)			;9641
	inc hl			;9642
	ld h,(hl)			;9643
	ld l,a			;9644
	ret			;9645
L_9646:
	ld (09651h),a		;9646
	ld ix,09650h		;9649
	jp L_9918		;964d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9650..0x9657  (7 bytes)
DATA_9650:
	defb 020h,0c4h,004h,0a0h,000h,0b0h,080h	; 9650

; ======================================================================
; CODIGO 0x9657..0x9705  (174 bytes)
; ======================================================================


L_9657:
	ld (09893h),a		;9657
	call L_9708		;965a
	ld (0d200h),de		;965d
	call L_9708		;9661
	ld (0d206h),de		;9664
	call L_9708		;9668
	ld (0d202h),de		;966b
	ld a,(hl)			;966f
	inc hl			;9670
	ld (0d232h),a		;9671
	ld a,(hl)			;9674
	inc hl			;9675
	ld (0d233h),a		;9676
	call L_96C3		;9679
	ld hl,(0d206h)		;967c
	call 08275h		;967f
	ld a,0ffh		;9682
	ld (0d20ch),a		;9684
	inc a			;9687
	ld (09892h),a		;9688
	ld c,001h		;968b
	ld hl,(0d202h)		;968d
	ld a,(hl)			;9690
	ld b,a			;9691
	ld hl,0d233h		;9692
	ld a,(hl)			;9695
	or a			;9696
	jr z,L_96B7		;9697
	ld a,b			;9699
L_969A:
	sub (hl)			;969a
	jr c,L_96A0		;969b
	inc c			;969d
	jr L_969A		;969e
L_96A0:
	add a,(hl)			;96a0
	inc a			;96a1
	ld (0d205h),a		;96a2
	ld a,c			;96a5
L_96A6:
	ld (0d204h),a		;96a6
	ld a,(0d205h)		;96a9
	ld hl,0d233h		;96ac
	cp (hl)			;96af
	ret nz			;96b0
	ld a,001h		;96b1
	ld (09892h),a		;96b3
	ret			;96b6
L_96B7:
	ld a,001h		;96b7
	ld (0d205h),a		;96b9
	ld hl,(0d202h)		;96bc
	ld a,(hl)			;96bf
	inc a			;96c0
	jr L_96A6		;96c1
L_96C3:
	call 082bdh		;96c3
	ld hl,(0d202h)		;96c6
	ld a,(hl)			;96c9
	ld hl,(0d200h)		;96ca
	ld c,a			;96cd
	add a,a			;96ce
	add a,c			;96cf
	call 08221h		;96d0
	ld de,0d20dh		;96d3
	ld bc,00003h		;96d6
	ldir		;96d9
	ld a,(0d20fh)		;96db
	cp 001h		;96de
	ret z			;96e0
	ld hl,09838h		;96e1
	call 0826ch		;96e4
	ld b,(hl)			;96e7
	inc hl			;96e8
	ld de,0d280h		;96e9
L_96EC:
	ld a,(0d20dh)		;96ec
	add a,(hl)			;96ef
	ld (de),a			;96f0
	inc hl			;96f1
	inc de			;96f2
	ld a,(0d20eh)		;96f3
	add a,(hl)			;96f6
	ld (de),a			;96f7
	inc hl			;96f8
	inc de			;96f9
	ld a,(hl)			;96fa
	ld (de),a			;96fb
	inc hl			;96fc
	inc de			;96fd
	ld a,(hl)			;96fe
	ld (de),a			;96ff
	inc hl			;9700
	inc de			;9701
	djnz L_96EC		;9702
	ret			;9704

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9705..0x9708  (3 bytes)
DATA_9705:
	defb 0cdh,01eh,082h	; 9705

; ======================================================================
; CODIGO 0x9708..0x9838  (304 bytes)
; ======================================================================


L_9708:
	ld e,(hl)			;9708
	inc hl			;9709
	ld d,(hl)			;970a
	inc hl			;970b
	ret			;970c
L_970D:
	ld a,(0d1c8h)		;970d
	cp 010h		;9710
	jp z,L_9821		;9712
	ld c,a			;9715
	ld a,(0d233h)		;9716
	and a			;9719
	push bc			;971a
	call nz,L_97D2		;971b
	pop bc			;971e
	ld a,(0d204h)		;971f
	and a			;9722
	jr z,L_975B		;9723
	ld a,c			;9725
	cp 001h		;9726
	jp z,L_97AE		;9728
	cp 002h		;972b
	jr nz,L_975B		;972d
	ld a,(0d204h)		;972f
	inc a			;9732
	ld hl,0d232h		;9733
	ld e,(hl)			;9736
	inc e			;9737
	cp e			;9738
	ret nc			;9739
	ld (0d204h),a		;973a
	ld e,a			;973d
	ld a,(09892h)		;973e
	or a			;9741
	jr z,L_9752		;9742
	ld a,e			;9744
	cp (hl)			;9745
	jr nz,L_9752		;9746
	ld a,(0d233h)		;9748
	ld hl,09893h		;974b
	sub (hl)			;974e
	ld (0d205h),a		;974f
L_9752:
	call L_975D		;9752
	call L_976E		;9755
	call L_96C3		;9758
L_975B:
	xor a			;975b
	ret			;975c
L_975D:
	ld a,(0d1c0h)		;975d
	cp 004h		;9760
	jr nz,L_976B		;9762
	ld a,(0d1d7h)		;9764
	dec a			;9767
	jp z,08370h		;9768
L_976B:
	jp 082eeh		;976b
L_976E:
	ld a,(0d233h)		;976e
	or a			;9771
	jr z,L_979F		;9772
	ld a,(0d232h)		;9774
	or a			;9777
	jr z,L_97A5		;9778
	ld a,(0d204h)		;977a
	dec a			;977d
	jr z,L_978E		;977e
	ld b,a			;9780
	ld a,(0d233h)		;9781
	or a			;9784
	jr z,L_97AB		;9785
	ld hl,0d233h		;9787
	xor a			;978a
L_978B:
	add a,(hl)			;978b
	djnz L_978B		;978c
L_978E:
	ld b,a			;978e
	ld a,(0d233h)		;978f
	or a			;9792
	jr z,L_9798		;9793
	ld a,(0d205h)		;9795
L_9798:
	dec a			;9798
	add a,b			;9799
L_979A:
	ld hl,(0d202h)		;979a
	ld (hl),a			;979d
	ret			;979e
L_979F:
	ld a,(0d204h)		;979f
	dec a			;97a2
	jr L_979A		;97a3
L_97A5:
	ld a,(0d205h)		;97a5
	dec a			;97a8
	jr L_979A		;97a9
L_97AB:
	ld a,b			;97ab
	jr L_979A		;97ac
L_97AE:
	ld a,(0d204h)		;97ae
	dec a			;97b1
	ret z			;97b2
	ld (0d204h),a		;97b3
	ld a,(09892h)		;97b6
	or a			;97b9
	jr z,L_9752		;97ba
	ld a,(0d233h)		;97bc
	ld (0d205h),a		;97bf
	jr L_9752		;97c2
L_97C4:
	xor a			;97c4
	ld (09892h),a		;97c5
	ld a,(0d205h)		;97c8
	dec a			;97cb
	ret z			;97cc
	ld (0d205h),a		;97cd
	jr L_9752		;97d0
L_97D2:
	ld a,c			;97d2
	cp 004h		;97d3
	jr z,L_97C4		;97d5
	cp 008h		;97d7
	jp nz,L_975B		;97d9
	ld a,(0d205h)		;97dc
	inc a			;97df
	ld b,a			;97e0
	ld a,(0d204h)		;97e1
	ld hl,0d232h		;97e4
	cp (hl)			;97e7
	ld a,(0d233h)		;97e8
	call z,L_9819		;97eb
	ld e,a			;97ee
	ld a,b			;97ef
	cp e			;97f0
	jr z,L_9810		;97f1
	inc e			;97f3
	cp e			;97f4
	jr nc,L_9801		;97f5
	ld (0d205h),a		;97f7
	xor a			;97fa
	ld (09892h),a		;97fb
	jp L_9752		;97fe
L_9801:
	ld a,(0d204h)		;9801
	ld hl,0d232h		;9804
	cp (hl)			;9807
	ret z			;9808
	ld a,001h		;9809
	ld (09892h),a		;980b
	or a			;980e
	ret			;980f
L_9810:
	ld (0d205h),a		;9810
	call L_9801		;9813
	jp L_9752		;9816
L_9819:
	push af			;9819
	ld a,(09893h)		;981a
	ld e,a			;981d
	pop af			;981e
	sub e			;981f
	ret			;9820
L_9821:
	call L_982C		;9821
	jp z,L_975B		;9824
	call 082f3h		;9827
	scf			;982a
	ret			;982b
L_982C:
	ld a,(0d1d6h)		;982c
	cp 003h		;982f
	ret nz			;9831
	ld a,(0d1dah)		;9832
	cp 0feh		;9835
	ret			;9837

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9838..0x989a  (98 bytes)
DATA_9838:
	defb 04ch,098h,051h,098h,056h,098h,05bh,098h,064h,098h,069h,098h,06eh,098h,077h,098h	; 9838  L.Q.V.[.d.i.n.w.
	defb 080h,098h,089h,098h,001h,000h,000h,000h,008h,001h,000h,000h,000h,000h,001h,000h	; 9848  ................
	defb 000h,018h,008h,002h,000h,000h,020h,008h,000h,00bh,024h,008h,001h,0fch,000h,01ch	; 9858  ...... ...$.....
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; 9868  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; 9878  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,0efh,0eeh,000h,000h,000h,000h	; 9888  ................
	defb 0eeh,0eeh	; 9898

; ======================================================================
; CODIGO 0x989a..0x9a63  (457 bytes)
; ======================================================================


L_989A:
	srl b		;989a
	ex de,hl			;989c
	push hl			;989d
	call L_990C		;989e
	pop de			;98a1
	ld (09894h),bc		;98a2
	ld (09896h),hl		;98a6
	ld (09898h),de		;98a9
L_98AD:
	push bc			;98ad
	ld hl,(09896h)		;98ae
	ld de,0d300h		;98b1
	ld a,(09895h)		;98b4
	ld c,a			;98b7
	ld b,000h		;98b8
	call 08266h		;98ba
	call L_98E0		;98bd
	ld de,(09896h)		;98c0
	ld hl,0d300h		;98c4
	ld a,(09895h)		;98c7
	ld c,a			;98ca
	ld b,000h		;98cb
	call 08224h		;98cd
	ld hl,(09896h)		;98d0
	ld a,080h		;98d3
	call 08221h		;98d5
	ld (09896h),hl		;98d8
	pop bc			;98db
	dec c			;98dc
	jr nz,L_98AD		;98dd
	ret			;98df
L_98E0:
	ld hl,0d300h		;98e0
	ld de,(09898h)		;98e3
	ld a,(09895h)		;98e7
	ld b,a			;98ea
L_98EB:
	ld a,(hl)			;98eb
	rra			;98ec
	rra			;98ed
	rra			;98ee
	rra			;98ef
	and 00fh		;98f0
	cp d			;98f2
	jr nz,L_98F6		;98f3
	ld a,e			;98f5
L_98F6:
	rla			;98f6
	rla			;98f7
	rla			;98f8
	rla			;98f9
	and 0f0h		;98fa
	ld c,a			;98fc
	ld a,(hl)			;98fd
	and 00fh		;98fe
	cp d			;9900
	jr nz,L_9904		;9901
	ld a,e			;9903
L_9904:
	and 00fh		;9904
	or c			;9906
	ld (hl),a			;9907
	inc hl			;9908
	djnz L_98EB		;9909
	ret			;990b
L_990C:
	srl e		;990c
	rr d		;990e
	ld h,e			;9910
	ld l,d			;9911
	ld de,(0d223h)		;9912
	add hl,de			;9916
	ret			;9917
L_9918:
	ld a,(ix+000h)		;9918
	rla			;991b
	ret c			;991c
	call L_9927		;991d
	ld de,00006h		;9920
	add ix,de		;9923
	jr L_9918		;9925
L_9927:
	push bc			;9927
	bit 6,(ix+000h)		;9928
	jr nz,L_994D		;992c
	bit 4,(ix+000h)		;992e
	jr nz,L_9955		;9932
	call L_993C		;9934
	call L_995D		;9937
	pop bc			;993a
	ret			;993b
L_993C:
	ld b,(ix+001h)		;993c
	ld l,(ix+002h)		;993f
	ld h,(ix+003h)		;9942
	ld e,(ix+004h)		;9945
	ld d,(ix+005h)		;9948
	ex de,hl			;994b
	ret			;994c
L_994D:
	call L_993C		;994d
	call L_9967		;9950
	pop bc			;9953
	ret			;9954
L_9955:
	call L_993C		;9955
	call L_9971		;9958
	pop bc			;995b
	ret			;995c
L_995D:
	push bc			;995d
	ld b,001h		;995e
	call L_9990		;9960
	pop bc			;9963
	djnz L_995D		;9964
	ret			;9966
L_9967:
	push bc			;9967
	ld b,001h		;9968
	call L_99A5		;996a
	pop bc			;996d
	djnz L_9967		;996e
	ret			;9970
L_9971:
	push bc			;9971
	ld b,001h		;9972
	call L_99DA		;9974
	pop bc			;9977
	djnz L_9971		;9978
	ret			;997a
L_997B:
	push de			;997b
	ld b,008h		;997c
L_997E:
	push bc			;997e
	ld bc,00004h		;997f
	call 08224h		;9982
	ex de,hl			;9985
	ld bc,00080h		;9986
	add hl,bc			;9989
	ex de,hl			;998a
	pop bc			;998b
	djnz L_997E		;998c
	pop de			;998e
	ret			;998f
L_9990:
	push bc			;9990
	call L_997B		;9991
	ld a,004h		;9994
	add a,e			;9996
	cp 080h		;9997
	jr nz,L_99A0		;9999
	ld a,004h		;999b
	add a,d			;999d
	ld d,a			;999e
	xor a			;999f
L_99A0:
	ld e,a			;99a0
	pop bc			;99a1
	djnz L_9990		;99a2
	ret			;99a4
L_99A5:
	push bc			;99a5
	push de			;99a6
	ld de,0d303h		;99a7
	ld c,008h		;99aa
L_99AC:
	ld b,004h		;99ac
L_99AE:
	ld a,(hl)			;99ae
	rrca			;99af
	rrca			;99b0
	rrca			;99b1
	rrca			;99b2
	ld (de),a			;99b3
	dec de			;99b4
	inc hl			;99b5
	djnz L_99AE		;99b6
	ld a,008h		;99b8
	call 08206h		;99ba
	dec c			;99bd
	jr nz,L_99AC		;99be
	pop de			;99c0
	push hl			;99c1
	ld hl,0d300h		;99c2
	call L_997B		;99c5
	pop hl			;99c8
	ld a,004h		;99c9
	add a,e			;99cb
	cp 080h		;99cc
	jr nz,L_99D5		;99ce
	ld a,004h		;99d0
	add a,d			;99d2
	ld d,a			;99d3
	xor a			;99d4
L_99D5:
	ld e,a			;99d5
	pop bc			;99d6
	djnz L_99A5		;99d7
	ret			;99d9
L_99DA:
	push bc			;99da
	push de			;99db
	ld de,0d31ch		;99dc
	ld c,008h		;99df
L_99E1:
	ld b,004h		;99e1
L_99E3:
	ld a,(hl)			;99e3
	ld (de),a			;99e4
	inc de			;99e5
	inc hl			;99e6
	djnz L_99E3		;99e7
	call L_9A09		;99e9
	dec c			;99ec
	jr nz,L_99E1		;99ed
	pop de			;99ef
	push hl			;99f0
	ld hl,0d300h		;99f1
	call L_997B		;99f4
	pop hl			;99f7
	ld a,004h		;99f8
	add a,e			;99fa
	cp 080h		;99fb
	jr nz,L_9A04		;99fd
	ld a,004h		;99ff
	add a,d			;9a01
	ld d,a			;9a02
	xor a			;9a03
L_9A04:
	ld e,a			;9a04
	pop bc			;9a05
	djnz L_99DA		;9a06
	ret			;9a08
L_9A09:
	push hl			;9a09
	ld hl,00008h		;9a0a
	ex de,hl			;9a0d
	or a			;9a0e
	sbc hl,de		;9a0f
	ex de,hl			;9a11
	pop hl			;9a12
	ret			;9a13
L_9A14:
	call L_9A1E		;9a14
	ld ix,0b200h		;9a17
	jp 082cch		;9a1b
L_9A1E:
	ld (0d1e4h),a		;9a1e
L_9A21:
	ld a,(0d1e4h)		;9a21
	call L_9A35		;9a24
	ld de,0b200h		;9a27
	call 08215h		;9a2a
	jr c,L_9A21		;9a2d
	ld a,0ffh		;9a2f
	ld (0e0fdh),a		;9a31
	ret			;9a34
L_9A35:
	add a,a			;9a35
	add a,a			;9a36
	ld hl,09ad7h		;9a37
	call 08221h		;9a3a
	ld c,(hl)			;9a3d
	inc hl			;9a3e
	ld b,(hl)			;9a3f
	inc hl			;9a40
	ld a,(hl)			;9a41
	inc hl			;9a42
	ld h,(hl)			;9a43
	ld l,a			;9a44
	ret			;9a45
L_9A46:
	ld a,001h		;9a46
	ld (0d1efh),a		;9a48
	ld (0e0f1h),sp		;9a4b
	ld hl,0d700h		;9a4f
	ld de,0daffh		;9a52
	call L_9A9D		;9a55
	ld de,0d700h		;9a58
	call L_9A88		;9a5b
	xor a			;9a5e
	ld (0d1efh),a		;9a5f
	ret			;9a62

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a63..0x9a88  (37 bytes)
DATA_9A63:
	defb 03eh,001h,032h,0efh,0d1h,0edh,073h,0f1h,0e0h,0cdh,091h,09ah,011h,0ffh,0d6h,0cdh	; 9a63  >.2...s.........
	defb 0aeh,09ah,0c2h,0deh,082h,0afh,032h,0efh,0d1h,011h,000h,0d7h,021h,000h,0d3h,001h	; 9a73  ......2.....!...
	defb 000h,004h,0edh,0b0h,0c9h	; 9a83

; ======================================================================
; CODIGO 0x9a88..0x9a91  (9 bytes)
; ======================================================================


L_9A88:
	ld hl,00200h		;9a88
	ld bc,0059eh		;9a8b
	jp 0824bh		;9a8e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a91..0x9a9d  (12 bytes)
DATA_9A91:
	defb 011h,000h,0d3h,021h,000h,002h,001h,09eh,005h,0c3h,015h,082h	; 9a91  ...!........

; ======================================================================
; CODIGO 0x9a9d..0x9aae  (17 bytes)
; ======================================================================


L_9A9D:
	xor a			;9a9d
	ld bc,003ffh		;9a9e
	ex af,af'			;9aa1
L_9AA2:
	ex af,af'			;9aa2
	add a,(hl)			;9aa3
	inc hl			;9aa4
	ex af,af'			;9aa5
	dec bc			;9aa6
	ld a,c			;9aa7
	or b			;9aa8
	jr nz,L_9AA2		;9aa9
	ex af,af'			;9aab
	ld (de),a			;9aac
	ret			;9aad

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9aae..0x9c00  (338 bytes)
DATA_9AAE:
	defb 021h,000h,0d3h,0afh,001h,0ffh,003h,0cdh,0bbh,09ah,0ebh,0beh,0c9h,008h,008h,086h	; 9aae  !...............
	defb 023h,008h,00bh,079h,0b0h,020h,0f7h,008h,0c9h,04bh,004h,000h,00ch,023h,004h,000h	; 9abe  #..y. ...K...#..
	defb 006h,039h,004h,000h,010h,029h,004h,000h,010h,049h,004h,000h,002h,04dh,001h,000h	; 9ace  .9...)...I...M..
	defb 003h,097h,001h,000h,003h,05dh,003h,000h,003h,0f0h,003h,000h,003h,008h,008h,008h	; 9ade  .....]..........
	defb 008h,008h,008h,002h,00ch,001h,006h,000h,000h,01eh,021h,020h,040h,040h,040h,040h	; 9aee  ..........! @@@@
	defb 040h,040h,040h,020h,000h,000h,000h,000h,000h,010h,020h,020h,020h,020h,020h,026h	; 9afe  @@@ ......     &
	defb 038h,0d0h,011h,016h,008h,001h,006h,000h,000h,000h,01ch,022h,022h,041h,041h,041h	; 9b0e  8..........""AAA
	defb 041h,042h,003h,004h,000h,000h,000h,000h,000h,000h,000h,0feh,000h,000h,000h,000h	; 9b1e  AB..............
	defb 008h,030h,000h,004h,018h,000h,000h,000h,000h,000h,000h,01fh,020h,020h,040h,040h	; 9b2e  .0..........  @@
	defb 040h,020h,020h,010h,00ch,003h,000h,000h,008h,010h,010h,010h,090h,050h,050h,092h	; 9b3e  @  ..........PP.
	defb 0fch,010h,011h,016h,010h,009h,00ah,000h,000h,000h,000h,000h,003h,044h,024h,012h	; 9b4e  .............D$.
	defb 00fh,000h,000h,000h,000h,000h,000h,000h,020h,040h,040h,044h,0f8h,020h,020h,020h	; 9b5e  ........ @@D.
	defb 020h,024h,0f9h,026h,020h,011h,006h,000h,000h,000h,000h,000h,01fh,020h,020h,041h	; 9b6e   $.& ........  A
	defb 042h,046h,043h,040h,040h,000h,000h,000h,080h,000h,002h,084h,0c4h,0a4h,0a2h,092h	; 9b7e  BFC@@...........
	defb 08ah,086h,040h,044h,058h,042h,00ch,000h,000h,001h,001h,000h,000h,038h,046h,041h	; 9b8e  ..@DXB.......8FA
	defb 080h,080h,080h,000h,000h,000h,000h,000h,008h,010h,010h,012h,0fch,008h,008h,048h	; 9b9e  ...............H
	defb 024h,020h,022h,02ch,041h,006h,000h,000h,000h,060h,018h,007h,000h,000h,00ch,010h	; 9bae  $ ",A....`......
	defb 010h,020h,020h,020h,020h,000h,000h,000h,000h,008h,010h,092h,07ch,010h,010h,090h	; 9bbe  .    .......|...
	defb 090h,088h,089h,006h,000h,001h,006h,000h,000h,000h,00ch,003h,002h,041h,041h,040h	; 9bce  .............AA@
	defb 040h,020h,020h,011h,00eh,000h,000h,000h,000h,010h,020h,020h,010h,010h,008h,008h	; 9bde  @  .......  ....
	defb 008h,008h,011h,016h,020h,0c1h,006h,000h,000h,000h,000h,000h,000h,020h,020h,020h	; 9bee  .... ........
	defb 020h,010h	; 9bfe
