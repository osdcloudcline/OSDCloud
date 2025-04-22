################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ALL-AM5 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\ALL-AM5"
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

$sourcedownload = "https://github.com/PowerShell/PowerShell/releases/download/v7.5.0/PowerShell-7.5.0-win-x64.zip"
$DLDestination = "C:\OSDCloud\downloads\PowerShell\7"

Write-Verbose "Processing: PowerShell 7.5.0 download..." -Verbose
Write-Host
Save-WebFile -SourceUrl $sourcedownload -DestinationDirectory $DLDestination

Write-Verbose "Completed: PowerShell 7.5.0 download" -Verbose
Write-Host

# Settings and File Paths

$sourcedownload = "https://github.com/PowerShell/PowerShell/releases/download/v7.5.0/PowerShell-7.5.0-win-x64.zip"
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

Expand-Archive -Path "$DLDestination\PowerShell-7.5.0-win-x64.zip" -DestinationPath "$mountdir\Program Files\PowerShell\7" -Force

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
# Download ASRock PRO AM5 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock PRO Socket AM5 Motherboard drivers download......" -Verbose
Write-Host

$PRODrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($PRODrivers.Content)

Write-Host
Write-Verbose "Completed: ASRock PRO Socket AM5 Motherboard drivers download..." -Verbose
Write-Host

################################################
# Download ASRock Steel Legend AM5 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Steel Legend Socket AM5 Motherboard drivers download......" -Verbose
Write-Host

$SteelLegendDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($SteelLegendDrivers.Content)

################################################
# Download ASRock Taichi AM5 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Taichi Socket AM4 Motherboard drivers download......" -Verbose
Write-Host

$TaichiDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($TaichiDrivers.Content)

Write-Host
Write-Verbose "Completed: ASRock Steel Legend Socket AM5 Motherboard drivers download..." -Verbose
Write-Host

#######################################################
# Download ASUS Business Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Business motherboard drivers..." -Verbose
Write-Host

$BusinessDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Business.ps1")
Invoke-Expression $($BusinessDrivers.Content)

#######################################################
# Download ASUS CSM Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 CSM motherboard drivers..." -Verbose
Write-Host

$CSMDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSMDrivers.Content)

#######################################################
# Download ASUS Socket AM5 Expedition motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Expedition motherboard drivers..." -Verbose
Write-Host

$ExpeditionDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($ExpeditionDrivers.Content)

#######################################################
# Download ASUS Socket AM5 Others motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Others motherboard drivers..." -Verbose
Write-Host

$OthersDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Other.ps1")
Invoke-Expression $($OthersDrivers.Content)

#######################################################
# Download ASUS Socket AM5 PRIME motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 PRIME motherboard drivers..." -Verbose
Write-Host

$PRIMEDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIMEDrivers.Content)

#######################################################
# Download ASUS Socket AM5 ProArt motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 ProArt motherboard drivers..." -Verbose
Write-Host

$ProArtDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArtDrivers.Content)

#######################################################
# Download ASUS Socket AM5 ROG motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Republic of Gamers motherboard drivers..." -Verbose
Write-Host

$ROGDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROGDrivers.Content)

#######################################################
# Download ASUS Socket AM5 TUF Gaming motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 TUF Gaming motherboard drivers..." -Verbose
Write-Host

$TUFGamingDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/TUFGaming.ps1")
Invoke-Expression $($TUFGamingDrivers.Content)

#################################
# Download Gigabyte AERO Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 AERO motherboard drivers" -Verbose
Write-Host

$AERODrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/AERO.ps1")
Invoke-Expression $($AERODrivers.Content)

#################################
# Download Gigabyte AI TOP Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 AI TOP motherboard drivers" -Verbose
Write-Host

$AITOPDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/AI-TOP.ps1")
Invoke-Expression $($AITOPDrivers.Content)

#################################
# Download Gigabyte AORUS Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 AORUS motherboard drivers" -Verbose
Write-Host

$AORUSDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/AORUS.ps1")
Invoke-Expression $($AORUSDrivers.Content)

#################################
# Download Gigabyte Eagle Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 Eagle motherboard drivers" -Verbose
Write-Host

$EagleDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/Eagle.ps1")
Invoke-Expression $($EagleDrivers.Content)

#################################
# Download Gigabyte Gaming Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 Gaming motherboard drivers" -Verbose
Write-Host

$GamingDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/Gaming.ps1")
Invoke-Expression $($GamingDrivers.Content)

#################################
# Download Gigabyte UD-Ultra Durable Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 UD - Ultra Durable motherboard drivers" -Verbose
Write-Host

$UltraDurableDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/UD-Ultra%20Durable.ps1")
Invoke-Expression $($UltraDurableDrivers.Content)

#######################################################
# Download MSI Gaming Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 Gaming motherboard drivers..." -Verbose
Write-Host

$GamingDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/Gaming.ps1")
Invoke-Expression $($GamingDrivers.Content)

#######################################################
# Download MSI MAG Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 MAG motherboard drivers..." -Verbose
Write-Host

$MAGDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/MAG.ps1")
Invoke-Expression $($MAGDrivers.Content)

#######################################################
# Download MSI Socket AM5 MEG motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 MEG motherboard drivers..." -Verbose
Write-Host

$MEGDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/MEG.ps1")
Invoke-Expression $($MEGDrivers.Content)

#######################################################
# Download MSI Socket AM5 MPG motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 MPG motherboard drivers..." -Verbose
Write-Host

$MPGDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MPG%20Series/MPG.ps1")
Invoke-Expression $($MPGDrivers.Content)

#######################################################
# Download MSI Socket AM5 PRO motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 PRO motherboard drivers..." -Verbose
Write-Host

$PRODrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/PRO.ps1")
Invoke-Expression $($PRODrivers.Content)

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

