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
Write-Host '     - Networking and Storage: Gigabyte AM4 motherboard drivers                               ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: PowerShell 7.x support downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

Write-Host
Write-Verbose "Completed: PowerShell 7.x support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte AM4 Motherboard driver downloads" -Verbose
Write-Host 

$AERO = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/AERO.ps1")
Invoke-Expression $($AERO.Content)

$AORUS = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/AORUS.ps1")
Invoke-Expression $($AORUS.Content)

$Gaming = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Gaming.ps1")
Invoke-Expression $($Gaming.Content)

$UD = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/UltraDurable.ps1")
Invoke-Expression $($UD.Content)

Write-Host
Write-Verbose "Completed: Gigabyte AM4 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ALL Virtualization driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Microsoft Hyper-V virtualization driver downloads" -Verbose
Write-Host 

$HyperV = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
Invoke-Expression $($HyperV.Content)

Write-Host
Write-Verbose "Processing: Proxmox virtualization driver downloads" -Verbose
Write-Host

$Proxmox = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
Invoke-Expression $($Proxmox.Content)

Write-Host
Write-Verbose "Processing: VMWare ESXI vSphere virtualization driver downloads" -Verbose
Write-Host

$ESXI = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
Invoke-Expression $($ESXI.Content)

Write-Host
Write-Verbose "Processing: VMWare Workstation Pro virtualization driver downloads" -Verbose
Write-Host

$VMWareWSPro = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
Invoke-Expression $($VMWareWSPro.Content)

Write-Host
Write-Verbose "Completed: ALL Virtualization driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Additional OSDCloud scripting support downloads" -Verbose
Write-Host

$VBS = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Scripting%20Support/VBS%20Scripting/VBSScriptingSupport-Download.ps1")
Invoke-Expression $($VBS.Content)

Write-Host
Write-Verbose "Completed: Additional OSDCloud scripting support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Google Chrome - portable browser" -Verbose
Write-Host

$PortableBrowser = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Browser/PortableBrowser-Download.ps1")
Invoke-WebRequest $($PortableBrowser.Content)

Write-Host
Write-Verbose "Processing: User Profile Backup and Restore" -Verbose
Write-Host

$UPBR = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UPBR-Download.ps1")
Invoke-Expression $($UPBR.Content)

Write-Host
Write-Verbose "Processing: System Imaging utilities" -Verbose
Write-Host

$Ghost = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghosting.ps1")
Invoke-Expression $($Ghost.Content)

Write-Host
Write-Verbose "Processing: Microsoft DaRT and Remote Desktop Connections" -Verbose
Write-Host

$DaRT = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/DaRT/DaRT.ps1")
Invoke-WebRequest $($DaRT.Content)

$MSTSC = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/MSTSC.ps1")
Invoke-Expression $($MSTSC.Content)

$CloudPC = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/CloudPC%20-%20Download.ps1")
Invoke-Expression $($CloudPC.Content) 

Write-Host
Write-Verbose "Processing: Notepad ++" -Verbose
Write-Host

$NotepadPP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Text%20Editor/NotepadPP.ps1")
Invoke-Expression $($NotepadPP.Content)

Write-Host
Write-Verbose "Processing: Explorer ++" -Verbose
Write-Host

$ExplorerPP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/File%20Explorer/ExplorerPP.ps1")
Invoke-Expression $($ExplorerPP.Content)

Write-Host
Write-Verbose "Processing: Microsoft Endpoint Configuration Manager Log Viewer - CM Trace" -Verbose
Write-Host

$CMTrace = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Log%20Viewer/CMTrace.ps1")
Invoke-Expression $($CMTrace.Content)

Write-Host
Write-Verbose "Completed: Download of Extra OSDCloud ISO Utilities" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: NEW OSDCloud wallpaper" -Verbose
Write-Host

$OSDCloudWallpaper = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Wallpaper/OSDCloudWallpaper-Download.ps1")
Invoke-Expression $($OSDCloudWallpaper.Content) 

Write-Host
Write-Verbose "Completed: OSDCloud wallpaper download" -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: All downloads" -Verbose

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Confirming OSDCloud Templates......" -Verbose
Get-OSDCloudTemplate

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template specific for ALL ASUS AM4 motherboards to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ASUS-AM4 -WinRE

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

################################
# Adding PowerShell 7 to OSDCloud 
##################################

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

################################
# Gigabyte AM 4 Motherboards
#################################

# AERO motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard WiFi Drivers..." -Verbose 
$AEROWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\WiFi1"
$AEROWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\WiFi2"

Edit-OSDCloudWinPE -DriversPath $AEROWiFi1
Edit-OSDCloudWinPE -DriversPath $AEROWiFi2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage1"
$AEROStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage2"

Edit-OSDCloudWinPE -DriversPath  $AEROStorage1
Edit-OSDCloudWinPE -DriversPath  $AEROStorage2

# AORUS motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Ethernet Drivers..." -Verbose 
$AORUSEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\A520\Ethernet1"
$AORUSEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\A520\Ethernet2"
$AORUSEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet1"
$AORUSEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet2"
$AORUSEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet3"
$AORUSEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Ethernet1"
$AORUSEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Ethernet2"
$AORUSEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet1"
$AORUSEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet2"
$AORUSEthernet10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet3"
$AORUSEthernet11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet4"
$AORUSEthernet12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet5"
$AORUSEthernet13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet1"
$AORUSEthernet14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet2"
$AORUSEthernet15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet3"
$AORUSEthernet16 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet4"
$AORUSEthernet17 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet1"
$AORUSEthernet18 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet2"
$AORUSEthernet19 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet3"
$AORUSEthernet20 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet4"
$AORUSEthernet21 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet5"
$AORUSEthernet22 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet6"
$AORUSEthernet23 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet7"
$AORUSEthernet24 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet8"
$AORUSEthernet25 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet9"
$AORUSEthernet26 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet10"
$AORUSEthernet27 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet11"

Edit-OSDCloudWinPE -DriverPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet3
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet4
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet5
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet6
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet7
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet8
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet9
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet10
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet11
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet12
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet13
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet14
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet15
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet16
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet17
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet18
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet19
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet20
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet21
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet22
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet23
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet24
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet25
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet26
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet27

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\WiFi1"
$AORUSWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi1"
$AORUSWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi2"
$AORUSWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi3"
$AORUSWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi4"
$AORUSWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi5"
$AORUSWiFi7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\WiFi1"
$AORUSWiFi8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\WiFi1"
$AORUSWiFi9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\WiFi2"

Edit-OSDCloudWinPE -DriverPath $AORUSWiFi1
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi2
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi3
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi4
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi5
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi6
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi7
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi8
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi9

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\Storage\RAID\NVMe"
$AORUSStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\Storage\RAID\SATA"

Edit-OSDCloudWinPE -DriverPath $AORUSStorage1
Edit-OSDCloudWinPE -DriverPath $AORUSStorage2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Bluetooth Drivers..." -Verbose 
$AORUSBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Bluetooth"
$AORUSBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $AORUSBluetooth1
Edit-OSDCloudWinPE -DriverPath $AORUSBluetooth2

# Gaming motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B350\Ethernet"
$GamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B450\Ethernet1"
$GamingEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B450\Ethernet2"
$GamingEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B550\Ethernet1"
$GamingEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B550\Ethernet2"
$GamingEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X370\Ethernet1"
$GamingEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X370\Ethernet2"
$GamingEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X570\Ethernet1"
$GamingEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X570\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $GamingEthernet1
Edit-OSDCloudWinPE -DriverPath $GamingEthernet2
Edit-OSDCloudWinPE -DriverPath $GamingEthernet3
Edit-OSDCloudWinPE -DriverPath $GamingEthernet4
Edit-OSDCloudWinPE -DriverPath $GamingEthernet5
Edit-OSDCloudWinPE -DriverPath $GamingEthernet6
Edit-OSDCloudWinPE -DriverPath $GamingEthernet7
Edit-OSDCloudWinPE -DriverPath $GamingEthernet8
Edit-OSDCloudWinPE -DriverPath $GamingEthernet9

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Gaming Motherboard Bluetooth Drivers..." -Verbose 
$GamingBluetooth = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B350\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $GamingBluetooth

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B350\RAID\NVMe"
$GamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B350\RAID\SATA"
$GamingStorage3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B450\RAID\NVMe"
$GamingStorage4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B450\RAID\SATA"
$GamingStorage5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B550\RAID\NVMe1"
$GamingStorage6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B550\RAID\NVMe2"
$GamingStorage7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B550\RAID\SATA"
$GamingStorage8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X370\RAID\NVMe"
$GamingStorage9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X370\RAID\SATA"
$GamingStorage10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe1"
$GamingStorage11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe2"
$GamingStorage12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe3"
$GamingStorage13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe4"
$GamingStorage14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\SATA1"
$GamingStorage15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\SATA2"

Edit-OSDCloudWinPE -DriverPath $GamingStorage1
Edit-OSDCloudWinPE -DriverPath $GamingStorage2
Edit-OSDCloudWinPE -DriverPath $GamingStorage3
Edit-OSDCloudWinPE -DriverPath $GamingStorage4
Edit-OSDCloudWinPE -DriverPath $GamingStorage5
Edit-OSDCloudWinPE -DriverPath $GamingStorage6
Edit-OSDCloudWinPE -DriverPath $GamingStorage7
Edit-OSDCloudWinPE -DriverPath $GamingStorage8
Edit-OSDCloudWinPE -DriverPath $GamingStorage9
Edit-OSDCloudWinPE -DriverPath $GamingStorage10
Edit-OSDCloudWinPE -DriverPath $GamingStorage11
Edit-OSDCloudWinPE -DriverPath $GamingStorage12
Edit-OSDCloudWinPE -DriverPath $GamingStorage13
Edit-OSDCloudWinPE -DriverPath $GamingStorage14
Edit-OSDCloudWinPE -DriverPath $GamingStorage15

# Ultra Durable motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard Ethernet Drivers..." -Verbose 
$UDEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\Ethernet1"
$UDEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\Ethernet2"
$UDEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B350\Ethernet"
$UDEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\Ethernet1"
$UDEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\Ethernet2"
$UDEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet1"
$UDEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet2"
$UDEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet3"
$UDEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet4"
$UDEthernet10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet5"
$UDEthernet11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet6"
$UDEthernet12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet7"
$UDEthernet13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet8"
$UDEthernet14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X370\Ethernet"
$UDEthernet15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\Ethernet1"
$UDEthernet16 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $UDEthernet1
Edit-OSDCloudWinPE -DriverPath $UDEthernet2
Edit-OSDCloudWinPE -DriverPath $UDEthernet3
Edit-OSDCloudWinPE -DriverPath $UDEthernet4
Edit-OSDCloudWinPE -DriverPath $UDEthernet5
Edit-OSDCloudWinPE -DriverPath $UDEthernet6
Edit-OSDCloudWinPE -DriverPath $UDEthernet7
Edit-OSDCloudWinPE -DriverPath $UDEthernet8
Edit-OSDCloudWinPE -DriverPath $UDEthernet9
Edit-OSDCloudWinPE -DriverPath $UDEthernet10
Edit-OSDCloudWinPE -DriverPath $UDEthernet11
Edit-OSDCloudWinPE -DriverPath $UDEthernet12
Edit-OSDCloudWinPE -DriverPath $UDEthernet13
Edit-OSDCloudWinPE -DriverPath $UDEthernet14
Edit-OSDCloudWinPE -DriverPath $UDEthernet15
Edit-OSDCloudWinPE -DriverPath $UDEthernet16

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard WiFi Drivers..." -Verbose 
$UDWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\WiFi1"
$UDWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\WiFi2"
$UDWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\WiFi1"
$UDWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\WiFi2"
$UDWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\WiFi1"
$UDWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\WiFi2"

Edit-OSDCloudWinPE -DriverPath $UDWiFi1
Edit-OSDCloudWinPE -DriverPath $UDWiFi2
Edit-OSDCloudWinPE -DriverPath $UDWiFi3
Edit-OSDCloudWinPE -DriverPath $UDWiFi4
Edit-OSDCloudWinPE -DriverPath $UDWiFi5
Edit-OSDCloudWinPE -DriverPath $UDWiFi6

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard Storage Drivers..." -Verbose 
$UDStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\RAID\NVMe"
$UDStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\RAID\SATA"
$UDStorage3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe1"
$UDStorage4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe2"
$UDStorage5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe3"
$UDStorage6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe4"
$UDStorage7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\SATA1"
$UDStorage8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\SATA2"
$UDStorage9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B350\RAID\NVMe"
$UDStorage10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B350\RAID\SATA"
$UDStorage11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\RAID\NVMe"
$UDStorage12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\RAID\SATA"
$UDStorage13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\NVMe1"
$UDStorage14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\NVMe2"
$UDStorage15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\SATA"
$UDStorage16 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\Thunderbolt"
$UDStorage17 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X370\RAID\NVMe"
$UDStorage18 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X370\RAID\SATA"
$UDStorage19 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\RAID\NVMe1"
$UDStorage20 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\RAID\NVMe2"
$UDStorage21 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\RAID\SATA"

Edit-OSDCloudWinPE -DriverPath $UDStorage1
Edit-OSDCloudWinPE -DriverPath $UDStorage2
Edit-OSDCloudWinPE -DriverPath $UDStorage3
Edit-OSDCloudWinPE -DriverPath $UDStorage4
Edit-OSDCloudWinPE -DriverPath $UDStorage5
Edit-OSDCloudWinPE -DriverPath $UDStorage6
Edit-OSDCloudWinPE -DriverPath $UDStorage7
Edit-OSDCloudWinPE -DriverPath $UDStorage8
Edit-OSDCloudWinPE -DriverPath $UDStorage9
Edit-OSDCloudWinPE -DriverPath $UDStorage10
Edit-OSDCloudWinPE -DriverPath $UDStorage11
Edit-OSDCloudWinPE -DriverPath $UDStorage12
Edit-OSDCloudWinPE -DriverPath $UDStorage13
Edit-OSDCloudWinPE -DriverPath $UDStorage14
Edit-OSDCloudWinPE -DriverPath $UDStorage15
Edit-OSDCloudWinPE -DriverPath $UDStorage16
Edit-OSDCloudWinPE -DriverPath $UDStorage17
Edit-OSDCloudWinPE -DriverPath $UDStorage18
Edit-OSDCloudWinPE -DriverPath $UDStorage19
Edit-OSDCloudWinPE -DriverPath $UDStorage20
Edit-OSDCloudWinPE -DriverPath $UDStorage21

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 4 Motherboard Drivers..." -Verbose 

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
