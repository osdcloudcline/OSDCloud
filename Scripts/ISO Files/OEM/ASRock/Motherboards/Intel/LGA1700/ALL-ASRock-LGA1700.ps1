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
Write-Host '     - Networking and Storage: ASRock LGA 1700 motherboard drivers                            ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: ASRock LGA 1700 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

$AQUA = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/AQUA.ps1")
Invoke-Expression $($AQUA.Content)

$Extreme = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Extreme.ps1")
Invoke-Expression $($Extreme.Content)

$LiveMixer = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Live%20Mixer%20Motherboards/LiveMixer.ps1")
Invoke-Expression $($LiveMixer.Content)

$PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($PRO.Content)

$PhantomGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/PhantomGaming.ps1")
Invoke-Expression $($PhantomGaming.Content)

$SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($SteelLegend.Content)

$Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Taichi%20Motherboards/Taichi.ps1")
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

$CloudPC = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/CloudPC%20-%20Download.ps1")
Invoke-Expression $($CloudPC.Content) 

$NotepadPP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Text%20Editor/NotepadPP.ps1")
Invoke-Expression $($NotepadPP.Content)

$ExplorerPP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/File%20Explorer/ExplorerPP.ps1")
Invoke-Expression $($ExplorerPP.Content)

$HWInfo = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/System%20Information/HWInfo.ps1")
Invoke-Expression $($HWInfo.Content)

$CMTrace = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Log%20Viewer/CMTrace.ps1")
Invoke-Expression $($CMTrace.Content)

Write-Host
Write-Verbose "Completed: ALL ASRock LGA 1700 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ASRock-LGA1700 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\ALL-ASRock-LGA1700"
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

############################################
# ASRock LGA 1700 motherboards
############################################

# AQUA motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 AQUA Motherboard drivers..." -Verbose
Write-Host

$AQUABluetoothPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\Bluetooth"
$AQUAEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\Ethernet1"
$AQUAEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\Ethernet2"
$AQUAStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\Storage"
$AQUAWLANPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\WLAN1"
$AQUAWLANPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\AQUA\WLAN2"

Edit-OSDCloudWinPe -DriverPath $AQUABluetoothPath
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath1
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath2
Edit-OSDCloudWinPe -DriverPath $AQUAStoragePath
Edit-OSDCloudWinPe -DriverPath $AQUAWLANPath1
Edit-OSDCloudWinPe -DriverPath $AQUAWLANPath2

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 AQUA Motherboard drivers..." -Verbose
Write-Host

# Extreme motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Extreme Motherboard drivers..." -Verbose
Write-Host

$ExtremeEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet1"
$ExtremeEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet2"
$ExtremeEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet3"
$ExtremeEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet4"
$ExtremeEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Ethernet5"
$ExtremeStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\Storage"
$ExtremeWLANPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Extreme\WLAN1"


Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath1
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath2
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath3
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath4
Edit-OSDCloudWinPe -DriverPath $ExtremeEthernetPath5
Edit-OSDCloudWinPe -DriverPath $ExtremeStoragePath
Edit-OSDCloudWinPe -DriverPath $ExtremeWLANPath1

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Extreme Motherboard drivers..." -Verbose
Write-Host

# Live Mixer motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Live Mixer Motherboard drivers..." -Verbose
Write-Host

$LiveMixerEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\LiveMixer\Ethernet"
$LiveMixerStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\LiveMixer\Storage"

Edit-OSDCloudWinPe -DriverPath $LiveMixerEthernetPath
Edit-OSDCloudWinPe -DriverPath $LiveMixerStoragePath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Live Mixer Motherboard drivers..." -Verbose
Write-Host

# PRO motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 PRO Motherboard drivers..." -Verbose
Write-Host

$PROEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet1"
$PROEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet2"
$PROEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet3"
$PROEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet4"
$PROEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet5"
$PROEthernetPath6 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Ethernet6"
$PROStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PRO\Storage"

Edit-OSDCloudWinPe -DriverPath $PROEthernetPath1
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath2
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath3
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath4
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath5
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath6
Edit-OSDCloudWinPe -DriverPath $PROStoragePath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 PRO Motherboard drivers..." -Verbose
Write-Host

# Phantom Gaming motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Phantom Gaming Motherboard drivers..." -Verbose
Write-Host

$PhantomGamingBluetoothPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Bluetooth"
$PhantomGamingEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet1"
$PhantomGamingEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet2"
$PhantomGamingEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet3"
$PhantomGamingEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet4"
$PhantomGamingEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Ethernet5"
$PhantomGamingStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\Storage"
$PhantomGamingWLANPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\WLAN1"
$PhantomGamingWLANPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\PhantomGaming\WLAN2"

Edit-OSDCloudWinPe -DriverPath $PhantomGamingBluetoothPath
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath1
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath2
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath3
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath4
Edit-OSDCloudWinPe -DriverPath $PhantomGamingEthernetPath5
Edit-OSDCloudWinPe -DriverPath $PhantomGamingStoragePath
Edit-OSDCloudWinPe -DriverPath $PhantomGamingWLANPath1
Edit-OSDCloudWinPe -DriverPath $PhantomGamingWLANPath2

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Phantom Gaming Motherboard drivers..." -Verbose
Write-Host

