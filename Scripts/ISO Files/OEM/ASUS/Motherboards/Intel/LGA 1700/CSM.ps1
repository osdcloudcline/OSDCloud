###############################
# ASUS LGA 1700 CSM Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet1"
$CSMEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet2"
$CSMEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet3"
$CSMEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet1
Edit-OSDCloudWinPE -DriverPath $CSMEthernet2
Edit-OSDCloudWinPE -DriverPath $CSMEthernet3
Edit-OSDCloudWinPE -DriverPath $CSMEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard WiFi Drivers..." -Verbose 
$CSMWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WLAN1"
$CSMWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WLAN2"
$CSMWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WLAN3"

Edit-OSDCloudWinPE -DriverPath $CSMWiFi1
Edit-OSDCloudWinPE -DriverPath $CSMWiFi2
Edit-OSDCloudWinPE -DriverPath $CSMWiFi3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA700\CSM\Storage"

Edit-OSDCloudWinPE -DriverPath $CSMStorage

