#####################################
# ASRock AM 4 Extreme Motherboards
#####################################
Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Ethernet Drivers..." -Verbose 
$ExtremeEthernet = "C:\Drivers\Motherboards\ASRock\AM4\Extreme\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ExtremeEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Storage Drivers..." -Verbose 
$ExtremeStorage1 = "C:\Drivers\Motherboards\ASRock\AM4\Extreme\Storage1"
$ExtremeStorage2 = "C:\Drivers\Motherboards\ASRock\AM4\Extreme\Storage2"

Edit-OSDCloudWinPE -DriverPath $ExtremeStorage1
Edit-OSDCloudWinPE -DriverPath $ExtremeStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 







