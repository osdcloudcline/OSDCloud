############################################
# ASRock LGA 1700 PRO motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 PRO Motherboard drivers..." -Verbose
Write-Host

$PROEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet1"
$PROEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet2"
$PROEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet3"
$PROEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet4"
$PROEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet5"
$PROEthernetPath6 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet6"
$PROStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Storage"

Edit-OSDCloudWinPe -DriverPath $PROEthernetPath1
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath2
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath3
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath4
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath5
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath6
Edit-OSDCloudWinPe -DriverPath $PROStoragePath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 PRO Motherboard drivers..." -Verbose
Write-Host



