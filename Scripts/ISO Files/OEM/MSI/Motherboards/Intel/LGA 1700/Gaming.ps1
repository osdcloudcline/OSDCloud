##############################
# MSI LGA 1700 Motherboards
###############################

# Gaming motherboard

Write-Host
Write-Verbose "Processing: MSI LGA 1700 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet1 = "C:\Drivers\Motherboards\MSI\LGA1700\Gaming\Ethernet1"
$GamingEthernet2 = "C:\Drivers\Motherboards\MSI\LGA1700\Gaming\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $GamingEthernet1
Edit-OSDCloudWinPE -DriversPath $GamingEthernet2

Write-Host
Write-Verbose "Processing: MSI LGA 1700 Gaming Motherboard WLAN Drivers..." -Verbose 
$GamingWLAN1 = "C:\Drivers\Motherboards\MSI\LGA1700\Gaming\WLAN1"
$GamingWLAN2 = "C:\Drivers\Motherboards\MSI\LGA1700\Gaming\WLAN2"

Edit-OSDCloudWinPE -DriversPath $GamingWLAN1
Edit-OSDCloudWinPE -DriversPath $GamingWLAN2

Write-Host
Write-Verbose "Processing: MSI LGA 1700 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage = "C:\Drivers\Motherboards\MSI\LGA1700\Gaming\Storage"

Edit-OSDCloudWinPE -DriversPath $GamingStorage


Write-Host
Write-Verbose "Completed: Integration of MSI Intel LGA 1700 Gaming Motherboard Drivers..." -Verbose 
Write-Host
