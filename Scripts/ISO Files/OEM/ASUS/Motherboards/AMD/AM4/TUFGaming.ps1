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
Write-Host '     - Networking and Storage: ASUS AM4 motherboard drivers                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: VM drivers for ESXI, Hyper-V, VMWare Workstation and Proxmox   ' -ForegroundColor DarkBlue -BackgroundColor White
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

# ASUS AM 4 Motherboards

Write-Host
Write-Verbose "Processing: ASUS AM 4 TUF Gaming Motherboard Bluetooth Drivers..." -Verbose 
$TUFBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $TUFBluetooth

Write-Host
Write-Verbose "Processing: ASUS AM 4 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet1"
$TUFEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet2"
$TUFEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet3"
$TUFEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet1
Edit-OSDCloudWinPE -DriverPath $TUFEthernet2
Edit-OSDCloudWinPE -DriverPath $TUFEthernet3
Edit-OSDCloudWinPE -DriverPath $TUFEthernet4

Write-Host
Write-Verbose "Processing: ASUS AM 4 TUF Gaming Motherboard WiFi Drivers..." -Verbose 
$TUFWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\WiFi1"
$TUFWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\WiFi2"
$TUFWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\WiFi3"
$TUFWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\WiFi4"
$TUFWiFi5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\WiFi5"
$TUFWiFi6 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\WiFi6"

Edit-OSDCloudWinPE -DriverPath $TUFWiFi1
Edit-OSDCloudWinPE -DriverPath $TUFWiFi2
Edit-OSDCloudWinPE -DriverPath $TUFWiFi3
Edit-OSDCloudWinPE -DriverPath $TUFWiFi4
Edit-OSDCloudWinPE -DriverPath $TUFWiFi5
Edit-OSDCloudWinPE -DriverPath $TUFWiFi6

Write-Host
Write-Verbose "Processing: ASUS AM 4 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Storage1"
$TUFStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Storage2"

Edit-OSDCloudWinPE -DriverPath $TUFStorage1
Edit-OSDCloudWinPE -DriverPath $TUFStorage2

Write-Host
