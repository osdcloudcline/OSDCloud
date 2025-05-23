#############################
# Gigabyte AM 5 Motherboards
#############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\Drivers\Motherboards\Gigabyte\AM5\AERO\Ethernet"

Edit-OSDCloudWinPE -DriverPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard WiFi Drivers..." -Verbose 
$AEROWLAN = "C:\Drivers\Motherboards\Gigabyte\AM5\AERO\WLAN"

Edit-OSDCloudWinPE -DriverPath $AEROWLAN

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage = "C:\Drivers\Motherboards\Gigabyte\AM5\AERO\Storage"

Edit-OSDCloudWinPE -DriverPath  $AEROStorage


Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 AERO Motherboard Drivers..." -Verbose 