#########################################
# Integrate Drivers
#########################################

Write-Host
Write-Verbose "Processing: Integrating ASRock PRO Socket AM5 Motherboard Drivers" -Verbose
Write-Host

$PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/PRO.ps1")
Invoke-Expression $($PRO.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Steel Legend Socket AM5 Motherboard Drivers" -Verbose
Write-Host

$SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/SteelLegend.ps1")
Invoke-Expression $($SteelLegend.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Taichi Socket AM5 Motherboard Drivers" -Verbose
Write-Host

$Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/Taichi.ps1")
Invoke-Expression $($Taichi.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 Business motherboard drivers" -Verbose
Write-Host

$Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/Business.ps1")
Invoke-Expression $($Business.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 CSM motherboard drivers" -Verbose
Write-Host

$CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/CSM.ps1")
Invoke-Expression $($CSM.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 Expedition motherboard drivers" -Verbose
Write-Host

$Expedition = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/Expedition.ps1")
Invoke-Expression $($Expedition.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 Others motherboard drivers" -Verbose
Write-Host

$Others = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/Others.ps1")
Invoke-Expression $($Others.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 PRIME motherboard drivers" -Verbose
Write-Host

$PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/PRIME.ps1")
Invoke-Expression $($PRIME.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 ProArt motherboard drivers" -Verbose
Write-Host

$ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/ProArt.ps1")
Invoke-Expression $($ProArt.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 ROG - Republic of Gamers motherboard drivers" -Verbose
Write-Host

$ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROG.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 TUF Gaming motherboard drivers" -Verbose
Write-Host

$TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/TUF%20Gaming.ps1")
Invoke-Expression $($TUFGaming.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Socket AM5 AERO motherboard drivers" -Verbose
Write-Host

$AERO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/AERO.ps1")
Invoke-Expression $($AERO.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Socket AM5 AI TOP motherboard drivers" -Verbose
Write-Host

$AITOP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/AI-TOP.ps1")
Invoke-Expression $($AITOP.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte AORUS Socket AM5 AORUS motherboard drivers" -Verbose
Write-Host

$AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/AORUS.ps1")
Invoke-Expression $($AORUS.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Eagle Socket AM5 AORUS motherboard drivers" -Verbose
Write-Host

$Eagle = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/Eagle.ps1")
Invoke-Expression $($Eagle.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Gaming Socket AM5 Gaming motherboard drivers" -Verbose
Write-Host

$Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/Gaming.ps1")
Invoke-Expression $($Gaming.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Gaming Socket AM5 UD - Ultra Durable motherboard drivers" -Verbose
Write-Host

$UD = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/UD-Ultra%20Durable.ps1")
Invoke-Expression $($UD.Content)

Write-Host
Write-Verbose "Processing: Integrating MSI Socket AM5 Gaming motherboard drivers" -Verbose
Write-Host

$Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/AMD/AM%205/Gaming.ps1")
Invoke-Expression $($Gaming.Content)

Write-Host
Write-Verbose "Processing: Integrating MSI Socket AM5 MAG motherboard drivers" -Verbose
Write-Host

$MAG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/AMD/AM%205/MAG.ps1")
Invoke-Expression $($MAG.Content)

Write-Host
Write-Verbose "Processing: Integrating MSI Socket AM5 MEG motherboard drivers" -Verbose
Write-Host

$MEG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/AMD/AM%205/MEG.ps1")
Invoke-Expression $($MEG.Content)

Write-Host
Write-Verbose "Processing: Integrating MSI Socket AM5 MPG motherboard drivers" -Verbose
Write-Host

$MPG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/AMD/AM%205/MPG.ps1")
Invoke-Expression $($MPG.Content)

Write-Host
Write-Verbose "Processing: Integrating MSI Socket AM5 PRO motherboard drivers" -Verbose
Write-Host

$PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/AMD/AM%205/PRO.ps1")
Invoke-Expression $($PRO.Content)

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

##########################################
# OSDCloud WebScript for Startnet.cmd
##########################################

Write-Verbose "Adding a customized PowerShell based Startnet script and configuring OSDCloud to execute it on startup..." -Verbose
Edit-OSDCloudWinPE -WebPSScript https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OSDCloud%20Startup%20Scripts/OSDCloudStartnet.ps1
Write-Host

###########################################
# Rename OSDCloud ISO
#########################################

$OSDCloudISOPath = "C:\OSDCloud\ALL-AM5"

Write-Verbose "Renaming OSDCloud ISO Files..." -Verbose
Write-Host
Rename-Item -Path "$OSDCloudISOPath\OSDCloud.iso" -NewName "C:\OSDCloud\ALL-AM5\OSDCloud-ALL-AM5.iso" -Force
Rename-Item -Path "$OSDCloudISOPath\OSDCloud_NoPrompt.iso" -NewName "C:\OSDCloud\ALL-AM5\OSDCloud-ALL-AM5_NoPrompt.iso" -Force

###########################################
# Copy OSDCloud ISO Files
#########################################

$ISO1 = "C:\OSDCloud\ALL-AM5\OSDCloud-ALL-AM5.iso"
$ISO2 = "C:\OSDCloud\ALL-AM5\OSDCloud-ALL-AM5_NoPrompt.iso"

$OSDISODestination = "C:\ISOs\OSDCloud\AMD\Socket AM5"

Write-Verbose "Processing: Creating ISO directory" -Verbose
Write-Host
# Create ISO Directory
New-Item -Path $OSDISODestination -ItemType Directory -Force

Write-Verbose "Copying OSDCloud ISO Files..." -Verbose
Write-Host

Copy-Item -Path $ISO1 -Destination $OSDISODestination -Force
Copy-Item -Path $ISO2 -Destination $OSDISODestination -Force
