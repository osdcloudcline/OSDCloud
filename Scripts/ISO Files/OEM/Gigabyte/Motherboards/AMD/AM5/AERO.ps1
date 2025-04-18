#############################
# Gigabyte AM 5 Motherboards
#############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\Drivers\Motherboards\Gigabyte\AM5\AERO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard WiFi Drivers..." -Verbose 
$AEROWiFi = "C:\Drivers\Motherboards\Gigabyte\AM5\AERO\WiFi"

Edit-OSDCloudWinPE -DriversPath $AEROWiFi

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Bluetooth Drivers..." -Verbose 
$AEROBluetooth = "C:\Drivers\Motherboards\Gigabyte\AM5\AERO\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $AEROBluetooth

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage = "C:\Drivers\Motherboards\Gigabyte\AM5\AERO\Storage"

Edit-OSDCloudWinPE -DriversPath  $AEROStorage


Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 AERO Motherboard Drivers..." -Verbose 

