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
Write-Host '     - Networking and Storage: ASUS LGA 1851 ProArt motherboard drivers                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: VM drivers for ESXI, Hyper-V, VMWare Workstation and Proxmox   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDCloud USB, VMWare & Wireless Cloud Drivers                                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Wireless networking support                                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - FOR SYSTEM REFRESH: User Profile Backup and Restore for data backup                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome portable browser                                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                              ' -BackgroundColor White
pause
Clear-Host


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

# ASUS LGA 1851 Motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ProArt\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ProArt Motherboard WiFi Drivers..." -Verbose 
$ProArtWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ProArt\WiFi1"
$ProArtWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ProArt\WiFi2"
$ProArtWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ProArt\WiFi3"
$ProArtWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ProArt\WiFi4"

Edit-OSDCloudWinPE -DriverPath $ProArtWiFi1
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi2
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi3
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi4

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

# VM Drivers



Write-Host
Write-Verbose "Completed: Integration of Virtual Machine Drivers..." -Verbose 

# Cloud Drivers

Write-Host
Write-Verbose "Processing: OSDCloud Cloud Drivers..." -Verbose 
Edit-OSDCloudWinPE -CloudDriver USB, VMware, WiFi
Write-Host
Write-Verbose "Completed: Integration of Cloud Drivers..." -Verbose 

Write-Host
Write-Verbose "Processing: Copying OSD PowerShell Module..." -Verbose
Edit-OSDCloudWinPE -PSModuleCopy OSD

Write-Host
Write-Verbose "Processing: Extra OSD PowerShell Module..." -Verbose
Edit-OSDCloudWinPE -PSModuleInstall Azure
Edit-OSDCloudWinPE -PSModuleInstall AzureAD
Edit-OSDCloudWinPE -PSModuleInstall Az.Accounts
Edit-OSDCloudWinPE -PSModuleInstall Az.Storage
Edit-OSDCloudWinPE -PSModuleInstall Az.Resources
Edit-OSDCloudWinPE -PSModuleInstall Az.KeyVault
Edit-OSDCloudWinPE -PSModuleInstall Az.Compute
Edit-OSDCloudWinPE -PSModuleInstall Az.Automation
Edit-OSDCloudWinPE -PSModuleInstall Az.Network
Edit-OSDCloudWinPE -PSModuleInstall Az.ApiManagement
Edit-OSDCloudWinPE -PSModuleInstall OSDCloudGUI
Edit-OSDCloudWinPE -PSModuleInstall OSDCloudAzure
Edit-OSDCloudWinPE -PSModuleInstall OSDUpdate
Edit-OSDCloudWinPE -PSModuleInstall AutopilotOOBE
Edit-OSDCloudWinPE -PSModuleInstall OSDDrivers
Edit-OSDCloudWinPE -PSModuleInstall OSDDeploy
Edit-OSDCloudWinPE -PSModuleInstall OSDSoftware
Edit-OSDCloudWinPE -PSModuleInstall OSDCatalog
Edit-OSDCloudWinPE -PSModuleInstall OSDProgress
Edit-OSDCloudWinPE -PSModuleInstall PSCloudPC
Edit-OSDCloudWinPE -PSModuleInstall PSWindowsUpdate
Edit-OSDCloudWinPE -PSModuleInstall wifiprofilemanagement

$PortableBrowsers = InvokeWebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Browser/PortableBrowsers.ps1")
Invoke-Expression $($PortableBrowsers.Content)

$VBSScripting = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Scripting%20Support/OSDCloud-VBSScripting.ps1")
Invoke-Expression $($VBSScripting.Content)

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UPBR.ps1")
Invoke-Expression $($UPBR.Content)

$OSDCloudWallpaper = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Wallpaper/wallpaper.ps1")
Invoke-Expression $($OSDCloudWallpaper.Content)
