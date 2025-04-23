##############################
# Gigabyte LGA 1700 Motherboards
###############################

# AORUS motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AORUS Motherboard Ethernet Drivers..." -Verbose 
$AORUSEthernet1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Ethernet1"
$AORUSEthernet2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Ethernet2"
$AORUSEthernet3 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Ethernet3"

Edit-OSDCloudWinPE -DriversPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet3

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWiFi1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN1"
$AORUSWiFi2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN2"
$AORUSWiFi3 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN3"
$AORUSWiFi4 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN4"
$AORUSWiFi5 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN5"

Edit-OSDCloudWinPE -DriversPath $AORUSWiFi1
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi2
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi3
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi4
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi5

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Storage1"
$AORUSStorage2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Storage2"

Edit-OSDCloudWinPE -DriversPath $AORUSStorage1
Edit-OSDCloudWinPE -DriversPath $AORUSStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte LGA 1700 AORUS Motherboard Drivers..." -Verbose 
Write-Host

