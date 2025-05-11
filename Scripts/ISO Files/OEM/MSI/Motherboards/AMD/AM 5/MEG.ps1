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

Edit-OSDCloudWinPE -DriverPath $MEGEthernet1
Edit-OSDCloudWinPE -DriverPath $MEGEthernet2
Edit-OSDCloudWinPE -DriverPath $MEGEthernet3
Edit-OSDCloudWinPE -DriverPath $MEGEthernet4

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard WiFi Drivers..." -Verbose 
$MEGWiFi1 = "C:\Drivers\Motherboards\MSI\AM5\MEG\WLAN1"
$MEGWiFi2 = "C:\Drivers\Motherboards\MSI\AM5\MEG\WLAN2"

Edit-OSDCloudWinPE -DriverPath $MEGWiFi1
Edit-OSDCloudWinPE -DriverPath $MEGWiFi2

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard Storage Drivers..." -Verbose 
$MEGStorage = "C:\Drivers\Motherboards\MSI\AM5\MEG\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriverPath $MEGStorage

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 MEG Motherboard Drivers..." -Verbose 
Write-Host
