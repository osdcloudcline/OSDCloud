###############################
# ASUS LGA 1851 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\Ethernet1"
$ROGEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\Ethernet2"
$ROGEthernet3 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2
Edit-OSDCloudWinPE -DriverPath $ROGEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers Motherboard WLAN Drivers..." -Verbose 
$ROGWLAN1 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\WLAN1"
$ROGWLAN2 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\WLAN2"
$ROGWLAN3 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\WLAN3"
$ROGWLAN4 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\WLAN4"
$ROGWLAN5 = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\WLAN5"

Edit-OSDCloudWinPE -DriverPath $ROGWLAN1
Edit-OSDCloudWinPE -DriverPath $ROGWLAN2
Edit-OSDCloudWinPE -DriverPath $ROGWLAN3
Edit-OSDCloudWinPE -DriverPath $ROGWLAN4
Edit-OSDCloudWinPE -DriverPath $ROGWLAN5

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage = "C:\Drivers\Motherboards\ASUS\LGA1851\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage


