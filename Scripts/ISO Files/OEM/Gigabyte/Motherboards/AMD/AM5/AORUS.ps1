##############################
# Gigabyte AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AORUS Motherboard Ethernet Drivers..." -Verbose 
$AORUSEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\Ethernet1"
$AORUSEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\Ethernet2"
$AORUSEthernet3 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\Ethernet3"
$AORUSEthernet4 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Ethernet1"
$AORUSEthernet5 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Ethernet2"
$AORUSEthernet6 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Ethernet3"
$AORUSEthernet7 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Ethernet4"
$AORUSEthernet8 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Ethernet5"
$AORUSEthernet9 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Ethernet6"
$AORUSEthernet10 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870\Ethernet1"
$AORUSEthernet11 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870\Ethernet2"
$AORUSEthernet12 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870E\Ethernet1"
$AORUSEthernet13 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870E\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet3
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet4
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet5
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet6
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet7
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet8
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet9
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet10
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet11
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet12
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet13

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWLAN1 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\WLAN1"
$AORUSWLAN2 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\WLAN2"
$AORUSWLAN3 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\WLAN3"
$AORUSWLAN4 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\WLAN1"
$AORUSWLAN5 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\WLAN2"
$AORUSWLAN6 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\WLAN3"
$AORUSWLAN7 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870\WLAN"
$AORUSWLAN8 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870E\WLAN"


Edit-OSDCloudWinPE -DriverPath $AORUSWLAN1
Edit-OSDCloudWinPE -DriverPath $AORUSWLAN2
Edit-OSDCloudWinPE -DriverPath $AORUSWLAN3
Edit-OSDCloudWinPE -DriverPath $AORUSWLAN4
Edit-OSDCloudWinPE -DriverPath $AORUSWLAN5
Edit-OSDCloudWinPE -DriverPath $AORUSWLAN6
Edit-OSDCloudWinPE -DriverPath $AORUSWLAN7
Edit-OSDCloudWinPE -DriverPath $AORUSWLAN8

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\Storage\RAID\NVMe"
$AORUSStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Storage\RAID\NVMe"
$AORUSStorage3 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870\Storage\RAID\NVMe"
$AORUSStorage4 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870E\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriverPath $AORUSStorage1
Edit-OSDCloudWinPE -DriverPath $AORUSStorage2
Edit-OSDCloudWinPE -DriverPath $AORUSStorage3
Edit-OSDCloudWinPE -DriverPath $AORUSStorage4

Write-Host
Write-Verbose "Completed: Gigabyte AM 5 AORUS Motherboard Drivers..." -Verbose 

