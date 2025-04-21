###############################
# ASUS LGA 1700 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\Ethernet1"
$ROGEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\Ethernet2"


Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2


Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard WLAN Drivers..." -Verbose 
$ROGWLAN1 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN1"
$ROGWLAN2 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN2"
$ROGWLAN3 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN3"
$ROGWLAN4 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN4"
$ROGWLAN5 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN5"
$ROGWLAN6 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN6"
$ROGWLAN7 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN7"
$ROGWLAN8 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN8"
$ROGWLAN9 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN9"
$ROGWLAN10 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN10"
$ROGWLAN11 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN11"
$ROGWLAN12 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN12"
$ROGWLAN13 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN13"
$ROGWLAN14 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN14"
$ROGWLAN15 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN15"
$ROGWLAN16 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN16"
$ROGWLAN17 = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\WLAN17"

Edit-OSDCloudWinPE -DriverPath $ROGWLAN1
Edit-OSDCloudWinPE -DriverPath $ROGWLAN2
Edit-OSDCloudWinPE -DriverPath $ROGWLAN3
Edit-OSDCloudWinPE -DriverPath $ROGWLAN4
Edit-OSDCloudWinPE -DriverPath $ROGWLAN5
Edit-OSDCloudWinPE -DriverPath $ROGWLAN6
Edit-OSDCloudWinPE -DriverPath $ROGWLAN7
Edit-OSDCloudWinPE -DriverPath $ROGWLAN8
Edit-OSDCloudWinPE -DriverPath $ROGWLAN9
Edit-OSDCloudWinPE -DriverPath $ROGWLAN10
Edit-OSDCloudWinPE -DriverPath $ROGWLAN11
Edit-OSDCloudWinPE -DriverPath $ROGWLAN12
Edit-OSDCloudWinPE -DriverPath $ROGWLAN13
Edit-OSDCloudWinPE -DriverPath $ROGWLAN14
Edit-OSDCloudWinPE -DriverPath $ROGWLAN15
Edit-OSDCloudWinPE -DriverPath $ROGWLAN16
Edit-OSDCloudWinPE -DriverPath $ROGWLAN17

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage = "C:\Drivers\Motherboards\ASUS\LGA1700\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage

