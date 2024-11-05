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
Write-Verbose "Processing: ASUS LGA 1851 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Ethernet"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\WiFi"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage

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

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\Ethernet1"
$ROGEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\Ethernet2"
$ROGEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2
Edit-OSDCloudWinPE -DriverPath $ROGEthernet3

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers Motherboard WiFi Drivers..." -Verbose 
$ROGWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\WiFi1"
$ROGWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\WiFi2"
$ROGWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\WiFi3"
$ROGWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\WiFi4"
$ROGWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\WiFi5"

Edit-OSDCloudWinPE -DriverPath $ROGWiFi1
Edit-OSDCloudWinPE -DriverPath $ROGWiFi2
Edit-OSDCloudWinPE -DriverPath $ROGWiFi3
Edit-OSDCloudWinPE -DriverPath $ROGWiFi4
Edit-OSDCloudWinPE -DriverPath $ROGWiFi5

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\TUF\Ethernet"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming Motherboard WiFi Drivers..." -Verbose 
$TUFWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\TUF\WiFi"

Edit-OSDCloudWinPE -DriverPath $TUFWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\TUF\Storage"

Edit-OSDCloudWinPE -DriverPath $TUFStorage

Write-Host
Write-Verbose "Completed: Integration of ASUS Intel LGA 1851 Motherboard Drivers..." -Verbose 

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
