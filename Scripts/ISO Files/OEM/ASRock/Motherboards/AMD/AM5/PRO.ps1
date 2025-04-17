############################################
# ASRock AM5 PRO motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock AMD AM5 PRO Motherboard drivers..." -Verbose
Write-Host


$PROEthernetPath = "C:\Drivers\Motherboards\ASRock\AM5\PRO\Ethernet"
$PROStoragePath = "C:\Drivers\Motherboards\ASRock\AM5\PRO\Storage"
$PROWLANPath = "C:\Drivers\Motherboards\ASRock\AM5\PRO\WLAN"

Edit-OSDCloudWinPe -DriverPath $PROEthernetPath
Edit-OSDCloudWinPe -DriverPath $PROStoragePath
Edit-OSDCloudWinPe -DriverPath $PROWLANPath

Write-Host
Write-Verbose "Completed: ASRock AMD AM5 PRO Motherboard drivers..." -Verbose
Write-Host


