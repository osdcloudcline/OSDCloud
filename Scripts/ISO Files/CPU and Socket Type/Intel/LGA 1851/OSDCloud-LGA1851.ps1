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
Write-Host '     - Networking and Storage: ASUS LGA 1851 motherboard drivers                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: MSI  LGA 1851 Motherboard drivers                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: Gigabyte LGA 1851 Motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: ASRock   LGA 1851 Motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
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

$PS7 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

Write-Host
Write-Verbose "Completed: PowerShell 7.x support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$ASRockAQUALGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/AQUA.ps1")
Invoke-Expression $($ASRockAQUALGA1851.Content)

$ASRockLiveMixerLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Live%20Mixer%20Motherboards/LiveMixer.ps1")
Invoke-Expression $($ASRockLiveMixerLGA1851.Content)

$ASRockPROLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($ASRockPROLGA1851.Content)

$ASRockSteelLegendLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($ASRockSteelLegendLGA1851.Content)

$ASRockTaichiLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($ASRockTaichiLGA1851.Content)

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

Write-Host
Write-Verbose "Processing: ASUS Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$ASUSBusinessLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Business.ps1")
Invoke-Expression $($ASUSBusinessLGA1851.Content)

$ASUSCSMLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($ASUSCSMLGA1851.Content)

$ASUSExpeditionLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($ASUSExpeditionLGA1851.Content)

$ASUSOthersLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Other%20Motherboards/Other.ps1")
Invoke-Expression $($ASUSOthersLGA1851.Content)

$ASUSPRIMELGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($ASUSPRIMELGA1851.Content)

$ASUSProArtLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ASUSProArtLGA1851.Content)

$ASUSROGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ASUSROGLGA1851.Content)

$ASUSTUFGamingLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/TUF%20Gaming/TUFGaming.ps1")
Invoke-Expression $($ASUSTUFGamingLGA1851.Content)

$ASUSWorkstationLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($ASUSWorkstationLGA1851.Content)

Write-Host
Write-Verbose "Completed: ASUS Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$GigabyteAEROLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/AERO.ps1")
Invoke-Expression $($GigabyteAEROLGA1851.Content)

$GigabyteAITOPLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AI-TOP%20Motherboards/AI-TOP.ps1")
Invoke-Expression $($GigabyteAITOPLGA1851.Content)

$GigabyteAORUSLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AORUS%20Motherboards/AORUS.ps1")
Invoke-Expression $($GigabyteAORUSLGA1851.Content)

$GigabyteEagleLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/Eagle%20Motherboards/Eagle.ps1")
Invoke-Expression $($GigabyteEagleLGA1851.Content)

$GigabyteGamingLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/Gaming%20Motherboards/Gaming.ps1")
Invoke-Expression $($GigabyteGamingLGA1851.Content)

$GigabyteUDLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/UD%20-%20Ultra%20Durable%20Motherboards/UD%20-%20UltraDurable.ps1")
Invoke-Expression $($GigabyteUDLGA1851.Content)

Write-Host
Write-Verbose "Completed: Gigabyte Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: MSI Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$MSIGamingLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/Gaming%20Series/Gaming.ps1")
Invoke-Expression $($MSIGamingLGA1851.Content)

$MSIMAGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/MAG%20Series/MAG.ps1")
Invoke-Expression $($MSIMAGLGA1851.Content)

$MSIMEGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/MEG%20Series/MEG.ps1")
Invoke-Expression $($MSIMEGLGA1851.Content)

$MSIMPGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/MPG%20Series/MPG.ps1")
Invoke-Expression $($MSIMPGLGA1851.Content)

$MSIPROLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/PRO%20Series/PRO.ps1")
Invoke-Expression $($MSIPROLGA1851.Content)

Write-Host
Write-Verbose "Completed: MSI Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: Intel LGA 1851 Motherboard driver downloads" -Verbose
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
Write-Verbose "Processing: HWiNFO Portable" -Verbose
Write-Host

$HWInfo = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/System%20Information/HWInfo.ps1")
Invoke-Expression $($HWInfo.Content)

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
New-OSDCloudTemplate -Name OSDCloud-LGA1851 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\LGA1851"
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

#############################################
# INTEL LGA 1851 Driver Integration - ASRock
#############################################

Write-Host
Write-Verbose "Processing: ASRock LGA 1851 drivers" -Verbose
Write-Host

# AQUA motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 AQUA Motherboard drivers..." -Verbose
Write-Host

$AQUABluetoothPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Bluetooth"
$AQUAEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet1"
$AQUAEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet2"
$AQUAEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet3"
$AQUAEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet4"
$AQUAEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet5"
$AQUAEthernetPath6 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet6"
$AQUAEthernetPath7 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Ethernet7"
$AQUAStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\Storage"
$AQUAWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\AQUA\WLAN"

