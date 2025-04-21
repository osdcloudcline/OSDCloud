###############################
# ASUS LGA 1700 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard Ethernet Drivers..." -Verbose 
$BusinessEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet1"
$BusinessEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet2"
$BusinessEthernet3 = "C:\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet3"
$BusinessEthernet4 = "C:\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $BusinessEthernet1
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet2
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet3
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard WiFi Drivers..." -Verbose 
$BusinessWiFi1 = "C:\Drivers\Motherboards\ASUS\LGA1700\Business\WLAN1"
$BusinessWiFi2 = "C:\Drivers\Motherboards\ASUS\LGA1700\Business\WLAN2"
$BusinessWiFi3 = "C:\Drivers\Motherboards\ASUS\LGA1700\Business\WLAN3"

Edit-OSDCloudWinPE -DriverPath $BusinessWiFi1
Edit-OSDCloudWinPE -DriverPath $BusinessWiFi2
Edit-OSDCloudWinPE -DriverPath $BusinessWiFi3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

Write-Host 
