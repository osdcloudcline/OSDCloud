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
Write-Verbose "Processing: Gigabyte AM5 Motherboard drivers, Virtualization drivers, scripting support and other utilities file downloads" -Verbose
Write-Host

$AERO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/AERO.ps1")
Invoke-Expression $($AERO.Content)

$AITop = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/AI-TOP.ps1")
Invoke-Expression $($AITop.Content)

$AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/AORUS.ps1")
Invoke-Expression $($AORUS.Content)

$Eagle = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/Eagle.ps1")
Invoke-Expression $($Eagle.Content)

$Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/Gaming.ps1")
Invoke-Expression $($Gaming.Content)

$UD = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/UD-Ultra%20Durable.ps1")
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

Write-Host
Write-Verbose "Completed: ALL Gigabyte AM5 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template specific for Gigabyte AM5 motherboards to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name Gigabyte-AM5 -WinRE

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


# Gigabyte AM 4 Motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AERO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard WiFi Drivers..." -Verbose 
$AEROWiFi = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AERO\WiFi"

Edit-OSDCloudWinPE -DriversPath $AEROWiFi

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Bluetooth Drivers..." -Verbose 
$AEROBluetooth = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AERO\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $AEROBluetooth

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AERO\Storage"

Edit-OSDCloudWinPE -DriversPath  $AEROStorage


Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 AERO Motherboard Drivers..." -Verbose 

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard Ethernet Drivers..." -Verbose 
$AITOPEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Ethernet1"
$AITOPEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $AITOPEthernet1
Edit-OSDCloudWinPE -DriversPath $AITOPEthernet2

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard WiFi Drivers..." -Verbose 
$AITOPWiFi = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\WiFi"

Edit-OSDCloudWinPE -DriversPath $AITOPWiFi

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard Bluetooth Drivers..." -Verbose 
$AITOPBluetooth = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $AITOPBluetooth

Write-Host
Write-Verbose "Processing: Gigabyte AM 5 AI TOP Motherboard Storage Drivers..." -Verbose 
$AITOPStorage = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM5\AI-TOP\Storage"

Edit-OSDCloudWinPE -DriversPath  $AITOPStorage


Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM 5 AI TOP Motherboard Drivers..." -Verbose 
Write-Host
