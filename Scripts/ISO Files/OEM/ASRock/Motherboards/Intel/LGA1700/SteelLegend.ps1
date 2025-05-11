############################################
# ASRock LGA 1700 Steel Legend motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Steel Legend Motherboard drivers..." -Verbose
Write-Host

$SteelLegendEthernetPath1 = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet1"
$SteelLegendEthernetPath2 = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet2"
$SteelLegendEthernetPath3 = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet3"
$SteelLegendEthernetPath4 = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet4"
$SteelLegendEthernetPath5 = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet5"
$SteelLegendEthernetPath6 = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet6"
$SteelLegendStoragePath = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Storage"
$SteelLegendWLANPath1 = "C:\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\WLAN1"

Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath1
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath2
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath3
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath4
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath5
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath6
Edit-OSDCloudWinPe -DriverPath $SteelLegendStoragePath
Edit-OSDCloudWinPe -DriverPath $SteelLegendWLANPath1

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Steel Legend Motherboard drivers..." -Verbose
Write-Host

