#################################
# OSDCloud - ESXI VT Drivers
#################################

Write-Host
Write-Verbose "Processing: VMWare ESXI Virtualization Drivers..." -Verbose 

$ESXIEthernet = "C:\Drivers\Virtualization\ESXI\Network"
$ESXIStorage = "C:\Drivers\Virtualization\ESXI\Storage"

Edit-OSDCloudWinPE -DriverPath $ESXIEthernet
Edit-OSDCloudWinPE -DriverPath $ESXIStorage

#################################
# OSDCloud - Hyper-V VT Drivers
#################################

Write-Host
Write-Verbose "Processing: Microsoft Hyper-V Virtualization Drivers..." -Verbose 

$HyperVEthernet = "C:\Drivers\Virtualization\HyperV\Network"

Edit-OSDCloudWinPE -DriverPath $HyperVEthernet

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

#################################
# OSDCloud - VMWare Workstation Pro VT Drivers
#################################

Write-Host
Write-Verbose "Processing: VMWare Workstation Pro Virtualization Drivers..." -Verbose 

$VMWareWSPROPath1 = "C:\Drivers\Virtualization\VMWareWSPRO\Network"
$VMWareWSPROPath2 = "C:\Drivers\Virtualization\VMWareWSPRO\Storage"

Edit-OSDCloudWinPE -DriverPath $VMWareWSPROPath1
Edit-OSDCloudWinPE -DriverPath $VMWareWSPROPath2

#################################
# OSDCloud - unRAID VT Drivers
#################################

Write-Host
Write-Verbose "Processing: unRAID Virtualization Drivers..." -Verbose 

$unRAIDPath1 = "C:\Drivers\Virtualization\unRAID\Network1"
$unRAIDPath2 = "C:\Drivers\Virtualization\unRAID\Network2"
$unRAIDPath3 = "C:\Drivers\Virtualization\unRAID\Storage1"
$unRAIDPath4 = "C:\Drivers\Virtualization\unRAID\FileSystem1"
$unRAIDPath5 = "C:\Drivers\Virtualization\unRAID\Storage2"
$unRAIDPath6 = "C:\Drivers\Virtualization\unRAID\FileSystem2"

Edit-OSDCloudWinPE -DriverPath $unRAIDPath1
Edit-OSDCloudWinPE -DriverPath $unRAIDPath2
Edit-OSDCloudWinPE -DriverPath $unRAIDPath3
Edit-OSDCloudWinPE -DriverPath $unRAIDPath4
Edit-OSDCloudWinPE -DriverPath $unRAIDPath5
Edit-OSDCloudWinPE -DriverPath $unRAIDPath6
