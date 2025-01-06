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
Write-Host '     - Networking and Storage: Gigabyte LGA 1851 motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: Gigabyte LGA 1851 Motherboard drivers, Virtualization drivers, scripting support and other utilities file downloads" -Verbose
Write-Host

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

$AERO = Invoke-WebRequest("")
Invoke-Expression $($AERO.Content)

$AITOP = Invoke-WebRequest("")
Invoke-Expression $($AITOP.Content)

$AORUS = Invoke-WebRequest("")
Invoke-Expression $($AORUS.Content)

$Eagle = Invoke-WebRequest("")
Invoke-Expression $($Eagle.Content)

$Gaming = Invoke-WebRequest("")
Invoke-Expression $($Gaming.Content)

$UD = Invoke-WebRequest("")
Invoke-Expression $($UD.Content)

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

$MSTSC = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/MSTSC.ps1")
Invoke-Expression $($MSTSC.Content)

Write-Host
Write-Verbose "Completed: ALL Gigabyte LGA 1851 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Confirming OSDCloud Templates......" -Verbose
Get-OSDCloudTemplate

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template specific for ALL Gigabyte LGA 1851 motherboards to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name Gigabyte-LGA1851 -WinRE

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
$VBSName1 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~64~~.cab"
$VBSName2 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~64~en-us~.cab"
$VBSName3 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBSName4 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"
$VBS1 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~64~~.cab"
$VBS2 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~64~en-us~.cab"
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
# Gigabyte LGA 1851 Motherboards
###############################

# AERO motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AERO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AERO Motherboard WiFi Drivers..." -Verbose 
$AEROWiFi = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AERO\WiFi"

Edit-OSDCloudWinPE -DriversPath $AEROWiFi

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AERO Motherboard Bluetooth Drivers..." -Verbose 
$AEROBluetooth = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AERO\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $AEROBluetooth

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AERO\Storage"

Edit-OSDCloudWinPE -DriversPath  $AEROStorage

# AITOP motherboard

Write-Host
Write-Verbose "Completed: Integration of Gigabyte  LGA 1851 AERO Motherboard Drivers..." -Verbose 

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AI TOP Motherboard Ethernet Drivers..." -Verbose 
$AITOPEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AI-TOP\Ethernet1"
$AITOPEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AI-TOP\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $AITOPEthernet1
Edit-OSDCloudWinPE -DriversPath $AITOPEthernet2

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AI TOP Motherboard WiFi Drivers..." -Verbose 
$AITOPWiFi = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AI-TOP\WiFi"

Edit-OSDCloudWinPE -DriversPath $AITOPWiFi

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AI TOP Motherboard Bluetooth Drivers..." -Verbose 
$AITOPBluetooth = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AI-TOP\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $AITOPBluetooth

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AI TOP Motherboard Storage Drivers..." -Verbose 
$AITOPStorage = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AI-TOP\Storage"

Edit-OSDCloudWinPE -DriversPath  $AITOPStorage

# AORUS motherboard

Write-Host
Write-Verbose "Completed: Integration of Gigabyte LGA 1851 AI TOP Motherboard Drivers..." -Verbose 
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AORUS Motherboard Ethernet Drivers..." -Verbose 
$AORUSEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Ethernet1"
$AORUSEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Ethernet2"
$AORUSEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Ethernet3"
$AORUSEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Ethernet1"
$AORUSEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Ethernet2"
$AORUSEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Ethernet3"
$AORUSEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Ethernet4"
$AORUSEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Ethernet5"
$AORUSEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Ethernet6"
$AORUSEthernet10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870\Ethernet1"
$AORUSEthernet11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870\Ethernet2"
$AORUSEthernet12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870E\Ethernet1"
$AORUSEthernet13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870E\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet3
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet4
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet5
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet6
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet7
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet8
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet9
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet10
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet11
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet12
Edit-OSDCloudWinPE -DriversPath $AORUSEthernet13

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\WiFi1"
$AORUSWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\WiFi2"
$AORUSWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\WiFi3"
$AORUSWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\WiFi1"
$AORUSWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\WiFi2"
$AORUSWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\WiFi3"
$AORUSWiFi7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870\WiFi"
$AORUSWiFi8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870E\WiFi1"


