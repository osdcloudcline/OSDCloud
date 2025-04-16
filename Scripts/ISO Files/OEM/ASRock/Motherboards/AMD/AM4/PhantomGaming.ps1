
#########################################
# ASRock AM 4 Phantom Gaming Motherboards
##########################################

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard Ethernet Drivers..." -Verbose 
$PhantomGamingEthernet1 = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet1"
$PhantomGamingEthernet2 = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet2"
$PhantomGamingEthernet3 = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet3"
$PhantomGamingEthernet4 = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet4"
$PhantomGamingEthernet5 = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet5"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet1
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet2
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet3
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet4
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet5

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard WiFi Drivers..." -Verbose 
$PhantomGamingWLAN = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\WiFi"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard Storage Drivers..." -Verbose 
$PhantomGamingStorage1 = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Storage1"
$PhantomGamingStorage2 = "C:\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Storage2"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingStorage1
Edit-OSDCloudWinPE -DriversPath $PhantomGamingStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 


