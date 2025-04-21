###############################
# ASUS LGA 1700 Others Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard Ethernet Drivers..." -Verbose 
$OtherEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1700\Other\Ethernet1"
$OtherEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1700\Other\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $OtherEthernet1
Edit-OSDCloudWinPE -DriverPath $OtherEthernet2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard WiFi Drivers..." -Verbose 
$OtherWiFi1 = "C:\Drivers\Motherboards\ASUS\LGA1700\Other\WLAN"
$OtherWiFi2 = "C:\Drivers\Motherboards\ASUS\LGA1700\Other\WLAN2"

Edit-OSDCloudWinPE -DriverPath $OtherWiFi1
Edit-OSDCloudWinPE -DriverPath $OtherWiFi2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard Storage Drivers..." -Verbose 
$OtherStorage = "C:\Drivers\Motherboards\ASUS\LGA1700\Other\Storage"

Edit-OSDCloudWinPE -DriverPath $OtherStorage

