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
Write-Host '     - Networking and Storage: ASUS LGA 1700 PRIME motherboard drivers                        ' -ForegroundColor DarkBlue -BackgroundColor White
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
