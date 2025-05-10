#################################
# OSDCloud - Proxmox VT Drivers
#################################

Write-Host
Write-Verbose "Processing: Proxmox Virtualization Drivers..." -Verbose 

$ProxmoxPath1 = "C:\Drivers\Virtualization\Proxmox\Network\Windows11"
$ProxmoxPath2 = "C:\Drivers\Virtualization\Proxmox\Network\WindowsServer2025"
$ProxmoxPath3 = "C:\Drivers\Virtualization\Proxmox\Storage\Windows11"
$ProxmoxPath4 = "C:\Drivers\Virtualization\Proxmox\Storage\WindowsServer2025"

Edit-OSDCloudWinPE -DriverPath $ProxmoxPath1
Edit-OSDCloudWinPE -DriverPath $ProxmoxPath2
Edit-OSDCloudWinPE -DriverPath $ProxmoxPath3
Edit-OSDCloudWinPE -DriverPath $ProxmoxPath4
