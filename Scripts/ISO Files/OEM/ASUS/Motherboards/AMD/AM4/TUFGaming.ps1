
#################################
# ASUS AM 4 Motherboards
#################################

Write-Host
Write-Verbose "Processing: ASUS AM 4 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet1 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet1"
$TUFEthernet2 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet2"
$TUFEthernet3 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet3"
$TUFEthernet4 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet1
Edit-OSDCloudWinPE -DriverPath $TUFEthernet2
Edit-OSDCloudWinPE -DriverPath $TUFEthernet3
Edit-OSDCloudWinPE -DriverPath $TUFEthernet4

Write-Host
Write-Verbose "Processing: ASUS AM 4 TUF Gaming Motherboard WiFi Drivers..." -Verbose 
$TUFWiFi1 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\WLAN1"
$TUFWiFi2 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\WLAN2"
$TUFWiFi3 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\WLAN3"
$TUFWiFi4 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\WLAN4"
$TUFWiFi5 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\WLAN5"
$TUFWiFi6 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\WLAN6"

Edit-OSDCloudWinPE -DriverPath $TUFWiFi1
Edit-OSDCloudWinPE -DriverPath $TUFWiFi2
Edit-OSDCloudWinPE -DriverPath $TUFWiFi3
Edit-OSDCloudWinPE -DriverPath $TUFWiFi4
Edit-OSDCloudWinPE -DriverPath $TUFWiFi5
Edit-OSDCloudWinPE -DriverPath $TUFWiFi6

Write-Host
Write-Verbose "Processing: ASUS AM 4 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage1 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\Storage1"
$TUFStorage2 = "C:\Drivers\Motherboards\ASUS\AM4\TUF\Storage2"

Edit-OSDCloudWinPE -DriverPath $TUFStorage1
Edit-OSDCloudWinPE -DriverPath $TUFStorage2

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 TUF Gaming Motherboard Drivers..." -Verbose 
Write-Host


