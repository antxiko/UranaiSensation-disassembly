; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p27 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x997e  (382 bytes)
; ======================================================================


L_9800:
	jp L_9806		;9800
L_9803:
	jp L_9921		;9803
L_9806:
	ld (0e0feh),sp		;9806
	call L_980E		;980a
	ret			;980d
L_980E:
	call 08251h		;980e
	xor a			;9811
	ld (09a40h),a		;9812
	ld a,(0e100h)		;9815
	or a			;9818
	ld a,028h		;9819
	jr z,L_982E		;981b
	ld hl,0109bh		;981d
	ld bc,L_980E+2		;9820
	call 082b4h		;9823
	ld hl,0997eh		;9826
	call 08275h		;9829
	ld a,01ch		;982c
L_982E:
	call 08248h		;982e
	call 08251h		;9831
	call 09a2dh		;9834
	call 09a06h		;9837
	call 09a30h		;983a
	call 09a06h		;983d
	call 09a2ah		;9840
	call 09a06h		;9843
	xor a			;9846
	ld (09a43h),a		;9847
	ld b,010h		;984a
	ld hl,09213h		;984c
L_984F:
	ld c,000h		;984f
	bit 7,(hl)		;9851
	jr nz,L_9859		;9853
	inc hl			;9855
	djnz L_984F		;9856
	inc c			;9858
L_9859:
	ld a,c			;9859
	or a			;985a
	call nz,L_99C4		;985b
L_985E:
	ld a,(09a43h)		;985e
	ld hl,09213h		;9861
	call 08221h		;9864
	bit 7,(hl)		;9867
	jp z,L_98F2		;9869
	call 09a27h		;986c
	call 09a12h		;986f
	xor a			;9872
	ld (09a36h),a		;9873
	inc a			;9876
	ld (09a37h),a		;9877
	ld a,(09a43h)		;987a
	call L_99BB		;987d
	ld de,0cd00h		;9880
	add hl,de			;9883
	ld (09a38h),hl		;9884
	ld (09a3ah),hl		;9887
	ld a,(0d1eeh)		;988a
	cp 004h		;988d
	ld a,001h		;988f
	jr nc,L_9894		;9891
	xor a			;9893
L_9894:
	ld (09a34h),a		;9894
	ld (09a35h),a		;9897
L_989A:
	call 09a18h		;989a
	call 09a1bh		;989d
	call 09a1eh		;98a0
	ld a,(0e100h)		;98a3
	or a			;98a6
	jr z,L_98DA		;98a7
	ld a,(0d1eeh)		;98a9
	cp 004h		;98ac
	jr c,L_98C0		;98ae
	ld a,(09a35h)		;98b0
	inc a			;98b3
	cp 009h		;98b4
	ld (09a35h),a		;98b6
	jr c,L_98CA		;98b9
	ld a,001h		;98bb
	ld (09a35h),a		;98bd
L_98C0:
	ld a,(09a36h)		;98c0
	xor 001h		;98c3
	ld (09a36h),a		;98c5
	jr z,L_98D2		;98c8
L_98CA:
	ld hl,(09a3ah)		;98ca
	ld (09a38h),hl		;98cd
	jr L_989A		;98d0
L_98D2:
	ld a,(0d1eeh)		;98d2
	cp 004h		;98d5
	call nc,09a06h		;98d7
L_98DA:
	call 09a06h		;98da
	ld hl,(09a38h)		;98dd
	ld a,(hl)			;98e0
	cp 0feh		;98e1
	jr nz,L_98E6		;98e3
	inc hl			;98e5
L_98E6:
	ld (09a3ah),hl		;98e6
	ld (09a38h),hl		;98e9
	ld a,(09a37h)		;98ec
	or a			;98ef
	jr nz,L_989A		;98f0
L_98F2:
	ld a,(09a43h)		;98f2
	inc a			;98f5
	ld (09a43h),a		;98f6
	cp 010h		;98f9
	jp c,L_985E		;98fb
	call 09a00h		;98fe
	ld a,(0e100h)		;9901
	or a			;9904
	push af			;9905
	call z,000c0h		;9906   ; BIOS BEEP - Generates beep
	pop af			;9909
	call nz,09a06h		;990a
	ld hl,0109bh		;990d
	ld bc,L_980E+2		;9910
	call 082b4h		;9913
	ld hl,099a7h		;9916
	call 08275h		;9919
	call 09a09h		;991c
	xor a			;991f
	ret			;9920
