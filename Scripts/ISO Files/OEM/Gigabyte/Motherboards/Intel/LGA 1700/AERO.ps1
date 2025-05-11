##############################
# Gigabyte LGA 1700 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AERO\Ethernet1"
$AEROEthernet2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AERO\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $AEROEthernet1
Edit-OSDCloudWinPE -DriverPath $AEROEthernet2

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AERO Motherboard WLAN Drivers..." -Verbose 
$AEROWiFi1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AERO\WLAN1"
$AEROWiFi2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AERO\WLAN2"

Edit-OSDCloudWinPE -DriverPath $AEROWiFi1
Edit-OSDCloudWinPE -DriverPath $AEROWiFi2

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage1 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AERO\Storage1"
$AEROStorage2 = "C:\Drivers\Motherboards\Gigabyte\LGA1700\AERO\Storage2"

Edit-OSDCloudWinPE -DriverPath  $AEROStorage1
Edit-OSDCloudWinPE -DriverPath  $AEROStorage2
