################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ALL-AMD -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\ALL-AMD"
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
# Download ASRock Extreme AM4 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Extreme Socket AM$ Motherboard drivers download......" -Verbose
Write-Host

$ExtremeDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Extreme.ps1")
Invoke-Expression $($ExtremeDriversAM4.Content)

Write-Host
Write-Verbose "Completed: ASRock Extreme Socket AM$ Motherboard drivers download..." -Verbose
Write-Host

################################################
# Download ASRock Fatal1ty Gaming AM4 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Fatal1ty Gaming Socket AM$ Motherboard drivers download......" -Verbose
Write-Host

$Fatal1tyGamingDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Fatal1tyGaming.ps1")
Invoke-Expression $($Fatal1tyGamingDriversAM4.Content)

Write-Host
Write-Verbose "Completed: ASRock Fatal1ty Gaming Socket AM$ Motherboard drivers download..." -Verbose
Write-Host

################################################
# Download ASRock PRO AM4 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock PRO Socket AM$ Motherboard drivers download......" -Verbose
Write-Host

$PRODriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($PRODriversAM4.Content)

Write-Host
Write-Verbose "Completed: ASRock PRO Socket AM$ Motherboard drivers download..." -Verbose
Write-Host

################################################
# Download ASRock Phantom Gaming AM4 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Phantom Gaming Socket AM$ Motherboard drivers download......" -Verbose
Write-Host

$PhantomGamingDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/PhantomGaming.ps1")
Invoke-Expression $($PhantomGamingDriversAM4.Content)

Write-Host
Write-Verbose "Completed: ASRock Phantom Gaming Socket AM$ Motherboard drivers download..." -Verbose
Write-Host

################################################
# Download ASRock Steel Legend AM4 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Steel Legend Socket AM4 Motherboard drivers download......" -Verbose
Write-Host

$SteelLegendDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($SteelLegendDriversAM4.Content)

Write-Host
Write-Verbose "Completed: ASRock Steel Legend Socket AM4 Motherboard drivers download..." -Verbose
Write-Host

################################################
# Download ASRock Taichi AM4 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Taichi Socket AM4 Motherboard drivers download......" -Verbose
Write-Host

$TaichiDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($TaichiDriversAM4.Content)

Write-Host
Write-Verbose "Completed: ASRock Taichi Socket AM4 Motherboard drivers download..." -Verbose
Write-Host

#######################################################
# Download ASUS Business Socket AM4 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 Business motherboard drivers..." -Verbose
Write-Host

$BusinessDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Business%20Motherboards/Business.ps1")
Invoke-Expression $($BusinessDriversAM4.Content)

#######################################################
# Download ASUS CSM Socket AM4 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 CSM motherboard drivers..." -Verbose
Write-Host

$CSMDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSMDriversAM4.Content)

#######################################################
# Download ASUS Socket AM4 Others motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 Others motherboard drivers..." -Verbose
Write-Host

$OthersDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Other%20Motherboards/Others.ps1")
Invoke-Expression $($OthersDriversAM4.Content)

#######################################################
# Download ASUS Socket AM4 PRIME motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 PRIME motherboard drivers..." -Verbose
Write-Host

$PRIMEDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIMEDriversAM4.Content)

#######################################################
# Download ASUS Socket AM4 ProArt motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 ProArt motherboard drivers..." -Verbose
Write-Host

$ProArtDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArtDriversAM4.Content)

#######################################################
# Download ASUS Socket AM4 ROG motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 Republic of Gamers motherboard drivers..." -Verbose
Write-Host

$ROGDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROGDriversAM4.Content)

#######################################################
# Download ASUS Socket AM4 TUF Gaming motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 TUF Gaming motherboard drivers..." -Verbose
Write-Host

$TUFGamingDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/TUFGaming.ps1")
Invoke-Expression $($TUFGamingDriversAM4.Content)

