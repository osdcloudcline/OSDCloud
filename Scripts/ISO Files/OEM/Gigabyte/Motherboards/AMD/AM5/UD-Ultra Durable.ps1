##############################
# Gigabyte AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Ultra Durable Motherboard Ethernet Drivers..." -Verbose 
$UDEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\Ethernet1"
$UDEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\Ethernet2"
$UDEthernet3 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\Ethernet1"
$UDEthernet4 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $UDEthernet1
Edit-OSDCloudWinPE -DriverPath $UDEthernet2
Edit-OSDCloudWinPE -DriverPath $UDEthernet3
Edit-OSDCloudWinPE -DriverPath $UDEthernet4

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Ultra Durable Motherboard WiFi Drivers..." -Verbose 
$UDWLAN1 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\WLAN1"
$UDWLAN2 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\WLAN2"
$UDWLAN3 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WLAN1"
$UDWLAN4 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WLAN2"
$UDWLAN5 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WLAN3"
$UDWLAN6 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WLAN4"
$UDWLAN7 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WLAN5"
$UDWLAN8 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\WLAN6"

Edit-OSDCloudWinPE -DriverPath $UDWLAN1
Edit-OSDCloudWinPE -DriverPath $UDWLAN2
Edit-OSDCloudWinPE -DriverPath $UDWLAN3
Edit-OSDCloudWinPE -DriverPath $UDWLAN4
Edit-OSDCloudWinPE -DriverPath $UDWLAN5
Edit-OSDCloudWinPE -DriverPath $UDWLAN6
Edit-OSDCloudWinPE -DriverPath $UDWLAN7
Edit-OSDCloudWinPE -DriverPath $UDWLAN8

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Ultra Durable Motherboard Storage Drivers..." -Verbose 
$UDStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\A620\Storage\RAID\NVMe"
$UDStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM5\UD-UltraDurable\B650\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriverPath $UDStorage1
Edit-OSDCloudWinPE -DriverPath $UDStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 Ultra Durable Motherboard Drivers..." -Verbose 
Write-Host

