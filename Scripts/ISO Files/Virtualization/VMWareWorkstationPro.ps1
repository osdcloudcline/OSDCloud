#################################
# OSDCloud - VMWare Workstation Pro VT Drivers
#################################

Write-Host
Write-Verbose "Processing: VMWare Workstation Pro Virtualization Drivers..." -Verbose 

$VMWareWSPROPath1 = "C:\Drivers\Virtualization\VMWareWSPRO\Network"
$VMWareWSPROPath2 = "C:\Drivers\Virtualization\VMWareWSPRO\Storage"

Edit-OSDCloudWinPE -DriverPath $VMWareWSPROPath1
Edit-OSDCloudWinPE -DriverPath $VMWareWSPROPath2
