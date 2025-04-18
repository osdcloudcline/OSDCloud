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

Edit-OSDCloudWinPE -DriversPath $GamingEthernet1
Edit-OSDCloudWinPE -DriversPath $GamingEthernet2
Edit-OSDCloudWinPE -DriversPath $GamingEthernet3
Edit-OSDCloudWinPE -DriversPath $GamingEthernet4
Edit-OSDCloudWinPE -DriversPath $GamingEthernet5
Edit-OSDCloudWinPE -DriversPath $GamingEthernet6
Edit-OSDCloudWinPE -DriversPath $GamingEthernet7
Edit-OSDCloudWinPE -DriversPath $GamingEthernet8

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Gaming Motherboard WiFi Drivers..." -Verbose 
$GamingWiFi1 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\A620\WiFi1"
$GamingWiFi2 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\WiFi1"
$GamingWiFi3 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\WiFi2"
$GamingWiFi4 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\WiFi3"
$GamingWiFi5 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\WiFi1"
$GamingWiFi6 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\WiFi2"
$GamingWiFi7 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WiFi1"
$GamingWiFi8 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WiFi2"
$GamingWiFi9 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WiFi3"
$GamingWiFi10 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WiFi4"
$GamingWiFi11 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WiFi5"
$GamingWiFi12 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\WiFi6"

Edit-OSDCloudWinPE -DriversPath $GamingWiFi1
Edit-OSDCloudWinPE -DriversPath $GamingWiFi2
Edit-OSDCloudWinPE -DriversPath $GamingWiFi3
Edit-OSDCloudWinPE -DriversPath $GamingWiFi4
Edit-OSDCloudWinPE -DriversPath $GamingWiFi5
Edit-OSDCloudWinPE -DriversPath $GamingWiFi6
Edit-OSDCloudWinPE -DriversPath $GamingWiFi7
Edit-OSDCloudWinPE -DriversPath $GamingWiFi8
Edit-OSDCloudWinPE -DriversPath $GamingWiFi9
Edit-OSDCloudWinPE -DriversPath $GamingWiFi10
Edit-OSDCloudWinPE -DriversPath $GamingWiFi11
Edit-OSDCloudWinPE -DriversPath $GamingWiFi12

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage1 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\A620\Storage\RAID\NVMe"
$GamingStorage2 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\B650\Storage\RAID\NVMe"
$GamingStorage3 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X670\Storage\RAID\NVMe"
$GamingStorage4 = "C:\Driverss\Motherboards\Gigabyte\AM5\Gaming\X870\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $GamingStorage1
Edit-OSDCloudWinPE -DriversPath $GamingStorage2
Edit-OSDCloudWinPE -DriversPath $GamingStorage3
Edit-OSDCloudWinPE -DriversPath $GamingStorage4

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 Gaming Motherboard Drivers..." -Verbose 
Write-Host

