Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                                              ' -BackgroundColor White                                                              
Write-Host '    This scripts creates an OSCloud Deployment ISO with the following:                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: ASRock AM4 motherboard drivers                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: VM drivers for ESXI, Hyper-V, VMWare Workstation and Proxmox   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Wireless networking support                                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - FOR SYSTEM REFRESH: User Profile Backup and Restore for data backup                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome portable browser                                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - PowerShell Modules: Version 5.x and 7.x                                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Imaging Tools: Symantec Ghost                                                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - System Rescue/Troubleshooting: Microsoft DaRT Support                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                              ' -BackgroundColor White
pause
Clear-Host

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force


Write-Host
Write-Verbose "Processing: ASRock AM4 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

$Extreme = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Extreme.ps1")
Invoke-Expression $($Extreme.Content)

$Fatal1tyGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Fatal1tyGaming.ps1")
Invoke-Expression $($Fatal1tyGaming.Content)

$PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($PRO.Content)

$PhantomGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/PhantomGaming.ps1")
Invoke-Expression $($PhantomGaming.Content)

$SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($SteelLegend.Content)

$Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($Taichi.Content)

$HyperV = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
Invoke-Expression $($HyperV.Content)

$Proxmox = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
Invoke-Expression $($Proxmox.Content)

$ESXI = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
Invoke-Expression $($ESXI.Content)

$VMWareWSPro = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
Invoke-Expression $($VMWareWSPro.Content)

$VBS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Scripting%20Support/VBS%20Scripting/VBSScriptingSupport-Download.ps1")
Invoke-Expression $($VBS.Content)

$PortableBrowser = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Browser/PortableBrowser-Download.ps1")
Invoke-WebRequest $($PortableBrowser.Content)

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UPBR-Download.ps1")
Invoke-Expression $($UPBR.Content)

$OSDCloudWallpaper = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Wallpaper/OSDCloudWallpaper-Download.ps1")
Invoke-Expression $($OSDCloudWallpaper.Content) 

$Ghost = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghosting.ps1")
Invoke-Expression $($Ghost.Content)

$DaRT = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/DaRT/DaRT.ps1")
Invoke-WebRequest $($DaRT.Content)

$MSTSC = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/MSTSC.ps1")
Invoke-Expression $($MSTSC.Content)

Write-Host
Write-Verbose "Completed: ALL ASRock AM4 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ASRock-AM4 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = Read-Host -Prompt 'Please enter custom path for new OSDCloud Workspace'
New-OSDCloudWorkspace -WorkspacePath $WorkspacePath
Set-OSDCloudWorkspace -WorkspacePath $WorkspacePath

Write-Host
Write-Verbose "Confirming new OSDCloud Workspace Path..." -Verbose
Get-OSDCloudWorkspace

#################################
# Adding PowerShell 7 to OSDCloud 
#################################

$AddPS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/AddPS7-OSDCloudISO.ps1")
Invoke-Expression $($AddPS7.Content)

#################################
# OSDCloud - Cloud Drivers
#################################

Write-Host
Write-Verbose "Processing: OSDCloud - Cloud Drivers..." -Verbose 

Edit-OSDCloudWinPE -CloudDriver USB,VMware,WiFi

Write-Host
Write-Verbose "Completed: Integration of OSDCloud - Cloud Drivers..." -Verbose
Write-Host

######################################
## Extra Scripting Support
######################################

# VBS Scripting Support

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"
$VBSName1 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBSName2 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBSName3 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBSName4 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"
$VBS1 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBS2 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBS3 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBS4 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"

$sourceWIMDir = "\Media\sources"
$WorkspacePath = Get-OSDCloudWorkspace
$WimFile = Join-Path -Path $WorkspacePath -ChildPath $sourceWIMDir
$mountdir = "C:\Mount"

Write-Verbose "Processing: Mounting OSDCloud boot.wim" -Verbose
# Mount the image

Mount-WindowsImage -ImagePath "$WimFile\boot.wim" -Path $mountdir -Index 1

Write-Host
Write-Verbose "Processing: VBS Scripting Support..." -Verbose 

Write-Host
Write-Verbose "Processing Item: $VBSName1..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS1
Write-Host

Write-Verbose "Processing Item: $VBSName2..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS2
Write-Host

Write-Verbose "Processing Item: $VBSName3..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS3
Write-Host

Write-Verbose "Processing Item: $VBSName4..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS4

Write-Host
Write-Verbose "Completed: Integration of VBS Scripting Support for OSDCloud..." -Verbose
Write-Host

########################################
# 3rd party software and utilities
########################################

# Portable Browsers

Write-Host
Write-Verbose "Processing: Google Chrome Portable Browser for OSDCloud..." -Verbose 
$ChromePath = "C:\OSDCloud\GitHub\downloads\Chrome.exe"
$ChromeDestination = "$mountdir\Windows\System32"

Copy-Item -Path $ChromePath -Destination $ChromeDestination -Force

Write-Host
Write-Verbose "Completed: Integration of Google Chrome Portable Browser for OSDCloud..." -Verbose
Write-Host

# MS DaRT Remote Connections and Troubleshooting

# ServiceUI

# CMTrace 

# Ghost Imaging
Write-Host
Write-Verbose "Processing: Ghost Imaging for OSDCloud..." -Verbose 
$Ghost64Path = "C:\OSDCloud\GitHub\downloads\Ghost\Ghost64.exe"
$GhostExplorerPath = "C:\OSDCloud\GitHub\downloads\Ghost\Ghostexp.exe"
$GhostServPath = "C:\OSDCloud\GitHub\downloads\Ghost\GhostSrv.exe"
$GhostDestination = "$mountdir\Windows\System32"