# Steel Legend motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Steel Legend Motherboard drivers..." -Verbose
Write-Host

$SteelLegendEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet1"
$SteelLegendEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet2"
$SteelLegendEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet3"
$SteelLegendEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet4"
$SteelLegendEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet5"
$SteelLegendEthernetPath6 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Ethernet6"
$SteelLegendStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\Storage"
$SteelLegendWLANPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\SteelLegend\WLAN1"

Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath1
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath2
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath3
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath4
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath5
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath6
Edit-OSDCloudWinPe -DriverPath $SteelLegendStoragePath
Edit-OSDCloudWinPe -DriverPath $SteelLegendWLANPath1

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Steel Legend Motherboard drivers..." -Verbose
Write-Host

# Taichi motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Taichi Motherboard drivers..." -Verbose
Write-Host

$TaichiBluetoothPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Taichi\Bluetooth"
$TaichiEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Taichi\Ethernet"
$TaichiStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Taichi\Storage"
$TaichiWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1700\Taichi\WLAN"


Edit-OSDCloudWinPe -DriverPath $TaichiBluetoothPath
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath
Edit-OSDCloudWinPe -DriverPath $TaichiStoragePath
Edit-OSDCloudWinPe -DriverPath $TaichiWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Taichi Motherboard drivers..." -Verbose
Write-Host

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

# CMTrace 

Write-Host
Write-Verbose "Processing: CMTrace Log Viewer for OSDCloud..." -Verbose 

$CMTracePath = "C:\OSDCloud\downloads\GitHub\MECM-LogViewer\CMTrace.exe"
$CMTraceDestination = "$mountdir\Windows\System32"

Copy-Item -Path $CMTracePath -Destination $CMTraceDestination -Force

# MSTSC

Write-Host
Write-Verbose "Processing: Microsoft Remote Desktop for OSDCloud..." -Verbose 
$MSTSCPath1 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files"
$MSTSCPath2 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files\en-us"
$MSTSCDestination1 = "$mountdir\Windows\System32"
$MSTSCDestination2 = "$mountdir\Windows\System32\en-US"

Copy-Item -Path "$MSTSCPath1\*" -Destination $MSTSCDestination1 -Recurse  -Force
Copy-Item -Path "$MSTSCPath2\*" -Destination $MSTSCDestination2  -Recurse -Force

# CloudPC

Write-Host
Write-Verbose "Processing: Microsoft Remote Desktop - Cloud PC for OSDCloud..." -Verbose 
$CloudPCPath1 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files"
$CloudPCPath2 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files\en-us"
$CloudPCDestination1 = "$mountdir\Windows\System32"
$CloudPCDestination2 = "$mountdir\Windows\System32\en-US"

Copy-Item -Path "$CloudPCPath1\*" -Destination $CloudPCDestination1  -Recurse -Force
Copy-Item -Path "$CloudPCPath2\*" -Destination $CloudPCDestination2  -Recurse -Force

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

# File Explorer

Write-Host
Write-Verbose "Processing: Explorer ++ for OSDCloud..." -Verbose 

$ExplorerPPPath = "C:\OSDCloud\downloads\GitHub\FileExplorer\Explorer++.exe"
$ExplorerPPDestination = "$mountdir\Windows\System32"

Copy-Item -Path $ExplorerPPPath -Destination $ExplorerPPDestination  -Force

Write-Host
Write-Verbose "Completed: Integration of Explorer++ for OSDCloud..." -Verbose
Write-Host

# Text Editor

Write-Host
Write-Verbose "Processing: Notepad ++ for OSDCloud..." -Verbose 

$NotepadPPPath = "C:\OSDCloud\downloads\GitHub\TextEditor\notepad++.exe"
$NotepadPPDestination = "$mountdir\Windows\System32"

Copy-Item -Path $NotepadPPPath -Destination $NotepadPPDestination  -Force

Write-Host
Write-Verbose "Completed: Integration of Notepad++ for OSDCloud..." -Verbose
Write-Host

# HW Info

Write-Host
Write-Verbose "Processing: HWiNFO Portable for OSDCloud..." -Verbose 

$HWiNFOZIPPath = "C:\OSDCloud\downloads\GitHub\HWInfo"
$HWInfoDestination = "$mountdir\Windows\System32\HWiNFO"

Expand-Archive -Path "$HWiNFOZIPPath\HWiNFO.zip" -DestinationPath "$HWInfoDestination" -Force

# Dismount the image
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
# Rename OSDCloud ISO
#########################################

$OSDCloudISOPath = "C:\OSDCloud\ALL-ASRock-LGA1700"

Write-Verbose "Renaming OSDCloud ISO Files..." -Verbose
Rename-Item -Path "$OSDCloudISOPath\OSDCloud.iso" -NewName "C:\OSDCloud\ASRock-TaichiMotherboardsk-AM5\OSDCloud-ALL-ASRock-LGA1700.iso" -Force
Rename-Item -Path "$OSDCloudISOPath\OSDCloud_NoPrompt.iso" -NewName "C:\OSDCloud\ASRock-TaichiMotherboardsk-AM5\OSDCloud-ALL-ASRock-LGA1700_NoPrompt.iso" -Force
