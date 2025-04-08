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
Write-Host '     - Networking and Storage: MSI AM5 motherboard drivers                                    ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: PowerShell 7.x support downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

Write-Host
Write-Verbose "Completed: PowerShell 7.x support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: MSI AMD AM5 motherboard driver downloads" -Verbose
Write-Host 

$Gaming = Invoke-WebRequest("")
Invoke-Expression $($Gaming.Content)

$MAG = Invoke-WebRequest("")
Invoke-Expression $($MAG.Content)

$MEG = Invoke-WebRequest("")
Invoke-Expression $($MEG.Content)

$MPG = Invoke-WebRequest("")
Invoke-Expression $($MPG.Content)

$PRO = Invoke-WebRequest("")
Invoke-Expression $($PRO.Content)

Write-Host
Write-Verbose "Completed: MSI AMD AM5 motherboard driver downloads" -Verbose
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
Write-Host

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Confirming OSDCloud Templates......" -Verbose
Get-OSDCloudTemplate

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template specific for ALL MSI AM5 motherboards to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name MSI-AM5 -WinRE

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

##############################
# MSI AM 5 Motherboards
###############################

# Gaming motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\Ethernet"

Edit-OSDCloudWinPE -DriversPath $GamingEthernet

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard WiFi Drivers..." -Verbose 
$GamingWiFi = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\WiFi"

Edit-OSDCloudWinPE -DriversPath $GamingWiFi

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Bluetooth Drivers..." -Verbose 
$GamingBluetooth = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $GamingBluetooth

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\Storage"

Edit-OSDCloudWinPE -DriversPath  $GamingStorage

# MAG motherboard

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 Gaming Motherboard Drivers..." -Verbose 

Write-Host
Write-Verbose "Processing: MSI AM 5 MAG Motherboard Ethernet Drivers..." -Verbose 
$MAGEthernet1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MAG\Ethernet1"
$MAGEthernet2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MAG\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $MAGEthernet1
Edit-OSDCloudWinPE -DriversPath $MAGEthernet2

Write-Host
Write-Verbose "Processing: MSI AM 5 MAG Motherboard WiFi Drivers..." -Verbose 
$MAGWiFi = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MAG\WiFi"

Edit-OSDCloudWinPE -DriversPath $MAGWiFi

Write-Host
Write-Verbose "Processing: MSI AM 5 MAG Motherboard Bluetooth Drivers..." -Verbose 
$MAGBluetooth = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MAG\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $MAGBluetooth

Write-Host
Write-Verbose "Processing: MSI AM 5 MAG Motherboard Storage Drivers..." -Verbose 
$MAGStorage = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MAG\Storage"

Edit-OSDCloudWinPE -DriversPath  $MAGStorage

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 MAG Motherboard Drivers..." -Verbose 
Write-Host

# MEG motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard Ethernet Drivers..." -Verbose 
$MEGEthernet1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Ethernet1"
$MEGEthernet2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Ethernet2"
$MEGEthernet3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Ethernet3"
$MEGEthernet4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Ethernet1"
$MEGEthernet5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Ethernet2"
$MEGEthernet6 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Ethernet3"
$MEGEthernet7 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Ethernet4"
$MEGEthernet8 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Ethernet5"
$MEGEthernet9 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Ethernet6"
$MEGEthernet10 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870\Ethernet1"
$MEGEthernet11 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870\Ethernet2"
$MEGEthernet12 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870E\Ethernet1"
$MEGEthernet13 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870E\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $MEGEthernet1
Edit-OSDCloudWinPE -DriversPath $MEGEthernet2
Edit-OSDCloudWinPE -DriversPath $MEGEthernet3
Edit-OSDCloudWinPE -DriversPath $MEGEthernet4
Edit-OSDCloudWinPE -DriversPath $MEGEthernet5
Edit-OSDCloudWinPE -DriversPath $MEGEthernet6
Edit-OSDCloudWinPE -DriversPath $MEGEthernet7
Edit-OSDCloudWinPE -DriversPath $MEGEthernet8
Edit-OSDCloudWinPE -DriversPath $MEGEthernet9
Edit-OSDCloudWinPE -DriversPath $MEGEthernet10
Edit-OSDCloudWinPE -DriversPath $MEGEthernet11
Edit-OSDCloudWinPE -DriversPath $MEGEthernet12
Edit-OSDCloudWinPE -DriversPath $MEGEthernet13

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard WiFi Drivers..." -Verbose 
$MEGWiFi1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\WiFi1"
$MEGWiFi2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\WiFi2"
$MEGWiFi3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\WiFi3"
$MEGWiFi4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\WiFi1"
$MEGWiFi5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\WiFi2"
$MEGWiFi6 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\WiFi3"
$MEGWiFi7 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870\WiFi"
$MEGWiFi8 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870E\WiFi1"


