############################################
# ASRock LGA 1851 Steel Legend motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 Steel Legend Motherboard drivers..." -Verbose
Write-Host

$SteelLegendEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\SteelLegend\Ethernet"

$SteelLegendStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\SteelLegend\Storage"

$SteelLegendWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\SteelLegend\WLAN"

Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath
Edit-OSDCloudWinPe -DriverPath $SteelLegendStoragePath
Edit-OSDCloudWinPe -DriverPath $SteelLegendWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 Steel Legend Motherboard drivers..." -Verbose
Write-Host

