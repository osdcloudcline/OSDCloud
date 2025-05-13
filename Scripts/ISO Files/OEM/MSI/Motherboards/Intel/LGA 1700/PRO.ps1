##############################
# MSI LGA 1700 Motherboards
###############################

# PRO motherboard

Write-Host
Write-Verbose "Processing: MSI LGA 1700 PRO Motherboard Ethernet Drivers..." -Verbose 
$PROEthernet1 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet1"
$PROEthernet2 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet2"
$PROEthernet3 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet3"
$PROEthernet4 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet4"
$PROEthernet5 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet5"
$PROEthernet6 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet6"
$PROEthernet7 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet7"
$PROEthernet8 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Ethernet8"

Edit-OSDCloudWinPE -DriverPath $PROEthernet1
Edit-OSDCloudWinPE -DriverPath $PROEthernet2
Edit-OSDCloudWinPE -DriverPath $PROEthernet3
Edit-OSDCloudWinPE -DriverPath $PROEthernet4
Edit-OSDCloudWinPE -DriverPath $PROEthernet5
Edit-OSDCloudWinPE -DriverPath $PROEthernet6
Edit-OSDCloudWinPE -DriverPath $PROEthernet7
Edit-OSDCloudWinPE -DriverPath $PROEthernet8

Write-Host
Write-Verbose "Processing: MSI LGA 1700 PRO Motherboard WiFi Drivers..." -Verbose 
$PROWiFi1 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\WLAN1"
$PROWiFi2 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\WLAN2"
$PROWiFi3 = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\WLAN3"

Edit-OSDCloudWinPE -DriverPath $PROWiFi1
Edit-OSDCloudWinPE -DriverPath $PROWiFi2
Edit-OSDCloudWinPE -DriverPath $PROWiFi3

Write-Host
Write-Verbose "Processing: MSI LGA 1700 PRO Motherboard Storage Drivers..." -Verbose 
$PROStorage = "C:\Drivers\Motherboards\MSI\LGA1700\PRO\Storage"

Edit-OSDCloudWinPE -DriverPath  $PROStorage
