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


#################################
# OSDCloud - Proxmox VT Drivers
#################################

Write-Host
Write-Verbose "Processing: Proxmox Virtualization Drivers..." -Verbose 

#################################
# OSDCloud - VMWare Workstation Pro VT Drivers
#################################

Write-Host
Write-Verbose "Processing: VMWare Workstation Pro Virtualization Drivers..." -Verbose 


#################################
# OSDCloud - unRAID VT Drivers
#################################

Write-Host
Write-Verbose "Processing: unRAID Virtualization Drivers..." -Verbose 
