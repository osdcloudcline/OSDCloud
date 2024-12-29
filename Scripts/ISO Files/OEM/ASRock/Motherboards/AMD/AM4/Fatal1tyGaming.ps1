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
Write-Host '     - Networking and Storage: ASRock AM4 motherboard drivers                                 ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: ASRock AM4 Fatal1ty Gaming Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
Write-Host 

$Fatal1tyGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Fatal1tyGaming.ps1")
Invoke-Expression $($Fatal1tyGaming.Content)

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
Write-Verbose "Completed: ALL ASRock AM4 Fatal1ty Gaming Motherboard driver, Virtualization driver, scripting support and other utilities file downloads" -Verbose
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

# ASRock AM 4 Motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard Ethernet Drivers..." -Verbose 
$Fatal1tyGamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Ethernet1"
$Fatal1tyGamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Ethernet2"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingEthernet1
Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingEthernet2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard WiFi Drivers..." -Verbose 
$Fatal1tyGamingWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\WiFi1"
$Fatal1tyGamingWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\WiFi2"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingWiFi1
Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingWiFi2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Fatal1ty Gaming Motherboard Bluetooth Drivers..." -Verbose 
$Fatal1tyGamingBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingBluetooth

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Storage Drivers..." -Verbose 
$Fatal1tyGamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage1"
$Fatal1tyGamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Fatal1tyGaming\Storage2"

Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingStorage1
Edit-OSDCloudWinPE -DriversPath $Fatal1tyGamingStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 
