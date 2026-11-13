; ==========================================================================
; KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB - p17 (se ejecuta en 0x9800)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x09800


; ======================================================================
; CODIGO 0x9800..0x9880  (128 bytes)
; ======================================================================


L_9800:
	ld a,003h		;9800
	call 09209h		;9802
	ld ix,0a34bh		;9805
	call 082cch		;9809
	call 08212h		;980c
	call 0826fh		;980f
	call 08260h		;9812
	call L_984D		;9815
	ld (09828h),a		;9818
	inc a			;981b
	ld (09838h),a		;981c
	ld a,b			;981f
	ld (0982dh),a		;9820
	ld a,c			;9823
	ld (0983dh),a		;9824
	ld a,000h		;9827
	call 09203h		;9829
	ld a,000h		;982c
	call 09206h		;982e
	ld hl,098ach		;9831
	call L_9866		;9834
	ld a,000h		;9837
	call 09203h		;9839
	ld a,000h		;983c
	call 09206h		;983e
	ld hl,098c0h		;9841
	call L_9866		;9844
	call L_9860		;9847
	jp 08209h		;984a
L_984D:
	ld a,(0d217h)		;984d
	dec a			;9850
	ld c,a			;9851
	add a,a			;9852
	add a,c			;9853
	ld hl,09880h		;9854
	call 08221h		;9857
	ld a,(hl)			;985a
	inc hl			;985b
	ld b,(hl)			;985c
	inc hl			;985d
	ld c,(hl)			;985e
	ret			;985f
L_9860:
	ld hl,0988ch		;9860
	jp 082dbh		;9863
L_9866:
	ld a,(0d217h)		;9866
	dec a			;9869
	ld c,a			;986a
	add a,a			;986b
	add a,a			;986c
	add a,c			;986d
	call 08221h		;986e
	ld e,(hl)			;9871
	inc hl			;9872
	ld d,(hl)			;9873
	inc hl			;9874
	ld c,(hl)			;9875
	inc hl			;9876
	ld a,(hl)			;9877
	inc hl			;9878
	ld h,(hl)			;9879
	ld l,a			;987a
	ld a,001h		;987b
	jp 08218h		;987d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9880..0x988c  (12 bytes)
DATA_9880:
	defb 00ah,0a5h,0b1h,00eh,06dh,0f7h,00ch,099h,09dh,010h,09eh,089h	; 9880  ....m.......

