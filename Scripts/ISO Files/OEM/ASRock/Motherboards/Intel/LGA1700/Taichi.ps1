############################################
# ASRock LGA 1700 Taichi motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Taichi Motherboard drivers..." -Verbose
Write-Host

$TaichiEthernetPath = "C:\Drivers\Motherboards\ASRock\LGA1700\Taichi\Ethernet"
$TaichiStoragePath = "C:\Drivers\Motherboards\ASRock\LGA1700\Taichi\Storage"
$TaichiWLANPath = "C:\Drivers\Motherboards\ASRock\LGA1700\Taichi\WLAN"

Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath
Edit-OSDCloudWinPe -DriverPath $TaichiStoragePath
Edit-OSDCloudWinPe -DriverPath $TaichiWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Taichi Motherboard drivers..." -Verbose
Write-Host

