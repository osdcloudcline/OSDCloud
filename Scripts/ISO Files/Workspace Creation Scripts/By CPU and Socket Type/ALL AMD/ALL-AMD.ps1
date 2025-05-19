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
