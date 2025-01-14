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
Write-Host '     - Networking and Storage: Dell Alienware M18R2 Laptop                                    ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: Dell Alienware M18R2 Motherboard driver downloads" -Verbose
Write-Host

$DELLAWM18R2 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Custom/Mike%20Laptop/Mike-AlienwareM18R2.ps1")
Invoke-Expression $($DELLAWM18R2.Content)

Write-Host
Write-Verbose "Completed: Dell Alienware M18R2 Motherboard driver downloads" -Verbose
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

$PortableBrowser = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Browser/PortableBrowser-Download.ps1")
Invoke-Expression $($PortableBrowser.Content)

Write-Host
Write-Verbose "Processing: User Profile Backup and Restore" -Verbose
Write-Host

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UPBR-Download.ps1")
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

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support for Intel Socket LGA 1851 systems..." -Verbose
New-OSDCloudTemplate -Name OSDCloud-MikeLaptop-AlienwareM18R2 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\MikeLaptop-AlienwareM18R2"
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
Write-Verbose "Integrating OSDCloud - Cloud Drivers..." -Verbose
Write-Host

Write-Verbose "Processing: OSDCloud Dell Cloud Drivers..." -Verbose

Edit-OSDCloudWinPE -CloudDriver Dell

Write-Host
Write-Verbose "Processing: OSDCloud Intel Cloud Drivers..." -Verbose

Edit-OSDCloudWinPE -CloudDriver IntelNet

Write-Host
Write-Verbose "Processing: OSDCloud Nutanix Cloud Drivers..." -Verbose

Edit-OSDCloudWinPE -CloudDriver Nutanix

Write-Host
Write-Verbose "Processing: OSDCloud USB Cloud Drivers..." --Verbose

Edit-OSDCloudWinPE -CloudDriver USB

Write-Host
Write-Verbose "Processing: OSDCloud WiFi Cloud Drivers..." -Verbose

Edit-OSDCloudWinPE -CloudDriver WiFi

Write-Host
Write-Verbose "Processing: OSDCloud VMWare Cloud Drivers..." -Verbose

Edit-OSDCloudWinPE -CloudDriver VMWare

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

$DARTDestination = "C:\OSDCloud\downloads\GitHub\DART"
$DART64CABDestination = "C:\Program Files\Microsoft DaRT\v10"
$DARTConfig8Destination = "C:\Program Files\Microsoft Deployment Toolkit\Templates"

Write-Host
Write-Verbose "Processing: Copying Microsoft DART files..." -Verbose
Write-Host

Copy-Item -Path "$DARTDestination\Toolsx64.cab" -Destination $DART64CABDestination -Force
Copy-Item -Path "$DARTDestination\DartConfig8.dat" -Destination $DARTConfig8Destination -Force

Write-Host
Write-Verbose "Completed: Microsoft DART files have been copied..." -Verbose
Write-Host

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

#############################################
# Alienware M18 R2 - Mike Laptop
#############################################

Write-Host
Write-Verbose "Processing: Alienware M18 R2 drivers" -Verbose
Write-Host

Write-Verbose "Processing: Alienware M18 R2 Ethernet Driver - Cloud Driver..." -Verbose

Edit-OSDCloudWinPE -DriverHWID 'VEN_10EC&DEV_5000&CC_0200','VEN_10EC&DEV_5000&CC_020000','VEN_10EC&DEV_5000&SUBSYS_0C9D1028','VEN_10EC&DEV_5000&SUBSYS_0C9D1028&REV_02'


Write-Host
Write-Verbose "Processing: Alienware M18 R2 WiFi Driver - Cloud Driver..." -Verbose

Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_272B&CC_0280','VEN_8086&DEV_272B&CC_028000','VEN_8086&DEV_272B&SUBSYS_17741A56','VEN_8086&DEV_272B&SUBSYS_17741A56&REV_1A' 

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Bluetooth Driver - Cloud Driver..." -Verbose

Edit-OSDCloudWinPE -DriverHWID 'VID_8087&PID_0036&REV_000', 'VID_8087&PID_0036'

Write-Host