Edit-OSDCloudWinPE -DriversPath $AORUSWiFi1
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi2
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi3
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi4
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi5
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi6
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi7
Edit-OSDCloudWinPE -DriversPath $AORUSWiFi8

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AORUS Motherboard Bluetooth Drivers..." -Verbose 
$AORUSBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Bluetooth1"
$AORUSBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Bluetooth2"
$AORUSBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Bluetooth3"
$AORUSBluetooth4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Bluetooth4"
$AORUSBluetooth5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Bluetooth1"
$AORUSBluetooth6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Bluetooth2"
$AORUSBluetooth7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Bluetooth3"
$AORUSBluetooth8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870\Bluetooth1"
$AORUSBluetooth9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870\Bluetooth2"
$AORUSBluetooth10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870\Bluetooth3"
$AORUSBluetooth11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870E\Bluetooth"


Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth1
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth2
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth3
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth4
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth5
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth6
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth7
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth8
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth9
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth10
Edit-OSDCloudWinPE -DriversPath $AORUSBluetooth11

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\B650\Storage\RAID\NVMe"
$AORUSStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X670\Storage\RAID\NVMe"
$AORUSStorage3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870\Storage\RAID\NVMe"
$AORUSStorage4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\AORUS\X870E\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $AORUSStorage1
Edit-OSDCloudWinPE -DriversPath $AORUSStorage2
Edit-OSDCloudWinPE -DriversPath $AORUSStorage3
Edit-OSDCloudWinPE -DriversPath $AORUSStorage4

Write-Host
Write-Verbose "Completed: Integration of Gigabyte LGA 1851 AORUS Motherboard Drivers..." -Verbose 
Write-Host

# Eagle motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Eagle Motherboard Ethernet Drivers..." -Verbose 
$EagleEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\B650\Ethernet1"
$EagleEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\B650\Ethernet2"
$EagleEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\X870\Ethernet1"
$EagleEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\X870\Ethernet2"


Edit-OSDCloudWinPE -DriversPath $EagleEthernet1
Edit-OSDCloudWinPE -DriversPath $EagleEthernet2
Edit-OSDCloudWinPE -DriversPath $EagleEthernet3
Edit-OSDCloudWinPE -DriversPath $EagleEthernet4


Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Eagle Motherboard WiFi Drivers..." -Verbose 
$EagleWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\B650\WiFi1"
$EagleWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\B650\WiFi2"
$EagleWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\X870\WiFi1"
$EagleWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\X870\WiFi2"


Edit-OSDCloudWinPE -DriversPath $EagleWiFi1
Edit-OSDCloudWinPE -DriversPath $EagleWiFi2
Edit-OSDCloudWinPE -DriversPath $EagleWiFi3
Edit-OSDCloudWinPE -DriversPath $EagleWiFi4


Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Eagle Motherboard Bluetooth Drivers..." -Verbose 
$EagleBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\B650\Bluetooth"
$EagleBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\X870\Bluetooth1"
$EagleBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\X870\Bluetooth2"


Edit-OSDCloudWinPE -DriversPath $EagleBluetooth1
Edit-OSDCloudWinPE -DriversPath $EagleBluetooth2
Edit-OSDCloudWinPE -DriversPath $EagleBluetooth3


Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Eagle Motherboard Storage Drivers..." -Verbose 
$EagleStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\B650\Storage\RAID\NVMe"
$EagleStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Eagle\X870\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $EagleStorage1
Edit-OSDCloudWinPE -DriversPath $EagleStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte LGA 1851 Eagle Motherboard Drivers..." -Verbose 
Write-Host

# Gaming motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\A620\Ethernet1"
$GamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\A620\Ethernet2"
$GamingEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\Ethernet1"
$GamingEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\Ethernet2"
$GamingEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X670\Ethernet1"
$GamingEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X670\Ethernet2"
$GamingEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\Ethernet1"
$GamingEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\Ethernet2"