Edit-OSDCloudWinPE -DriversPath $MEGWiFi1
Edit-OSDCloudWinPE -DriversPath $MEGWiFi2
Edit-OSDCloudWinPE -DriversPath $MEGWiFi3
Edit-OSDCloudWinPE -DriversPath $MEGWiFi4
Edit-OSDCloudWinPE -DriversPath $MEGWiFi5
Edit-OSDCloudWinPE -DriversPath $MEGWiFi6
Edit-OSDCloudWinPE -DriversPath $MEGWiFi7
Edit-OSDCloudWinPE -DriversPath $MEGWiFi8

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard Bluetooth Drivers..." -Verbose 
$MEGBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Bluetooth1"
$MEGBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Bluetooth2"
$MEGBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Bluetooth3"
$MEGBluetooth4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Bluetooth4"
$MEGBluetooth5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Bluetooth1"
$MEGBluetooth6 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Bluetooth2"
$MEGBluetooth7 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Bluetooth3"
$MEGBluetooth8 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870\Bluetooth1"
$MEGBluetooth9 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870\Bluetooth2"
$MEGBluetooth10 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870\Bluetooth3"
$MEGBluetooth11 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870E\Bluetooth"


Edit-OSDCloudWinPE -DriversPath $MEGBluetooth1
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth2
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth3
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth4
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth5
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth6
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth7
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth8
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth9
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth10
Edit-OSDCloudWinPE -DriversPath $MEGBluetooth11

Write-Host
Write-Verbose "Processing: MSI AM 5 MEG Motherboard Storage Drivers..." -Verbose 
$MEGStorage1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\B650\Storage\RAID\NVMe"
$MEGStorage2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X670\Storage\RAID\NVMe"
$MEGStorage3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870\Storage\RAID\NVMe"
$MEGStorage4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MEG\X870E\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $MEGStorage1
Edit-OSDCloudWinPE -DriversPath $MEGStorage2
Edit-OSDCloudWinPE -DriversPath $MEGStorage3
Edit-OSDCloudWinPE -DriversPath $MEGStorage4

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 MEG Motherboard Drivers..." -Verbose 
Write-Host

# MPG motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 MPG Motherboard Ethernet Drivers..." -Verbose 
$MPGEthernet1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\B650\Ethernet1"
$MPGEthernet2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\B650\Ethernet2"
$MPGEthernet3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\X870\Ethernet1"
$MPGEthernet4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\X870\Ethernet2"


Edit-OSDCloudWinPE -DriversPath $MPGEthernet1
Edit-OSDCloudWinPE -DriversPath $MPGEthernet2
Edit-OSDCloudWinPE -DriversPath $MPGEthernet3
Edit-OSDCloudWinPE -DriversPath $MPGEthernet4


Write-Host
Write-Verbose "Processing: MSI AM 5 MPG Motherboard WiFi Drivers..." -Verbose 
$MPGWiFi1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\B650\WiFi1"
$MPGWiFi2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\B650\WiFi2"
$MPGWiFi3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\X870\WiFi1"
$MPGWiFi4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\X870\WiFi2"


Edit-OSDCloudWinPE -DriversPath $MPGWiFi1
Edit-OSDCloudWinPE -DriversPath $MPGWiFi2
Edit-OSDCloudWinPE -DriversPath $MPGWiFi3
Edit-OSDCloudWinPE -DriversPath $MPGWiFi4


Write-Host
Write-Verbose "Processing: MSI AM 5 MPG Motherboard Bluetooth Drivers..." -Verbose 
$MPGBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\B650\Bluetooth"
$MPGBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\X870\Bluetooth1"
$MPGBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\X870\Bluetooth2"


Edit-OSDCloudWinPE -DriversPath $MPGBluetooth1
Edit-OSDCloudWinPE -DriversPath $MPGBluetooth2
Edit-OSDCloudWinPE -DriversPath $MPGBluetooth3


Write-Host
Write-Verbose "Processing: MSI AM 5 MPG Motherboard Storage Drivers..." -Verbose 
$MPGStorage1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\B650\Storage\RAID\NVMe"
$MPGStorage2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\MPG\X870\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $MPGStorage1
Edit-OSDCloudWinPE -DriversPath $MPGStorage2

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 MPG Motherboard Drivers..." -Verbose 
Write-Host

# Gaming motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\A620\Ethernet1"
$GamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\A620\Ethernet2"
$GamingEthernet3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\Ethernet1"
$GamingEthernet4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\Ethernet2"
$GamingEthernet5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X670\Ethernet1"
$GamingEthernet6 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X670\Ethernet2"
$GamingEthernet7 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\Ethernet1"
$GamingEthernet8 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\Ethernet2"


Edit-OSDCloudWinPE -DriversPath $GamingEthernet1
Edit-OSDCloudWinPE -DriversPath $GamingEthernet2
Edit-OSDCloudWinPE -DriversPath $GamingEthernet3
Edit-OSDCloudWinPE -DriversPath $GamingEthernet4
Edit-OSDCloudWinPE -DriversPath $GamingEthernet5
Edit-OSDCloudWinPE -DriversPath $GamingEthernet6
Edit-OSDCloudWinPE -DriversPath $GamingEthernet7
Edit-OSDCloudWinPE -DriversPath $GamingEthernet8

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard WiFi Drivers..." -Verbose 
$GamingWiFi1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\A620\WiFi1"
$GamingWiFi2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\WiFi1"
$GamingWiFi3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\WiFi2"
$GamingWiFi4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\WiFi3"
$GamingWiFi5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X670\WiFi1"
$GamingWiFi6 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X670\WiFi2"
$GamingWiFi7 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\WiFi1"
$GamingWiFi8 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\WiFi2"
$GamingWiFi9 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\WiFi3"
$GamingWiFi10 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\WiFi4"
$GamingWiFi11 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\WiFi5"
$GamingWiFi12 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\WiFi6"

Edit-OSDCloudWinPE -DriversPath $GamingWiFi1
Edit-OSDCloudWinPE -DriversPath $GamingWiFi2
Edit-OSDCloudWinPE -DriversPath $GamingWiFi3
Edit-OSDCloudWinPE -DriversPath $GamingWiFi4
Edit-OSDCloudWinPE -DriversPath $GamingWiFi5
Edit-OSDCloudWinPE -DriversPath $GamingWiFi6
Edit-OSDCloudWinPE -DriversPath $GamingWiFi7
Edit-OSDCloudWinPE -DriversPath $GamingWiFi8
Edit-OSDCloudWinPE -DriversPath $GamingWiFi9
Edit-OSDCloudWinPE -DriversPath $GamingWiFi10
Edit-OSDCloudWinPE -DriversPath $GamingWiFi11
Edit-OSDCloudWinPE -DriversPath $GamingWiFi12

Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Bluetooth Drivers..." -Verbose 
$GamingBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\A620\Bluetooth"
$GamingBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\Bluetooth1"
$GamingBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\Bluetooth2"
$GamingBluetooth4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X670\Bluetooth1"
$GamingBluetooth5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X670\Bluetooth2"
$GamingBluetooth6 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\Bluetooth1"
$GamingBluetooth7 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\Bluetooth2"
$GamingBluetooth8 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\Bluetooth3"

