###############################
# ASUS LGA 1700 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet1"
$ProArtEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet2"
$ProArtEthernet3 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet1
Edit-OSDCloudWinPE -DriverPath $ProArtEthernet2
Edit-OSDCloudWinPE -DriverPath $ProArtEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard WLAN Drivers..." -Verbose 
$ProArtWLAN1 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN1"
$ProArtWLAN2 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN2"
$ProArtWLAN3 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN3"
$ProArtWLAN4 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN4"
$ProArtWLAN5 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN5"
$ProArtWLAN6 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN6"
$ProArtWLAN7 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN7"
$ProArtWLAN8 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN8"
$ProArtWLAN9 = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\WLAN9"

Edit-OSDCloudWinPE -DriverPath $ProArtWLAN1
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN2
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN3
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN4
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN5
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN6
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN7
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN8
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN9

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\Drivers\Motherboards\ASUS\LGA1700\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

