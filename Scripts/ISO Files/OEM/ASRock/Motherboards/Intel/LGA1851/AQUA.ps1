############################################
# ASRock LGA 1851 AQUA motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 AQUA Motherboard drivers..." -Verbose
Write-Host

$AQUAEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet1"
$AQUAEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet2"
$AQUAEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet3"
$AQUAEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet4"
$AQUAEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet5"
$AQUAEthernetPath6 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet6"
$AQUAEthernetPath7 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet7"

$AQUAStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Storage"

$AQUAWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\WLAN"

Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath1
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath2
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath3
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath4
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath5
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath6
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath7
Edit-OSDCloudWinPe -DriverPath $AQUAStoragePath
Edit-OSDCloudWinPe -DriverPath $AQUAWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 AQUA Motherboard drivers..." -Verbose
Write-Host








