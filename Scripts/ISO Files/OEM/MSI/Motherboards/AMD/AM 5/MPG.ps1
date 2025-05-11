##############################
# MSI AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: MSI AM 5 MPG Motherboard Ethernet Drivers..." -Verbose 
$MPGEthernet = "C:\Drivers\Motherboards\MSI\AM5\MPG\Ethernet"

Edit-OSDCloudWinPE -DriverPath $MPGEthernet

Write-Host
Write-Verbose "Processing: MSI AM 5 MPG Motherboard WiFi Drivers..." -Verbose 
$MPGWiFi1 = "C:\Drivers\Motherboards\MSI\AM5\MPG\WLAN1"
$MPGWiFi2 = "C:\Drivers\Motherboards\MSI\AM5\MPG\WLAN2"

Edit-OSDCloudWinPE -DriverPath $MPGWiFi1
Edit-OSDCloudWinPE -DriverPath $MPGWiFi2

Write-Host
Write-Verbose "Processing: MSI AM 5 MPG Motherboard Storage Drivers..." -Verbose 
$MPGStorage = "C:\Drivers\Motherboards\MSI\AM5\MPG\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriverPath $MPGStorage

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 MPG Motherboard Drivers..." -Verbose 
Write-Host
