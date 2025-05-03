##############################
# Gigabyte LGA 1700 Motherboards
###############################

# Ultra Durable motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Ultra Durable Motherboard Ethernet Drivers..." -Verbose 
$UDEthernet = "C:\Drivers\Motherboards\Gigabyte\LGA1700\UltraDurable\Ethernet"

Edit-OSDCloudWinPE -DriversPath $UDEthernet

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Ultra Durable Motherboard WiFi Drivers..." -Verbose 
$UDWiFi1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\UltraDurable\WLAN1"
$UDWiFi2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\UltraDurable\WLAN2"
$UDWiFi3 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\UltraDurable\WLAN3"
$UDWiFi4 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\UltraDurable\WLAN4"

Edit-OSDCloudWinPE -DriversPath $UDWiFi1
Edit-OSDCloudWinPE -DriversPath $UDWiFi2
Edit-OSDCloudWinPE -DriversPath $UDWiFi3
Edit-OSDCloudWinPE -DriversPath $UDWiFi4

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 Ultra Durable Motherboard Storage Drivers..." -Verbose 
$UDStorage = "C:\Drivers\Motherboards\Gigabyte\LGA1700\UltraDurable\Storage"

Edit-OSDCloudWinPE -DriversPath $UDStorage



