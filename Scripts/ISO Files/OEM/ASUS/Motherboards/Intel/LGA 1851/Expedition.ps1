###############################
# ASUS LGA 1851 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Expedition Motherboard Ethernet Drivers..." -Verbose 
$ExpeditionEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1851\Expedition\Ethernet1"
$ExpeditionEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1851\Expedition\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $ExpeditionEthernet1
Edit-OSDCloudWinPE -DriverPath $ExpeditionEthernet2

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Expedition Motherboard Storage Drivers..." -Verbose 
$ExpeditionStorage = "C:\Drivers\Motherboards\ASUS\LGA1851\Expedition\Storage"

Edit-OSDCloudWinPE -DriverPath $ExpeditionStorage
