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
Write-Host '     - Networking and Storage: Gigabyte AM4 motherboard drivers                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: VM drivers for ESXI, Hyper-V, VMWare Workstation and Proxmox   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Wireless networking support                                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - FOR SYSTEM REFRESH: User Profile Backup and Restore for data backup                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome portable browser                                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                              ' -BackgroundColor White
pause
Clear-Host

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force


Write-Host
Write-Verbose "Processing: Gigabyte AM4 AORUS Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host 

$AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/AORUS.ps1")
Invoke-Expression $($AORUS.Content)

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
Write-Verbose "Completed: ALL Gigabyte AM4 Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
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

# Gigabyte AM 4 Motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Ethernet Drivers..." -Verbose 
$AORUSEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\A520\Ethernet1"
$AORUSEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\A520\Ethernet2"
$AORUSEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet1"
$AORUSEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet2"
$AORUSEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet3"
$AORUSEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Ethernet1"
$AORUSEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Ethernet2"
$AORUSEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet1"
$AORUSEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet2"
$AORUSEthernet10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet3"
$AORUSEthernet11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet4"
$AORUSEthernet12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet5"
$AORUSEthernet13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet1"
$AORUSEthernet14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet2"
$AORUSEthernet15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet3"
$AORUSEthernet16 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet4"
$AORUSEthernet17 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet1"
$AORUSEthernet18 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet2"
$AORUSEthernet19 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet3"
$AORUSEthernet20 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet4"
$AORUSEthernet21 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet5"
$AORUSEthernet22 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet6"
$AORUSEthernet23 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet7"
$AORUSEthernet24 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet8"
$AORUSEthernet25 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet9"
$AORUSEthernet26 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet10"
$AORUSEthernet27 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet11"

Edit-OSDCloudWinPE -DriverPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet3
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet4
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet5
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet6
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet7
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet8
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet9
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet10
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet11
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet12
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet13
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet14
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet15
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet16
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet17
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet18
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet19
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet20
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet21
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet22
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet23
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet24
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet25
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet26
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet27

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\WiFi1"
$AORUSWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi1"
$AORUSWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi2"
$AORUSWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi3"
$AORUSWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi4"
$AORUSWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi5"
$AORUSWiFi7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\WiFi1"
$AORUSWiFi8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\WiFi1"
$AORUSWiFi9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\WiFi2"

Edit-OSDCloudWinPE -DriverPath $AORUSWiFi1
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi2
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi3
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi4
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi5
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi6
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi7
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi8
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi9

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\Storage\RAID\NVMe"
$AORUSStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\Storage\RAID\SATA"

Edit-OSDCloudWinPE -DriverPath $AORUSStorage1
Edit-OSDCloudWinPE -DriverPath $AORUSStorage2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Bluetooth Drivers..." -Verbose 
$AORUSBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Bluetooth"
$AORUSBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $AORUSBluetooth1
Edit-OSDCloudWinPE -DriverPath $AORUSBluetooth2

Write-Host

