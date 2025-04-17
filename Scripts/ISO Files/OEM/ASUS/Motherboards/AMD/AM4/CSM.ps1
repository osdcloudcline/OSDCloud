
#############################
# ASUS CSM Socket AM 4 Motherboards
##############################

Write-Host
Write-Verbose "Processing: ASUS AM 4 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet = "C:\Drivers\Motherboards\ASUS\AM4\CSM\Ethernet"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage1 = "C:\Drivers\Motherboards\ASUS\AM4\CSM\Storage1"
$CSMStorage2 = "C:\Drivers\Motherboards\ASUS\AM4\CSM\Storage2"

Edit-OSDCloudWinPE -DriverPath $CSMStorage1
Edit-OSDCloudWinPE -DriverPath $CSMStorage2

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 Motherboard Drivers..." -Verbose 
Write-Host


