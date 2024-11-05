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
Write-Host '     - Networking and Storage: ASUS LGA 1700 Business motherboard drivers                     ' -ForegroundColor DarkBlue -BackgroundColor White
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
