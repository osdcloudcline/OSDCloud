
#########################################
# ASRock AM 4 Fata1ty Gaming Motherboards
#########################################

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard Ethernet Drivers..." -Verbose 
$Fatal1tyGamingEthernet1 = "C:\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Ethernet1"
$Fatal1tyGamingEthernet2 = "C:\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $Fatal1tyGamingEthernet1
Edit-OSDCloudWinPE -DriverPath $Fatal1tyGamingEthernet2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard WiFi Drivers..." -Verbose 
$Fatal1tyGamingWiFi1 = "C:\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\WiFi1"
$Fatal1tyGamingWiFi2 = "C:\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\WiFi2"

Edit-OSDCloudWinPE -DriverPath $Fatal1tyGamingWiFi1
Edit-OSDCloudWinPE -DriverPath $Fatal1tyGamingWiFi2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Storage Drivers..." -Verbose 
$Fatal1tyGamingStorage1 = "C:\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage1"
$Fatal1tyGamingStorage2 = "C:\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage2"

Edit-OSDCloudWinPE -DriverPath $Fatal1tyGamingStorage1
Edit-OSDCloudWinPE -DriverPath $Fatal1tyGamingStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 
