############################################
# ASRock LGA 1851 LiveMixer motherboards
############################################

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 LiveMixer Motherboard drivers..." -Verbose
Write-Host

$LiveMixerEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer\Ethernet"
$LiveMixerStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer\Storage"
$LiveMixerWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer\WLAN"

Edit-OSDCloudWinPe -DriverPath $LiveMixerEthernetPath
Edit-OSDCloudWinPe -DriverPath $LiveMixerStoragePath
Edit-OSDCloudWinPe -DriverPath $LiveMixerWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 LiveMixer Motherboard drivers..." -Verbose
Write-Host




