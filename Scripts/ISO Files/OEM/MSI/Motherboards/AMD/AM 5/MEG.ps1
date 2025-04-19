
##############################
# MSI AM 5 Motherboards
###############################

# MEG motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard Ethernet Drivers..." -Verbose 
$MEGEthernet1 = "C:\Drivers\Motherboards\MSI\AM5\MEG\Ethernet1"
$MEGEthernet2 = "C:\Drivers\Motherboards\MSI\AM5\MEG\Ethernet2"
$MEGEthernet3 = "C:\Drivers\Motherboards\MSI\AM5\MEG\Ethernet3"
$MEGEthernet4 = "C:\Drivers\Motherboards\MSI\AM5\MEG\Ethernet4"

Edit-OSDCloudWinPE -DriversPath $MEGEthernet1
Edit-OSDCloudWinPE -DriversPath $MEGEthernet2
Edit-OSDCloudWinPE -DriversPath $MEGEthernet3
Edit-OSDCloudWinPE -DriversPath $MEGEthernet4

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard WiFi Drivers..." -Verbose 
$MEGWiFi1 = "C:\Drivers\Motherboards\MSI\AM5\MEG\WLAN1"
$MEGWiFi2 = "C:\Drivers\Motherboards\MSI\AM5\MEG\WLAN2"

Edit-OSDCloudWinPE -DriversPath $MEGWiFi1
Edit-OSDCloudWinPE -DriversPath $MEGWiFi2

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard Storage Drivers..." -Verbose 
$MEGStorage = "C:\Drivers\Motherboards\MSI\AM5\MEG\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $MEGStorage

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 MEG Motherboard Drivers..." -Verbose 
Write-Host

