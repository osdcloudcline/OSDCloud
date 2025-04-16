############################################
# Other Drivers
############################################

# Virtualization Drivers - Hyper-V

Write-Host
Write-Verbose "Processing: Microsoft Hyper-V Ethernet Drivers..." -Verbose 
$HyperVNetwork = "C:\OSDCloud\Drivers\Virtualization\HyperV\Network"

Edit-OSDCloudWinPE -DriverPath $HyperVNetwork

Write-Host
Write-Verbose "Completed: Integration of Microsoft Hyper-V Network Drivers..." -Verbose
Write-Host

# Virtualization Drivers - VMWare ESXI

Write-Host
Write-Verbose "Processing: VMWare ESXI vSphere Ethernet Drivers..." -Verbose 
$ESXIEthernet = "C:\OSDCloud\Drivers\Virtualization\ESXI\Network"

Edit-OSDCloudWinPE -DriverPath  $ESXIEthernet

Write-Host
Write-Verbose "Processing: VMWare ESXI vSphere Storage Drivers..." -Verbose 
$ESXIStorage = "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage"

Edit-OSDCloudWinPE -DriverPath $ESXIStorage

Write-Host
Write-Verbose "Completed: Integration of VMWare ESXI vSphere Network and Storage Drivers..." -Verbose
Write-Host

# Virtualization Drivers - VMWare Workstation Pro

Write-Host
Write-Verbose "Processing: VMWare Workstation Pro Ethernet Drivers..." -Verbose 
$VMWareWorkstationProEthernet = "C:\OSDCloud\Drivers\Virtualization\VMWareWSPRO\Network"

Edit-OSDCloudWinPE -DriverPath  $VMWareWorkstationProEthernet

Write-Host
Write-Verbose "Processing: VMWare Workstation Pro Storage Drivers..." -Verbose 
$VMWareWorkstationProStorage = "C:\OSDCloud\Drivers\Virtualization\VMWareWSPRO\Storage"

Edit-OSDCloudWinPE -DriverPath $VMWareWorkstationProStorage

Write-Host
Write-Verbose "Completed: Integration of VMWare Workstation Pro Network and Storage Drivers..." -Verbose
Write-Host

# Virtualization Drivers - Proxmox

Write-Host
Write-Verbose "Processing: Proxmox Virtual IO Ethernet Drivers..." -Verbose 
$ProxmoxEthernet1 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\Windows11"
$ProxmoxEthernet2 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\WindowsServer2025"

Edit-OSDCloudWinPE -DriverPath  $ProxmoxEthernet1
Edit-OSDCloudWinPE -DriverPath  $ProxmoxEthernet2

Write-Host
Write-Verbose "Processing: Proxmox Virtual IO Storage Drivers..." -Verbose 
$ProxmoxStorage3 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\Windows11"
$ProxmoxStorage4 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\WindowsServer2025"

Edit-OSDCloudWinPE -DriverPath $ProxmoxStorage3
Edit-OSDCloudWinPE -DriverPath $ProxmoxStorage4

Write-Host
Write-Verbose "Completed: Integration of Proxmox Virtualized IO Network and Storage Drivers..." -Verbose
Write-Host
