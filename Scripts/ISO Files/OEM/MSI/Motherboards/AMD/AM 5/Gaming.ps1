##############################
# MSI AM 5 Motherboards
###############################

# Gaming motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet = "C:\Drivers\Motherboards\MSI\AM5\Gaming\Ethernet"

Edit-OSDCloudWinPE -DriversPath $GamingEthernet

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard WiFi Drivers..." -Verbose 
$GamingWiFi1 = "C:\Drivers\Motherboards\MSI\AM5\Gaming\WLAN1"
$GamingWiFi2 = "C:\Drivers\Motherboards\MSI\AM5\Gaming\WLAN2"
$GamingWiFi3 = "C:\Drivers\Motherboards\MSI\AM5\Gaming\WLAN3"

Edit-OSDCloudWinPE -DriversPath $GamingWiFi1
Edit-OSDCloudWinPE -DriversPath $GamingWiFi2
Edit-OSDCloudWinPE -DriversPath $GamingWiFi3

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage = "C:\Drivers\Motherboards\MSI\AM5\Gaming\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $GamingStorage

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 Gaming Motherboard Drivers..." -Verbose 
Write-Host

