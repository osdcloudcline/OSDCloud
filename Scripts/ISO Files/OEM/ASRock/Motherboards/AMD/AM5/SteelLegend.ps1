############################################
# ASRock AM5 Steel Legend motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock AMD AM5 SteelLegend Motherboard drivers..." -Verbose
Write-Host

$SteelLegendEthernetPath = "C:\Drivers\Motherboards\ASRock\AM5\SteelLegend\Ethernet"
$SteelLegendStoragePath = "C:\Drivers\Motherboards\ASRock\AM5\SteelLegend\Storage"
$SteelLegendWLANPath = "C:\Drivers\Motherboards\ASRock\AM5\SteelLegend\WLAN"

Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath
Edit-OSDCloudWinPe -DriverPath $SteelLegendStoragePath
Edit-OSDCloudWinPe -DriverPath $SteelLegendWLANPath

Write-Host
Write-Verbose "Completed: ASRock AMD AM5 SteelLegend Motherboard drivers..." -Verbose
Write-Host

