###############################
# ASUS LGA 1700 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet1"
$PRIMEEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet2"
$PRIMEEthernet3 = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet3"
$PRIMEEthernet4 = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet1
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet2
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet3
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi1 = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME\WLAN1"
$PRIMEWiFi2 = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME\WLAN2"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi1
Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage = "C:\Drivers\Motherboards\ASUS\LGA1700\PRIME\Storage"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage

