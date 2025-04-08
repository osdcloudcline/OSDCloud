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
Write-Host '     - Networking and Storage: ASUS LGA 1700 motherboard drivers                              ' -ForegroundColor DarkBlue -BackgroundColor White
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

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

$Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Business.ps1")
Invoke-Expression $($Business.Content)

$CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSM.Content)

$Expedition = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($Expedition.Content)

$Other = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Other.ps1")
Invoke-Expression $($Other.Content)

$PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIME.Content)

$ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArt.Content)

$ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROG.Content)

$TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/TUFGaming.ps1")
Invoke-Expression $($TUFGaming.Content)

$Workstation = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($Workstation.Content)

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
Write-Verbose "Completed: ALL ASUS LGA 1700 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Confirming OSDCloud Templates......" -Verbose
Get-OSDCloudTemplate

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template specific for ALL ASUS AM4 motherboards to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ASUS-Workstation-LGA1700 -WinRE

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

# Adding PowerShell 7 to OSDCloud 

$AddPS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/AddPS7-OSDCloudISO.ps1")
Invoke-Expression $($AddPS7.Content)

#################################
# OSDCloud - Cloud Drivers
#################################

Write-Host
Write-Verbose "Integrating OSDCloud - Cloud Drivers..." -Verbose
Write-Host

$DellCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers.ps1")
Invoke-Expression $($DellCloudDrivers.Content)

$DellCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows10\1836"
$DellCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows10\22000"
$DellCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows11\Extract"
$DellCloudDriverPath4 = "C:\Drivers\Cloud Drivers\Dell\Windows PE\Extract"
$DellCloudDriverPath5 = "C:\Drivers\Cloud Drivers\Dell\Storage\Other\Extract"
$DellCloudDriverPath6 = "C:\Drivers\Cloud Drivers\Dell\Storage\Windows10\Extract"
$DellCloudDriverPath7 = "C:\Drivers\Cloud Drivers\Dell\Storage\Windows11\Extract"

Write-Verbose "Processing: Integrating OSDCloud Dell Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath4
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath5
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath6
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath7

Write-Host

$IntelCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers.ps1")
Invoke-Expression $($IntelCloudDrivers.Content)

$IntelCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Intel\Network\Client OS"
$IntelCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Intel\Network\Server OS"
$IntelCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Intel\Network\Other\1"
$IntelCloudDriverPath4 = "C:\Drivers\Cloud Drivers\Intel\Network\Other\2"

Write-Verbose "Processing: Integrating OSDCloud Intel Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath4

$SurfaceCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.ps1")
Invoke-Expression $($SurfaceCloudDrivers.Content)

$SurfaceCloudDriverPath = "C:\Drivers\Cloud Drivers\Surface\Extract"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud Microsoft Surface Tablet Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $SurfaceCloudDriverPath


$NutanixCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Nutanix%20Drivers/Nutanix-CloudDrivers.ps1")
Invoke-Expression $($NutanixCloudDrivers.Content)

$NutanixCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\1"
$NutanixCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\2"
$NutanixCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\3"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud Nutanix Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath3


$USBCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers.ps1")
Invoke-Expression $($USBCloudDrivers.Content)

$USBCloudDriverPath1 = "C:\Drivers\Cloud Drivers\USB\Extract\1"
$USBCloudDriverPath2 = "C:\Drivers\Cloud Drivers\USB\Extract\2"
$USBCloudDriverPath3 = "C:\Drivers\Cloud Drivers\USB\Extract\3"
$USBCloudDriverPath1 = "C:\Drivers\Cloud Drivers\USB\Extract\4"
$USBCloudDriverPath2 = "C:\Drivers\Cloud Drivers\USB\Extract\5"
$USBCloudDriverPath3 = "C:\Drivers\Cloud Drivers\USB\Extract\6"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud USB Cloud Drivers..." --Verbose

Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath4
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath5
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath6

$WLANCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/WLAN%20Drivers/WLAN-CloudDrivers.ps1")
Invoke-Expression $($WLANCloudDrivers.Content)

$WLANCloudDriverPath = "C:\Drivers\Cloud Drivers\WLAN\Extract"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud WiFi Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $WLANCloudDriverPath

$VMWareCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/VMWare%20Drivers/VMWare-CloudDrivers.ps1")
Invoke-Expression $($VMWareCloudDrivers.Content)

$VMWareCloudDriverPath1 = "C:\Drivers\Cloud Drivers\VMWare\Extract\1"
$VMWareCloudDriverPath2 = "C:\Drivers\Cloud Drivers\VMWare\Extract\2"
$VMWareCloudDriverPath3 = "C:\Drivers\Cloud Drivers\VMWare\Extract\3"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud VMWare Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath3

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

# CloudPC

Write-Host
Write-Verbose "Processing: Microsoft Remote Desktop - Cloud PC for OSDCloud..." -Verbose 
$CloudPCPath1 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files"
$CloudPCPath2 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files\en-us"
$CloudPCDestination1 = "$mountdir\Windows\System32"
$CloudPCDestination2 = "$mountdir\Windows\System32\en-US"

Copy-Item -Path "$CloudPCPath1\*" -Destination $CloudPCDestination1  -Force
Copy-Item -Path "$CloudPCPath2\*" -Destination $CloudPCDestination2  -Force

# CMTrace 

Write-Verbose "Processing: Microsoft Endpoint Configuration Manager Log Viewer CM Trace for OSDCloud..." -Verbose 
$CMTracePath = "C:\OSDCloud\downloads\GitHub\MECM-LogViewer"
$CMTraceDestination = "$mountdir\Windows\System32"

Copy-Item -Path $CMTracePath -Destination $CMTraceDestination -Force 

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

$OSDCloudPS5xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/5.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS5xMods.Content)

# PowerShell 7.x Modules - OSDCloud

$OSDCloudPS7xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/7.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS7xMods.Content)

###############################
# ASUS LGA 1700 Motherboards
################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard Ethernet Drivers..." -Verbose 
$WorkstationEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Workstation\Ethernet"

Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard WiFi Drivers..." -Verbose 
$WorkstationWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Workstation\WiFi1"

Edit-OSDCloudWinPE -DriverPath $WorkstationWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard Storage Drivers..." -Verbose 
$WorkstationStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Workstation\Storage"

Edit-OSDCloudWinPE -DriverPath $WorkstationStorage

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

Write-Verbose "Adding a customized PowerShell based Startnet script and configuring OSDCloud to execute it on startup..." -Verbose
Edit-OSDCloudWinPE -WebPSScript https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OSDCloud%20Startup%20Scripts/OSDCloudStartnet.ps1
Write-Host

###########################################
# Create OSDCloud ISO
############################################
