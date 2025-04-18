##############################
# Gigabyte AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard Ethernet Drivers..." -Verbose 
$AITOPEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Ethernet1"
$AITOPEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $AITOPEthernet1
Edit-OSDCloudWinPE -DriversPath $AITOPEthernet2

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard WiFi Drivers..." -Verbose 
$AITOPWiFi = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\WiFi"

Edit-OSDCloudWinPE -DriversPath $AITOPWiFi

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard Storage Drivers..." -Verbose 
$AITOPStorage = "C:\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Storage"

Edit-OSDCloudWinPE -DriversPath  $AITOPStorage

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 AI TOP Motherboard Drivers..." -Verbose 

