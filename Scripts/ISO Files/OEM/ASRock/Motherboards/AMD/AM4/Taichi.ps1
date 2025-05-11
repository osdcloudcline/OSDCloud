
##################################
# ASRock AM 4 Taichi Motherboards
##################################
Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard Ethernet Drivers..." -Verbose 
$TaichiEthernet = "C:\Drivers\Motherboards\ASRock\AM4\Taichi\Ethernet"

Edit-OSDCloudWinPE -DriverPath $TaichiEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard WiFi Drivers..." -Verbose 
$TaichiWLAN = "C:\Drivers\Motherboards\ASRock\AM4\Taichi\WiFi"

Edit-OSDCloudWinPE -DriverPath $TaichiWLAN

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard Storage Drivers..." -Verbose 
$TaichiStorage1 = "C:\Drivers\Motherboards\ASRock\AM4\Taichi\Storage1"
$TaichiStorage2 = "C:\Drivers\Motherboards\ASRock\AM4\Taichi\Storage2"

Edit-OSDCloudWinPE -DriverPath $TaichiStorage1
Edit-OSDCloudWinPE -DriverPath $TaichiStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Taichi Motherboard Drivers..." -Verbose 


