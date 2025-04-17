################################
# Gigabyte AM 4 Motherboards
#################################

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard Ethernet Drivers..." -Verbose 
$UDEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\Ethernet1"
$UDEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\Ethernet2"
$UDEthernet3 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B350\Ethernet"
$UDEthernet4 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B450\Ethernet1"
$UDEthernet5 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B450\Ethernet2"
$UDEthernet6 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet1"
$UDEthernet7 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet2"
$UDEthernet8 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet3"
$UDEthernet9 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet4"
$UDEthernet10 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet5"
$UDEthernet11 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet6"
$UDEthernet12 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet7"
$UDEthernet13 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\Ethernet8"
$UDEthernet14 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X370\Ethernet"
$UDEthernet15 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X570\Ethernet1"
$UDEthernet16 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X570\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $UDEthernet1
Edit-OSDCloudWinPE -DriverPath $UDEthernet2
Edit-OSDCloudWinPE -DriverPath $UDEthernet3
Edit-OSDCloudWinPE -DriverPath $UDEthernet4
Edit-OSDCloudWinPE -DriverPath $UDEthernet5
Edit-OSDCloudWinPE -DriverPath $UDEthernet6
Edit-OSDCloudWinPE -DriverPath $UDEthernet7
Edit-OSDCloudWinPE -DriverPath $UDEthernet8
Edit-OSDCloudWinPE -DriverPath $UDEthernet9
Edit-OSDCloudWinPE -DriverPath $UDEthernet10
Edit-OSDCloudWinPE -DriverPath $UDEthernet11
Edit-OSDCloudWinPE -DriverPath $UDEthernet12
Edit-OSDCloudWinPE -DriverPath $UDEthernet13
Edit-OSDCloudWinPE -DriverPath $UDEthernet14
Edit-OSDCloudWinPE -DriverPath $UDEthernet15
Edit-OSDCloudWinPE -DriverPath $UDEthernet16

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard WiFi Drivers..." -Verbose 
$UDWiFi1 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A320\WiFi1"
$UDWiFi2 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A320\WiFi2"
$UDWiFi3 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B450\WiFi1"
$UDWiFi4 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B450\WiFi2"
$UDWiFi5 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\WiFi1"
$UDWiFi6 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\WiFi2"

Edit-OSDCloudWinPE -DriverPath $UDWiFi1
Edit-OSDCloudWinPE -DriverPath $UDWiFi2
Edit-OSDCloudWinPE -DriverPath $UDWiFi3
Edit-OSDCloudWinPE -DriverPath $UDWiFi4
Edit-OSDCloudWinPE -DriverPath $UDWiFi5
Edit-OSDCloudWinPE -DriverPath $UDWiFi6

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard Storage Drivers..." -Verbose 
$UDStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A320\RAID\NVMe"
$UDStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A320\RAID\SATA"
$UDStorage3 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\RAID\NVMe1"
$UDStorage4 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\RAID\NVMe2"
$UDStorage5 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\RAID\NVMe3"
$UDStorage6 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\RAID\NVMe4"
$UDStorage7 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\RAID\SATA1"
$UDStorage8 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\A520\RAID\SATA2"
$UDStorage9 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B350\RAID\NVMe"
$UDStorage10 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B350\RAID\SATA"
$UDStorage11 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B450\RAID\NVMe"
$UDStorage12 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B450\RAID\SATA"
$UDStorage13 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\RAID\NVMe1"
$UDStorage14 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\RAID\NVMe2"
$UDStorage15 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\RAID\SATA"
$UDStorage16 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\B550\RAID\Thunderbolt"
$UDStorage17 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X370\RAID\NVMe"
$UDStorage18 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X370\RAID\SATA"
$UDStorage19 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X570\RAID\NVMe1"
$UDStorage20 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X570\RAID\NVMe2"
$UDStorage21 = "C:\Drivers\Motherboards\Gigabyte\AM4\Ultra Durable\X570\RAID\SATA"

Edit-OSDCloudWinPE -DriverPath $UDStorage1
Edit-OSDCloudWinPE -DriverPath $UDStorage2
Edit-OSDCloudWinPE -DriverPath $UDStorage3
Edit-OSDCloudWinPE -DriverPath $UDStorage4
Edit-OSDCloudWinPE -DriverPath $UDStorage5
Edit-OSDCloudWinPE -DriverPath $UDStorage6
Edit-OSDCloudWinPE -DriverPath $UDStorage7
Edit-OSDCloudWinPE -DriverPath $UDStorage8
Edit-OSDCloudWinPE -DriverPath $UDStorage9
Edit-OSDCloudWinPE -DriverPath $UDStorage10
Edit-OSDCloudWinPE -DriverPath $UDStorage11
Edit-OSDCloudWinPE -DriverPath $UDStorage12
Edit-OSDCloudWinPE -DriverPath $UDStorage13
Edit-OSDCloudWinPE -DriverPath $UDStorage14
Edit-OSDCloudWinPE -DriverPath $UDStorage15
Edit-OSDCloudWinPE -DriverPath $UDStorage16
Edit-OSDCloudWinPE -DriverPath $UDStorage17
Edit-OSDCloudWinPE -DriverPath $UDStorage18
Edit-OSDCloudWinPE -DriverPath $UDStorage19
Edit-OSDCloudWinPE -DriverPath $UDStorage20
Edit-OSDCloudWinPE -DriverPath $UDStorage21

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 4 Motherboard Drivers..." -Verbose 


