################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ALL-LGA1851 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\ALL-LGA1851"
New-OSDCloudWorkspace -WorkspacePath $WorkspacePath
Set-OSDCloudWorkspace -WorkspacePath $WorkspacePath

Write-Host
Write-Verbose "Confirming new OSDCloud Workspace Path..." -Verbose
Get-OSDCloudWorkspace

#########################################
# ADD PowerShell 7
##########################################
Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

$sourcedownload = "https://github.com/PowerShell/PowerShell/releases/download/v7.5.0/PowerShell-7.5.1-win-x64.zip"
$DLDestination = "C:\OSDCloud\downloads\PowerShell\7"

Write-Verbose "Processing: PowerShell 7.5.1 download..." -Verbose
Write-Host
Save-WebFile -SourceUrl $sourcedownload -DestinationDirectory $DLDestination

Write-Verbose "Completed: PowerShell 7.5.1 download" -Verbose
Write-Host

# Settings and File Paths

$sourcedownload = "https://github.com/PowerShell/PowerShell/releases/download/v7.5.1/PowerShell-7.5.1-win-x64.zip"
$DLDestination = "C:\OSDCloud\downloads\PowerShell\7"
$mountdir = "C:\Mount"
$sourceWIMDir = "\Media\sources"
$WorkspacePath = Get-OSDCloudWorkspace
$WimFile = Join-Path -Path $WorkspacePath -ChildPath $sourceWIMDir

Write-Verbose "Processing: Creating mount directory" -Verbose
Write-Host
# Create Mount Directory
New-Item -Path $mountdir -ItemType Directory -Force

Write-Verbose "Processing: Mounting OSDCloud boot.wim" -Verbose
# Mount the image
Mount-WindowsImage -ImagePath "$WimFile\boot.wim" -Path $mountdir -Index 1

Write-Host
Write-Verbose "Processing: Expanding Windows PowerShell 7 ZIP File" -Verbose
Write-Host

Expand-Archive -Path "$DLDestination\PowerShell-7.5.1-win-x64.zip" -DestinationPath "$mountdir\Program Files\PowerShell\7" -Force

Write-Verbose "Processing: Updating environment PATHS" -Verbose
Write-Host

# Update the offline environment PATH for PowerShell 7
$HivePath = "$mountdir\Windows\System32\config\SYSTEM"
reg load "HKLM\OfflineWinPE" $HivePath 
Start-Sleep -Seconds 5

Write-Verbose "Processing: Adding PowerShell 7 Paths to PATH and PSModulePath" -Verbose
Write-Host
# Add PowerShell 7 Paths to Path and PSModulePath
$RegistryKey = "HKLM:\OfflineWinPE\ControlSet001\Control\Session Manager\Environment"
$CurrentPath = (Get-Item -path $RegistryKey ).GetValue('Path', '', 'DoNotExpandEnvironmentNames')
$NewPath = $CurrentPath + ";%ProgramFiles%\PowerShell\7\"
$Result = New-ItemProperty -Path $RegistryKey -Name "Path" -PropertyType ExpandString -Value $NewPath -Force 

$CurrentPSModulePath = (Get-Item -path $RegistryKey ).GetValue('PSModulePath', '', 'DoNotExpandEnvironmentNames')
$NewPSModulePath = $CurrentPSModulePath + ";%ProgramFiles%\PowerShell\;%ProgramFiles%\PowerShell\7\;%SystemRoot%\system32\config\systemprofile\Documents\PowerShell\Modules\"
$Result = New-ItemProperty -Path $RegistryKey -Name "PSModulePath" -PropertyType ExpandString -Value $NewPSModulePath -Force 

Write-Verbose "Processing: Adding additional variables for PowerShell Gallery Support" -Verbose
Write-Host

$APPDATA = "%SystemRoot%\System32\Config\SystemProfile\AppData\Roaming"
$Result = New-ItemProperty -Path $RegistryKey -Name "APPDATA" -PropertyType String -Value $APPDATA -Force 

$HOMEDRIVE = "%SystemDrive%"
$Result = New-ItemProperty -Path $RegistryKey -Name "HOMEDRIVE" -PropertyType String -Value $HOMEDRIVE -Force 

$HOMEPATH = "%SystemRoot%\System32\Config\SystemProfile"
$Result = New-ItemProperty -Path $RegistryKey -Name "HOMEPATH" -PropertyType String -Value $HOMEPATH -Force 

$LOCALAPPDATA = "%SystemRoot%\System32\Config\SystemProfile\AppData\Local"
$Result = New-ItemProperty -Path $RegistryKey -Name "LOCALAPPDATA" -PropertyType String -Value $LOCALAPPDATA -Force 

Write-Verbose "Processing: Cleaning up" -Verbose
Write-Host

# Cleanup (to prevent access denied issue unloading the registry hive)
Get-Variable Result | Remove-Variable
Get-Variable RegistryKey | Remove-Variable
[gc]::collect()
Start-Sleep -Seconds 5

Write-Verbose "Processing: Unloading the registry hive" -Verbose
Write-Host

# Unload the registry hive
reg unload "HKLM\OfflineWinPE"

Write-Verbose "Processing: Dismounting and saving the OSDCloud boot.wim" -Verbose
Write-Host
# dismounting and saving the image
Dismount-WindowsImage -Path $mountdir -Save


#########################################
##     ADD VBS Scripting Support
#########################################

# VBS Scripting Support

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

$VBSScriptSupport_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/Scripting%20Support/VBS%20Scripting/VBScriptCABFiles.zip"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

Write-Verbose  "Acquiring VBS Script Support CAB Files from GitHub repository..." -Verbose
Save-WebFile -SourceUrl $VBSScriptSupport_URL -DestinationDirectory $OSDCloudGHdownloads
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\VBScriptCABFiles.zip" -TargetPath $OSDCloudVBS_Extract -ErrorAction SilentlyContinue
Write-Host


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

######################################
## Extra PowerShell Modules - OSDCloud
######################################

# PowerShell 5.1 Modules - OSDCloud

$OSDCloudPS5xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/5.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS5xMods.Content)

# PowerShell 7.x Modules - OSDCloud

$OSDCloudPS7xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/7.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS7xMods.Content)

################################################
# Download OSDCloud Extra Apps
################################################

$DownloadApps = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Extra%20Apps/DownloadApps.ps1")
Invoke-Expression $($DownloadApps.Content)

###############################################
# Add Applications
###############################################

$mountdir = "C:\Mount"
$sourceWIMDir = "\Media\sources"
$WorkspacePath = Get-OSDCloudWorkspace
$WimFile = Join-Path -Path $WorkspacePath -ChildPath $sourceWIMDir

Write-Verbose "Processing: Mounting OSDCloud boot.wim" -Verbose
# Mount the image
Mount-WindowsImage -ImagePath "$WimFile\boot.wim" -Path $mountdir -Index 1

$AddApps = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Extra%20Apps/AddApps.ps1")
Invoke-Expression $($AddApps.Content)

########################################################
# Confirm Apps have been integrated
########################################################

$ConfirmAppsFiles = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Extra%20Apps/ConfirmApps.ps1")
Invoke-Expression $($ConfirmAppsFiles.Content)

########################
# Dismount the image
########################
Write-Host
Write-Verbose "Processing: Dismounting OSDCloud boot.wim" -Verbose

Dismount-WindowsImage -Path $mountdir -Save

################################################
# Download ASRock AQUA LGA 1851 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock AQUA Socket LGA 1851 Motherboard drivers download......" -Verbose
Write-Host

$AQUADrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/AQUA.ps1")
Invoke-Expression $($AQUADrivers.Content)

################################################
# Download ASRock Live Mixer LGA 1851 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Live Mixer Socket LGA 1851 Motherboard drivers download......" -Verbose
Write-Host

$LiveMixergDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Live%20Mixer%20Motherboards/LiveMixer.ps1")
Invoke-Expression $($LiveMixergDrivers.Content)

################################################
# Download ASRock PRO LGA 1851 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock PRO Socket LGA 1851 Motherboard drivers download......" -Verbose
Write-Host

$PRODrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($PRODrivers.Content)

################################################
# Download ASRock Steel Legend LGA 1851 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Steel Legend Socket LGA 1851 Motherboard drivers download......" -Verbose
Write-Host

$SteelLegendDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($SteelLegendDrivers.Content)

################################################
# Download ASRock Taichi LGA 1851 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Taichi Socket LGA 1851 Motherboard drivers download......" -Verbose
Write-Host

$TaichiDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($TaichiDrivers.Content)

Write-Host
Write-Verbose "Completed: ASRock Socket LGA 1851 Motherboard drivers download..." -Verbose
Write-Host

#################################
# Download ASUS LGA 1851 Business motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Business motherboard Drivers..." -Verbose
Write-Host

$BusinessDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Business.ps1")
Invoke-Expression $($BusinessDrivers.Content)

#################################
# Download ASUS LGA 1851 CSM motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 CSM motherboard Drivers..." -Verbose
Write-Host

$CSMDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSMDrivers.Content)

#################################
# Download ASUS LGA 1851 Expedition motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Expedition motherboard Drivers..." -Verbose
Write-Host

$ExpeditionDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($ExpeditionDrivers.Content)

#################################
# Download ASUS LGA 1851 Other motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Other motherboard Drivers..." -Verbose
Write-Host

$OtherDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Other%20Motherboards/Other.ps1")
Invoke-Expression $($OtherDrivers.Content)

#################################
# Download ASUS LGA 1851 PRIME motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 PRIME motherboard Drivers..." -Verbose
Write-Host

$PRIMEDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIMEDrivers.Content)

#################################
# Download ASUS LGA 1851 ProArt motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ProArt motherboard Drivers..." -Verbose
Write-Host

$ProArtDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArtDrivers.Content)

#################################
# Download ASUS LGA 1851 ROG motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers motherboard Drivers..." -Verbose
Write-Host

$ROGDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROGDrivers.Content)

#################################
# Download ASUS LGA 1851 TUF Gaming motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming motherboard Drivers..." -Verbose
Write-Host

$TUFGamingDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/TUF%20Gaming/TUFGaming.ps1")
Invoke-Expression $($TUFGamingDrivers.Content)

#################################
# Download ASUS LGA 1851 Workstation motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Workstation motherboard Drivers..." -Verbose
Write-Host

$WorkstationDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($WorkstationDrivers.Content)

Write-Host
Write-Verbose "Completed: ASUS Socket LGA 1851 Motherboard drivers download..." -Verbose
Write-Host

#################################
# Download Gigabyte AERO Socket LGA1851 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket LGA 1851 AERO motherboard drivers" -Verbose
Write-Host

$AERODrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/AERO.ps1")
Invoke-Expression $($AERODrivers.Content)

#################################
# Download OSDCloud - Cloud Drivers
#################################

Write-Host
Write-Verbose "Processing: OSDCloud Download - Dell Cloud Drivers..." -Verbose
Write-Host

$DellCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers.ps1")
Invoke-Expression $($DellCloudDrivers.Content)

Write-Host
Write-Verbose "Processing: OSDCloud Download - Intel Cloud Drivers..." -Verbose
Write-Host

$IntelCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers.ps1")
Invoke-Expression $($IntelCloudDrivers.Content)

Write-Host
Write-Verbose "Processing: OSDCloud Download - Nutanix Cloud Drivers..." -Verbose
Write-Host

$NutanixCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Nutanix%20Drivers/Nutanix-CloudDrivers.ps1")
Invoke-Expression $($NutanixCloudDrivers.Content)

Write-Host
Write-Verbose "Processing: OSDCloud Download - USB Cloud Drivers..." -Verbose
Write-Host

$USBCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers.ps1")
Invoke-Expression $($USBCloudDrivers.Content)

Write-Host
Write-Verbose "Processing: OSDCloud Download - VMWare Cloud Drivers..." -Verbose
Write-Host

$VMWareCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/VMWare%20Drivers/VMWare-CloudDrivers.ps1")
Invoke-Expression $($VMWareCloudDrivers.Content)

Write-Host
Write-Verbose "Processing: OSDCloud Download - WLAN Cloud Drivers..." -Verbose
Write-Host

$WLANCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/WLAN%20Drivers/WLAN-CloudDrivers.ps1")
Invoke-Expression $($WLANCloudDrivers.Content)

