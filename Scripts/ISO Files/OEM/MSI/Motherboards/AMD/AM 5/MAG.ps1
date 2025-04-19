
##############################
# MSI AM 5 Motherboards
###############################

# MAG motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 MAG Motherboard Ethernet Drivers..." -Verbose 
$MAGEthernet = "C:\Drivers\Motherboards\MSI\AM5\MAG\Ethernet"

Edit-OSDCloudWinPE -DriversPath $MAGEthernet

Write-Host
Write-Verbose "Processing: MSI AM 5 MAG Motherboard WiFi Drivers..." -Verbose 
$MAGWiFi1 = "C:\Drivers\Motherboards\MSI\AM5\MAG\WLAN1"
$MAGWiFi2 = "C:\Drivers\Motherboards\MSI\AM5\MAG\WLAN2"
$MAGWiFi3 = "C:\Drivers\Motherboards\MSI\AM5\MAG\WLAN3"

Edit-OSDCloudWinPE -DriversPath $MAGWiFi1
Edit-OSDCloudWinPE -DriversPath $MAGWiFi2
Edit-OSDCloudWinPE -DriversPath $MAGWiFi3

Write-Host
Write-Verbose "Processing: MSI AM 5 MAG Motherboard Storage Drivers..." -Verbose 
$MAGStorage = "C:\Drivers\Motherboards\MSI\AM5\MAG\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $MAGStorage

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 MAG Motherboard Drivers..." -Verbose 
Write-Host

