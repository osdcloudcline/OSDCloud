
#################################
# ASUS AM 4 Motherboards
#################################

Write-Host
Write-Verbose "Processing: ASUS AM 4 Other Motherboard Ethernet Drivers..." -Verbose 
$OtherEthernet = "C:\Drivers\Motherboards\ASUS\AM4\Other\Ethernet"

Edit-OSDCloudWinPE -DriverPath $OtherEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 Other Motherboard Storage Drivers..." -Verbose 
$OtherStorage = "C:\Drivers\Motherboards\ASUS\AM4\Other\Storage"

Edit-OSDCloudWinPE -DriverPath $OtherStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 Motherboard Drivers..." -Verbose 
Write-Host


