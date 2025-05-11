
############################
# Gigabyte AM 4 Motherboards
############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\Drivers\Motherboards\Gigabyte\AM4\AERO\Ethernet"

Edit-OSDCloudWinPE -DriverPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard WLAN Drivers..." -Verbose 
$AEROWLAN1 = "C:\Drivers\Motherboards\Gigabyte\AM4\AERO\WLAN1"
$AEROWLAN2 = "C:\Drivers\Motherboards\Gigabyte\AM4\AERO\WLAN2"

Edit-OSDCloudWinPE -DriverPath $AEROWLAN1
Edit-OSDCloudWinPE -DriverPath $AEROWLAN2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage1"
$AEROStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage2"

Edit-OSDCloudWinPE -DriverPath  $AEROStorage1
Edit-OSDCloudWinPE -DriverPath  $AEROStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AERO AMD AM 4 Motherboard Drivers..." -Verbose 
