##############################
# Gigabyte AM 5 Motherboards
###############################

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Eagle Motherboard Ethernet Drivers..." -Verbose 
$EagleEthernet1 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\Ethernet1"
$EagleEthernet2 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\Ethernet2"
$EagleEthernet3 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Ethernet1"
$EagleEthernet4 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $EagleEthernet1
Edit-OSDCloudWinPE -DriverPath $EagleEthernet2
Edit-OSDCloudWinPE -DriverPath $EagleEthernet3
Edit-OSDCloudWinPE -DriverPath $EagleEthernet4


Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Eagle Motherboard WiFi Drivers..." -Verbose 
$EagleWLAN1 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\WLAN1"
$EagleWLAN2 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\WLAN2"
$EagleWLAN3 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\WLAN1"
$EagleWLAN4 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\WLAN2"

Edit-OSDCloudWinPE -DriverPath $EagleWLAN1
Edit-OSDCloudWinPE -DriverPath $EagleWLAN2
Edit-OSDCloudWinPE -DriverPath $EagleWLAN3
Edit-OSDCloudWinPE -DriverPath $EagleWLAN4

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Eagle Motherboard Storage Drivers..." -Verbose 
$EagleStorage1 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\Storage\RAID\NVMe"
$EagleStorage2 = "C:\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriverPath $EagleStorage1
Edit-OSDCloudWinPE -DriverPath $EagleStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 Eagle Motherboard Drivers..." -Verbose 
Write-Host

