##############################
# Gigabyte LGA 1700 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\Ethernet"

Edit-OSDCloudWinPE -DriverPath $GamingEthernet

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Gaming Motherboard WLAN Drivers..." -Verbose 
$GamingWLAN1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\WLAN1"
$GamingWLAN2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\WLAN2"
$GamingWLAN3 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\WLAN3"

Edit-OSDCloudWinPE -DriverPath $GamingWLAN1
Edit-OSDCloudWinPE -DriverPath $GamingWLAN2
Edit-OSDCloudWinPE -DriverPath $GamingWLAN3

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Gaming\Storage"

Edit-OSDCloudWinPE -DriverPath $GamingStorage
