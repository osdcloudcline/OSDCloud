###############################
# ASUS LGA 1700 Expedition Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Expedition Motherboard Ethernet Drivers..." -Verbose 
$ExpeditionEthernet = "C:\Drivers\Motherboards\ASUS\LGA1700\Expedition\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ExpeditionEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Expedition Motherboard Storage Drivers..." -Verbose 
$ExpeditionStorage = "C:\Drivers\Motherboards\ASUS\LGA1700\Expedition\Storage"

Edit-OSDCloudWinPE -DriverPath $ExpeditionStorage

