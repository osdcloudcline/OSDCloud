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
Write-Host '     - Networking and Storage: ASUS AM4 motherboard drivers                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: VM drivers for ESXI, Hyper-V, VMWare Workstation and Proxmox   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Wireless networking support                                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - FOR SYSTEM REFRESH: User Profile Backup and Restore for data backup                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome portable browser                                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - PowerShell Modules: Version 5.x and 7.x                                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                              ' -BackgroundColor White
pause
Clear-Host

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Host
Write-Verbose "Processing: ASUS AM4 ProArt Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

$ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArt.Content)

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

Write-Host
Write-Verbose "Completed: ALL ASUS AM4 ProArt Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name WinRE -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = Read-Host -Prompt 'Please enter custom path for new OSDCloud Workspace'
New-OSDCloudWorkspace -WorkspacePath $WorkspacePath

Write-Host
Write-Verbose "Confirming new OSDCloud Workspace Path..." -Verbose
Get-OSDCloudWorkspace

# ASUS AM 4 Motherboards

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard WiFi Drivers..." -Verbose 
$ProArtWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\WiFi1"

Edit-OSDCloudWinPE -DriverPath $ProArtWiFi

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 Motherboard Drivers..." -Verbose 
Write-Host

# Virtualization Hypervisors

Write-Host
Write-Verbose "Processing: Microsoft Hyper-V Ethernet Drivers..." -Verbose 
$HyperVNetwork = "C:\OSDCloud\Drivers\Virtualization\HyperV\Network"

Edit-OSDCloudWinPE -DriverPath $HyperVNetwork

Write-Host
Write-Verbose "Completed: Integration of Microsoft Hyper-V Network Drivers..." -Verbose
Write-Host

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

# OSDCloud Cloud Drivers

Write-Host
Write-Verbose "Processing: OSDCloud - Cloud Drivers..." -Verbose 

Edit-OSDCloudWinPE -CloudDriver USB,VMware,WiFi

Write-Host
Write-Verbose "Completed: Integration of OSDCloud - Cloud Drivers..." -Verbose
Write-Host

# VBS Scripting Support

Write-Host
Write-Verbose "Processing: VBS Scripting Support..." -Verbose 

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"
$VBSName1 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBSName2 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBSName3 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBSName4 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"
$VBS1 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBS2 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBS3 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBS4 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"

Write-Host
Write-Verbose "Processing Item: $VBSName1..." -Verbose
Add-WindowsPackage -Path $WorkspacePath -PackagePath $VBS1
Write-Host

Write-Verbose "Processing Item: $VBSName2..." -Verbose
Add-WindowsPackage -Path $WorkspacePath -PackagePath $VBS2
Write-Host

Write-Verbose "Processing Item: $VBSName3..." -Verbose
Add-WindowsPackage -Path $WorkspacePath -PackagePath $VBS3
Write-Host

Write-Verbose "Processing Item: $VBSName4..." -Verbose
Add-WindowsPackage -Path $WorkspacePath -PackagePath $VBS4

Write-Host
Write-Verbose "Completed: Integration of VBS Scripting Support for OSDCloud..." -Verbose
Write-Host

# Google Chrome Portable Browser - OSDCloud

Write-Host
Write-Verbose "Processing: Google Chrome Portable Browser for OSDCloud..." -Verbose 
$ChromePath = "C:\OSDCloud\GitHub\downloads\Chrome.exe"
$ChromeDestination = "$WorkspacePath\Windows\System32"

Copy-Item -Path $ChromePath -Destination $ChromeDestination

Write-Host
Write-Verbose "Completed: Integration of Google Chrome Portable Browser for OSDCloud..." -Verbose
Write-Host

# User Profile Backup and Restore for OSDCloud

Write-Host
Write-Verbose "Processing: User Profile Backup/Restore for OSDCloud..." -Verbose 
$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UBPRDestination = "$WorkspacePath\Windows\System32"

Copy-Item -Path $UPBRFilePath -Destination $UBPRDestination

Write-Host
Write-Verbose "Completed: Integration of User Profile Backup/Restore for OSDCloud..." -Verbose
Write-Host

# PowerShell 5.1 Modules - OSDCloud

$OSDCloudPS5xMods = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/5.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS5xMods.Content)

# PowerShell 7.x Modules - OSDCloud

$OSDCloudPS7xMods = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/7.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS7xMods.Content)

# OSDCloud wallpaper

Write-Host
Write-Verbose "Processing: NEW OSDCloud Wallpaper..." -Verbose 
$OSDCloudwallpaper = "C:\downloads\OSDCloud\GitHub\wallpaper\winpe.jpg"

Edit-OSDCloudWinPE -Wallpaper $OSDCloudwallpaper

Write-Host
Write-Verbose "Completed: Integration of NEW OSDCloud Wallpaper..." -Verbose
