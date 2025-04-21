###############################
# ASUS LGA 1851 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Business Motherboard Ethernet Drivers..." -Verbose 
$BusinessEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Business\Ethernet"

Edit-OSDCloudWinPE -DriverPath $BusinessEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Business Motherboard WiFi Drivers..." -Verbose 
$BusinessWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Business\WLAN"

Edit-OSDCloudWinPE -DriverPath $BusinessWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

