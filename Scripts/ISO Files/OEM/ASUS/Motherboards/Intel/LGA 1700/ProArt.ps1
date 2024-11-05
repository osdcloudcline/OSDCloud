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
Write-Host '     - Networking and Storage: ASUS LGA 1700 ProArt motherboard drivers                       ' -ForegroundColor DarkBlue -BackgroundColor White
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

