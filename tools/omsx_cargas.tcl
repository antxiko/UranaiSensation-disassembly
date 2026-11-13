# omsx_cargas.tcl - apunta cada lectura de sectores del nucleo (0x8928: A=funcion
# 0x2F leer / 0x30 escribir, BC=primer sector, DE=destino, H=cuantos) con quien
# la pide (la pila), los registros del mapper de memoria y el tiempo emulado.
# Tambien la del sector de arranque (0xC04F). Al final, una captura.
# CARGAS_SALIDA  fichero de texto;  CARGAS_SEG  segundos emulados
set ::f [open $::env(CARGAS_SALIDA) w]
set throttle off
proc w16 {a} { expr {[debug read memory $a] | ([debug read memory [expr {$a+1}]] << 8)} }
proc apunta {donde} {
    set sp [reg sp]
    set m ""
    foreach p {0xFC 0xFD 0xFE 0xFF} { append m [format " %02X" [debug read ioports $p]] }
    puts $::f [format "%s t=%.3f A=%02X BC=%04X DE=%04X HL=%04X pila=%04X,%04X,%04X mapper=%s slot=%02X" \
        $donde [machine_info time] [reg a] [reg bc] [reg de] [reg hl] [w16 $sp] [w16 [expr {$sp+2}]] [w16 [expr {$sp+4}]] $m [debug read ioports 0xA8]]
    flush $::f
}
debug set_bp 0xC04F {[debug read memory 0xC04F] == 0xC5} { apunta ARRANQUE }
debug set_bp 0x8928 {[debug read memory 0x8928] == 0xF5} { apunta NUCLEO }
# CARGAS_TECLAS: "t fila bit ..." de tres en tres: pulsa 0,4 s en el segundo t
# CARGAS_FOTOS: segundos en los que hacer una captura
if {[info exists ::env(CARGAS_TECLAS)]} {
    foreach {t fila bit} $::env(CARGAS_TECLAS) {
        set mk [expr {1 << $bit}]
        after time $t "keymatrixdown $fila $mk; puts \$::f {TECLA $t $fila $bit}; after time 0.4 {keymatrixup $fila $mk}"
    }
}
if {[info exists ::env(CARGAS_FOTOS)]} {
    foreach t $::env(CARGAS_FOTOS) { after time $t "screenshot -raw -prefix $::env(CARGAS_SALIDA)_t$t" }
}
# CARGAS_RAM: "desde cuantos": se apunta cada 0,1 s
if {[info exists ::env(CARGAS_RAM)]} {
    proc mira {} {
        set b [debug read_block memory [lindex $::env(CARGAS_RAM) 0] [lindex $::env(CARGAS_RAM) 1]]
        binary scan $b H* hx
        puts $::f [format "RAM t=%.2f %s" [machine_info time] $hx]
        after time 0.1 mira
    }
    after time 20 mira
}
after time $::env(CARGAS_SEG) {
    screenshot -raw -prefix $::env(CARGAS_SALIDA)
    close $::f; exit
}
