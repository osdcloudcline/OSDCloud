#####################################
### ASUS AM 5 Business Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 Business Motherboard Ethernet Drivers..." -Verbose 
$BusinessEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\Business\Ethernet1"
$BusinessEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\Business\Ethernet2"
$BusinessEthernet3 = "C:\Drivers\Motherboards\ASUS\AM5\Business\Ethernet3"
$BusinessEthernet4 = "C:\Drivers\Motherboards\ASUS\AM5\Business\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $BusinessEthernet1
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet2
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet3
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet4

Write-Host
Write-Verbose "Processing: ASUS AM 5 Business Motherboard WLAN Drivers..." -Verbose 
$BusinessWLAN = "C:\Drivers\Motherboards\ASUS\AM5\Business\WLAN"

Edit-OSDCloudWinPE -DriverPath $BusinessWLAN

Write-Host
Write-Verbose "Processing: ASUS AM 5 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\Drivers\Motherboards\ASUS\AM5\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 Business Motherboard Drivers..." -Verbose 
Write-Host




