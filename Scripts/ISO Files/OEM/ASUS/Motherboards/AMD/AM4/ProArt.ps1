
#################################
# ASUS AM 4 Motherboards
#################################

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet = "C:\Drivers\Motherboards\ASUS\AM4\ProArt\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard WiFi Drivers..." -Verbose 
$ProArtWiFi = "C:\Drivers\Motherboards\ASUS\AM4\ProArt\WiFi1"

Edit-OSDCloudWinPE -DriverPath $ProArtWiFi

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\Drivers\Motherboards\ASUS\AM4\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 ProArt Motherboard Drivers..." -Verbose 
Write-Host