#######################################################
# Download ASUS Socket AM4 Workstation motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM4 Workstation motherboard drivers..." -Verbose
Write-Host

$WorkstationDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($WorkstationDriversAM4.Content)

#################################
# Download Gigabyte AERO Socket AM4 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM4 AERO motherboard drivers" -Verbose
Write-Host

$AERODriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/AERO.ps1")
Invoke-Expression $($AERODriversAM4.Content)

#################################
# Download Gigabyte AORUS Socket AM4 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM4 AORUS motherboard drivers" -Verbose
Write-Host

$AORUSDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/AORUS.ps1")
Invoke-Expression $($AORUSDriversAM4.Content)

#################################
# Download Gigabyte AORUS Socket AM4 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM4 Gaming motherboard drivers" -Verbose
Write-Host

$GigabyteGamingDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Gaming.ps1")
Invoke-Expression $($GigabyteGamingDriversAM4.Content)

#################################
# Download Gigabyte UD-Ultra Durable Socket AM4 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM4 UD - Ultra Durable motherboard drivers" -Verbose
Write-Host

$UltraDurableDriversAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/UltraDurable.ps1")
Invoke-Expression $($UltraDurableDriversAM4.Content)

################################################
# Download ASRock PRO AM5 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock PRO Socket AM5 Motherboard drivers download......" -Verbose
Write-Host

$ASRockPRODriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($ASRockPRODriversAM5.Content)

Write-Host
Write-Verbose "Completed: ASRock PRO Socket AM5 Motherboard drivers download..." -Verbose
Write-Host

################################################
# Download ASRock Steel Legend AM5 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Steel Legend Socket AM5 Motherboard drivers download......" -Verbose
Write-Host

$ASRockSteelLegendDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($ASRockSteelLegendDriversAM5.Content)

################################################
# Download ASRock Taichi AM5 Drivers
################################################

Write-Host
Write-Verbose "Processing: ASRock Taichi Socket AM4 Motherboard drivers download......" -Verbose
Write-Host

$ASRockTaichiDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($ASRockTaichiDriversAM5.Content)

Write-Host
Write-Verbose "Completed: ASRock Steel Legend Socket AM5 Motherboard drivers download..." -Verbose
Write-Host

#######################################################
# Download ASUS Business Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Business motherboard drivers..." -Verbose
Write-Host

$ASUSBusinessDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Business.ps1")
Invoke-Expression $($ASUSBusinessDriversAM5.Content)

#######################################################
# Download ASUS CSM Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 CSM motherboard drivers..." -Verbose
Write-Host

$ASUSCSMDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($ASUSCSMDriversAM5.Content)

#######################################################
# Download ASUS Socket AM5 Expedition motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Expedition motherboard drivers..." -Verbose
Write-Host

$ASUSExpeditionDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($ASUSExpeditionDriversAM5.Content)

#######################################################
# Download ASUS Socket AM5 Others motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Others motherboard drivers..." -Verbose
Write-Host

$ASUSOthersDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Other.ps1")
Invoke-Expression $($ASUSOthersDriversAM5.Content)

#######################################################
# Download ASUS Socket AM5 PRIME motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 PRIME motherboard drivers..." -Verbose
Write-Host

$ASUSPRIMEDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($ASUSPRIMEDriversAM5.Content)

#######################################################
# Download ASUS Socket AM5 ProArt motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 ProArt motherboard drivers..." -Verbose
Write-Host

$ASUSProArtDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ASUSProArtDriversAM5.Content)

#######################################################
# Download ASUS Socket AM5 ROG motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 Republic of Gamers motherboard drivers..." -Verbose
Write-Host

$ASUSROGDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ASUSROGDriversAM5.Content)

#######################################################
# Download ASUS Socket AM5 TUF Gaming motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: ASUS Socket AM5 TUF Gaming motherboard drivers..." -Verbose
Write-Host

$ASUSTUFGamingDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/TUFGaming.ps1")
Invoke-Expression $($ASUSTUFGamingDriversAM5.Content)

