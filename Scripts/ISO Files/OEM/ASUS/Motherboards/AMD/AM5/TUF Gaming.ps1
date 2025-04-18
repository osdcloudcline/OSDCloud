#####################################
### ASUS AM5 TUF Gaming Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 TUFGaming Motherboard Ethernet Drivers..." -Verbose 
$TUFGamingEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\Ethernet1"
$TUFGamingEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\Ethernet2"
$TUFGamingEthernet3 = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $TUFGamingEthernet1
Edit-OSDCloudWinPE -DriverPath $TUFGamingEthernet2
Edit-OSDCloudWinPE -DriverPath $TUFGamingEthernet3

Write-Host
Write-Verbose "Processing: ASUS AM 5 TUFGaming Motherboard WLAN Drivers..." -Verbose 
$TUFGamingWLAN1 = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\WLAN1"
$TUFGamingWLAN2 = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\WLAN2"
$TUFGamingWLAN3 = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\WLAN3"
$TUFGamingWLAN4 = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\WLAN4"

Edit-OSDCloudWinPE -DriverPath $TUFGamingWLAN1
Edit-OSDCloudWinPE -DriverPath $TUFGamingWLAN2
Edit-OSDCloudWinPE -DriverPath $TUFGamingWLAN3
Edit-OSDCloudWinPE -DriverPath $TUFGamingWLAN4

Write-Host
Write-Verbose "Processing: ASUS AM 5 TUFGaming Motherboard Storage Drivers..." -Verbose 
$TUFGamingStorage = "C:\Drivers\Motherboards\ASUS\AM5\TUFGaming\Storage"

Edit-OSDCloudWinPE -DriverPath $TUFGamingStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 TUFGaming Motherboard Drivers..." -Verbose 
Write-Host