Edit-OSDCloudWinPE -DriversPath $GamingEthernet1
Edit-OSDCloudWinPE -DriversPath $GamingEthernet2
Edit-OSDCloudWinPE -DriversPath $GamingEthernet3
Edit-OSDCloudWinPE -DriversPath $GamingEthernet4
Edit-OSDCloudWinPE -DriversPath $GamingEthernet5
Edit-OSDCloudWinPE -DriversPath $GamingEthernet6
Edit-OSDCloudWinPE -DriversPath $GamingEthernet7
Edit-OSDCloudWinPE -DriversPath $GamingEthernet8

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Gaming Motherboard WiFi Drivers..." -Verbose 
$GamingWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\A620\WiFi1"
$GamingWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\WiFi1"
$GamingWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\WiFi2"
$GamingWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\WiFi3"
$GamingWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X670\WiFi1"
$GamingWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X670\WiFi2"
$GamingWiFi7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\WiFi1"
$GamingWiFi8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\WiFi2"
$GamingWiFi9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\WiFi3"
$GamingWiFi10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\WiFi4"
$GamingWiFi11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\WiFi5"
$GamingWiFi12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\WiFi6"

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
Write-Verbose "Processing: Gigabyte LGA 1851 Gaming Motherboard Bluetooth Drivers..." -Verbose 
$GamingBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\A620\Bluetooth"
$GamingBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\Bluetooth1"
$GamingBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\Bluetooth2"
$GamingBluetooth4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X670\Bluetooth1"
$GamingBluetooth5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X670\Bluetooth2"
$GamingBluetooth6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\Bluetooth1"
$GamingBluetooth7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\Bluetooth2"
$GamingBluetooth8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\Bluetooth3"

Edit-OSDCloudWinPE -DriversPath $GamingBluetooth1
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth2
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth3
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth4
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth5
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth6
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth7
Edit-OSDCloudWinPE -DriversPath $GamingBluetooth8


Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\A620\Storage\RAID\NVMe"
$GamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\B650\Storage\RAID\NVMe"
$GamingStorage3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X670\Storage\RAID\NVMe"
$GamingStorage4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\Gaming\X870\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $GamingStorage1
Edit-OSDCloudWinPE -DriversPath $GamingStorage2
Edit-OSDCloudWinPE -DriversPath $GamingStorage3
Edit-OSDCloudWinPE -DriversPath $GamingStorage4

Write-Host
Write-Verbose "Completed: Integration of Gigabyte LGA 1851 Gaming Motherboard Drivers..." -Verbose 
Write-Host

# Ultra Durable motherboard

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Ultra Durable Motherboard Ethernet Drivers..." -Verbose 
$UDEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\A620\Ethernet1"
$UDEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\A620\Ethernet2"
$UDEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\Ethernet1"
$UDEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $UDEthernet1
Edit-OSDCloudWinPE -DriversPath $UDEthernet2
Edit-OSDCloudWinPE -DriversPath $UDEthernet3
Edit-OSDCloudWinPE -DriversPath $UDEthernet4

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Ultra Durable Motherboard WiFi Drivers..." -Verbose 
$UDWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\A620\WiFi1"
$UDWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\A620\WiFi2"
$UDWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\WiFi1"
$UDWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\WiFi2"
$UDWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\WiFi3"
$UDWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\WiFi4"
$UDWiFi7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\WiFi5"
$UDWiFi8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\WiFi6"

Edit-OSDCloudWinPE -DriversPath $UDWiFi1
Edit-OSDCloudWinPE -DriversPath $UDWiFi2
Edit-OSDCloudWinPE -DriversPath $UDWiFi3
Edit-OSDCloudWinPE -DriversPath $UDWiFi4
Edit-OSDCloudWinPE -DriversPath $UDWiFi5
Edit-OSDCloudWinPE -DriversPath $UDWiFi6
Edit-OSDCloudWinPE -DriversPath $UDWiFi7
Edit-OSDCloudWinPE -DriversPath $UDWiFi8

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Ultra Durable Motherboard Bluetooth Drivers..." -Verbose 
$UDBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\A620\Bluetooth1"
$UDBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\A620\Bluetooth2"
$UDBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\Bluetooth1"
$UDBluetooth4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\Bluetooth2"
$UDBluetooth5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\Bluetooth3"

Edit-OSDCloudWinPE -DriversPath $UDBluetooth1
Edit-OSDCloudWinPE -DriversPath $UDBluetooth2
Edit-OSDCloudWinPE -DriversPath $UDBluetooth3
Edit-OSDCloudWinPE -DriversPath $UDBluetooth4
Edit-OSDCloudWinPE -DriversPath $UDBluetooth5

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 Ultra Durable Motherboard Storage Drivers..." -Verbose 
$UDStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\A620\Storage\RAID\NVMe"
$UDStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\LGA1851\UD-UltraDurable\B650\Storage\RAID\NVMe"

Edit-OSDCloudWinPE -DriversPath $UDStorage1
Edit-OSDCloudWinPE -DriversPath $UDStorage2

Write-Host
Write-Verbose "Completed: Integration of Gigabyte LGA 1851 Ultra Durable Motherboard Drivers..." -Verbose 
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


