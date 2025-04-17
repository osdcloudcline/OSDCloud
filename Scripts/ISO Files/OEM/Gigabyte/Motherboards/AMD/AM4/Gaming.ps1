
################################
# Gigabyte AM 4 Motherboards
#################################

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\B350\Ethernet"
$GamingEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\B450\Ethernet1"
$GamingEthernet3 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\B450\Ethernet2"
$GamingEthernet4 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\B550\Ethernet1"
$GamingEthernet5 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\B550\Ethernet2"
$GamingEthernet6 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\X370\Ethernet1"
$GamingEthernet7 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\X370\Ethernet2"
$GamingEthernet8 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\X570\Ethernet1"
$GamingEthernet9 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\X570\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $GamingEthernet1
Edit-OSDCloudWinPE -DriverPath $GamingEthernet2
Edit-OSDCloudWinPE -DriverPath $GamingEthernet3
Edit-OSDCloudWinPE -DriverPath $GamingEthernet4
Edit-OSDCloudWinPE -DriverPath $GamingEthernet5
Edit-OSDCloudWinPE -DriverPath $GamingEthernet6
Edit-OSDCloudWinPE -DriverPath $GamingEthernet7
Edit-OSDCloudWinPE -DriverPath $GamingEthernet8
Edit-OSDCloudWinPE -DriverPath $GamingEthernet9


Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\B350\RAID\NVMe"
$GamingStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\B350\RAID\SATA"
$GamingStorage3 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\B450\RAID\NVMe"
$GamingStorage4 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\B450\RAID\SATA"
$GamingStorage5 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\B550\RAID\NVMe1"
$GamingStorage6 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\B550\RAID\NVMe2"
$GamingStorage7 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\B550\RAID\SATA"
$GamingStorage8 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X370\RAID\NVMe"
$GamingStorage9 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X370\RAID\SATA"
$GamingStorage10 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X570\RAID\NVMe1"
$GamingStorage11 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X570\RAID\NVMe2"
$GamingStorage12 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X570\RAID\NVMe3"
$GamingStorage13 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X570\RAID\NVMe4"
$GamingStorage14 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X570\RAID\SATA1"
$GamingStorage15 = "C:\Drivers\Motherboards\Gigabyte\AM4\Gaming\Storage\X570\RAID\SATA2"

Edit-OSDCloudWinPE -DriverPath $GamingStorage1
Edit-OSDCloudWinPE -DriverPath $GamingStorage2
Edit-OSDCloudWinPE -DriverPath $GamingStorage3
Edit-OSDCloudWinPE -DriverPath $GamingStorage4
Edit-OSDCloudWinPE -DriverPath $GamingStorage5
Edit-OSDCloudWinPE -DriverPath $GamingStorage6
Edit-OSDCloudWinPE -DriverPath $GamingStorage7
Edit-OSDCloudWinPE -DriverPath $GamingStorage8
Edit-OSDCloudWinPE -DriverPath $GamingStorage9
Edit-OSDCloudWinPE -DriverPath $GamingStorage10
Edit-OSDCloudWinPE -DriverPath $GamingStorage11
Edit-OSDCloudWinPE -DriverPath $GamingStorage12
Edit-OSDCloudWinPE -DriverPath $GamingStorage13
Edit-OSDCloudWinPE -DriverPath $GamingStorage14
Edit-OSDCloudWinPE -DriverPath $GamingStorage15

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 4 Motherboard Drivers..." -Verbose 


