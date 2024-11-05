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
Write-Host '     - Networking and Storage: ASUS LGA 1700 motherboard drivers                              ' -ForegroundColor DarkBlue -BackgroundColor White
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

# ASUS LGA 1700 Motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard Ethernet Drivers..." -Verbose 
$BusinessEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet1"
$BusinessEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet2"
$BusinessEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet3"
$BusinessEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $BusinessEthernet1
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet2
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet3
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard WiFi Drivers..." -Verbose 
$BusinessWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\WiFi1"
$BusinessWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\WiFi2"
$BusinessWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\WiFi3"

Edit-OSDCloudWinPE -DriverPath $BusinessWiFi1
Edit-OSDCloudWinPE -DriverPath $BusinessWiFi2
Edit-OSDCloudWinPE -DriverPath $BusinessWiFi3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet1"
$CSMEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet2"
$CSMEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet3"
$CSMEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet1
Edit-OSDCloudWinPE -DriverPath $CSMEthernet2
Edit-OSDCloudWinPE -DriverPath $CSMEthernet3
Edit-OSDCloudWinPE -DriverPath $CSMEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard WiFi Drivers..." -Verbose 
$CSMWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WiFi1"
$CSMWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WiFi2"
$CSMWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\CSM\WiFi3"

Edit-OSDCloudWinPE -DriverPath $CSMWiFi1
Edit-OSDCloudWinPE -DriverPath $CSMWiFi2
Edit-OSDCloudWinPE -DriverPath $CSMWiFi3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA700\CSM\Storage"

Edit-OSDCloudWinPE -DriverPath $CSMStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard Ethernet Drivers..." -Verbose 
$OtherEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\Ethernet1"
$OtherEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $OtherEthernet1
Edit-OSDCloudWinPE -DriverPath $OtherEthernet2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard WiFi Drivers..." -Verbose 
$OtherWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\WiFi1"
$OtherWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\WiFi2"

Edit-OSDCloudWinPE -DriverPath $OtherWiFi1
Edit-OSDCloudWinPE -DriverPath $OtherWiFi2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Other Motherboard Storage Drivers..." -Verbose 
$OtherStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Other\Storage"

Edit-OSDCloudWinPE -DriverPath $OtherStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet1"
$PRIMEEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet2"
$PRIMEEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet3"
$PRIMEEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet1
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet2
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet3
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet4

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\WiFi1"
$PRIMEWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\WiFi2"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi1
Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi2

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\PRIME\Storage"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet1"
$ProArtEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet2"
$ProArtEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet1
Edit-OSDCloudWinPE -DriverPath $ProArtEthernet2
Edit-OSDCloudWinPE -DriverPath $ProArtEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard WiFi Drivers..." -Verbose 
$ProArtWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi1"
$ProArtWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi2"
$ProArtWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi3"
$ProArtWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi4"
$ProArtWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi5"
$ProArtWiFi6 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi6"
$ProArtWiFi7 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi7"
$ProArtWiFi8 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi8"
$ProArtWiFi9 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\WiFi9"

Edit-OSDCloudWinPE -DriverPath $ProArtWiFi1
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi2
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi3
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi4
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi5
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi6
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi7
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi8
Edit-OSDCloudWinPE -DriverPath $ProArtWiFi9

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\Ethernet1"
$ROGEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\Ethernet2"


Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2


Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard WiFi Drivers..." -Verbose 
$ROGWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi1"
$ROGWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi2"
$ROGWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi3"
$ROGWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi4"
$ROGWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi5"
$ROGWiFi6 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi6"
$ROGWiFi7 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi7"
$ROGWiFi8 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi8"
$ROGWiFi9 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi9"
$ROGWiFi10 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi10"
$ROGWiFi11 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi11"
$ROGWiFi12 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi12"
$ROGWiFi13 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi13"
$ROGWiFi14 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi14"
$ROGWiFi15 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi15"
$ROGWiFi16 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi16"
$ROGWiFi17 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\WiFi17"

Edit-OSDCloudWinPE -DriverPath $ROGWiFi1
Edit-OSDCloudWinPE -DriverPath $ROGWiFi2
Edit-OSDCloudWinPE -DriverPath $ROGWiFi3
Edit-OSDCloudWinPE -DriverPath $ROGWiFi4
Edit-OSDCloudWinPE -DriverPath $ROGWiFi5
Edit-OSDCloudWinPE -DriverPath $ROGWiFi6
Edit-OSDCloudWinPE -DriverPath $ROGWiFi7
Edit-OSDCloudWinPE -DriverPath $ROGWiFi8
Edit-OSDCloudWinPE -DriverPath $ROGWiFi9
Edit-OSDCloudWinPE -DriverPath $ROGWiFi10
Edit-OSDCloudWinPE -DriverPath $ROGWiFi11
Edit-OSDCloudWinPE -DriverPath $ROGWiFi12
Edit-OSDCloudWinPE -DriverPath $ROGWiFi13
Edit-OSDCloudWinPE -DriverPath $ROGWiFi14
Edit-OSDCloudWinPE -DriverPath $ROGWiFi15
Edit-OSDCloudWinPE -DriverPath $ROGWiFi16
Edit-OSDCloudWinPE -DriverPath $ROGWiFi17

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet1"
$TUFEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet2"
$TUFEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet1
Edit-OSDCloudWinPE -DriverPath $TUFEthernet2
Edit-OSDCloudWinPE -DriverPath $TUFEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard WiFi Drivers..." -Verbose 
$TUFWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi1"
$TUFWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi2"
$TUFWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi3"
$TUFWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi4"
$TUFWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\WiFi5"

Edit-OSDCloudWinPE -DriverPath $TUFWiFi1
Edit-OSDCloudWinPE -DriverPath $TUFWiFi2
Edit-OSDCloudWinPE -DriverPath $TUFWiFi3
Edit-OSDCloudWinPE -DriverPath $TUFWiFi4
Edit-OSDCloudWinPE -DriverPath $TUFWiFi5

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\TUF\Storage"

Edit-OSDCloudWinPE -DriverPath $TUFStorage


Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Expedition Motherboard Ethernet Drivers..." -Verbose 
$ExpeditionEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Expedition\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ExpeditionEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Expedition Motherboard Storage Drivers..." -Verbose 
$ExpeditionStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Expedition\Storage"

Edit-OSDCloudWinPE -DriverPath $ExpeditionStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard Ethernet Drivers..." -Verbose 
$WorkstationEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Workstation\Ethernet"

Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard WiFi Drivers..." -Verbose 
$WorkstationWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Workstation\WiFi1"

Edit-OSDCloudWinPE -DriverPath $WorkstationWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1700 Workstation Motherboard Storage Drivers..." -Verbose 
$WorkstationStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1700\Workstation\Storage"

Edit-OSDCloudWinPE -DriverPath $WorkstationStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS Intel LGA 1700 Motherboard Drivers..." -Verbose 

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
