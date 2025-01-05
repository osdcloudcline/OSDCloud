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
Write-Host '     - Networking and Storage: MSI  LGA 1700 Motherboard drivers                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: Gigabyte LGA 1700 Motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: ASRock   LGA 1700 Motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
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

Write-Host
Write-Verbose "Processing: PowerShell 7.x support downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

Write-Host
Write-Verbose "Completed: PowerShell 7.x support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$ASRockAQUALGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockAQUALGA1700.Content)

$ASRockExtremeLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockExtremeLGA1700.Content)

$ASRockPROLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockPROLGA1700.Content)

$ASRockPhantomGamingLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockPhantomGamingLGA1700.Content)

$ASRockSteelLegendLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockSteelLegendLGA1700.Content)

$ASRockTaichiLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockTaichiLGA1700.Content)




Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

Write-Host
Write-Verbose "Processing: ASUS Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$ASUSBusinessLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSBusinessLGA1700.Content)

$ASUSCSMLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSCSMLGA1700.Content)

$ASUSExpeditionLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSExpeditionLGA1700.Content)

$ASUSOthersLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSOthersLGA1700.Content)

$ASUSPRIMELGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSPRIMELGA1700.Content)

$ASUSProArtLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSProArtLGA1700.Content)

$ASUSROGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSROGLGA1700.Content)

$ASUSTUFGamingLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSTUFGamingLGA1700.Content)

$ASUSWorkstationLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSWorkstationLGA1700.Content)



Write-Host
Write-Verbose "Completed: ASUS Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$GigabyteAEROLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteAEROLGA1700.Content)

$GigabyteAORUSLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteAORUSLGA1700.Content)

$GigabyteEagleLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteEagleLGA1700.Content)

$GigabyteGamingLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteGamingLGA1700.Content)

$GigabyteUDLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteUDLGA1700.Content)

Write-Host
Write-Verbose "Completed: Gigabyte Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: MSI Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$MSIMEGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIMEGLGA1700.Content)

$MSIMPGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIMPGLGA1700.Content)

$MSIMAGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIMAGLGA1700.Content)

$MSIPROLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIPROLGA1700.Content)

Write-Host
Write-Verbose "Completed: MSI Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: Intel LGA 1700 Motherboard driver downloads" -Verbose
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

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name OSDCloud-ALLCPU -WinRE

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

#############################################
# INTEL LGA 1700 Driver Integration - ASRock
#############################################

Write-Host
Write-Verbose "Processing: ASRock LGA 1700 drivers" -Verbose
Write-Host

#############################################
# INTEL LGA 1700 Driver Integration - ASUS
#############################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 drivers" -Verbose
Write-Host



###############################################
# INTEL LGA 1700 Driver Integration - Gigabyte
###############################################

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1700 drivers" -Verbose
Write-Host

#############################################
# INTEL LGA 1700 Driver Integration - MSI
#############################################

Write-Host
Write-Verbose "Processing: MSI LGA 1700 drivers" -Verbose
Write-Host




Write-Host
Write-Verbose "Completed: Integration of ALL Intel Socket LGA 1700 drivers for OSDCloud..." -Verbose
Write-Host
