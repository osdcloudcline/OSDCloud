############################################
# ASRock LGA 1700 AQUA motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 AQUA Motherboard drivers..." -Verbose
Write-Host


$AQUAEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\Ethernet1"
$AQUAEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\Ethernet2"
$AQUAStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\Storage"
$AQUAWLANPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\WLAN1"
$AQUAWLANPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\WLAN2"


Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath1
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath2
Edit-OSDCloudWinPe -DriverPath $AQUAStoragePath
Edit-OSDCloudWinPe -DriverPath $AQUAWLANPath1
Edit-OSDCloudWinPe -DriverPath $AQUAWLANPath2

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 AQUA Motherboard drivers..." -Verbose
Write-Host



