##############################
# Gigabyte AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Ultra Durable Motherboard Ethernet Drivers..." -Verbose 
$UDEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\Ethernet1"
$UDEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\Ethernet2"
$UDEthernet3 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\Ethernet1"
$UDEthernet4 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $UDEthernet1
Edit-OSDCloudWinPE -DriversPath $UDEthernet2
Edit-OSDCloudWinPE -DriversPath $UDEthernet3
Edit-OSDCloudWinPE -DriversPath $UDEthernet4

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Ultra Durable Motherboard WiFi Drivers..." -Verbose 
$UDWiFi1 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\WiFi1"
$UDWiFi2 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\WiFi2"
$UDWiFi3 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WiFi1"
$UDWiFi4 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WiFi2"
$UDWiFi5 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WiFi3"
$UDWiFi6 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WiFi4"
$UDWiFi7 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WiFi5"
$UDWiFi8 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WiFi6"

Edit-OSDCloudWinPE -DriversPath $UDWiFi1
Edit-OSDCloudWinPE -DriversPath $UDWiFi2
Edit-OSDCloudWinPE -DriversPath $UDWiFi3
Edit-OSDCloudWinPE -DriversPath $UDWiFi4
Edit-OSDCloudWinPE -DriversPath $UDWiFi5
Edit-OSDCloudWinPE -DriversPath $UDWiFi6
Edit-OSDCloudWinPE -DriversPath $UDWiFi7
Edit-OSDCloudWinPE -DriversPath $UDWiFi8

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Ultra Durable Motherboard Storage Drivers..." -Verbose 
$UDStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\Storage\RAID\NVMe"
$UDStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $UDStorage1
Edit-OSDCloudWinPE -DriversPath $UDStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 Ultra Durable Motherboard Drivers..." -Verbose 
Write-Host

