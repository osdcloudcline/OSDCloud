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
Write-Host '     - Networking and Storage: ASRock AM5 motherboard drivers                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: VM drivers for ESXI, Hyper-V, VMWare Workstation and Proxmox   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Wireless networking support                                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - FOR SYSTEM REFRESH: User Profile Backup and Restore for data backup                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome portable browser                                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - PowerShell Modules: Version 5.x and 7.x                                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Imaging Tools: Symantec Ghost                                                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - System Rescue/Troubleshooting: Microsoft DaRT Support                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                              ' -BackgroundColor White
pause
Clear-Host

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name WinRE -WinRE

Write-Host
Write-Verbose "Processing: PowerShell 7.x support downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

Write-Host
Write-Verbose "Completed: PowerShell 7.x support downloads" -Verbose
Write-Host



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

# ASRock AM5 motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 5 PRO Motherboard Ethernet Drivers..." -Verbose 
$PROEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $PROEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 5 PRO Motherboard WiFi Drivers..." -Verbose 
$PROWiFi = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\WiFi"

Edit-OSDCloudWinPE -DriversPath $PROWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 5 PRO Motherboard Bluetooth Drivers..." -Verbose 
$PROBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $PROBluetooth

Write-Host
Write-Verbose "Processing: ASRock AM 5 PRO Motherboard Storage Drivers..." -Verbose 
$PROStorage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\Storage"

Write-Host
Write-Verbose "Processing: ASRock AM 5 Steel Legend Motherboard Ethernet Drivers..." -Verbose 
$SteelLegendEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\Ethernet"

Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 5 Steel Legend Motherboard WiFi Drivers..." -Verbose 
$SteelLegendWiFi = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\WiFi"

Edit-OSDCloudWinPE -DriversPath $SteelLegendWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 5 Steel Legend Motherboard Bluetooth Drivers..." -Verbose 
$SteelLegendBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\Bluetooth"

Edit-OSDCloudWinPE -DriversPath $SteelLegendBluetooth

Write-Host
Write-Verbose "Processing: ASRock AM 5 Steel Legend Motherboard Storage Drivers..." -Verbose 
$SteelLegendStorage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\Storage"

Edit-OSDCloudWinPE -DriversPath $SteelLegendStorage

Write-Host
Write-Verbose "Processing: ASRock AM 5 Taichi Motherboard Ethernet Drivers..." -Verbose 
$TaichiEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Ethernet"

Edit-OSDCloudWinPE -DriversPath $TaichiEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 5 Taichi Motherboard WiFi Drivers..." -Verbose 
$TaichiWiFi = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\WiFi"

Edit-OSDCloudWinPE -DriversPath $TaichiWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 5 Taichi Motherboard Bluetooth Drivers..." -Verbose 
$TaichiBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Bluetooth"
$TaichiBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Bluetooth1"

Edit-OSDCloudWinPE -DriversPath $TaichiBluetooth
Edit-OSDCloudWinPE -DriversPath $TaichiBluetooth1

Write-Host
Write-Verbose "Processing: ASRock AM 5 Taichi Motherboard Storage Drivers..." -Verbose 
$TaichiStorage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Storage"

Edit-OSDCloudWinPE -DriversPath $TaichiStorage

# ASUS AM5 motherboards
