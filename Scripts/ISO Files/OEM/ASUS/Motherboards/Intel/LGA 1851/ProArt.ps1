###############################
# ASUS LGA 1851 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet = "C:\Drivers\Motherboards\ASUS\LGA1851\ProArt\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ProArt Motherboard WLAN Drivers..." -Verbose 
$ProArtWLAN1 = "C:\Drivers\Motherboards\ASUS\LGA1851\ProArt\WLAN1"
$ProArtWLAN2 = "C:\Drivers\Motherboards\ASUS\LGA1851\ProArt\WLAN2"
$ProArtWLAN3 = "C:\Drivers\Motherboards\ASUS\LGA1851\ProArt\WLAN3"
$ProArtWLAN4 = "C:\Drivers\Motherboards\ASUS\LGA1851\ProArt\WLAN4"

Edit-OSDCloudWinPE -DriverPath $ProArtWLAN1
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN2
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN3
Edit-OSDCloudWinPE -DriverPath $ProArtWLAN4

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\Drivers\Motherboards\ASUS\LGA1851\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

