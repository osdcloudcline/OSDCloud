##############################
# MSI LGA 1700 Motherboards
###############################

# MPG motherboard

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MPG Motherboard Ethernet Drivers..." -Verbose 
$MPGEthernet1 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Ethernet1"
$MPGEthernet2 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Ethernet2"
$MPGEthernet3 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Ethernet3"
$MPGEthernet4 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Ethernet4"
$MPGEthernet5 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Ethernet5"
$MPGEthernet6 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Ethernet6"
$MPGEthernet7 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Ethernet7"


Edit-OSDCloudWinPE -DriverPath $MPGEthernet1
Edit-OSDCloudWinPE -DriverPath $MPGEthernet2
Edit-OSDCloudWinPE -DriverPath $MPGEthernet3
Edit-OSDCloudWinPE -DriverPath $MPGEthernet4
Edit-OSDCloudWinPE -DriverPath $MPGEthernet5
Edit-OSDCloudWinPE -DriverPath $MPGEthernet6
Edit-OSDCloudWinPE -DriverPath $MPGEthernet7


Write-Host
Write-Verbose "Processing: MSI LGA 1700 MPG Motherboard WiFi Drivers..." -Verbose 
$MPGWiFi1 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\WLAN1"
$MPGWiFi2 = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\WLAN2"

Edit-OSDCloudWinPE -DriverPath $MPGWiFi1
Edit-OSDCloudWinPE -DriverPath $MPGWiFi2

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MPG Motherboard Storage Drivers..." -Verbose 
$MPGStorage = "C:\Drivers\Motherboards\MSI\LGA1700\MPG\Storage"

Edit-OSDCloudWinPE -DriverPath  $MPGStorage
