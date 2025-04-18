#####################################
### ASUS AM5 Expedition Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 Expedition Motherboard Ethernet Drivers..." -Verbose 
$ExpeditionEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\Expedition\Ethernet1"
$ExpeditionEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\Expedition\Ethernet2"


Edit-OSDCloudWinPE -DriverPath $ExpeditionEthernet1
Edit-OSDCloudWinPE -DriverPath $ExpeditionEthernet2

Write-Host
Write-Verbose "Processing: ASUS AM 5 Expedition Motherboard Storage Drivers..." -Verbose 
$ExpeditionStorage = "C:\Drivers\Motherboards\ASUS\AM5\Expedition\Storage"

Edit-OSDCloudWinPE -DriverPath $ExpeditionStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 Expedition Motherboard Drivers..." -Verbose 
Write-Host