Write-Verbose "Processing: Alienware M18 R2 SK HYNIX M.2 SSD Storage Driver - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'PVC10_SK_hynix_1024GB61001171', 'PVC10_SK_hynix_1024GB'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Base System Device Driver - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN__8086&DEV_A74F&SUBSYS_0C9D1028&REV_01\3&11583659&0&40'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Camera DFU Device Driver - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VID_0BDA&PID_557F&MI_04\6&13BBC7B6&0&0004'
'
Write-Host
Write-Verbose "Processing: Alienware M18 R2 High Definition Audio Controller Driver - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_10DE&DEV_22BC&SUBSYS_0C9D1028&REV_A1\4&17E837B5&0&0108'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Integrated IR Webcam Driver - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VID_0BDA&PID_557F&MI_02\6&13BBC7B6&0&0002'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Integrated Webcam Driver - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VID_0BDA&PID_557F&MI_00\6&13BBC7B6&0&0000'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Multimedia Audio Controller Driver - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_7A50&SUBSYS_0C9D1028&REV_11\3&11583659&0&0&FB'


Write-Host
Write-Verbose "Processing: Alienware M18 R2 PCI Data Acquisition and Signal Processing Controller - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_A71D&SUBSYS_0C9D1028&REV_01\3&11583659&0&0&20'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 PCI Device - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_7A4D&SUBSYS_0C9D1028&REV_11\3&11583659&0&0&A9'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 PCI Device - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_7A24&SUBSYS_0C9D1028&REV_11\3&11583659&0&0&FD'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 PCI Device - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_7A4C&SUBSYS_0C9D1028&REV_11\3&11583659&0&0&A8'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 PCI Device - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_10EC&DEV_525A&SUBSYS_0C9D1028&REV_01\00000001004CE00000'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 PCI Serial Port - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_7A78&SUBSYS_0C9D1028&REV_11\3&11583659&0&90'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 PCI Simple Communications Controller - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_7A68&SUBSYS_0C9D1028&REV_11\3&11583659&0&B0'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 SM Bus Controller - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_7A23&SUBSYS_0C9D1028&REV_11\3&11583659&0&FC'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 USB Controller - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_8086&DEV_1137&SUBSYS_00008086&REV_00\6F3425306700AA0000'

Write-Host
Write-Verbose "Processing: Alienware M18 R2 VGA Controller - Cloud Driver..." -Verbose


Edit-OSDCloudWinPE -DriverHWID 'VEN_10DE&DEV_27E0&SUBSYS_0C9D1028&REV_A1\4&17E837B5&0&0008'

Write-Host
Write-Verbose "Completed: Integration of Alienware M18 R2 drivers into OSDCloud" -Verbose
Write-Host

