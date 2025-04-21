###############################
# ASUS LGA 1851 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet = "C:\Drivers\Motherboards\ASUS\LGA1851\PRIME\Ethernet"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi = "C:\Drivers\Motherboards\ASUS\LGA1851\PRIME\WLAN"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage = "C:\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage

