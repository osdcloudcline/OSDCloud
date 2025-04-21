############################################
# ASRock LGA 1851 PRO motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 PRO Motherboard drivers..." -Verbose
Write-Host

$PROEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO\Ethernet"
$PROStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO\Storage"
$PROWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO\WLAN"

Edit-OSDCloudWinPe -DriverPath $PROEthernetPath
Edit-OSDCloudWinPe -DriverPath $PROStoragePath
Edit-OSDCloudWinPe -DriverPath $PROWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 PRO Motherboard drivers..." -Verbose
Write-Host


