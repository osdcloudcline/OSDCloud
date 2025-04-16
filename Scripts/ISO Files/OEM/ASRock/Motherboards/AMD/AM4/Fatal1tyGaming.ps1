
######################################
## Extra PowerShell Modules - OSDCloud
######################################

# PowerShell 5.1 Modules - OSDCloud

$OSDCloudPS5xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/5.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS5xMods.Content)

# PowerShell 7.x Modules - OSDCloud

$OSDCloudPS7xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/7.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS7xMods.Content)

#########################################
# ASRock AM 4 Fata1ty Gaming Motherboards
#########################################

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard Ethernet Drivers..." -Verbose 
$Fatal1tyGamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Ethernet1"
$Fatal1tyGamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingEthernet1
Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingEthernet2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard WiFi Drivers..." -Verbose 
$Fatal1tyGamingWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\WiFi1"
$Fatal1tyGamingWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\WiFi2"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingWiFi1
Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingWiFi2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard Bluetooth Drivers..." -Verbose 
$Fatal1tyGamingBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingBluetooth

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Storage Drivers..." -Verbose 
$Fatal1tyGamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage1"
$Fatal1tyGamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage2"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingStorage1
Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 

