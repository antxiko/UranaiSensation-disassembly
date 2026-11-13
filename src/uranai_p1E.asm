; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p1E (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x996c  (364 bytes)
; ======================================================================


L_9800:
	jp L_9806		;9800
L_9803:
	jp L_990B		;9803
L_9806:
	ld (0e0feh),sp		;9806
	call L_980E		;980a
	ret			;980d
L_980E:
	ld a,(0e100h)		;980e
	or a			;9811
	ld a,028h		;9812
	jr z,L_982B		;9814
	call L_98F8		;9816
	ld hl,0996ch		;9819
	ld a,(0d217h)		;981c
	cp 002h		;981f
	jr nz,L_9826		;9821
	ld hl,09983h		;9823
L_9826:
	call 08275h		;9826
	ld a,01ch		;9829
L_982B:
	call 08248h		;982b
	call 08251h		;982e
	call 09a2dh		;9831
	call 09a06h		;9834
	call 09a30h		;9837
	call 09a06h		;983a
	call 09a24h		;983d
	call 09a27h		;9840
	call 09a12h		;9843
	xor a			;9846
	ld (09a36h),a		;9847
	inc a			;984a
	ld (09a37h),a		;984b
	ld a,(0d1ffh)		;984e
	ld (09a42h),a		;9851
	ld hl,0ca03h		;9854
	ld (09a38h),hl		;9857
	ld (09a3ah),hl		;985a
	ld a,(0d1eeh)		;985d
	cp 004h		;9860
	ld a,001h		;9862
	jr nc,L_9867		;9864
	xor a			;9866
L_9867:
	ld (09a34h),a		;9867
	ld (09a35h),a		;986a
L_986D:
	call 09a18h		;986d
	call 09a1bh		;9870
	call 09a1eh		;9873
	ld a,(0e100h)		;9876
	or a			;9879
	jr z,L_98B3		;987a
	ld a,(0d1eeh)		;987c
	cp 004h		;987f
	jr c,L_9893		;9881
	ld a,(09a35h)		;9883
	inc a			;9886
	cp 009h		;9887
	ld (09a35h),a		;9889
	jr c,L_989D		;988c
	ld a,001h		;988e
	ld (09a35h),a		;9890
L_9893:
	ld a,(09a36h)		;9893
	xor 001h		;9896
	ld (09a36h),a		;9898
	jr z,L_98AB		;989b
L_989D:
	ld hl,(09a3ah)		;989d
	ld (09a38h),hl		;98a0
	ld a,(09a42h)		;98a3
	ld (0d1ffh),a		;98a6
	jr L_986D		;98a9
L_98AB:
	ld a,(0d1eeh)		;98ab
	cp 004h		;98ae
	call nc,09a06h		;98b0
L_98B3:
	call 09a06h		;98b3
	ld hl,(09a38h)		;98b6
	ld a,(hl)			;98b9
	cp 0feh		;98ba
	jr nz,L_98BF		;98bc
	inc hl			;98be
L_98BF:
	ld (09a3ah),hl		;98bf
	ld (09a38h),hl		;98c2
	ld a,(0d1ffh)		;98c5
	ld (09a42h),a		;98c8
	ld a,(09a37h)		;98cb
	or a			;98ce
	jr nz,L_986D		;98cf
	call 09a00h		;98d1
	ld a,(0e100h)		;98d4
	or a			;98d7
	push af			;98d8
	call z,000c0h		;98d9   ; BIOS BEEP - Generates beep
	pop af			;98dc
	call nz,09a06h		;98dd
	call L_98F8		;98e0
	ld hl,099c4h		;98e3
	ld a,(0d217h)		;98e6
	cp 002h		;98e9
	jr nz,L_98F0		;98eb
	ld hl,099dah		;98ed
L_98F0:
	call 08275h		;98f0
	call 09a09h		;98f3
	xor a			;98f6
	ret			;98f7
L_98F8:
	ld hl,0903ah		;98f8
	ld a,(0d217h)		;98fb
	cp 002h		;98fe
	jr nz,L_9905		;9900
	ld hl,0908ah		;9902
L_9905:
	ld bc,06020h		;9905
	jp 082b4h		;9908
L_990B:
	ld a,007h		;990b
	call 00141h		;990d   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	and 010h		;9910
	ret nz			;9912
	ld a,006h		;9913
	call 00141h		;9915   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	and 002h		;9918
	ret nz			;991a
	call L_98F8		;991b
	ld hl,0999ah		;991e
	ld a,(0d217h)		;9921
	cp 002h		;9924
	jr nz,L_992B		;9926
	ld hl,099afh		;9928
L_992B:
	call 08275h		;992b
	ld a,(0e100h)		;992e
	or a			;9931
	jr z,L_995D		;9932
L_9934:
	call 000a8h		;9934   ; BIOS LPTSTT - Tests printer status
	jr z,L_9934		;9937
	cp 0ffh		;9939
	jr nz,L_9934		;993b
	ld hl,00200h		;993d
L_9940:
	xor a			;9940
	call 000a5h		;9941   ; BIOS LPTOUT - Sends one character to printer
	dec hl			;9944
	ld a,h			;9945
	or l			;9946
	jr nz,L_9940		;9947
	ld b,008h		;9949
L_994B:
	ld a,00dh		;994b
	call 000a5h		;994d   ; BIOS LPTOUT - Sends one character to printer
	ld a,00ah		;9950
	call 000a5h		;9952   ; BIOS LPTOUT - Sends one character to printer
	djnz L_994B		;9955
L_9957:
	ld sp,(0e0feh)		;9957
	scf			;995b
	ret			;995c
L_995D:
	ld a,002h		;995d
	call 09a0ch		;995f
	ld a,(0e0fch)		;9962
	ld h,040h		;9965
	call 00024h		;9967   ; BIOS ENASLT - Switches to specified slot and page definitively
	jr L_9957		;996a

; ----------------------------------------------------------------------
; DATOS texto_996C: texto: x, y y las letras hasta 0xFF; lo usa 0x9826 (23
;   bytes)
;   0x996c..0x9983  (23 bytes)
DATA_texto_996C:
	defb 090h,042h,010h,0c8h,002h,01fh,000h,0d4h,028h,02eh,014h,0feh,090h,052h,001h,003h	; 996c  .B......(....R..
	defb 014h,05dh,0cbh,00dh,052h,052h,0ffh	; 997c

; ----------------------------------------------------------------------
; DATOS texto_9983: texto: x, y y las letras hasta 0xFF; lo usa 0x9826 (23
;   bytes)
;   0x9983..0x999a  (23 bytes)
DATA_texto_9983:
	defb 090h,092h,010h,0c8h,002h,01fh,000h,0d4h,028h,02eh,014h,0feh,090h,0a2h,001h,003h	; 9983  ........(.......
	defb 014h,05dh,0cbh,00dh,052h,052h,0ffh	; 9993

; ----------------------------------------------------------------------
; DATOS texto_999A: texto: x, y y las letras hasta 0xFF; lo usa 0x992B (21
;   bytes)
;   0x999a..0x99af  (21 bytes)
DATA_texto_999A:
	defb 090h,042h,0d4h,028h,02eh,014h,001h,003h,014h,02dh,0feh,090h,052h,024h,022h,01fh	; 999a  .B.(.....-..R$".
	defb 00ch,010h,052h,052h,0ffh	; 99aa

; ----------------------------------------------------------------------
; DATOS texto_99AF: texto: x, y y las letras hasta 0xFF; lo usa 0x992B (21
;   bytes)
;   0x99af..0x99c4  (21 bytes)
DATA_texto_99AF:
	defb 090h,092h,0d4h,028h,02eh,014h,001h,003h,014h,02dh,0feh,090h,0a2h,024h,022h,01fh	; 99af  ...(.....-...$".
	defb 00ch,010h,052h,052h,0ffh	; 99bf

; ----------------------------------------------------------------------
; DATOS texto_99C4: texto: x, y y las letras hasta 0xFF; lo usa 0x98F0 (22
;   bytes)
;   0x99c4..0x99da  (22 bytes)
DATA_texto_99C4:
	defb 090h,042h,0d4h,028h,02eh,014h,001h,003h,014h,0beh,0feh,090h,052h,005h,02ch,028h	; 99c4  .B.(........R.,(
	defb 01fh,00ch,010h,052h,052h,0ffh	; 99d4

; ----------------------------------------------------------------------
; DATOS texto_99DA: texto: x, y y las letras hasta 0xFF; lo usa 0x98F0 (22
;   bytes)
;   0x99da..0x99f0  (22 bytes)
DATA_texto_99DA:
	defb 090h,092h,0d4h,028h,02eh,014h,001h,003h,014h,0beh,0feh,090h,0a2h,005h,02ch,028h	; 99da  ...(..........,(
	defb 01fh,00ch,010h,052h,052h,0ffh	; 99ea

; ----------------------------------------------------------------------
; DATOS resto_99F0: nadie lo lee; son los mismos bytes que p0B, p26, p27 en
;   esta misma direccion: lo que habia en la memoria al grabar (16 bytes)
;   0x99f0..0x9a00  (16 bytes)
DATA_resto_99F0:
	defb 01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01fh,03ah,0c3h,0d1h	; 99f0  .............:..