Edit-OSDCloudWinPE -DriversPath $GamingBluetooth1
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth2
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth3
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth4
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth5
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth6
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth7
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth8


Write-Host
Write-Verbose "Processing: MSI AM 5 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\A620\Storage\RAID\NVMe"
$GamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\B650\Storage\RAID\NVMe"
$GamingStorage3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X670\Storage\RAID\NVMe"
$GamingStorage4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\Gaming\X870\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $GamingStorage1
Edit-OSDCloudWinPE -DriversPath $GamingStorage2
Edit-OSDCloudWinPE -DriversPath $GamingStorage3
Edit-OSDCloudWinPE -DriversPath $GamingStorage4

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 Gaming Motherboard Drivers..." -Verbose 
Write-Host

# PRO motherboard

Write-Host
Write-Verbose "Processing: MSI AM 5 PRO Motherboard Ethernet Drivers..." -Verbose 
$PROEthernet1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\A620\Ethernet1"
$PROEthernet2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\A620\Ethernet2"
$PROEthernet3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\Ethernet1"
$PROEthernet4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $PROEthernet1
Edit-OSDCloudWinPE -DriversPath $PROEthernet2
Edit-OSDCloudWinPE -DriversPath $PROEthernet3
Edit-OSDCloudWinPE -DriversPath $PROEthernet4

Write-Host
Write-Verbose "Processing: MSI AM 5 PRO Motherboard WiFi Drivers..." -Verbose 
$PROWiFi1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\A620\WiFi1"
$PROWiFi2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\A620\WiFi2"
$PROWiFi3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\WiFi1"
$PROWiFi4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\WiFi2"
$PROWiFi5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\WiFi3"
$PROWiFi6 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\WiFi4"
$PROWiFi7 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\WiFi5"
$PROWiFi8 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\WiFi6"

Edit-OSDCloudWinPE -DriversPath $PROWiFi1
Edit-OSDCloudWinPE -DriversPath $PROWiFi2
Edit-OSDCloudWinPE -DriversPath $PROWiFi3
Edit-OSDCloudWinPE -DriversPath $PROWiFi4
Edit-OSDCloudWinPE -DriversPath $PROWiFi5
Edit-OSDCloudWinPE -DriversPath $PROWiFi6
Edit-OSDCloudWinPE -DriversPath $PROWiFi7
Edit-OSDCloudWinPE -DriversPath $PROWiFi8

Write-Host
Write-Verbose "Processing: MSI AM 5 PRO Motherboard Bluetooth Drivers..." -Verbose 
$PROBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\A620\Bluetooth1"
$PROBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\A620\Bluetooth2"
$PROBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\Bluetooth1"
$PROBluetooth4 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\Bluetooth2"
$PROBluetooth5 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\Bluetooth3"

Edit-OSDCloudWinPE -DriversPath $PROBluetooth1
Edit-OSDCloudWinPE -DriversPath $PROBluetooth2
Edit-OSDCloudWinPE -DriversPath $PROBluetooth3
Edit-OSDCloudWinPE -DriversPath $PROBluetooth4
Edit-OSDCloudWinPE -DriversPath $PROBluetooth5

Write-Host
Write-Verbose "Processing: MSI AM 5 PRO Motherboard Storage Drivers..." -Verbose 
$PROStorage1 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\A620\Storage\RAID\NVMe"
$PROStorage2 = "C:\OSDCloud\Drivers\Motherboards\MSI\AM5\PRO\B650\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $PROStorage1
Edit-OSDCloudWinPE -DriversPath $PROStorage2

Write-Host
Write-Verbose "Completed: Integration of MSI AMD AM 5 PRO Motherboard Drivers..." -Verbose 
Write-Host

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

