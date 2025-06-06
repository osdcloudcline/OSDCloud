##############################
# Gigabyte AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard Ethernet Drivers..." -Verbose 
$AITOPEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Ethernet1"
$AITOPEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $AITOPEthernet1
Edit-OSDCloudWinPE -DriverPath $AITOPEthernet2

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard WiFi Drivers..." -Verbose 
$AITOPWLAN = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\WLAN"

Edit-OSDCloudWinPE -DriverPath $AITOPWLAN

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard Storage Drivers..." -Verbose 
$AITOPStorage = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Storage"

Edit-OSDCloudWinPE -DriverPath  $AITOPStorage

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 AI TOP Motherboard Drivers..." -Verbose 

