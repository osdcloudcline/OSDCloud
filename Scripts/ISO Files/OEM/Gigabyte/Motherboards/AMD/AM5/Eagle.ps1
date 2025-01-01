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
Write-Host '     - Networking and Storage: Gigabyte AM5 motherboard drivers                               ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: Gigabyte AM5 Eagle Motherboard drivers, Virtualization drivers, scripting support and other utilities file downloads" -Verbose
Write-Host

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

$Eagle = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/Eagle.ps1")
Invoke-Expression $($Eagle.Content)

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
Write-Verbose "Completed: ALL Gigabyte AM5 Eagle Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

# OSDCloud Template and Workspace configuration

Write-Host
Write-Verbose "Confirming OSDCloud Templates......" -Verbose
Get-OSDCloudTemplate

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template specific for Gigabyte AM5 Eagle motherboards to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name Gigabyte-Eagle-AM5 -WinRE

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

# Gigabyte AM 5 Motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Eagle Motherboard Ethernet Drivers..." -Verbose 
$EagleEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\Ethernet1"
$EagleEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\Ethernet2"
$EagleEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Ethernet1"
$EagleEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Ethernet2"


Edit-OSDCloudWinPE -DriversPath $EagleEthernet1
Edit-OSDCloudWinPE -DriversPath $EagleEthernet2
Edit-OSDCloudWinPE -DriversPath $EagleEthernet3
Edit-OSDCloudWinPE -DriversPath $EagleEthernet4


Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Eagle Motherboard WiFi Drivers..." -Verbose 
$EagleWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\WiFi1"
$EagleWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\WiFi2"
$EagleWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\WiFi1"
$EagleWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\WiFi2"


Edit-OSDCloudWinPE -DriversPath $EagleWiFi1
Edit-OSDCloudWinPE -DriversPath $EagleWiFi2
Edit-OSDCloudWinPE -DriversPath $EagleWiFi3
Edit-OSDCloudWinPE -DriversPath $EagleWiFi4


Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Eagle Motherboard Bluetooth Drivers..." -Verbose 
$EagleBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\Bluetooth"
$EagleBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Bluetooth1"
$EagleBluetooth3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Bluetooth2"


Edit-OSDCloudWinPE -DriversPath $EagleBluetooth1
Edit-OSDCloudWinPE -DriversPath $EagleBluetooth2
Edit-OSDCloudWinPE -DriversPath $EagleBluetooth3


Write-Host
Write-Verbose "Processing: Gigabyte AM 5 Eagle Motherboard Storage Drivers..." -Verbose 
$EagleStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\B650\Storage\RAID\NVMe"
$EagleStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\Eagle\X870\Storage\RAID\NVMe"


Edit-OSDCloudWinPE -DriversPath $EagleStorage1
Edit-OSDCloudWinPE -DriversPath $EagleStorage2
