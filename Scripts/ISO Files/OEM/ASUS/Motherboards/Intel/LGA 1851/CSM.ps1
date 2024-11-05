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
Write-Host '     - Networking and Storage: ASUS LGA 1851 CSM motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
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
Write-Verbose "Processing: ASUS LGA 1851 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\CSM\Ethernet"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 CSM Motherboard WiFi Drivers..." -Verbose 
$CSMWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\CSM\WiFi"

Edit-OSDCloudWinPE -DriverPath $CSMWiFi

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\CSM\Storage"

Edit-OSDCloudWinPE -DriverPath $CSMStorage
