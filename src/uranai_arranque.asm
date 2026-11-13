; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - arranque (se ejecuta en 0xC000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0c000


; ----------------------------------------------------------------------
; DATOS cabecera: 0xEB y 0x03 (lo que mira la BIOS del disco para saber que el
;   sector arranca) y 17 bytes que NO son la cabecera de MSX-DOS: el disco no
;   tiene FAT ni directorio que leer (19 bytes)
;   0xc000..0xc013  (19 bytes)
DATA_cabecera:
	defb 0ebh,003h,000h,010h,001h,000h,001h,000h,000h,00bh,000h,003h,00eh,000h,09eh,005h	; c000  ................
	defb 09fh,005h,000h	; c010

; ----------------------------------------------------------------------
; DATOS formato: lo que si es como en MSX-DOS: 1440 sectores, F9 (doble cara,
;   9 sectores por pista), 3 sectores de FAT, 9 por pista, 2 caras, 0 ocultos
;   (11 bytes)
;   0xc013..0xc01e  (11 bytes)
DATA_formato:
	defb 0a0h,005h,0f9h,003h,000h,009h,000h,002h,000h,000h,000h	; c013  ...........

; ======================================================================
; CODIGO 0xc01e..0xc02a  (12 bytes)
; ======================================================================



; ----------------------------------------------------------------------
; ===== la BIOS del disco entra aqui: solo deja un gancho y vuelve =====
; ----------------------------------------------------------------------
L_C01E:
	ld hl,0c02ah		;c01e   ; los 3 bytes de jp 0xC02D, de 0xC02A
	ld de,0fedah		;c021   ; a H.STKE: el BASIC lo llama cuando acaba de arrancar, con todo el disco ya montado
	ld bc,00003h		;c024
	ldir		;c027
	ret			;c029   ; vuelve a la BIOS del disco, que sigue arrancando

; ----------------------------------------------------------------------
; DATOS gancho_stke: jp 0xC02D, lo que se copia en H.STKE; lo lee 0xC01E (3
;   bytes)
;   0xc02a..0xc02d  (3 bytes)
DATA_gancho_stke:
	defb 0c3h,02dh,0c0h	; c02a

; ======================================================================
; CODIGO 0xc02d..0xc05e  (49 bytes)
; ======================================================================



; ----------------------------------------------------------------------
; ===== H.STKE: lee el nucleo (8 sectores desde el 234) en 0x8200 y entra =====
; ----------------------------------------------------------------------
arranca:
	call 000c3h		;c02d   ; BIOS CLS - Clears the screen | CLS y ERAFNK: borra la pantalla y quita las teclas de funcion
	call 000cch		;c030   ; BIOS ERAFNK - Erases function key display
	xor a			;c033   ; CLIKSW = 0: sin clic de teclado
	ld (0f3dbh),a		;c034
	ld de,08200h		;c037   ; 8 sectores (H) de la unidad A (L = 0) desde el 234 (BC) en 0x8200 (DE)
	ld hl,00800h		;c03a
	ld bc,000eah		;c03d
	call lee_sectores		;c040
	ld a,(08200h)		;c043   ; si el primer byte es 0xE5 (sector de un disco recien formateado) se queda colgado: no es el disco
	cp 0e5h		;c046
	jr z,L_C04D		;c048
	jp 08200h		;c04a   ; el nucleo
L_C04D:
	jr L_C04D		;c04d
lee_sectores:		; BDOS 0x1A (destino DE) y 0x2F (lectura directa: DE = primer sector, H = cuantos, L = unidad)
	push bc			;c04f
	push hl			;c050   ; BC (el primer sector) y HL a la pila
	ld c,01ah		;c051
	call 0f37dh		;c053
	pop hl			;c056
	pop de			;c057   ; DE = el primer sector, HL = cuantos y unidad
	ld c,02fh		;c058
	call 0f37dh		;c05a
	ret			;c05d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xc05e..0xc05f  (1 bytes)
DATA_C05E:
	defb 000h	; c05e

; ----------------------------------------------------------------------
; DATOS relleno: ceros hasta el final del sector (417 bytes)
;   0xc05f..0xc200  (417 bytes)
DATA_relleno:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c05f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c06f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c07f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c08f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c09f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c0af  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c0bf  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c0cf  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c0df  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c0ef  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c0ff  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c10f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c11f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c12f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c13f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c14f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c15f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c16f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c17f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c18f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c19f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c1af  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c1bf  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c1cf  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c1df  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; c1ef  ................
	defb 000h	; c1ff
