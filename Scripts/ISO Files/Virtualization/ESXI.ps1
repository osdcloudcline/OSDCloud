#################################
# OSDCloud - ESXI VT Drivers
#################################

Write-Host
Write-Verbose "Processing: VMWare ESXI Virtualization Drivers..." -Verbose 

$ESXIEthernet = "C:\Drivers\Virtualization\ESXI\Network"
$ESXIStorage = "C:\Drivers\Virtualization\ESXI\Storage"

Edit-OSDCloudWinPE -DriverPath $ESXIEthernet
Edit-OSDCloudWinPE -DriverPath $ESXIStorage