; ----------------------------------------------------------------------
; DATOS paleta_988C: paleta: 16 colores de 2 bytes; lo usa 0x9863 (32 bytes)
;   0x988c..0x98ac  (32 bytes)
DATA_paleta_988C:
	defb 000h,000h,047h,003h,074h,004h,005h,000h,027h,002h,000h,006h,000h,007h,073h,002h	; 988c  ..G.t...'.....s.
	defb 070h,000h,070h,005h,070h,007h,060h,003h,055h,005h,040h,002h,077h,007h,000h,000h	; 989c  p.p.p.`.U.@.w...

; ----------------------------------------------------------------------
; DATOS sin identificar  0x98ac..0xa34b  (2719 bytes)
DATA_98AC:
	defb 000h,000h,010h,0d4h,098h,000h,000h,020h,0edh,09dh,000h,000h,010h,06ah,09bh,000h	; 98ac  ....... .....j..
	defb 000h,010h,0f8h,0a0h,000h,080h,010h,01ch,09ah,040h,008h,01eh,034h,09fh,000h,080h	; 98bc  .........@..4...
	defb 010h,0aah,09ch,000h,080h,010h,02ah,0a2h,0f2h,001h,002h,001h,002h,001h,002h,001h	; 98cc  ......*.........
	defb 002h,001h,002h,001h,002h,001h,002h,001h,002h,002h,001h,002h,003h,004h,005h,006h	; 98dc  ................
	defb 007h,002h,001h,002h,001h,002h,001h,002h,001h,001h,002h,001h,008h,001h,009h,00ah	; 98ec  ................
	defb 00bh,00ch,002h,001h,002h,001h,002h,001h,002h,002h,001h,002h,00dh,00eh,001h,002h	; 98fc  ................
	defb 00fh,010h,011h,012h,001h,002h,001h,002h,001h,001h,002h,001h,013h,014h,002h,001h	; 990c  ................
	defb 002h,015h,046h,016h,002h,001h,002h,001h,002h,002h,001h,002h,017h,018h,019h,01ah	; 991c  ..F.............
	defb 01bh,01ch,01dh,01eh,01fh,002h,001h,002h,001h,001h,020h,021h,022h,023h,023h,024h	; 992c  .......... !"##$
	defb 025h,026h,027h,028h,029h,02ah,002h,001h,002h,002h,02bh,006h,02ch,08ah,02dh,02eh	; 993c  %&'()*....+.,.-.
	defb 02fh,030h,031h,001h,002h,001h,032h,033h,007h,02ch,089h,034h,035h,036h,037h,002h	; 994c  /01...23.,.4567.
	defb 001h,002h,038h,039h,008h,02ch,08ah,03ah,03bh,03ch,001h,002h,001h,03dh,03eh,03fh	; 995c  ..89.,.:.<...=>?
	defb 040h,007h,02ch,08ah,041h,042h,043h,001h,002h,044h,045h,046h,047h,048h,007h,02ch	; 996c  @.,.ABC..DEFGH.,
	defb 08ah,049h,04ah,002h,001h,001h,04bh,046h,046h,04ch,04dh,006h,02ch,08ah,04eh,04fh	; 997c  .IJ...KFFLM.,.NO
	defb 03ch,002h,002h,050h,051h,052h,053h,054h,007h,02ch,08dh,055h,056h,001h,057h,058h	; 998c  <..PQRST.,.UV.WX
	defb 059h,05ah,05bh,05ch,05dh,02ch,05eh,05fh,003h,02ch,08dh,060h,061h,043h,062h,063h	; 999c  YZ[\],^_.,.`aCbc
	defb 064h,065h,066h,067h,068h,069h,06ah,06bh,003h,02ch,08ch,06ch,06dh,06eh,06fh,070h	; 99ac  defghijk.,.lmnop
	defb 071h,072h,073h,074h,075h,076h,077h,005h,02ch,08ah,078h,079h,002h,07ah,07bh,07ch	; 99bc  qrstuvw.,.xy.z{|
	defb 07dh,07eh,07fh,080h,006h,02ch,086h,081h,082h,001h,083h,084h,085h,00ah,02ch,08ah	; 99cc  }~...,........,.
	defb 086h,087h,002h,001h,088h,089h,08ah,08bh,08ch,08dh,006h,02ch,08bh,08eh,08fh,001h	; 99dc  ...........,....
	defb 002h,090h,091h,092h,093h,094h,095h,096h,005h,02ch,08ch,08eh,08fh,002h,001h,097h	; 99ec  .........,......
	defb 046h,046h,098h,099h,09ah,09bh,09ch,005h,02ch,084h,09dh,09eh,09fh,0a0h,005h,046h	; 99fc  FF......,......F
	defb 081h,0a1h,006h,02ch,084h,0a4h,0a2h,0a3h,0a0h,005h,046h,007h,02ch,081h,082h,000h	; 9a0c  ...,......F.,...
	defb 0f8h,001h,003h,002h,003h,002h,004h,005h,006h,002h,007h,008h,003h,002h,003h,002h	; 9a1c  ................
	defb 003h,009h,00ah,003h,002h,00bh,00ch,003h,002h,00dh,00ch,003h,002h,003h,002h,003h	; 9a2c  ................
	defb 002h,00eh,00fh,010h,011h,008h,003h,002h,012h,013h,014h,002h,003h,002h,003h,002h	; 9a3c  ................
	defb 003h,003h,015h,016h,017h,003h,002h,018h,019h,01ah,01bh,003h,002h,003h,002h,01ch	; 9a4c  ................
	defb 01dh,002h,003h,01eh,003h,002h,01fh,020h,003h,002h,021h,022h,003h,002h,023h,024h	; 9a5c  ....... ..!"..#$
	defb 025h,003h,002h,003h,002h,003h,026h,027h,028h,029h,02ah,02bh,02ch,02dh,02eh,02fh	; 9a6c  %.....&'()*+,-./
	defb 002h,002h,003h,002h,003h,002h,030h,031h,032h,033h,034h,035h,035h,036h,037h,038h	; 9a7c  ......0123455678
	defb 003h,003h,002h,003h,002h,003h,039h,03ah,03bh,006h,03ch,089h,03dh,002h,002h,003h	; 9a8c  ......9:..<.=...
	defb 002h,003h,03eh,03fh,040h,007h,03ch,088h,041h,042h,003h,002h,003h,043h,044h,045h	; 9a9c  ..>?@.<.AB...CDE
	defb 008h,03ch,087h,046h,047h,002h,003h,048h,049h,04ah,007h,03ch,089h,04bh,04ch,04dh	; 9aac  .<.FG..HIJ.<.KLM
	defb 04eh,003h,002h,04fh,050h,051h,006h,03ch,089h,052h,053h,054h,055h,056h,002h,057h	; 9abc  N..OPQ.<.RSTUV.W
	defb 058h,059h,006h,03ch,08ch,05ah,05bh,054h,054h,05ch,003h,003h,05dh,05eh,03ch,03ch	; 9acc  XY.<.Z[TT\..]^<<
	defb 05fh,004h,03ch,098h,060h,061h,062h,063h,064h,002h,048h,065h,066h,03ch,03ch,067h	; 9adc  _.<.`abcd.Hef<<g
	defb 068h,069h,03ch,06ah,06bh,06ch,06dh,06eh,002h,003h,06fh,070h,004h,03ch,08ch,072h	; 9aec  hi<jklmn..op.<.r
	defb 073h,074h,075h,076h,077h,078h,079h,003h,002h,07ah,07bh,005h,03ch,08bh,07ch,07dh	; 9afc  stuvwxy..z{.<.|}
	defb 07eh,07fh,080h,081h,093h,083h,003h,084h,085h,006h,03ch,08ah,086h,087h,088h,089h	; 9b0c  ~.........<.....
	defb 08ah,08bh,08ch,002h,08dh,08eh,00ah,03ch,086h,08fh,090h,091h,003h,082h,092h,006h	; 9b1c  .......<........
	defb 03ch,089h,094h,095h,096h,097h,098h,099h,003h,002h,082h,006h,03ch,08ah,09ah,09bh	; 9b2c  <...........<...
	defb 09ch,09dh,09eh,09fh,0a0h,002h,003h,082h,005h,03ch,08bh,0a1h,0a2h,0a3h,0a4h,0a5h	; 9b3c  .........<......
	defb 054h,054h,0a6h,003h,002h,082h,005h,03ch,083h,0a7h,0a9h,0a8h,004h,054h,084h,0aah	; 9b4c  TT.....<.....T..
	defb 0abh,0ach,082h,006h,03ch,081h,0aeh,005h,054h,083h,0aah,0afh,0b0h,000h,00eh,06eh	; 9b5c  ....<...T......n
	defb 082h,06dh,078h,00dh,06eh,083h,01dh,01eh,016h,003h,06eh,088h,029h,02ah,029h,02ah	; 9b6c  .mx.n.....n.)*)*
	defb 029h,02ah,029h,02ah,003h,06eh,082h,02eh,078h,003h,06eh,088h,039h,03ah,039h,03ah	; 9b7c  )*)*.n..x.n.9:9:
	defb 039h,03ah,039h,03ah,003h,06eh,082h,06dh,016h,003h,06eh,08dh,049h,04ah,049h,04ah	; 9b8c  9:9:.n.m..n.IJIJ
	defb 049h,04ah,049h,04ah,06eh,06eh,04dh,04eh,078h,00dh,06eh,083h,05dh,078h,016h,00dh	; 9b9c  IJIJnnMNx.n.]x..
	defb 06eh,083h,06dh,016h,078h,00bh,06eh,085h,081h,07ch,07dh,07eh,016h,006h,06eh,08ch	; 9bac  n.m.x.n..|}~..n.
	defb 081h,082h,067h,067h,059h,083h,085h,088h,089h,078h,06ah,06fh,003h,06eh,0a2h,070h	; 9bbc  ..ggY....xjo.n.p
	defb 071h,072h,073h,074h,075h,016h,086h,087h,010h,016h,06ch,06bh,06ah,067h,059h,057h	; 9bcc  qrstu.....lkjgYW
	defb 019h,00dh,00eh,02fh,016h,078h,07ah,080h,07fh,078h,078h,016h,078h,016h,078h,017h	; 9bdc  .../.xz..xx.x.x.
	defb 018h,003h,012h,08ch,03fh,04fh,079h,07bh,078h,016h,016h,078h,016h,078h,022h,021h	; 9bec  ....?Oy{x..x.x"!
	defb 003h,012h,08ch,01fh,00fh,066h,016h,078h,016h,078h,078h,016h,078h,016h,002h,004h	; 9bfc  .....f.x.xx.x...
	defb 012h,08ch,031h,06eh,06eh,077h,016h,078h,016h,016h,078h,016h,078h,034h,004h,012h	; 9c0c  ..1nnw.x..x.x4..
	defb 08ch,024h,06eh,054h,055h,078h,016h,078h,078h,016h,078h,016h,041h,004h,012h,08ch	; 9c1c  .$nTUx.xx.x.A...
	defb 062h,063h,064h,065h,069h,078h,016h,016h,078h,016h,078h,046h,005h,012h,08bh,060h	; 9c2c  bcdeix..x.xF...`
	defb 061h,04bh,04ch,02ch,078h,078h,016h,078h,016h,056h,005h,012h,09ah,048h,042h,05bh	; 9c3c  aKL,xx.x.V...HB[
	defb 05ch,03ch,03dh,016h,078h,016h,040h,041h,012h,044h,045h,012h,043h,058h,009h,00ah	; 9c4c  \<=.x.@A.DE.CX..
	defb 00bh,00ch,02bh,078h,016h,078h,050h,004h,012h,08ch,052h,053h,06eh,06eh,01ah,01bh	; 9c5c  ..+x.xP...RSnn..
	defb 01ch,03bh,016h,078h,016h,020h,005h,012h,08bh,004h,06eh,06eh,005h,006h,007h,008h	; 9c6c  ...x. ....nn....
	defb 078h,016h,078h,030h,004h,012h,08ch,013h,014h,06eh,06eh,015h,016h,078h,016h,027h	; 9c7c  x.x0.....nn..x.'
	defb 028h,027h,001h,004h,012h,081h,023h,003h,06eh,088h,025h,026h,027h,028h,037h,038h	; 9c8c  ('....#.n.%&'(78
	defb 037h,011h,004h,012h,081h,033h,003h,06eh,084h,025h,036h,037h,038h,000h,082h,001h	; 9c9c  7....3.n.%678...
	defb 002h,00eh,04ch,083h,004h,005h,006h,00dh,04ch,082h,007h,008h,003h,04ch,088h,00ch	; 9cac  ..L.....L....L..
	defb 00dh,00ch,00dh,00ch,00dh,00ch,00dh,003h,04ch,082h,00bh,009h,003h,04ch,088h,00eh	; 9cbc  ........L....L..
	defb 00fh,00eh,00fh,00eh,00fh,00eh,00fh,003h,04ch,08dh,00ah,00bh,012h,04ch,04ch,010h	; 9ccc  ........L....LL.
	defb 011h,010h,011h,010h,011h,010h,011h,003h,04ch,083h,00bh,00ah,013h,00dh,04ch,083h	; 9cdc  ........L.....L.
	defb 00ah,00bh,014h,00dh,04ch,085h,00bh,00ah,015h,016h,017h,00bh,04ch,08ah,00ah,018h	; 9cec  ....L.......L...
	defb 019h,01ah,01bh,01ch,01dh,01eh,01fh,017h,006h,04ch,08bh,00bh,021h,022h,023h,00bh	; 9cfc  .........L..!"#.
	defb 024h,025h,026h,027h,028h,029h,003h,04ch,098h,091h,092h,00ah,00bh,02dh,02eh,00ah	; 9d0c  $%&'().L.....-..
	defb 02fh,030h,031h,032h,033h,034h,035h,036h,037h,00ah,00bh,00bh,00ah,03ah,03bh,03ch	; 9d1c  /01234567....:.<
	defb 03dh,003h,03eh,08eh,03fh,040h,038h,039h,00ah,00bh,00ah,00ah,00bh,00ah,00bh,044h	; 9d2c  =.>.?@89.......D
	defb 045h,046h,003h,03eh,08dh,047h,048h,049h,00bh,00ah,00bh,00bh,00ah,00bh,04ah,04bh	; 9d3c  EF.>.GHI......JK
	defb 04ch,04dh,004h,03eh,08ch,04eh,04fh,050h,00bh,00ah,00ah,00bh,00ah,051h,052h,04ch	; 9d4c  LM.>.NOP.....QRL
	defb 053h,004h,03eh,08ch,054h,055h,056h,00ah,00bh,00bh,00ah,00bh,057h,058h,059h,05ah	; 9d5c  S.>.TUV.....WXYZ
	defb 004h,03eh,08ch,05bh,05ch,05dh,00bh,00ah,00ah,00bh,00ah,05eh,05fh,060h,061h,004h	; 9d6c  .>.[\].....^_`a.
	defb 03eh,08ch,062h,063h,064h,00ah,00bh,00bh,065h,066h,067h,068h,069h,06ah,004h,03eh	; 9d7c  >.bcd...efghij.>
	defb 09dh,06bh,06ch,06dh,00bh,00ah,00ah,06eh,06fh,070h,071h,072h,073h,03eh,074h,075h	; 9d8c  .klm...nopqrs>tu
	defb 03eh,076h,077h,06dh,00ah,00bh,00bh,078h,079h,07ah,04ch,04ch,07bh,07ch,003h,03eh	; 9d9c  >vwm...xyzLL{|.>
	defb 08dh,07dh,07eh,00ah,00bh,00ah,00ah,00bh,07fh,080h,04ch,04ch,081h,082h,004h,03eh	; 9dac  .}~.......LL...>
	defb 088h,083h,00bh,00ah,00bh,00bh,00ah,00bh,084h,003h,04ch,081h,085h,004h,03eh,087h	; 9dbc  ..........L...>.
	defb 086h,00ah,00bh,00ah,08dh,08eh,087h,004h,04ch,081h,088h,004h,03eh,087h,089h,08eh	; 9dcc  ........L...>...
	defb 08dh,08eh,08fh,090h,08ah,004h,04ch,081h,08bh,004h,03eh,084h,08ch,090h,08fh,090h	; 9ddc  ......L...>.....
	defb 000h,0ffh,002h,003h,002h,003h,002h,003h,002h,003h,002h,003h,002h,003h,002h,003h	; 9dec  ................
	defb 002h,003h,06dh,003h,002h,003h,002h,05ch,045h,032h,002h,04eh,029h,003h,002h,003h	; 9dfc  ..m....\E2.N)...
	defb 002h,003h,003h,002h,003h,013h,014h,015h,016h,017h,003h,002h,003h,002h,003h,002h	; 9e0c  ................
	defb 003h,002h,02bh,068h,003h,002h,04eh,040h,003h,002h,02ah,029h,003h,002h,003h,002h	; 9e1c  ..+h..N@..*)....
	defb 003h,002h,002h,003h,002h,023h,002h,025h,026h,027h,028h,003h,002h,003h,002h,003h	; 9e2c  .....#.%&'(.....
	defb 002h,003h,067h,066h,063h,04eh,05dh,003h,002h,052h,049h,03bh,002h,003h,002h,003h	; 9e3c  ..gfcN]..RI.....
	defb 002h,003h,003h,002h,003h,033h,034h,002h,003h,037h,038h,039h,03ah,002h,003h,002h	; 9e4c  .....34..789:...
	defb 003h,002h,003h,064h,05ah,06ch,003h,002h,042h,045h,047h,066h,003h,002h,003h,002h	; 9e5c  ...dZl..BEGf....
	defb 035h,0ffh,036h,002h,003h,002h,043h,044h,003h,002h,003h,048h,049h,04ah,003h,002h	; 9e6c  5.6...CD...HIJ..
	defb 003h,002h,003h,002h,003h,062h,003h,002h,03ch,03dh,003h,002h,06bh,051h,003h,002h	; 9e7c  .....b..<=..kQ..
	defb 030h,031h,032h,003h,002h,003h,053h,054h,002h,056h,057h,058h,059h,05ah,03bh,003h	; 9e8c  012...ST.VWXYZ..
	defb 002h,003h,002h,003h,002h,003h,002h,003h,018h,032h,002h,003h,002h,055h,00eh,00fh	; 9e9c  .........2...U..
	defb 040h,041h,002h,002h,003h,002h,003h,008h,009h,00ah,00bh,002h,003h,06ah,00ch,00dh	; 9eac  @A...........j..
	defb 003h,002h,003h,002h,003h,002h,003h,002h,02bh,02dh,02ch,01bh,02eh,02fh,01eh,01fh	; 9ebc  ........+-,../..
	defb 003h,002h,003h,003h,002h,003h,002h,018h,019h,01ah,002h,003h,002h,003h,01ch,01dh	; 9ecc  ................
	defb 002h,003h,002h,003h,002h,003h,002h,003h,001h,007h,006h,005h,002h,03fh,002h,003h	; 9edc  .............?..
	defb 002h,083h,003h,002h,002h,01eh,000h,002h,003h,01eh,000h,002h,002h,01eh,000h,002h	; 9eec  ................
	defb 003h,01eh,000h,002h,002h,01eh,000h,002h,003h,01eh,000h,002h,002h,01eh,000h,002h	; 9efc  ................
	defb 003h,01eh,000h,002h,002h,01eh,000h,002h,003h,01eh,000h,002h,002h,01eh,000h,002h	; 9f0c  ................
	defb 003h,01eh,000h,002h,002h,01eh,000h,002h,003h,01eh,000h,082h,002h,010h,01eh,000h	; 9f1c  ................
	defb 082h,011h,020h,01eh,000h,081h,021h,000h,0fdh,02dh,02ch,02dh,022h,023h,02ch,02dh	; 9f2c  .. ...!..-,-"#,-
	defb 02ch,02dh,02ch,0f0h,0f1h,02dh,02ch,02dh,02ch,02dh,02ch,02dh,02ch,02dh,02ch,02dh	; 9f3c  ,-,..-,-,-,-,-,-
	defb 02ch,02dh,02ch,02dh,02ch,02dh,02ch,004h,02dh,02ch,02dh,033h,0ech,004h,02dh,004h	; 9f4c  ,-,-,-,.-,-3..-.
	defb 02dh,004h,02dh,004h,02dh,004h,02dh,004h,02dh,004h,02dh,004h,02dh,004h,02dh,004h	; 9f5c  -.-.-.-.-.-.-.-.
	defb 02dh,004h,02dh,004h,02dh,02dh,02ch,02dh,004h,0f7h,0f6h,0dbh,0bah,0bbh,004h,02dh	; 9f6c  -.-.--,-.......-
	defb 004h,02dh,004h,02dh,004h,02dh,004h,02dh,004h,02dh,026h,027h,028h,029h,02ah,02dh	; 9f7c  .-.-.-.-.-&'()*-
	defb 004h,02dh,02ch,004h,02dh,004h,060h,061h,0eah,0ebh,0cah,0cbh,0b7h,004h,02dh,004h	; 9f8c  .-,.-.`a......-.
	defb 02dh,004h,02dh,004h,02dh,004h,02dh,035h,036h,037h,038h,039h,03ah,03bh,02dh,004h	; 9f9c  -.-.-.-56789:.-.
	defb 02dh,02dh,004h,031h,001h,071h,003h,06ah,08eh,0c6h,0c7h,0d9h,004h,02dh,004h,02dh	; 9fac  --.1.q.j.....-.-
	defb 004h,02dh,004h,02dh,044h,045h,046h,003h,06ah,0ffh,04ah,04bh,04ch,02dh,02ch,004h	; 9fbc  .-.-DEF.j.JKL-,.
	defb 02dh,010h,011h,06ah,06ah,0b8h,06ah,06ah,0e8h,0e9h,02dh,004h,02dh,004h,02dh,004h	; 9fcc  -..jj.jj..-.-.-.
	defb 02dh,004h,054h,055h,06ah,06ah,058h,06ah,06ah,05bh,05ch,05dh,02dh,02dh,004h,002h	; 9fdc  -.TUjjXjj[\]--..
	defb 003h,06ah,06ah,0c8h,06ah,06ah,008h,009h,004h,02dh,004h,02dh,004h,02dh,004h,02dh	; 9fec  .jj.jj...-.-.-.-
	defb 064h,065h,06ah,067h,068h,069h,06ah,06bh,06ch,06dh,02ch,004h,02dh,012h,013h,041h	; 9ffc  dejghijklm,.-..A
	defb 0d6h,0d7h,052h,053h,00dh,01dh,024h,025h,02dh,004h,02dh,004h,02dh,004h,074h,075h	; a00c  ..RS..$%-.-.-.tu
	defb 076h,077h,0d7h,079h,07ah,07bh,07ch,07dh,02dh,02dh,004h,005h,050h,051h,0e6h,0e7h	; a01c  vw.yz{|}--..PQ..
	defb 062h,063h,02bh,032h,034h,03ch,03dh,083h,080h,081h,004h,02dh,084h,0b3h,086h,087h	; a02c  bc+24<=....-....
	defb 0e7h,089h,08ah,08bh,08ch,08dh,02ch,004h,014h,0a0h,015h,020h,021h,042h,043h,072h	; a03c  ......,.... !BCr
	defb 073h,03fh,040h,0d9h,082h,085h,0b9h,090h,091h,092h,093h,094h,095h,096h,097h,098h	; a04c  s?@.............
	defb 099h,09ah,09bh,09ch,09dh,02dh,02dh,006h,007h,030h,005h,06ah,098h,047h,048h,049h	; a05c  .....--..0.j.GHI
	defb 04dh,04fh,0c9h,0a0h,0a1h,0a2h,0a3h,0a4h,0a5h,06ah,0a7h,0a8h,0a9h,06ah,0abh,0ach	; a06c  MO.......j...j..
	defb 0adh,0aeh,004h,016h,017h,007h,06ah,08ah,056h,057h,059h,05ah,0d8h,0b0h,0b1h,0b2h	; a07c  ......j.VWYZ....
	defb 0b3h,0b4h,007h,06ah,086h,0bch,0bdh,0beh,02dh,00ah,00bh,006h,06ah,08ch,066h,078h	; a08c  ...j....-...j.fx
	defb 0a6h,0aah,0b5h,0e5h,0c0h,0c1h,0c2h,0c3h,0c4h,0c5h,006h,06ah,088h,0cch,0cdh,0ceh	; a09c  ...........j....
	defb 004h,01ah,01bh,018h,019h,003h,04eh,08dh,07eh,07fh,088h,0afh,0dah,0b6h,0e0h,0d0h	; a0ac  ......N.~.......
	defb 0d1h,0d2h,0d3h,0d4h,0d5h,006h,06ah,088h,0dch,0ddh,0deh,00ch,00eh,00fh,02eh,02fh	; a0bc  ......j......../
	defb 003h,05eh,085h,06fh,08eh,08fh,0bfh,0efh,003h,06ah,084h,0e1h,0e2h,0e3h,0e4h,007h	; a0cc  .^.o.....j......
	defb 06ah,087h,0dch,0edh,0eeh,01ch,01eh,01fh,03eh,005h,06ah,084h,09eh,09fh,0cfh,0dfh	; a0dc  j.......>.j.....
	defb 004h,06ah,082h,0f2h,0f3h,008h,06ah,083h,0dch,0edh,0f4h,000h,0d1h,09eh,001h,09eh	; a0ec  .j....j.........
	defb 001h,09eh,001h,09eh,001h,09eh,001h,09eh,001h,09eh,001h,09eh,001h,001h,09eh,001h	; a0fc  ................
	defb 013h,014h,015h,016h,017h,001h,09eh,001h,09eh,001h,09eh,01eh,01fh,09eh,001h,09eh	; a10c  ................
	defb 023h,09eh,025h,026h,027h,028h,001h,09eh,001h,02ch,02dh,02eh,02fh,030h,031h,032h	; a11c  #.%&'(...,-./012
	defb 033h,034h,09eh,001h,037h,038h,039h,03ah,03bh,03ch,03dh,03eh,02fh,040h,041h,042h	; a12c  34..789:.<=>/@AB
	defb 043h,044h,045h,09eh,001h,048h,049h,04ah,04bh,04ch,04dh,04eh,02fh,050h,003h,042h	; a13c  CDE..HIJKLMN/P.B
	defb 08ch,054h,055h,056h,057h,058h,059h,05ah,05bh,04dh,04dh,05eh,02fh,004h,042h,08ch	; a14c  .TUVWXYZ[MM^/.B.
	defb 064h,065h,066h,067h,09eh,001h,06ah,06bh,04dh,06dh,06eh,02fh,004h,042h,08ch,074h	; a15c  defg..jkMmn/.B.t
	defb 075h,076h,09eh,001h,079h,07ah,07bh,07ch,07dh,07eh,02fh,005h,042h,08bh,085h,086h	; a16c  uv..yz{|}~/.B...
	defb 001h,09eh,089h,08ah,08bh,08ch,08dh,08eh,02fh,005h,042h,088h,095h,096h,09eh,001h	; a17c  ......../.B.....
	defb 099h,09ah,09bh,09ch,003h,02fh,005h,042h,088h,077h,08fh,097h,09eh,093h,094h,098h	; a18c  ...../.B.w......
	defb 09dh,003h,02fh,006h,042h,087h,095h,088h,001h,09eh,092h,090h,091h,003h,02fh,006h	; a19c  ../.B........./.
	defb 042h,086h,077h,084h,087h,001h,082h,083h,004h,02fh,007h,042h,084h,095h,073h,080h	; a1ac  B.w....../.B..s.
	defb 081h,005h,02fh,007h,042h,083h,077h,070h,071h,006h,02fh,006h,042h,084h,06ch,042h	; a1bc  ../.B.wpq./.B.lB
	defb 078h,07fh,006h,02fh,006h,042h,082h,063h,068h,008h,02fh,006h,042h,082h,060h,05fh	; a1cc  x../.B.ch./.B.`_
	defb 008h,02fh,006h,042h,082h,05dh,04fh,008h,02fh,003h,042h,088h,053h,047h,046h,036h	; a1dc  ./.B.]O./.B.SGF6
	defb 05ch,02fh,02ah,02bh,005h,02fh,003h,042h,088h,009h,006h,007h,035h,02fh,00dh,024h	; a1ec  \/*+./.B....5/.$
	defb 029h,005h,02fh,08bh,010h,011h,018h,019h,004h,005h,00eh,02fh,00fh,012h,022h,005h	; a1fc  )./......../..".
	defb 02fh,08bh,020h,021h,002h,003h,020h,00bh,00ch,00dh,051h,052h,022h,005h,02fh,08bh	; a20c  /. !.. ...QR"./.
	defb 01ah,01bh,01ah,01bh,01ah,01bh,01ch,01dh,01ah,062h,022h,005h,02fh,000h,0b0h,089h	; a21c  .........b"./...
	defb 01ah,026h,01ah,026h,005h,006h,007h,026h,009h,00ah,01ah,026h,01ah,026h,01ah,010h	; a22c  .&.&...&...&.&..
	defb 011h,012h,013h,014h,015h,01ah,026h,018h,019h,01ah,026h,01ah,026h,01ah,026h,059h	; a23c  ......&...&.&.&Y
	defb 021h,022h,023h,024h,025h,026h,027h,028h,029h,026h,01ah,026h,01ah,026h,01ah,004h	; a24c  !"#$%&'()&.&.&..
	defb 059h,08ch,034h,035h,036h,037h,038h,039h,01ah,026h,01ah,026h,03eh,03fh,005h,059h	; a25c  Y.456789.&.&>?.Y
	defb 08bh,045h,046h,01ah,026h,049h,04ah,01ah,026h,04dh,04eh,04fh,005h,059h,08bh,055h	; a26c  .EF.&IJ.&MNO.Y.U
	defb 056h,026h,01ah,026h,05ah,05bh,05ch,05dh,05eh,026h,005h,059h,08bh,065h,066h,067h	; a27c  V&.&Z[\]^&.Y.efg
	defb 068h,069h,06ah,06bh,06ch,01ah,026h,01ah,005h,059h,08bh,075h,076h,077h,078h,079h	; a28c  hijkl.&..Y.uvwxy
	defb 07ah,07bh,01ah,026h,052h,07fh,006h,059h,08ah,086h,087h,026h,01ah,026h,01ah,026h	; a29c  z{.&R..Y...&.&.&
	defb 07eh,044h,06fh,006h,059h,08ah,061h,06dh,01ah,026h,01ah,026h,01ah,041h,04bh,06fh	; a2ac  ~Do.Y.am.&.&.AKo
	defb 006h,059h,08ah,055h,057h,026h,01ah,026h,01ah,020h,03dh,02fh,06fh,006h,059h,08ah	; a2bc  .Y.UW&.&. =/o.Y.
	defb 016h,017h,01bh,02ah,01ah,026h,02bh,02dh,02eh,06fh,007h,059h,086h,00ch,00bh,008h	; a2cc  ...*.&+-.o.Y....
	defb 004h,003h,002h,003h,06fh,008h,059h,085h,084h,057h,01ah,07ch,088h,003h,06fh,009h	; a2dc  ....o.Y..W.|..o.
	defb 059h,084h,05fh,06dh,07eh,06eh,003h,06fh,009h,059h,084h,054h,057h,072h,073h,003h	; a2ec  Y._m~n.o.Y.TWrs.
	defb 06fh,008h,059h,084h,063h,064h,070h,071h,004h,06fh,008h,059h,084h,032h,033h,059h	; a2fc  o.Y.cdpq.o.Y.23Y
	defb 081h,004h,06fh,008h,059h,084h,042h,043h,059h,051h,004h,06fh,008h,059h,085h,030h	; a30c  ..o.Y.BCYQ.o.Y.0
	defb 031h,060h,059h,062h,003h,06fh,008h,059h,085h,040h,047h,048h,059h,02ch,003h,06fh	; a31c  1`Yb.o.Y.@GHY,.o
	defb 008h,059h,085h,040h,047h,058h,03bh,03ch,003h,06fh,008h,059h,085h,040h,047h,00dh	; a32c  .Y.@GX.<.o.Y.@G.
	defb 00eh,00fh,003h,06fh,008h,059h,085h,030h,01ch,01dh,01eh,01fh,003h,06fh,000h	; a33c  ...o.Y.0.....o.

; ----------------------------------------------------------------------
; DATOS lista_dibujos_A34B: lista de dibujos, 5 bytes cada uno (marca,
;   puntero, posicion, color), hasta la marca 0; lo usa 0x9809 (6 bytes)
;   0xa34b..0xa351  (6 bytes)
DATA_lista_dibujos_A34B:
	defb 080h,051h,0a3h,0beh,00eh,000h	; a34b

; ----------------------------------------------------------------------
; DATOS dibujo_A351: dibujo en el RLE de 0x9014 (nucleo), hasta el 0; lo usa
;   0x9809 (26 bytes)
;   0xa351..0xa36b  (26 bytes)
DATA_dibujo_A351:
	defb 098h,008h,03eh,008h,07fh,008h,01ch,036h,063h,008h,03eh,008h,03eh,07fh,014h,008h	; a351  ..>....6c.>.>...
	defb 014h,071h,055h,075h,025h,035h,051h,011h,023h,000h	; a361  .qUu%5Q.#.

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa36b..0xa400  (149 bytes)
DATA_A36B:
	defb 008h,001h,000h,000h,004h,008h,002h,000h,000h,0a4h,008h,000h,000h,0a8h,00eh,002h	; a36b  ................
	defb 000h,000h,068h,005h,000h,000h,06ch,01ah,002h,000h,000h,060h,005h,000h,000h,064h	; a37b  ..h...l....`...d
	defb 01ah,002h,000h,000h,010h,008h,000h,000h,014h,008h,004h,00ch,004h,010h,004h,014h	; a38b  ................
	defb 004h,018h,004h,01ch,004h,020h,004h,023h,004h,027h,004h,02bh,004h,02fh,004h,033h	; a39b  ..... .#.'.+./.3
	defb 004h,037h,004h,03bh,005h,003h,005h,007h,005h,00bh,005h,00fh,005h,013h,005h,017h	; a3ab  .7..............
	defb 005h,01bh,005h,01fh,005h,023h,005h,027h,005h,02ah,005h,02eh,005h,032h,005h,036h	; a3bb  .....#.'.*...2.6
	defb 005h,03ah,006h,002h,006h,006h,006h,00ah,006h,00eh,006h,012h,006h,016h,006h,01ah	; a3cb  .:..............
	defb 006h,01eh,006h,022h,006h,026h,011h,0a4h,025h,0a4h,039h,0a4h,04dh,0a4h,061h,0a4h	; a3db  ...".&..%.9.M.a.
	defb 075h,0a4h,089h,0a4h,09dh,0a4h,0b1h,0a4h,0c5h,0a4h,0d9h,0a4h,0edh,0a4h,001h,0a5h	; a3eb  u...............
	defb 015h,0a5h,029h,0a5h,03dh	; a3fb
