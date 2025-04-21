############################################
# ASRock LGA 1851 Taichi motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 Taichi Motherboard drivers..." -Verbose
Write-Host

$TaichiEthernetPath1 = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet1"
$TaichiEthernetPath2 = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet2"
$TaichiEthernetPath3 = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet3"
$TaichiEthernetPath4 = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet4"
$TaichiEthernetPath5 = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet5"
$TaichiEthernetPath6 = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet6"
$TaichiEthernetPath7 = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet7"

$TaichiStoragePath = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\Storage"

$TaichiWLANPath = "C:\Drivers\Motherboards\ASRock\LGA1851\Taichi\WLAN"

Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath1
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath2
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath3
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath4
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath5
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath6
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath7
Edit-OSDCloudWinPe -DriverPath $TaichiStoragePath
Edit-OSDCloudWinPe -DriverPath $TaichiWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 Taichi Motherboard drivers..." -Verbose
Write-Host

