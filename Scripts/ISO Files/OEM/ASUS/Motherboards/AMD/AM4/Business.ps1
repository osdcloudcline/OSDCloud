
#################################################
# ASUS AM 4 Motherboards - Business motherboards
##################################################

Write-Host
Write-Verbose "Processing: ASUS AM 4 Business Motherboard Ethernet Drivers..." -Verbose 
$BusinessEthernet1 = "C:\Drivers\Motherboards\ASUS\AM4\Business\Ethernet1"
$BusinessEthernet2 = "C:\Drivers\Motherboards\ASUS\AM4\Business\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $BusinessEthernet1
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet2

Write-Host
Write-Verbose "Processing: ASUS AM 4 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\Drivers\Motherboards\ASUS\AM4\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 Motherboard Drivers..." -Verbose 
Write-Host