L_9921:
	ld a,007h		;9921
	call 00141h		;9923   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	and 010h		;9926
	ret nz			;9928
	ld a,006h		;9929
	call 00141h		;992b   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	and 002h		;992e
	ret nz			;9930
	ld hl,0109bh		;9931
	ld bc,L_980E+2		;9934
	call 082b4h		;9937
	ld hl,09994h		;993a
	call 08275h		;993d
	ld a,(0e100h)		;9940
	or a			;9943
	jr z,L_996F		;9944
L_9946:
	call 000a8h		;9946   ; BIOS LPTSTT - Tests printer status
	jr z,L_9946		;9949
	cp 0ffh		;994b
	jr nz,L_9946		;994d
	ld hl,00200h		;994f
L_9952:
	xor a			;9952
	call 000a5h		;9953   ; BIOS LPTOUT - Sends one character to printer
	dec hl			;9956
	ld a,h			;9957
	or l			;9958
	jr nz,L_9952		;9959
	ld b,008h		;995b
L_995D:
	ld a,00dh		;995d
	call 000a5h		;995f   ; BIOS LPTOUT - Sends one character to printer
	ld a,00ah		;9962
	call 000a5h		;9964   ; BIOS LPTOUT - Sends one character to printer
	djnz L_995D		;9967
L_9969:
	ld sp,(0e0feh)		;9969
	scf			;996d
	ret			;996e
L_996F:
	ld a,002h		;996f
	call 09a0ch		;9971
	ld a,(0e0fch)		;9974
	ld h,040h		;9977
	call 00024h		;9979   ; BIOS ENASLT - Switches to specified slot and page definitively
	jr L_9969		;997c

; ----------------------------------------------------------------------
; DATOS texto_997E: texto: x, y y las letras hasta 0xFF; lo usa 0x9829 (22
;   bytes)
;   0x997e..0x9994  (22 bytes)
DATA_texto_997E:
	defb 018h,0a2h,010h,0c8h,002h,01fh,000h,0d4h,028h,02eh,014h,001h,003h,014h,0fdh,0dbh	; 997e  ........(.......
	defb 0fdh,0cbh,00dh,052h,052h,0ffh	; 998e

; ----------------------------------------------------------------------
; DATOS texto_9994: texto: x, y y las letras hasta 0xFF; lo usa 0x993D (19
;   bytes)
;   0x9994..0x99a7  (19 bytes)
DATA_texto_9994:
	defb 018h,0a2h,0d4h,028h,02eh,014h,001h,003h,014h,02dh,000h,024h,022h,01fh,00ch,010h	; 9994  ...(.....-.$"...
	defb 052h,052h,0ffh	; 99a4

; ----------------------------------------------------------------------
; DATOS texto_99A7: texto: x, y y las letras hasta 0xFF; lo usa 0x9919 (20
;   bytes)
;   0x99a7..0x99bb  (20 bytes)
DATA_texto_99A7:
	defb 018h,0a2h,0d4h,028h,02eh,014h,001h,003h,014h,0beh,000h,005h,02ch,028h,01fh,00ch	; 99a7  ...(........,(..
	defb 010h,052h,052h,0ffh	; 99b7

; ======================================================================
; CODIGO 0x99bb..0x99cf  (20 bytes)
; ======================================================================


L_99BB:
	ld l,a			;99bb
	ld h,000h		;99bc
	add hl,hl			;99be
	add hl,hl			;99bf
	add hl,hl			;99c0
	add hl,hl			;99c1
	add hl,hl			;99c2
	ret			;99c3
L_99C4:
	ld b,010h		;99c4
	ld hl,09213h		;99c6
L_99C9:
	set 7,(hl)		;99c9
	inc hl			;99cb
	djnz L_99C9		;99cc
	ret			;99ce

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99cf..0x9a00  (49 bytes)
DATA_99CF:
	defb 090h,052h,005h,02ch,028h,01fh,00ch,010h,052h,052h,0ffh,090h,092h,0d4h,028h,02eh	; 99cf  .R.,(...RR....(.
	defb 014h,001h,003h,014h,0beh,0feh,090h,0a2h,005h,02ch,028h,01fh,00ch,010h,052h,052h	; 99df  .........,(...RR
	defb 0ffh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01fh,03ah,0c3h	; 99ef  ..............:.
	defb 0d1h	; 99ff
