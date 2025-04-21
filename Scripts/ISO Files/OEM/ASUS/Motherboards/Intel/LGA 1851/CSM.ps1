###############################
# ASUS LGA 1851 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet = "C:\Drivers\Motherboards\ASUS\LGA1851\CSM\Ethernet"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 CSM Motherboard WiFi Drivers..." -Verbose 
$CSMWiFi = "C:\Drivers\Motherboards\ASUS\LGA1851\CSM\WLAN"

Edit-OSDCloudWinPE -DriverPath $CSMWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage = "C:\Drivers\Motherboards\ASUS\LGA1851\CSM\Storage"

Edit-OSDCloudWinPE -DriverPath $CSMStorage

