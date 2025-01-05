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
Write-Host '     - Networking and Storage: MSI  LGA 1700 Motherboard drivers                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: Gigabyte LGA 1700 Motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: ASRock   LGA 1700 Motherboard drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
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

Write-Host
Write-Verbose "Processing: PowerShell 7.x support downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

Write-Host
Write-Verbose "Completed: PowerShell 7.x support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$ASRockAQUALGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockAQUALGA1700.Content)

$ASRockExtremeLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockExtremeLGA1700.Content)

$ASRockPROLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockPROLGA1700.Content)

$ASRockPhantomGamingLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockPhantomGamingLGA1700.Content)

$ASRockSteelLegendLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockSteelLegendLGA1700.Content)

$ASRockTaichiLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASRockTaichiLGA1700.Content)




Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

Write-Host
Write-Verbose "Processing: ASUS Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$ASUSBusinessLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSBusinessLGA1700.Content)

$ASUSCSMLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSCSMLGA1700.Content)

$ASUSExpeditionLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSExpeditionLGA1700.Content)

$ASUSOthersLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSOthersLGA1700.Content)

$ASUSPRIMELGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSPRIMELGA1700.Content)

$ASUSProArtLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSProArtLGA1700.Content)

$ASUSROGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSROGLGA1700.Content)

$ASUSTUFGamingLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSTUFGamingLGA1700.Content)

$ASUSWorkstationLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($ASUSWorkstationLGA1700.Content)



Write-Host
Write-Verbose "Completed: ASUS Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$GigabyteAEROLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteAEROLGA1700.Content)

$GigabyteAORUSLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteAORUSLGA1700.Content)

$GigabyteEagleLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteEagleLGA1700.Content)

$GigabyteGamingLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteGamingLGA1700.Content)

$GigabyteUDLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($GigabyteUDLGA1700.Content)

Write-Host
Write-Verbose "Completed: Gigabyte Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: MSI Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$MSIMEGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIMEGLGA1700.Content)

$MSIMPGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIMPGLGA1700.Content)

$MSIMAGLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIMAGLGA1700.Content)

$MSIPROLGA1700 = Invoke-WebRequest("")
Invoke-Expression $($MSIPROLGA1700.Content)

Write-Host
Write-Verbose "Completed: MSI Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host
