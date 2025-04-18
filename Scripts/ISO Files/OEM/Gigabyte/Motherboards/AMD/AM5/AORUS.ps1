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

Edit-OSDCloudWinPE -DriversPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet3
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet4
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet5
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet6
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet7
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet8
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet9
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet10
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet11
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet12
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet13

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWiFi1 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\WiFi1"
$AORUSWiFi2 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\WiFi2"
$AORUSWiFi3 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\WiFi3"
$AORUSWiFi4 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\WiFi1"
$AORUSWiFi5 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\WiFi2"
$AORUSWiFi6 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\WiFi3"
$AORUSWiFi7 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870\WiFi"
$AORUSWiFi8 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870E\WiFi1"


Edit-OSDCloudWinPE -DriversPath $AORUSWiFi1
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi2
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi3
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi4
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi5
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi6
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi7
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi8

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\B650\Storage\RAID\NVMe"
$AORUSStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X670\Storage\RAID\NVMe"
$AORUSStorage3 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870\Storage\RAID\NVMe"
$AORUSStorage4 = "C:\Drivers\Motherboards\Gigabyte\AM5\AORUS\X870E\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $AORUSStorage1
Edit-OSDCloudWinPE -DriversPath $AORUSStorage2
Edit-OSDCloudWinPE -DriversPath $AORUSStorage3
Edit-OSDCloudWinPE -DriversPath $AORUSStorage4

Write-Host
Write-Verbose "Completed: Gigabyte AM 5 AORUS Motherboard Drivers..." -Verbose 

