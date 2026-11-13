# lanza_cargas.ps1 -salida work/cargas.txt -seg 120 [-maquina Sony_HB-F900] [-teclas "t fila bit ..."] [-fotos "t ..."]
param([string]$salida, [string]$seg = "120", [string]$maquina = "Sony_HB-F900", [string]$teclas = "", [string]$fotos = "", [string]$ram = "", [string]$vram = "")
if ($ram) { $env:CARGAS_RAM = $ram } else { Remove-Item Env:CARGAS_RAM -ErrorAction SilentlyContinue }
$env:CARGAS_VRAM = $vram
$env:CARGAS_TECLAS = $teclas
$env:CARGAS_FOTOS = $fotos
$env:CARGAS_SALIDA = $salida
$env:CARGAS_SEG = $seg
$args_ = @("-machine", $maquina, "-diska", "uranai.dsk", "-script", "tools/omsx_cargas.tcl")
Start-Process -FilePath "C:\Program Files\openMSX\openmsx.exe" -ArgumentList $args_ -WorkingDirectory (Get-Location) -Wait -WindowStyle Minimized
