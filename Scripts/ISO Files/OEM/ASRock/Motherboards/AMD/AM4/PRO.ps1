
########################################
# ASRock AM 4 PRO Motherboards
########################################

Write-Host
Write-Verbose "Processing: ASRock AM 4 PRO Motherboard Ethernet Drivers..." -Verbose 
$PROEthernet1 = "C:\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet1"
$PROEthernet2 = "C:\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet2"
$PROEthernet3 = "C:\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet3"
$PROEthernet4 = "C:\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet4"
$PROEthernet5 = "C:\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet5"

Edit-OSDCloudWinPE -DriverPath $PROEthernet1
Edit-OSDCloudWinPE -DriverPath $PROEthernet2
Edit-OSDCloudWinPE -DriverPath $PROEthernet3
Edit-OSDCloudWinPE -DriverPath $PROEthernet4
Edit-OSDCloudWinPE -DriverPath $PROEthernet5

Write-Host
Write-Verbose "Processing: ASRock AM 4 PRO Motherboard Storage Drivers..." -Verbose 
$PROStorage = "C:\Drivers\Motherboards\ASRock\AM4\PRO\Storage"

Edit-OSDCloudWinPE -DriverPath $PROStorage

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 


