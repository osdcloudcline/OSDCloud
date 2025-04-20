############################################
# ASRock LGA 1700 Extreme motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Extreme Motherboard drivers..." -Verbose
Write-Host

$ExtremeEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet1"
$ExtremeEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet2"
$ExtremeEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet3"
$ExtremeEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet4"
$ExtremeEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet5"
$ExtremeStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Storage"
$ExtremeWLANPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\WLAN1"


Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath1
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath2
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath3
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath4
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath5
Edit-OSDCloudWinPe -DriverPath $ExtremeStoragePath
Edit-OSDCloudWinPe -DriverPath $ExtremeWLANPath1

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Extreme Motherboard drivers..." -Verbose
Write-Host


