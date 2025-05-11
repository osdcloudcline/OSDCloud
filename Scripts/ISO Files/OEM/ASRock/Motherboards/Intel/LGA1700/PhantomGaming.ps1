############################################
# ASRock LGA 1700 Phantom Gaming motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Phantom Gaming Motherboard drivers..." -Verbose
Write-Host

$PhantomGamingEthernetPath1 = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet1"
$PhantomGamingEthernetPath2 = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet2"
$PhantomGamingEthernetPath3 = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet3"
$PhantomGamingEthernetPath4 = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet4"
$PhantomGamingEthernetPath5 = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet5"
$PhantomGamingStoragePath = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Storage"
$PhantomGamingWLANPath1 = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\WLAN1"
$PhantomGamingWLANPath2 = "C:\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\WLAN2"

Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath1
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath2
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath3
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath4
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath5
Edit-OSDCloudWinPe -DriverPath $PhantomGamingStoragePath
Edit-OSDCloudWinPe -DriverPath $PhantomGamingWLANPath1
Edit-OSDCloudWinPe -DriverPath $PhantomGamingWLANPath2

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Phantom Gaming Motherboard drivers..." -Verbose
Write-Host