Edit-OSDCloudWinPe -DriverPath $AQUABluetoothPath
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath1
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath2
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath3
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath4
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath5
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath6
Edit-OSDCloudWinPe -DriverPath $AQUAEthernetPath7
Edit-OSDCloudWinPe -DriverPath $AQUAStoragePath
Edit-OSDCloudWinPe -DriverPath $AQUAWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 AQUA Motherboard drivers..." -Verbose
Write-Host

# Live Mixer motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 LiveMixer Motherboard drivers..." -Verbose
Write-Host

$LiveMixerBluetoothPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer\Bluetooth"
$LiveMixerEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer\Ethernet"
$LiveMixerStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer\Storage"
$LiveMixerWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\LiveMixer\WLAN"

Edit-OSDCloudWinPe -DriverPath $LiveMixerBluetoothPath
Edit-OSDCloudWinPe -DriverPath $LiveMixerEthernetPath
Edit-OSDCloudWinPe -DriverPath $LiveMixerStoragePath
Edit-OSDCloudWinPe -DriverPath $LiveMixerWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 LiveMixer Motherboard drivers..." -Verbose
Write-Host

# PRO motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 PRO Motherboard drivers..." -Verbose
Write-Host

$PROBluetoothPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO\Bluetooth"
$PROEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO\Ethernet"
$PROStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO\Storage"
$PROWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\PRO\WLAN"


Edit-OSDCloudWinPe -DriverPath $PROBluetoothPath
Edit-OSDCloudWinPe -DriverPath $PROEthernetPath
Edit-OSDCloudWinPe -DriverPath $PROStoragePath
Edit-OSDCloudWinPe -DriverPath $PROWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 PRO Motherboard drivers..." -Verbose
Write-Host

# Steel Legend motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 Steel Legend Motherboard drivers..." -Verbose
Write-Host

$SteelLegendBluetoothPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\SteelLegend\Bluetooth"
$SteelLegendEthernetPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\SteelLegend\Ethernet"
$SteelLegendStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\SteelLegend\Storage"
$SteelLegendWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\SteelLegend\WLAN"

Edit-OSDCloudWinPe -DriverPath $SteelLegendBluetoothPath
Edit-OSDCloudWinPe -DriverPath $SteelLegendEthernetPath
Edit-OSDCloudWinPe -DriverPath $SteelLegendStoragePath
Edit-OSDCloudWinPe -DriverPath $SteelLegendWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 Steel Legend Motherboard drivers..." -Verbose
Write-Host

# Taichi motherboards

Write-Host
Write-Verbose "Processing: ASRock Intel LGA1851 Taichi Motherboard drivers..." -Verbose
Write-Host

$TaichiBluetoothPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Bluetooth"
$TaichiEthernetPath1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet1"
$TaichiEthernetPath2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet2"
$TaichiEthernetPath3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet3"
$TaichiEthernetPath4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet4"
$TaichiEthernetPath5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet5"
$TaichiEthernetPath6 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet6"
$TaichiEthernetPath7 = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Ethernet7"
$TaichiStoragePath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\Storage"
$TaichiWLANPath = "C:\OSDCloud\Drivers\Motherboards\ASRock\LGA1851\Taichi\WLAN"

Edit-OSDCloudWinPe -DriverPath $TaichiBluetoothPath
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath1
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath2
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath3
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath4
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath5
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath6
Edit-OSDCloudWinPe -DriverPath $TaichiEthernetPath7
Edit-OSDCloudWinPe -DriverPath $TaichiStoragePath
Edit-OSDCloudWinPe -DriverPath $TaichiWLANPath

Write-Host
Write-Verbose "Completed: ASRock Intel LGA1851 Taichi Motherboard drivers..." -Verbose
Write-Host

#############################################
# INTEL LGA 1851 Driver Integration - ASUS
#############################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 drivers" -Verbose
Write-Host



###############################################
# INTEL LGA 1851 Driver Integration - Gigabyte
###############################################

Write-Host
Write-Verbose "Processing: Gigabyte LGA 1851 drivers" -Verbose
Write-Host

#############################################
# INTEL LGA 1851 Driver Integration - MSI
#############################################

Write-Host
Write-Verbose "Processing: MSI LGA 1851 drivers" -Verbose
Write-Host




Write-Host
Write-Verbose "Completed: Integration of ALL Intel Socket LGA 1851 drivers for OSDCloud..." -Verbose
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

$OSDCloudISOPath = "C:\OSDCloud\LGA1851"

Write-Verbose "Renaming OSDCloud ISO Files..." -Verbose
Rename-Item -Path "$OSDCloudISOPath\OSDCloud.iso" -NewName "C:\OSDCloud\LGA1851\OSDCloud-LGA1851.iso" -Force
Rename-Item -Path "$OSDCloudISOPath\OSDCloud_NoPrompt.iso" -NewName "C:\OSDCloud\LGA1851\OSDCloud-LGA1851_NoPrompt.iso" -Force
