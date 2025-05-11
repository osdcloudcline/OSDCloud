##############################
# MSI LGA 1700 Motherboards
###############################

# MAG motherboard

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MAG Motherboard Ethernet Drivers..." -Verbose 
$MAGEthernet1 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\Ethernet1"
$MAGEthernet2 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\Ethernet2"
$MAGEthernet3 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\Ethernet3"
$MAGEthernet4 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\Ethernet4"
$MAGEthernet5 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\Ethernet5"
$MAGEthernet6 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\Ethernet6"

Edit-OSDCloudWinPE -DriverPath $MAGEthernet1
Edit-OSDCloudWinPE -DriverPath $MAGEthernet2
Edit-OSDCloudWinPE -DriverPath $MAGEthernet3
Edit-OSDCloudWinPE -DriverPath $MAGEthernet4
Edit-OSDCloudWinPE -DriverPath $MAGEthernet5
Edit-OSDCloudWinPE -DriverPath $MAGEthernet6

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MAG Motherboard WiFi Drivers..." -Verbose 
$MAGWiFi1 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\WLAN1"
$MAGWiFi2 = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\WLAN2"

Edit-OSDCloudWinPE -DriverPath $MAGWiFi1
Edit-OSDCloudWinPE -DriverPath $MAGWiFi2

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MAG Motherboard Storage Drivers..." -Verbose 
$MAGStorage = "C:\Drivers\Motherboards\MSI\LGA1700\MAG\Storage"

Edit-OSDCloudWinPE -DriverPath  $MAGStorage





