##############################
# Gigabyte LGA 1700 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\Ethernet"

Edit-OSDCloudWinPE -DriversPath $GamingEthernet

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Gaming Motherboard WLAN Drivers..." -Verbose 
$GamingWLAN1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\WLAN1"
$GamingWLAN2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\WLAN2"

Edit-OSDCloudWinPE -DriversPath $GamingWLAN1
Edit-OSDCloudWinPE -DriversPath $GamingWLAN2

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\Storage"

Edit-OSDCloudWinPE -DriversPath $GamingStorage





