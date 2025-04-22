##############################
# Gigabyte LGA 1700 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet1 = "C:\Drivers\Motherboards\Gigabyte\LGA 1700\AERO\Ethernet1"
$AEROEthernet2 = "C:\Drivers\Motherboards\Gigabyte\LGA 1700\AERO\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $AEROEthernet1
Edit-OSDCloudWinPE -DriversPath $AEROEthernet2

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AERO Motherboard WLAN Drivers..." -Verbose 
$AEROWiFi1 = "C:\Drivers\Motherboards\Gigabyte\LGA 1700\AERO\WLAN1"
$AEROWiFi2 = "C:\Drivers\Motherboards\Gigabyte\LGA 1700\AERO\WLAN2"

Edit-OSDCloudWinPE -DriversPath $AEROWiFi1
Edit-OSDCloudWinPE -DriversPath $AEROWiFi2

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage1 = "C:\Drivers\Motherboards\Gigabyte\LGA 1700\AERO\Storage1"
$AEROStorage2 = "C:\Drivers\Motherboards\Gigabyte\LGA 1700\AERO\Storage2"

Edit-OSDCloudWinPE -DriversPath  $AEROStorage1
Edit-OSDCloudWinPE -DriversPath  $AEROStorage2







