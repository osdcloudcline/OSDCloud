
############################
# Gigabyte AM 4 Motherboards
############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\Drivers\Motherboards\Gigabyte\AM4\AERO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard WiFi Drivers..." -Verbose 
$AEROWiFi1 = "C:\Drivers\Drivers\Motherboards\Gigabyte\AM4\AERO\WiFi1"
$AEROWiFi2 = "C:\Drivers\Drivers\Motherboards\Gigabyte\AM4\AERO\WiFi2"

Edit-OSDCloudWinPE -DriversPath $AEROWiFi1
Edit-OSDCloudWinPE -DriversPath $AEROWiFi2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage1 = "C:\Drivers\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage1"
$AEROStorage2 = "C:\Drivers\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage2"

Edit-OSDCloudWinPE -DriversPath  $AEROStorage1
Edit-OSDCloudWinPE -DriversPath  $AEROStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AERO AMD AM 4 Motherboard Drivers..." -Verbose 


