#####################################
### ASUS AM5 ProArt Motherboards
#####################################

Write-Host
Write-Verbose "Processing: ASUS AM 5 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet1 = "C:\Drivers\Motherboards\ASUS\AM5\ProArt\Ethernet1"
$ProArtEthernet2 = "C:\Drivers\Motherboards\ASUS\AM5\ProArt\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet1
Edit-OSDCloudWinPE -DriverPath $ProArtEthernet2

Write-Host
Write-Verbose "Processing: ASUS AM 5 ProArt Motherboard WLAN Drivers..." -Verbose 
$ProArtWLAN = "C:\Drivers\Motherboards\ASUS\AM5\ProArt\WLAN"

Edit-OSDCloudWinPE -DriverPath $ProArtWLAN

Write-Host
Write-Verbose "Processing: ASUS AM 5 ProArt Motherboard Thunderbolt Drivers..." -Verbose 
$ProArtThunderbolt = "C:\Drivers\Motherboards\ASUS\AM5\ProArt\Thunderbolt"

Edit-OSDCloudWinPE -DriverPath $ProArtThunderbolt

Write-Host
Write-Verbose "Processing: ASUS AM 5 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\Drivers\Motherboards\ASUS\AM5\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM5 ProArt Motherboard Drivers..." -Verbose 
Write-Host

