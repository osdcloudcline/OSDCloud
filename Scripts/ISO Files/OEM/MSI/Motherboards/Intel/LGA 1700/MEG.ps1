##############################
# MSI LGA 1700 Motherboards
###############################

# MEG motherboard

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MEG Motherboard Ethernet Drivers..." -Verbose 
$MEGEthernet1 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet1"
$MEGEthernet2 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet2"
$MEGEthernet3 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet3"
$MEGEthernet4 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet4"
$MEGEthernet5 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet5"
$MEGEthernet6 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet6"
$MEGEthernet7 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet7"
$MEGEthernet8 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Ethernet8"

Edit-OSDCloudWinPE -DriverPath $MEGEthernet1
Edit-OSDCloudWinPE -DriverPath $MEGEthernet2
Edit-OSDCloudWinPE -DriverPath $MEGEthernet3
Edit-OSDCloudWinPE -DriverPath $MEGEthernet4
Edit-OSDCloudWinPE -DriverPath $MEGEthernet5
Edit-OSDCloudWinPE -DriverPath $MEGEthernet6
Edit-OSDCloudWinPE -DriverPath $MEGEthernet7
Edit-OSDCloudWinPE -DriverPath $MEGEthernet8

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MEG Motherboard WiFi Drivers..." -Verbose 
$MEGWiFi1 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\WLAN1"
$MEGWiFi2 = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\WLAN2"

Edit-OSDCloudWinPE -DriverPath $MEGWiFi1
Edit-OSDCloudWinPE -DriverPath $MEGWiFi2

Write-Host
Write-Verbose "Processing: MSI LGA 1700 MEG Motherboard Storage Drivers..." -Verbose 
$MEGStorage = "C:\Drivers\Motherboards\MSI\LGA1700\MEG\Storage"

Edit-OSDCloudWinPE -DriverPath  $MEGStorage
