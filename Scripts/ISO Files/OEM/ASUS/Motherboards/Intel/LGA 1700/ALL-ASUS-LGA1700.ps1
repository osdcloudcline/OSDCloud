
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

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

$Business = Invoke-WebRequest("")
Invoke-Expression $($Business.Content)

$CSM = Invoke-WebRequest("")
Invoke-Expression $($CSM.Content)

$Expedition = Invoke-WebRequest("")
Invoke-Expression $($Expedition.Content)

$Other = Invoke-WebRequest("")
Invoke-Expression $($Other.Content)

$PRIME = Invoke-WebRequest("")
Invoke-Expression $($PRIME.Content)

$ProArt = Invoke-WebRequest("")
Invoke-Expression $($ProArt.Content)

$ROG = Invoke-WebRequest("")
Invoke-Expression $($ROG.Content)

$TUFGaming = Invoke-WebRequest("")
Invoke-Expression $($TUFGaming.Content)

$Workstation = Invoke-WebRequest("")
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
New-OSDCloudTemplate -Name ASUS-AM5 -WinRE

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

###############################
# ASUS LGA 1700 Motherboards
################################

# Business motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard Ethernet Drivers..." -Verbose 
$BusinessEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet1"
$BusinessEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet2"
$BusinessEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet3"
$BusinessEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $BusinessEthernet1
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet2
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet3
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard WiFi Drivers..." -Verbose 
$BusinessWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\WiFi1"
$BusinessWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\WiFi2"
$BusinessWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\WiFi3"

Edit-OSDCloudWinPE -DriverPath $BusinessWiFi1
Edit-OSDCloudWinPE -DriverPath $BusinessWiFi2
Edit-OSDCloudWinPE -DriverPath $BusinessWiFi3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

# CSM motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet1"
$CSMEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet2"
$CSMEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet3"
$CSMEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet1
Edit-OSDCloudWinPE -DriverPath $CSMEthernet2
Edit-OSDCloudWinPE -DriverPath $CSMEthernet3
Edit-OSDCloudWinPE -DriverPath $CSMEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard WiFi Drivers..." -Verbose 
$CSMWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WiFi1"
$CSMWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WiFi2"
$CSMWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WiFi3"

Edit-OSDCloudWinPE -DriverPath $CSMWiFi1
Edit-OSDCloudWinPE -DriverPath $CSMWiFi2
Edit-OSDCloudWinPE -DriverPath $CSMWiFi3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA700\CSM\Storage"

Edit-OSDCloudWinPE -DriverPath $CSMStorage

# Expedition motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Expedition Motherboard Ethernet Drivers..." -Verbose 
$ExpeditionEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Expedition\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ExpeditionEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Expedition Motherboard Storage Drivers..." -Verbose 
$ExpeditionStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Expedition\Storage"

Edit-OSDCloudWinPE -DriverPath $ExpeditionStorage

# Other motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard Ethernet Drivers..." -Verbose 
$OtherEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\Ethernet1"
$OtherEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $OtherEthernet1
Edit-OSDCloudWinPE -DriverPath $OtherEthernet2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard WiFi Drivers..." -Verbose 
$OtherWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\WiFi1"
$OtherWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\WiFi2"

Edit-OSDCloudWinPE -DriverPath $OtherWiFi1
Edit-OSDCloudWinPE -DriverPath $OtherWiFi2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard Storage Drivers..." -Verbose 
$OtherStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\Storage"

Edit-OSDCloudWinPE -DriverPath $OtherStorage

# PRIME motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet1"
$PRIMEEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet2"
$PRIMEEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet3"
$PRIMEEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet1
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet2
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet3
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\WiFi1"
$PRIMEWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\WiFi2"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi1
Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Storage"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage

# ProArt motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet1"
$ProArtEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet2"
$ProArtEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet1
Edit-OSDCloudWinPE -DriverPath $ProArtEthernet2
Edit-OSDCloudWinPE -DriverPath $ProArtEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard WiFi Drivers..." -Verbose 
$ProArtWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi1"
$ProArtWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi2"
$ProArtWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi3"
$ProArtWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi4"
$ProArtWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi5"
$ProArtWiFi6 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi6"
$ProArtWiFi7 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi7"
$ProArtWiFi8 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi8"
$ProArtWiFi9 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi9"

Edit-OSDCloudWinPE -DriverPath $ProArtWiFi1
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi2
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi3
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi4
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi5
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi6
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi7
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi8
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi9

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

# ROG motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\Ethernet1"
$ROGEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\Ethernet2"


Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2


Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard WiFi Drivers..." -Verbose 
$ROGWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi1"
$ROGWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi2"
$ROGWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi3"
$ROGWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi4"
$ROGWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi5"
$ROGWiFi6 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi6"
$ROGWiFi7 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi7"
$ROGWiFi8 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi8"
$ROGWiFi9 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi9"
$ROGWiFi10 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi10"
$ROGWiFi11 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi11"
$ROGWiFi12 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi12"
$ROGWiFi13 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi13"
$ROGWiFi14 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi14"
$ROGWiFi15 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi15"
$ROGWiFi16 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi16"
$ROGWiFi17 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi17"

Edit-OSDCloudWinPE -DriverPath $ROGWiFi1
Edit-OSDCloudWinPE -DriverPath $ROGWiFi2
Edit-OSDCloudWinPE -DriverPath $ROGWiFi3
Edit-OSDCloudWinPE -DriverPath $ROGWiFi4
Edit-OSDCloudWinPE -DriverPath $ROGWiFi5
Edit-OSDCloudWinPE -DriverPath $ROGWiFi6
Edit-OSDCloudWinPE -DriverPath $ROGWiFi7
Edit-OSDCloudWinPE -DriverPath $ROGWiFi8
Edit-OSDCloudWinPE -DriverPath $ROGWiFi9
Edit-OSDCloudWinPE -DriverPath $ROGWiFi10
Edit-OSDCloudWinPE -DriverPath $ROGWiFi11
Edit-OSDCloudWinPE -DriverPath $ROGWiFi12
Edit-OSDCloudWinPE -DriverPath $ROGWiFi13
Edit-OSDCloudWinPE -DriverPath $ROGWiFi14
Edit-OSDCloudWinPE -DriverPath $ROGWiFi15
Edit-OSDCloudWinPE -DriverPath $ROGWiFi16
Edit-OSDCloudWinPE -DriverPath $ROGWiFi17

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage

# TUF Gaming motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet1"
$TUFEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet2"
$TUFEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet1
Edit-OSDCloudWinPE -DriverPath $TUFEthernet2
Edit-OSDCloudWinPE -DriverPath $TUFEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard WiFi Drivers..." -Verbose 
$TUFWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi1"
$TUFWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi2"
$TUFWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi3"
$TUFWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi4"
$TUFWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi5"

Edit-OSDCloudWinPE -DriverPath $TUFWiFi1
Edit-OSDCloudWinPE -DriverPath $TUFWiFi2
Edit-OSDCloudWinPE -DriverPath $TUFWiFi3
Edit-OSDCloudWinPE -DriverPath $TUFWiFi4
Edit-OSDCloudWinPE -DriverPath $TUFWiFi5

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Storage"

Edit-OSDCloudWinPE -DriverPath $TUFStorage

# Workstation motherboards

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

Write-Host
Write-Verbose "Completed: Integration of ASUS Intel LGA 1700 Motherboard Drivers..." -Verbose 

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
