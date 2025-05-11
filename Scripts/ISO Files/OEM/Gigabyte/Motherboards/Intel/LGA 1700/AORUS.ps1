##############################
# Gigabyte LGA 1700 Motherboards
###############################

# AORUS motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AORUS Motherboard Ethernet Drivers..." -Verbose 
$AORUSEthernet1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Ethernet1"
$AORUSEthernet2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Ethernet2"
$AORUSEthernet3 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet3

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWiFi1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN1"
$AORUSWiFi2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN2"
$AORUSWiFi3 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN3"
$AORUSWiFi4 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN4"
$AORUSWiFi5 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\WLAN5"

Edit-OSDCloudWinPE -DriverPath $AORUSWiFi1
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi2
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi3
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi4
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi5

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Storage1"
$AORUSStorage2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AORUS\Storage2"

Edit-OSDCloudWinPE -DriverPath $AORUSStorage1
Edit-OSDCloudWinPE -DriverPath $AORUSStorage2
