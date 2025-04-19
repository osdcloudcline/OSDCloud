Write-Host
Write-Verbose "Processing: MSI AM 5 PRO Motherboard Ethernet Drivers..." -Verbose 
$PROEthernet = "C:\Drivers\Motherboards\MSI\AM5\PRO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $PROEthernet

Write-Host
Write-Verbose "Processing: MSI AM 5 PRO Motherboard WiFi Drivers..." -Verbose 
$PROWiFi1 = "C:\Drivers\Motherboards\MSI\AM5\PRO\WLAN1"
$PROWiFi2 = "C:\Drivers\Motherboards\MSI\AM5\PRO\WLAN2"
$PROWiFi3 = "C:\Drivers\Motherboards\MSI\AM5\PRO\WLAN3"

Edit-OSDCloudWinPE -DriversPath $PROWiFi1
Edit-OSDCloudWinPE -DriversPath $PROWiFi2
Edit-OSDCloudWinPE -DriversPath $PROWiFi3

Write-Host
Write-Verbose "Processing: MSI AM 5 PRO Motherboard Storage Drivers..." -Verbose 
$PROStorage = "C:\Drivers\Motherboards\MSI\AM5\PRO\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $PROStorage

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 PRO Motherboard Drivers..." -Verbose 
Write-Host


