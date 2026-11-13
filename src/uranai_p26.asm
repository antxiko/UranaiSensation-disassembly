; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p26 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9951  (337 bytes)
; ======================================================================


L_9800:
	jp L_9806		;9800
L_9803:
	jp L_98F4		;9803
L_9806:
	ld (0e0feh),sp		;9806
	call L_980E		;980a
	ret			;980d
L_980E:
	xor a			;980e
	ld (09a40h),a		;980f
	ld a,(0e100h)		;9812
	or a			;9815
	ld a,028h		;9816
	jr z,L_982B		;9818
	ld hl,08092h		;981a
	ld bc,06020h		;981d
	call 082b4h		;9820
	ld hl,09951h		;9823
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
	ld hl,08092h		;98e0
	ld bc,06020h		;98e3
	call 082b4h		;98e6
	ld hl,0997dh		;98e9
	call 08275h		;98ec
	call 09a09h		;98ef
	xor a			;98f2
	ret			;98f3
L_98F4:
	ld a,007h		;98f4
	call 00141h		;98f6   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	and 010h		;98f9
	ret nz			;98fb
	ld a,006h		;98fc
	call 00141h		;98fe   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	and 002h		;9901
	ret nz			;9903
	ld hl,08092h		;9904
	ld bc,06020h		;9907
	call 082b4h		;990a
	ld hl,09968h		;990d
	call 08275h		;9910
	ld a,(0e100h)		;9913
	or a			;9916
	jr z,L_9942		;9917
L_9919:
	call 000a8h		;9919   ; BIOS LPTSTT - Tests printer status
	jr z,L_9919		;991c
	cp 0ffh		;991e
	jr nz,L_9919		;9920
	ld hl,00200h		;9922
L_9925:
	xor a			;9925
	call 000a5h		;9926   ; BIOS LPTOUT - Sends one character to printer
	dec hl			;9929
	ld a,h			;992a
	or l			;992b
	jr nz,L_9925		;992c
	ld b,008h		;992e
L_9930:
	ld a,00dh		;9930
	call 000a5h		;9932   ; BIOS LPTOUT - Sends one character to printer
	ld a,00ah		;9935
	call 000a5h		;9937   ; BIOS LPTOUT - Sends one character to printer
	djnz L_9930		;993a
L_993C:
	ld sp,(0e0feh)		;993c
	scf			;9940
	ret			;9941
L_9942:
	ld a,002h		;9942
	call 09a0ch		;9944
	ld a,(0e0fch)		;9947
	ld h,040h		;994a
	call 00024h		;994c   ; BIOS ENASLT - Switches to specified slot and page definitively
	jr L_993C		;994f

; ----------------------------------------------------------------------
; DATOS texto_9951: texto: x, y y las letras hasta 0xFF; lo usa 0x9826 (23
;   bytes)
;   0x9951..0x9968  (23 bytes)
DATA_texto_9951:
	defb 080h,09ah,010h,0c8h,002h,01fh,000h,0d4h,028h,02eh,014h,0feh,080h,0aah,001h,003h	; 9951  ........(.......
	defb 014h,060h,0cbh,00dh,052h,052h,0ffh	; 9961

; ----------------------------------------------------------------------
; DATOS texto_9968: texto: x, y y las letras hasta 0xFF; lo usa 0x9910 (21
;   bytes)
;   0x9968..0x997d  (21 bytes)
DATA_texto_9968:
	defb 080h,09ah,0d4h,028h,02eh,014h,001h,003h,014h,02dh,0feh,080h,0aah,024h,022h,01fh	; 9968  ...(.....-...$".
	defb 00ch,010h,052h,052h,0ffh	; 9978

; ----------------------------------------------------------------------
; DATOS texto_997D: texto: x, y y las letras hasta 0xFF; lo usa 0x98EC (22
;   bytes)
;   0x997d..0x9993  (22 bytes)
DATA_texto_997D:
	defb 080h,09ah,0d4h,028h,02eh,014h,001h,003h,014h,0beh,0feh,080h,0aah,005h,02ch,028h	; 997d  ...(..........,(
	defb 01fh,00ch,010h,052h,052h,0ffh	; 998d

; ----------------------------------------------------------------------
; DATOS resto_9993: nadie lo lee; son los mismos bytes que p1E en esta misma
;   direccion: lo que habia en la memoria al grabar (109 bytes)
;   0x9993..0x9a00  (109 bytes)
DATA_resto_9993:
	defb 014h,05dh,0cbh,00dh,052h,052h,0ffh,090h,042h,0d4h,028h,02eh,014h,001h,003h,014h	; 9993  .]..RR..B.(.....
	defb 02dh,0feh,090h,052h,024h,022h,01fh,00ch,010h,052h,052h,0ffh,090h,092h,0d4h,028h	; 99a3  -..R$"...RR....(
	defb 02eh,014h,001h,003h,014h,02dh,0feh,090h,0a2h,024h,022h,01fh,00ch,010h,052h,052h	; 99b3  .....-...$"...RR
	defb 0ffh,090h,042h,0d4h,028h,02eh,014h,001h,003h,014h,0beh,0feh,090h,052h,005h,02ch	; 99c3  ..B.(........R.,
	defb 028h,01fh,00ch,010h,052h,052h,0ffh,090h,092h,0d4h,028h,02eh,014h,001h,003h,014h	; 99d3  (...RR....(.....
	defb 0beh,0feh,090h,0a2h,005h,02ch,028h,01fh,00ch,010h,052h,052h,0ffh,01eh,01eh,01eh	; 99e3  .....,(...RR....
	defb 01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01eh,01fh,03ah,0c3h,0d1h	; 99f3  ..........:..