#################################
# Download Gigabyte AERO Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 AERO motherboard drivers" -Verbose
Write-Host

$GigabyteAERODriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/AERO.ps1")
Invoke-Expression $($GigabyteAERODriversAM5.Content)

#################################
# Download Gigabyte AI TOP Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 AI TOP motherboard drivers" -Verbose
Write-Host

$GigabyteAITOPDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/AI-TOP.ps1")
Invoke-Expression $($GigabyteAITOPDriversAM5.Content)

#################################
# Download Gigabyte AORUS Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 AORUS motherboard drivers" -Verbose
Write-Host

$GigabyteAORUSDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/AORUS.ps1")
Invoke-Expression $($GigabyteAORUSDriversAM5.Content)

#################################
# Download Gigabyte Eagle Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 Eagle motherboard drivers" -Verbose
Write-Host

$GigabyteEagleDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/Eagle.ps1")
Invoke-Expression $($GigabyteEagleDriversAM5.Content)

#################################
# Download Gigabyte Gaming Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 Gaming motherboard drivers" -Verbose
Write-Host

$GigabyteGamingDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/Gaming.ps1")
Invoke-Expression $($GigabyteGamingDriversAM5.Content)

#################################
# Download Gigabyte UD-Ultra Durable Socket AM5 motherboard drivers
#################################

Write-Host
Write-Verbose "Processing: Gigabyte Socket AM5 UD - Ultra Durable motherboard drivers" -Verbose
Write-Host

$GigabyteUltraDurableDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/UD-Ultra%20Durable.ps1")
Invoke-Expression $($GigabyteUltraDurableDriversAM5.Content)

#######################################################
# Download MSI Gaming Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 Gaming motherboard drivers..." -Verbose
Write-Host

$MSIGamingDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/Gaming.ps1")
Invoke-Expression $($MSIGamingDriversAM5.Content)

#######################################################
# Download MSI MAG Socket AM5 motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 MAG motherboard drivers..." -Verbose
Write-Host

$MSIMAGDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/MAG.ps1")
Invoke-Expression $($MSIMAGDriversAM5.Content)

#######################################################
# Download MSI Socket AM5 MEG motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 MEG motherboard drivers..." -Verbose
Write-Host

$MSIMEGDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/MEG.ps1")
Invoke-Expression $($MSIMEGDriversAM5.Content)

#######################################################
# Download MSI Socket AM5 MPG motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 MPG motherboard drivers..." -Verbose
Write-Host

$MSIMPGDriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MPG%20Series/MPG.ps1")
Invoke-Expression $($MSIMPGDriversAM5.Content)

#######################################################
# Download MSI Socket AM5 PRO motherboard Drivers
#######################################################

Write-Host
Write-Verbose "Processing: MSI Socket AM5 PRO motherboard drivers..." -Verbose
Write-Host

$MSIPRODriversAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/PRO.ps1")
Invoke-Expression $($MSIPRODriversAM5.Content)

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

#########################################
# Integrate Drivers
#########################################

Write-Host
Write-Verbose "Processing: Integrating ASRock Extreme Socket AM4 Motherboard Drivers" -Verbose
Write-Host

