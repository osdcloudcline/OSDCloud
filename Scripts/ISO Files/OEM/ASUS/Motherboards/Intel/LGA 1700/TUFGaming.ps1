###############################
# ASUS LGA 1700 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet1"
$TUFEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet2"
$TUFEthernet3 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet1
Edit-OSDCloudWinPE -DriverPath $TUFEthernet2
Edit-OSDCloudWinPE -DriverPath $TUFEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard WLAN Drivers..." -Verbose 
$TUFWLAN1 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\WLAN1"
$TUFWLAN2 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\WLAN2"
$TUFWLAN3 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\WLAN3"
$TUFWLAN4 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\WLAN4"
$TUFWLAN5 = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\WLAN5"

Edit-OSDCloudWinPE -DriverPath $TUFWLAN1
Edit-OSDCloudWinPE -DriverPath $TUFWLAN2
Edit-OSDCloudWinPE -DriverPath $TUFWLAN3
Edit-OSDCloudWinPE -DriverPath $TUFWLAN4
Edit-OSDCloudWinPE -DriverPath $TUFWLAN5

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage = "C:\Drivers\Motherboards\ASUS\LGA1700\TUF\Storage"

Edit-OSDCloudWinPE -DriverPath $TUFStorage

