#####################################
### ASUS AM5 Others Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 Others Motherboard Ethernet Drivers..." -Verbose 
$OthersEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\Others\Ethernet1"
$OthersEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\Others\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $OthersEthernet1
Edit-OSDCloudWinPE -DriverPath $OthersEthernet2

Write-Host
Write-Verbose "Processing: ASUS AM 5 Others Motherboard WLAN Drivers..." -Verbose 
$OthersWLAN1 = "C:\Drivers\Motherboards\ASUS\AM5\Others\WLAN1"
$OthersWLAN2 = "C:\Drivers\Motherboards\ASUS\AM5\Others\WLAN2"

Edit-OSDCloudWinPE -DriverPath $OthersWLAN1
Edit-OSDCloudWinPE -DriverPath $OthersWLAN2

Write-Host
Write-Verbose "Processing: ASUS AM 5 Others Motherboard Storage Drivers..." -Verbose 
$OthersStorage = "C:\Drivers\Motherboards\ASUS\AM5\Others\Storage"

Edit-OSDCloudWinPE -DriverPath $OthersStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 Others Motherboard Drivers..." -Verbose 
Write-Host


