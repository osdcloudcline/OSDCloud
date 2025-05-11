##############################
# Gigabyte AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet1 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\A620\Ethernet1"
$GamingEthernet2 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\A620\Ethernet2"
$GamingEthernet3 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\Ethernet1"
$GamingEthernet4 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\Ethernet2"
$GamingEthernet5 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\Ethernet1"
$GamingEthernet6 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\Ethernet2"
$GamingEthernet7 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\Ethernet1"
$GamingEthernet8 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $GamingEthernet1
Edit-OSDCloudWinPE -DriverPath $GamingEthernet2
Edit-OSDCloudWinPE -DriverPath $GamingEthernet3
Edit-OSDCloudWinPE -DriverPath $GamingEthernet4
Edit-OSDCloudWinPE -DriverPath $GamingEthernet5
Edit-OSDCloudWinPE -DriverPath $GamingEthernet6
Edit-OSDCloudWinPE -DriverPath $GamingEthernet7
Edit-OSDCloudWinPE -DriverPath $GamingEthernet8

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Gaming Motherboard WiFi Drivers..." -Verbose 
$GamingWLAN1 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\A620\WLAN1"
$GamingWLAN2 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\WLAN1"
$GamingWLAN3 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\WLAN2"
$GamingWLAN4 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\WLAN3"
$GamingWLAN5 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\WLAN1"
$GamingWLAN6 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\WLAN2"
$GamingWLAN7 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WLAN1"
$GamingWLAN8 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WLAN2"
$GamingWLAN9 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WLAN3"
$GamingWLAN10 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WLAN4"
$GamingWLAN11 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WLAN5"
$GamingWLAN12 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WLAN6"

Edit-OSDCloudWinPE -DriverPath $GamingWLAN1
Edit-OSDCloudWinPE -DriverPath $GamingWLAN2
Edit-OSDCloudWinPE -DriverPath $GamingWLAN3
Edit-OSDCloudWinPE -DriverPath $GamingWLAN4
Edit-OSDCloudWinPE -DriverPath $GamingWLAN5
Edit-OSDCloudWinPE -DriverPath $GamingWLAN6
Edit-OSDCloudWinPE -DriverPath $GamingWLAN7
Edit-OSDCloudWinPE -DriverPath $GamingWLAN8
Edit-OSDCloudWinPE -DriverPath $GamingWLAN9
Edit-OSDCloudWinPE -DriverPath $GamingWLAN10
Edit-OSDCloudWinPE -DriverPath $GamingWLAN11
Edit-OSDCloudWinPE -DriverPath $GamingWLAN12

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage1 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\A620\Storage\RAID\NVMe"
$GamingStorage2 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\Storage\RAID\NVMe"
$GamingStorage3 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\Storage\RAID\NVMe"
$GamingStorage4 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriverPath $GamingStorage1
Edit-OSDCloudWinPE -DriverPath $GamingStorage2
Edit-OSDCloudWinPE -DriverPath $GamingStorage3
Edit-OSDCloudWinPE -DriverPath $GamingStorage4

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 Gaming Motherboard Drivers..." -Verbose 
Write-Host

