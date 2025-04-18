#####################################
### ASUS AM5 CSM Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet1"
$CSMEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet2"
$CSMEthernet3 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet3"
$CSMEthernet4 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet4"
$CSMEthernet5 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet5"
$CSMEthernet6 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet6"
$CSMEthernet7 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet7"
$CSMEthernet8 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet8"
$CSMEthernet9 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet9"
$CSMEthernet10 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Ethernet10"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet1
Edit-OSDCloudWinPE -DriverPath $CSMEthernet2
Edit-OSDCloudWinPE -DriverPath $CSMEthernet3
Edit-OSDCloudWinPE -DriverPath $CSMEthernet4
Edit-OSDCloudWinPE -DriverPath $CSMEthernet5
Edit-OSDCloudWinPE -DriverPath $CSMEthernet6
Edit-OSDCloudWinPE -DriverPath $CSMEthernet7
Edit-OSDCloudWinPE -DriverPath $CSMEthernet8
Edit-OSDCloudWinPE -DriverPath $CSMEthernet9
Edit-OSDCloudWinPE -DriverPath $CSMEthernet10

Write-Host
Write-Verbose "Processing: ASUS AM 5 CSM Motherboard WLAN Drivers..." -Verbose 
$CSMWLAN1 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\WLAN1"
$CSMWLAN2 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\WLAN2"
$CSMWLAN3 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\WLAN3"
$CSMWLAN4 = "C:\Drivers\Motherboards\ASUS\AM5\CSM\WLAN4"

Edit-OSDCloudWinPE -DriverPath $CSMWLAN1
Edit-OSDCloudWinPE -DriverPath $CSMWLAN2
Edit-OSDCloudWinPE -DriverPath $CSMWLAN3
Edit-OSDCloudWinPE -DriverPath $CSMWLAN4

Write-Host
Write-Verbose "Processing: ASUS AM 5 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage = "C:\Drivers\Motherboards\ASUS\AM5\CSM\Storage"

Edit-OSDCloudWinPE -DriverPath $CSMStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 CSM Motherboard Drivers..." -Verbose 
Write-Host



