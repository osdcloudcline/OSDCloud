############################################
# ASRock AM5 Taichi motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock AMD AM5 Taichi Motherboard drivers..." -Verbose
Write-Host

$TaichiEthernetPath = "C:\Drivers\Motherboards\ASRock\AM5\Taichi\Ethernet"
$TaichiStoragePath = "C:\Drivers\Motherboards\ASRock\AM5\Taichi\Storage"
$TaichiWLANPath = "C:\Drivers\Motherboards\ASRock\AM5\Taichi\WLAN"

Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath
Edit-OSDCloudWinPe -DriverPath $TaichiStoragePath
Edit-OSDCloudWinPe -DriverPath $TaichiWLANPath

Write-Host
Write-Verbose "Completed: ASRock AMD AM5 Taichi Motherboard drivers..." -Verbose
Write-Host