Write-Host
Write-Verbose "Completed: OSDCloud Download - Cloud Drivers..." -Verbose
Write-Host

#################################
# Download OSDCloud - Other Drivers
#################################

Write-Host
Write-Verbose "Processing: OSDCloud Download - Hyper-V Drivers" -Verbose
Write-Host

$HyperVDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
Invoke-Expression $($HyperVDrivers.Content) 

Write-Host
Write-Verbose "Processing: OSDCloud Download - VMWare ESXI Drivers" -Verbose
Write-Host

$ESXIDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
Invoke-Expression $($ESXIDrivers.Content) 

Write-Host
Write-Verbose "Processing: OSDCloud Download - VMWare Workstation Pro Drivers" -Verbose
Write-Host

$VMWareWSProDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
Invoke-Expression $($VMWareWSProDrivers.Content) 

Write-Host
Write-Verbose "Processing: OSDCloud Download - Proxmox Drivers" -Verbose
Write-Host

$ProxmoxDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
Invoke-Expression $($ProxmoxDrivers.Content) 

Write-Host
Write-Verbose "Processing: OSDCloud Download - unRAID Drivers" -Verbose
Write-Host

$unRAIDDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/unRAID/unRAID.ps1")
Invoke-Expression $($unRAIDDrivers.Content)

#########################################
# Integrate Drivers
#########################################

Write-Host
Write-Verbose "Processing: Integrating ASRock AQUA Socket LGA 1851 Motherboard Drivers" -Verbose
Write-Host

$AQUA = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/AQUA.ps1")
Invoke-Expression $($AQUA.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Live Mixer Socket LGA 1851 Motherboard Drivers" -Verbose
Write-Host

$LiveMixer = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/LiveMixer.ps1")
Invoke-Expression $($LiveMixer.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock PRO Socket LGA 1851 Motherboard Drivers" -Verbose
Write-Host

$PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/PRO.ps1")
Invoke-Expression $($PRO.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Steel Legend Socket LGA 1851 Motherboard Drivers" -Verbose
Write-Host

$SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/SteelLegend.ps1")
Invoke-Expression $($SteelLegend.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Taichi Socket LGA 1851 Motherboard Drivers" -Verbose
Write-Host

$Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/Taichi.ps1")
Invoke-Expression $($Taichi.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 Business motherboard drivers" -Verbose
Write-Host

$Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/Business.ps1")
Invoke-Expression $($Business.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 CSM motherboard drivers" -Verbose
Write-Host

$CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/CSM.ps1")
Invoke-Expression $($CSM.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 Expedition motherboard drivers" -Verbose
Write-Host

$Expedition = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/Expedition.ps1")
Invoke-Expression $($Expedition.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 Others motherboard drivers" -Verbose
Write-Host

$Others = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/Other.ps1")
Invoke-Expression $($Others.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 PRIME motherboard drivers" -Verbose
Write-Host

$PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/PRIME.ps1")
Invoke-Expression $($PRIME.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 ProArt motherboard drivers" -Verbose
Write-Host

$ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/ProArt.ps1")
Invoke-Expression $($ProArt.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 ROG - Republic of Gamers motherboard drivers" -Verbose
Write-Host

$ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROG.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 TUF Gaming motherboard drivers" -Verbose
Write-Host

$TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/TUF%20Gaming.ps1")
Invoke-Expression $($TUFGaming.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket LGA 1851 Workstation motherboard drivers" -Verbose
Write-Host

$Workstation = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/Workstation.ps1")
Invoke-Expression $($Workstation.Content)  



Write-Host
Write-Verbose "Processing: Integrating OSDCloud - Cloud Drivers" -Verbose
Write-Host

$CloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Cloud%20Drivers/CloudDrivers.ps1")
Invoke-Expression $($CloudDrivers.Content) 

Write-Host
Write-Verbose "Processing: Integrating OSDCloud - Other Drivers" -Verbose
Write-Host

$OtherDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Virtualization/Other.ps1")
Invoke-Expression $($OtherDrivers.Content)

Write-Host
Write-Verbose "Completed: Integrating Drivers" -Verbose
Write-Host
