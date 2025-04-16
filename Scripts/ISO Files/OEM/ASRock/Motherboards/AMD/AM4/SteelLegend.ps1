
########################################
# ASRock AM 4 Steel Legend Motherboards
########################################

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard Ethernet Drivers..." -Verbose 
$SteelLegendEthernet1 = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet1"
$SteelLegendEthernet2 = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet2"
$SteelLegendEthernet3 = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet3"
$SteelLegendEthernet4 = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet4"

Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet1
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet2
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet3
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet4

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard WiFi Drivers..." -Verbose 
$SteelLegendWLAN = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend\WiFi"

Edit-OSDCloudWinPE -DriversPath $SteelLegendWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard Storage Drivers..." -Verbose 
$SteelLegendStorage1 = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend\Storage1"
$SteelLegendStorage2 = "C:\Drivers\Motherboards\ASRock\AM4\SteelLegend\Storage2"

Edit-OSDCloudWinPE -DriversPath $SteelLegendStorage1
Edit-OSDCloudWinPE -DriversPath $SteelLegendStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 
