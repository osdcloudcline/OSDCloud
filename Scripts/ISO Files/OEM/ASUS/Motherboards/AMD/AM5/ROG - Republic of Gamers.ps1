#####################################
### ASUS AM 5 ROG Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 ROG Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Ethernet1"
$ROGEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Ethernet2"
$ROGEthernet3 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Ethernet3"
$ROGEthernet4 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Ethernet4"
$ROGEthernet5 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Ethernet5"
$ROGEthernet6 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Ethernet6"
$ROGEthernet7 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Ethernet7"

Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2
Edit-OSDCloudWinPE -DriverPath $ROGEthernet3
Edit-OSDCloudWinPE -DriverPath $ROGEthernet4
Edit-OSDCloudWinPE -DriverPath $ROGEthernet5
Edit-OSDCloudWinPE -DriverPath $ROGEthernet6
Edit-OSDCloudWinPE -DriverPath $ROGEthernet7

Write-Host
Write-Verbose "Processing: ASUS AM 5 ROG Motherboard WLAN Drivers..." -Verbose 
$ROGWLAN1 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\WLAN1"
$ROGWLAN2 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\WLAN2"
$ROGWLAN3 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\WLAN3"
$ROGWLAN4 = "C:\Drivers\Motherboards\ASUS\AM5\ROG\WLAN4"

Edit-OSDCloudWinPE -DriverPath $ROGWLAN1
Edit-OSDCloudWinPE -DriverPath $ROGWLAN2
Edit-OSDCloudWinPE -DriverPath $ROGWLAN3
Edit-OSDCloudWinPE -DriverPath $ROGWLAN4

Write-Host
Write-Verbose "Processing: ASUS AM 5 ROG Motherboard Storage Drivers..." -Verbose 
$ROGStorage = "C:\Drivers\Motherboards\ASUS\AM5\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 ROG Motherboard Drivers..." -Verbose 
Write-Host


