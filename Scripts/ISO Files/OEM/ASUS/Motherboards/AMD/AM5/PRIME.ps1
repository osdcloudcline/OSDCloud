#####################################
### ASUS AM 5 PRIME Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Ethernet1"
$PRIMEEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Ethernet2"
$PRIMEEthernet3 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Ethernet3"
$PRIMEEthernet4 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Ethernet4"
$PRIMEEthernet5 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Ethernet5"
$PRIMEEthernet6 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Ethernet6"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet1
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet2
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet3
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet4
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet5
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet6

Write-Host
Write-Verbose "Processing: ASUS AM 5 PRIME Motherboard WLAN Drivers..." -Verbose 
$PRIMEWLAN1 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\WLAN1"
$PRIMEWLAN2 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\WLAN2"
$PRIMEWLAN3 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\WLAN3"
$PRIMEWLAN4 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\WLAN4"

Edit-OSDCloudWinPE -DriverPath $PRIMEWLAN1
Edit-OSDCloudWinPE -DriverPath $PRIMEWLAN2
Edit-OSDCloudWinPE -DriverPath $PRIMEWLAN3
Edit-OSDCloudWinPE -DriverPath $PRIMEWLAN4

Write-Host
Write-Verbose "Processing: ASUS AM 5 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage1 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Storage1"
$PRIMEStorage2 = "C:\Drivers\Motherboards\ASUS\AM5\PRIME\Storage2"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage1
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage2

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 PRIME Motherboard Drivers..." -Verbose 
Write-Host

