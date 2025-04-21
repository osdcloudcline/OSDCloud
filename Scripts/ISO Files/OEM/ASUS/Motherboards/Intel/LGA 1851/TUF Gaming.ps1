###############################
# ASUS LGA 1851 Motherboards
################################

# ASUS LGA 1851 Motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet = "C:\Drivers\Motherboards\ASUS\LGA1851\TUF\Ethernet"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming Motherboard WLAN Drivers..." -Verbose 
$TUFWLAN = "C:\Drivers\Motherboards\ASUS\LGA1851\TUF\WLAN"

Edit-OSDCloudWinPE -DriverPath $TUFWLAN

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage = "C:\Drivers\Motherboards\ASUS\LGA1851\TUF\Storage"

Edit-OSDCloudWinPE -DriverPath $TUFStorage