$Extreme = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/Extreme.ps1")
Invoke-Expression $($Extreme.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Fatal1ty Gaming Socket AM4 Motherboard Drivers" -Verbose
Write-Host

$Fatal1tyGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/Fatal1tyGaming.ps1")
Invoke-Expression $($Fatal1tyGaming.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock PRO Socket AM4 Motherboard Drivers" -Verbose
Write-Host

$PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/PRO.ps1")
Invoke-Expression $($PRO.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Phantom Gaming Socket AM4 Motherboard Drivers" -Verbose
Write-Host

$PhantomGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/PhantomGaming.ps1")
Invoke-Expression $($PhantomGaming.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Steel Legend Socket AM4 Motherboard Drivers" -Verbose
Write-Host

$SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/SteelLegend.ps1")
Invoke-Expression $($SteelLegend.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Taichi Socket AM4 Motherboard Drivers" -Verbose
Write-Host

$Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/Taichi.ps1")
Invoke-Expression $($Taichi.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 Business motherboard drivers" -Verbose
Write-Host

$Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/Business.ps1")
Invoke-Expression $($Business.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 CSM motherboard drivers" -Verbose
Write-Host

$CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/CSM.ps1")
Invoke-Expression $($CSM.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 Others motherboard drivers" -Verbose
Write-Host

$Others = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/Others.ps1")
Invoke-Expression $($Others.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 PRIME motherboard drivers" -Verbose
Write-Host

$PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/PRIME.ps1")
Invoke-Expression $($PRIME.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 ProArt motherboard drivers" -Verbose
Write-Host

$ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/ProArt.ps1")
Invoke-Expression $($ProArt.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 ROG - Republic of Gamers motherboard drivers" -Verbose
Write-Host

$ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROG.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 TUF Gaming motherboard drivers" -Verbose
Write-Host

$TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/TUFGaming.ps1")
Invoke-Expression $($TUFGaming.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM4 Workstation motherboard drivers" -Verbose
Write-Host

$Workstation = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/Workstation.ps1")
Invoke-Expression $($Workstation.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Socket AM4 AERO motherboard drivers" -Verbose
Write-Host

$AERO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM4/AERO.ps1")
Invoke-Expression $($AERO.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte AORUS Socket AM4 AORUS motherboard drivers" -Verbose
Write-Host

$AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM4/AORUS.ps1")
Invoke-Expression $($AORUS.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Gaming Socket AM4 Gaming motherboard drivers" -Verbose
Write-Host

$Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM4/Gaming.ps1")
Invoke-Expression $($Gaming.Content)

Write-Host
Write-Verbose "Processing: Integrating Gigabyte Gaming Socket AM4 UD - Ultra Durable motherboard drivers" -Verbose
Write-Host

$UD = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM4/UD-Ultra%20Durable.ps1")
Invoke-Expression $($UD.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock PRO Socket AM5 Motherboard Drivers" -Verbose
Write-Host

$PROAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/PRO.ps1")
Invoke-Expression $($PROAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Steel Legend Socket AM5 Motherboard Drivers" -Verbose
Write-Host

$SteelLegendAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/SteelLegend.ps1")
Invoke-Expression $($SteelLegendAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASRock Taichi Socket AM5 Motherboard Drivers" -Verbose
Write-Host

$TaichiAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/Taichi.ps1")
Invoke-Expression $($TaichiAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 Business motherboard drivers" -Verbose
Write-Host

$BusinessAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/Business.ps1")
Invoke-Expression $($BusinessAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 CSM motherboard drivers" -Verbose
Write-Host

$CSMAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/CSM.ps1")
Invoke-Expression $($CSMAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 Expedition motherboard drivers" -Verbose
Write-Host

$ExpeditionAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/Expedition.ps1")
Invoke-Expression $($ExpeditionAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 Others motherboard drivers" -Verbose
Write-Host

$OthersAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/Others.ps1")
Invoke-Expression $($OthersAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 PRIME motherboard drivers" -Verbose
Write-Host

$PRIMEAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/PRIME.ps1")
Invoke-Expression $($PRIMEAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 ProArt motherboard drivers" -Verbose
Write-Host

$ProArtAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/ProArt.ps1")
Invoke-Expression $($ProArtAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 ROG - Republic of Gamers motherboard drivers" -Verbose
Write-Host

$ROGAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROGAM5.Content)

Write-Host
Write-Verbose "Processing: Integrating ASUS Socket AM5 TUF Gaming motherboard drivers" -Verbose
Write-Host

$TUFGamingAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/TUF%20Gaming.ps1")
Invoke-Expression $($TUFGamingAM5.Content)
