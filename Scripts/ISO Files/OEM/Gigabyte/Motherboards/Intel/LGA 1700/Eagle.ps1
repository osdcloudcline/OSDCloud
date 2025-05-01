##############################
# Gigabyte LGA 1700 Motherboards
###############################

# Eagle motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Eagle Motherboard Ethernet Drivers..." -Verbose 
$EagleEthernet = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Eagle\Ethernet"

Edit-OSDCloudWinPE -DriversPath $EagleEthernet

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Eagle Motherboard WiFi Drivers..." -Verbose 
$EagleWiFi1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Eagle\WLAN1"
$EagleWiFi2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Eagle\WLAN2"

Edit-OSDCloudWinPE -DriversPath $EagleWiFi1
Edit-OSDCloudWinPE -DriversPath $EagleWiFi2

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Eagle Motherboard Storage Drivers..." -Verbose 
$EagleStorage = "C:\Drivers\Motherboards\Gigabyte\LGA1700\Eagle\Storage"

Edit-OSDCloudWinPE -DriversPath $EagleStorage



