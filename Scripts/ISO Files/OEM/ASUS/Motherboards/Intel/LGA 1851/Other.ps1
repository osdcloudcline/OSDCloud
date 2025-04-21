###############################
# ASUS LGA 1851 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Other Motherboard Ethernet Drivers..." -Verbose 
$OtherEthernet = "C:\Drivers\Motherboards\ASUS\LGA1851\Other\Ethernet"

Edit-OSDCloudWinPE -DriverPath $OtherEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Other Motherboard WiFi Drivers..." -Verbose 
$OtherWiFi = "C:\Drivers\Motherboards\ASUS\LGA1851\Other\WLAN"

Edit-OSDCloudWinPE -DriverPath $OtherWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Other Motherboard Storage Drivers..." -Verbose 
$OtherStorage = "C:\Drivers\Motherboards\ASUS\LGA1851\Other\Storage"

Edit-OSDCloudWinPE -DriverPath $OtherStorage

