
#################################
# ASUS AM 4 Motherboards
#################################

Write-Host
Write-Verbose "Processing: ASUS AM 4 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet1 = "C:\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet1"
$PRIMEEthernet2 = "C:\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet2"
$PRIMEEthernet3 = "C:\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet1
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet2
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet3

Write-Host
Write-Verbose "Processing: ASUS AM 4 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi = "C:\Drivers\Motherboards\ASUS\AM4\PRIME\WiFi"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi

Write-Host
Write-Verbose "Processing: ASUS AM 4 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage1 = "C:\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage1"
$PRIMEStorage2 = "C:\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage2"
$PRIMEStorage3 = "C:\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage3"
$PRIMEStorage4 = "C:\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage4"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage1
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage2
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage3
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage4

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 Motherboard Drivers..." -Verbose 
Write-Host