Copy-Item -Path $Ghost64Path -Destination $GhostDestination -Force
Copy-Item -Path $GhostExplorerPath -Destination $GhostDestination -Force
Copy-Item -Path $GhostServPath -Destination $GhostDestination -Force

Write-Host
Write-Verbose "Completed: Integration of Ghost Imaging for OSDCloud..." -Verbose
Write-Host

# User Profile Backup and Restore 

Write-Host
Write-Verbose "Processing: User Profile Backup/Restore for OSDCloud..." -Verbose 
$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UBPRDestination = "$mountdir\Windows\System32"

Copy-Item -Path $UPBRFilePath -Destination $UBPRDestination -Force

Write-Host
Write-Verbose "Completed: Integration of User Profile Backup/Restore for OSDCloud..." -Verbose
Write-Host

# Disount the image
Write-Host
Write-Verbose "Processing: Dismounting OSDCloud boot.wim" -Verbose

Dismount-WindowsImage -Path $mountdir -Save

######################################
## Extra PowerShell Modules - OSDCloud
######################################

# PowerShell 5.1 Modules - OSDCloud

$OSDCloudPS5xMods = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/5.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS5xMods.Content)

# PowerShell 7.x Modules - OSDCloud

$OSDCloudPS7xMods = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/7.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS7xMods.Content)

############################
# ASRock AM 4 Motherboards
############################

# Extreme motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Ethernet Drivers..." -Verbose 
$ExtremeEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Ethernet"

Edit-OSDCloudWinPE -DriversPath $ExtremeEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Storage Drivers..." -Verbose 
$ExtremeStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Storage1"
$ExtremeStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Storage2"

Edit-OSDCloudWinPE -DriversPath $ExtremeStorage1
Edit-OSDCloudWinPE -DriversPath $ExtremeStorage2

# Fata1ty Gaming motherboards

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
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard Storage Drivers..." -Verbose 
$Fatal1tyGamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage1"
$Fatal1tyGamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage2"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingStorage1
Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingStorage2

# PRO motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 4 PRO Motherboard Ethernet Drivers..." -Verbose 
$PROEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet1"
$PROEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet2"
$PROEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet3"
$PROEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet4"
$PROEthernet5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet5"

Edit-OSDCloudWinPE -DriversPath $PROEthernet1
Edit-OSDCloudWinPE -DriversPath $PROEthernet2
Edit-OSDCloudWinPE -DriversPath $PROEthernet3
Edit-OSDCloudWinPE -DriversPath $PROEthernet4
Edit-OSDCloudWinPE -DriversPath $PROEthernet5

Write-Host
Write-Verbose "Processing: ASRock AM 4 PRO Motherboard Storage Drivers..." -Verbose 
$PROStorage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Storage"

Edit-OSDCloudWinPE -DriversPath $PROStorage

# Phantom Gaming motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard Ethernet Drivers..." -Verbose 
$PhantomGamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet1"
$PhantomGamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet2"
$PhantomGamingEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet3"
$PhantomGamingEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet4"
$PhantomGamingEthernet5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet5"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet1
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet2
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet3
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet4
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet5

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard WiFi Drivers..." -Verbose 
$PhantomGamingWLAN = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\WiFi"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard Storage Drivers..." -Verbose 
$PhantomGamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Storage1"
$PhantomGamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Storage2"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingStorage1
Edit-OSDCloudWinPE -DriversPath $PhantomGamingStorage2

# Steel Legend motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard Ethernet Drivers..." -Verbose 
$SteelLegendEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet1"
$SteelLegendEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet2"
$SteelLegendEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet3"
$SteelLegendEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet4"

Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet1
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet2
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet3
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet4

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard WiFi Drivers..." -Verbose 
$SteelLegendWLAN = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\WiFi"

Edit-OSDCloudWinPE -DriversPath $SteelLegendWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard Storage Drivers..." -Verbose 
$SteelLegendStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Storage1"
$SteelLegendStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Storage2"

Edit-OSDCloudWinPE -DriversPath $SteelLegendStorage1
Edit-OSDCloudWinPE -DriversPath $SteelLegendStorage2

# Taichi motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard Ethernet Drivers..." -Verbose 
$TaichiEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\Ethernet"

Edit-OSDCloudWinPE -DriversPath $TaichiEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard WiFi Drivers..." -Verbose 
$TaichiWLAN = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\WiFi"

Edit-OSDCloudWinPE -DriversPath $TaichiWLAN

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard Storage Drivers..." -Verbose 
$TaichiStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\Storage1"
$TaichiStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\Storage2"

Edit-OSDCloudWinPE -DriversPath $TaichiStorage1
Edit-OSDCloudWinPE -DriversPath $TaichiStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 

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
$ProxmoxStorage1 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\Windows11"
$ProxmoxStorage2 = "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\WindowsServer2025"

Edit-OSDCloudWinPE -DriverPath $ProxmoxStorage1
Edit-OSDCloudWinPE -DriverPath $ProxmoxStorage2

Write-Host
Write-Verbose "Completed: Integration of Proxmox Virtualized IO Network and Storage Drivers..." -Verbose
Write-Host

###########################################
# OSDCloud NEW Wallpaper
###########################################

Write-Host
Write-Verbose "Processing: NEW OSDCloud Wallpaper..." -Verbose 
$OSDCloudwallpaper = "C:\downloads\OSDCloud\GitHub\wallpaper\winpe.jpg"

Edit-OSDCloudWinPE -Wallpaper $OSDCloudwallpaper

Write-Host
Write-Verbose "Completed: Integration of NEW OSDCloud Wallpaper..." -Verbose
Write-Host

##########################################
# OSDCloud WebScript for Startnet.cmd
##########################################


###########################################
# Create OSDCloud ISO
############################################
