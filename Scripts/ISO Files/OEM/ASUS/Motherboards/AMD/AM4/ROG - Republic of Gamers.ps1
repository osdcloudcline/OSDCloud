
#################################
# ASUS AM 4 Motherboards
#################################

Write-Host
Write-Verbose "Processing: ASUS AM 4 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet1"
$ROGEthernet2 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet2"
$ROGEthernet3 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet3"
$ROGEthernet4 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet4"
$ROGEthernet5 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet5"

Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2
Edit-OSDCloudWinPE -DriverPath $ROGEthernet3
Edit-OSDCloudWinPE -DriverPath $ROGEthernet4
Edit-OSDCloudWinPE -DriverPath $ROGEthernet5

Write-Host
Write-Verbose "Processing: ASUS AM 4 ROG - Republic of Gamers Motherboard WiFi Drivers..." -Verbose 
$ROGWiFi1 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\WiFi1"
$ROGWiFi2 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\WiFi2"
$ROGWiFi3 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\WiFi3"
$ROGWiFi4 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\WiFi4"

Edit-OSDCloudWinPE -DriverPath $ROGWiFi1
Edit-OSDCloudWinPE -DriverPath $ROGWiFi2
Edit-OSDCloudWinPE -DriverPath $ROGWiFi3
Edit-OSDCloudWinPE -DriverPath $ROGWiFi4


Write-Host
Write-Verbose "Processing: ASUS AM 4 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage1 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\Storage"
$ROGStorage2 = "C:\Drivers\Motherboards\ASUS\AM4\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage1
Edit-OSDCloudWinPE -DriverPath $ROGStorage2

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 ROG - Republic of Gamers Motherboard Drivers..." -Verbose 
Write-Host


