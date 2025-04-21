###############################
# ASUS LGA 1700 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard Ethernet Drivers..." -Verbose 
$WorkstationEthernet = "C:\Drivers\Motherboards\ASUS\LGA1700\Workstation\Ethernet"

Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard WLAN Drivers..." -Verbose 
$WorkstationWLAN = "C:\Drivers\Motherboards\ASUS\LGA1700\Workstation\WLAN"

Edit-OSDCloudWinPE -DriverPath $WorkstationWLAN

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard Storage Drivers..." -Verbose 
$WorkstationStorage = "C:\Drivers\Motherboards\ASUS\LGA1700\Workstation\Storage"

Edit-OSDCloudWinPE -DriverPath $WorkstationStorage