##########################################
# Add Custom WIM Image
##########################################
Function Show-CustomImage{
$CustomImageLog = "C:\Logs\OSDCloud\Images\AddCustom.log"
Start-Transcript -Path $CustomImageLog
$Question = Read-Host -Prompt 'Do you want or need to add an additional Windows Installation WIM file?'
$ExtractWIM = Read-Host 'Do you need to extract a WIM Image before copying to OSDCloud?'
If(($Question -and $ExtractWIM -eq "yes") -or ($Question -and $ExtractWIM -eq "Yes") -or ($Question -and $ExtractWIM -eq "y") -or ($Question -and $ExtractWIM -eq "Y")){
$WindowsImage = Read-Host -Prompt 'Please specify path to the Windows image you want to add to OSDCloud (EG: D:\OS\Windows11)'
$sourceWIM = "\sources\install.wim"
$WIMFile = Join-Path -Path $WindowsImage '\sources\install.wim'
$Destination = "$(Get-OSDCloudWorkspace)\Media\OSDCloud\OS"
Write-Verbose "Creating Custom WIM OS folder..." -Verbose
New-Item -Path $Destination -ItemType Directory -Force
Write-Verbose "Exporting Client WIM File and copying Windows Image to OSDCloud..." -Verbose
Get-WindowsImage -ImagePath $WIMFile | Format-Table ImageIndex, ImageName
$Index = Read-Host -Prompt ' Select edition'
$ExportWIMFileName = Read-Host -Prompt 'Please specify a file name for the exported WIM file, including the file extension (EG: Windows11ProWorkstations.wim)'
$DescriptionName = Read-Host -Prompt 'Please enter a descriptive name for the image'
Export-WindowsImage -SourceImagePath "$WIMFile" -SourceIndex $Index -DestinationImagePath "$Destination\$ExportWIMFileName" -DescriptionName "$DescriptionName" 
New-OSDCloudISO

Stop-Transcript
}
ElseIf (($Question -eq "yes" -and $ExtractWIM -eq "no") -or ($Question -eq "Yes"-and $ExtractWIM -eq "No") -or ($Question -eq "y" -and $ExtractWIM -eq "n") -or ($Question -eq "Y"-and $ExtractWIM -eq "N")){
$CustomImageLog = "C:\Logs\OSDCloud\Images\AddCustom.log"
Start-Transcript -Path $CustomImageLog
$WindowsImage = Read-Host -Prompt 'Please specify path to the Windows image you want to add to OSDCloud (EG: D:\OS\Windows11)'
$sourceWIM = "\sources\install.wim"
$WIMFile = Join-Path -Path $WindowsImage -ChildPath $sourceWIM
$Destination = "$(Get-OSDCloudWorkspace)\Media\OSDCloud\OS"
Write-Verbose "Creating Custom WIM OS folder..." -Verbose
New-Item -Path $Destination -ItemType Directory -Force
Write-Verbose "Copying Windows Image to OSDCloud..." -Verbose
Copy-Item -Path "$WIMFile" -Destination "$Destination" -Force
New-OSDCloudISO
Stop-Transcript
}
ElseIf(($Question -eq "no" -and $ExtractWIM -eq "no") -or ($Question -eq "No"-and $ExtractWIM -eq "No") -or ($Question -eq "n" -and $ExtractWIM -eq "n") -or ($Question -eq "N"-and $ExtractWIM -eq "N")){

##################################################
# OSDCloud WebScript for customized Startup script
###################################################

Write-Verbose "Adding a customized PowerShell based Startnet script and configuring OSDCloud to execute it on startup..." -Verbose
Edit-OSDCloudWinPE -StartURL 'https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/Imaging/CaptureImage.ps1'
Write-Host
}
}
Show-CustomImage

##################################################
# OSDCloud WebScript for customized Startup script
###################################################

Write-Verbose "Adding a customized PowerShell based Startnet script and configuring OSDCloud to execute it on startup..." -Verbose
Edit-OSDCloudWinPE -StartURL 'https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/Imaging/CaptureImage.ps1'
Write-Host

###########################################
# Rename OSDCloud ISO
#########################################

$OSDCloudISOPath = "C:\OSDCloud\MikeLaptop-AlienwareM18R2"

Write-Verbose "Renaming OSDCloud ISO Files..." -Verbose
Rename-Item -Path "$OSDCloudISOPath\OSDCloud.iso" -NewName "C:\OSDCloud\MikeLaptop-AlienwareM18R2\OSDCloud-MikeLaptop-AlienwareM18R2.iso" -Force
Rename-Item -Path "$OSDCloudISOPath\OSDCloud_NoPrompt.iso" -NewName "C:\OSDCloud\MikeLaptop-AlienwareM18R2\OSDCloud-MikeLaptop-AlienwareM18R2_NoPrompt.iso" -Force

###########################################
# Copy OSDCloud ISO
#########################################

$OSDCloudISOPath = "C:\OSDCloud\MikeLaptop-AlienwareM18R2"

Write-Verbose "Copying OSDCloud ISO Files..." -Verbose

$ISODestination = "C:\ISO Files\OSDCloud"
$LogsDestination = "C:\ISO Files\Logs"
Copy-Item -Path "$OSDCloudISOPath\OSDCloud-MikeLaptop-AlienwareM18R2.iso" -Destination $ISODestination -Force
Copy-Item -Path "$OSDCloudISOPath\OSDCloud-MikeLaptop-AlienwareM18R2_NoPrompt.iso" -Destination $ISODestination -Force
Copy-Item -Path "$OSDCloudISOPath\Logs" -Destination $LogsDestination -Recurse -Force

###########################################
# Cleanup
#########################################
