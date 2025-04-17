
#################################
# ASUS AM 4 Motherboards
#################################
Write-Host
Write-Verbose "Processing: ASUS AM 4 Workstation Motherboard Ethernet Drivers..." -Verbose 
$WorkstationEthernet = "C:\Drivers\Motherboards\ASUS\AM4\Workstation\Ethernet"

Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 Workstation Motherboard Storage Drivers..." -Verbose 
$WorkstationStorage1 = "C:\Drivers\Motherboards\ASUS\AM4\Workstation\Storage1"
$WorkstationStorage2 = "C:\Drivers\Motherboards\ASUS\AM4\Workstation\Storage2"

Edit-OSDCloudWinPE -DriverPath $WorkstationStorage1
Edit-OSDCloudWinPE -DriverPath $WorkstationStorage2

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 Workstation Motherboard Drivers..." -Verbose 
Write-Host


