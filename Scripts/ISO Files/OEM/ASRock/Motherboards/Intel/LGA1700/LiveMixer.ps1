############################################
# ASRock LGA 1700 LiveMixer motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 LiveMixer Motherboard drivers..." -Verbose
Write-Host

$LiveMixerEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\LiveMixer\Ethernet"
$LiveMixerStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\LiveMixer\Storage"

Edit-OSDCloudWinPe -DriverPath $LiveMixerEthernetPath
Edit-OSDCloudWinPe -DriverPath $LiveMixerStoragePath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 LiveMixer Motherboard drivers..." -Verbose
Write-Host




