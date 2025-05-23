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
Write-Host '     - Networking and Storage: ASUS AM4/AM5/LGA 1700/LGA 1851 motherboard drivers             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: MSI AM5/LGA 1700/LGA 1851 Motherboard drivers                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: Gigabyte AM4/AM5/LGA 1700/LGA 1851 Motherboard drivers         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: ASRock AM4/AM5/LGA 1700/LGA 1851 Motherboard drivers           ' -ForegroundColor DarkBlue -BackgroundColor White
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

Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: PowerShell 7.x support downloads" -Verbose
Write-Host 

$PS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/PS7Download.ps1")
Invoke-Expression $($PS7.Content)

Write-Host
Write-Verbose "Completed: PowerShell 7.x support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: AMD Socket AM4 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ASRock AM4 Motherboard driver downloads" -Verbose
Write-Host 

$Extreme = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Extreme%20Motherboards/Extreme.ps1")
Invoke-Expression $($Extreme.Content)

$Fatal1tyGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Fatal1ty%20Gaming%20Motherboards/Fatal1tyGaming.ps1")
Invoke-Expression $($Fatal1tyGaming.Content)

$PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($PRO.Content)

$PhantomGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Phantom%20Gaming%20Motherboards/PhantomGaming.ps1")
Invoke-Expression $($PhantomGaming.Content)

$SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($SteelLegend.Content)

$Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM4/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($Taichi.Content)

Write-Host
Write-Verbose "Completed: ASRock AM4 Motherboard driver downloads" -Verbose
Write-Host 

Write-Host
Write-Verbose "Processing: ASUS AM4 Motherboard driver downloads" -Verbose
Write-Host 

$Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Business%20Motherboards/Business.ps1")
Invoke-Expression $($Business.Content)

$CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($CSM.Content)

$Others = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Other%20Motherboards/Others.ps1")
Invoke-Expression $($Others.Content)

$PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($PRIME.Content)

$ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ProArt.Content)

$ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ROG.Content)

$TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/TUF%20Gaming%20Motherboards/TUF%20Gaming.ps1")
Invoke-Expression $($TUFGaming.Content)

$Workstation = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($Workstation.Content)

Write-Host
Write-Verbose "Completed: ASUS AM4 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte AM4 Motherboard driver downloads" -Verbose
Write-Host 

$AERO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AERO/AERO.ps1")
Invoke-Expression $($AERO.Content)

$AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/AORUS/AORUS.ps1")
Invoke-Expression $($AORUS.Content)

$Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Gaming/Gaming.ps1")
Invoke-Expression $($Gaming.Content)

$UD = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM4/Ultra%20Durable/UltraDurable.ps1")
Invoke-Expression $($UD.Content)

Write-Host
Write-Verbose "Completed: Gigabyte AM4 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: AMD Socket AM4 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: AMD Socket AM5 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ASRock AM5 Motherboard driver downloads" -Verbose
Write-Host 

$ASRockPROAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($ASRockPROAM5.Content)

$ASRockSteelLegendAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($ASRockSteelLegendAM5.Content)

$ASRockTaichiAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/AMD/AM5/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($ASRockTaichiAM5.Content)

Write-Host
Write-Verbose "Completed: ASRock AM5 Motherboard driver downloads" -Verbose
Write-Host 

Write-Host
Write-Verbose "Processing: ASUS AM5 Motherboard driver downloads" -Verbose
Write-Host 

$ASUSBusinessAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Business%20Motherboards/Business.ps1")
Invoke-Expression $($ASUSBusinessAM5.Content)

$ASUSCSMAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($ASUSCSMAM5.Content)

$ASUSExpeditionAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($ASUSExpeditionAM5.Content)

$ASUSOthersAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/Other%20Motherboards/Other.ps1")
Invoke-Expression $($ASUSOthersAM5.Content)

$ASUSPRIMEAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($ASUSPRIMEAM5.Content)

$ASUSProArtAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ASUSProArtAM5.Content)

$ASUSROGAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ASUSROGAM5.Content)

$ASUSTUFGamingAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%205/TUF%20Gaming%20Motherboards/TUFGaming.ps1")
Invoke-Expression $($ASUSTUFGamingAM5.Content)

Write-Host
Write-Verbose "Completed: ASUS AM5 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte AM5 Motherboard driver downloads" -Verbose
Write-Host 

$GigabyteAEROAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AERO/AERO.ps1")
Invoke-Expression $($GigabyteAEROAM5.Content)

$GigabyteAITOPAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AI%20TOP/AI-TOP.ps1")
Invoke-Expression $($GigabyteAITOPAM5.Content)

$GigabyteAORUSAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/AORUS/AORUS.ps1")
Invoke-Expression $($GigabyteAORUSAM5.Content)

$GigabyteEagleAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Eagle/Eagle.ps1")
Invoke-Expression $($GigabyteEagleAM5.Content)

$GigabyteGamingAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/Gaming/Gaming.ps1")
Invoke-Expression $($GigabyteGamingAM5.Content)

$GigabyteUDAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/AMD/AM5/UD%20-%20Ultra%20Durable/UD-Ultra%20Durable.ps1")
Invoke-Expression $($GigabyteUDAM5.Content)

Write-Host
Write-Verbose "Completed: Gigabyte AM5 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: MSI AM5 Motherboard driver downloads" -Verbose
Write-Host 

$MSIGamingAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/Gaming%20Series/Gaming.ps1")
Invoke-Expression $($MSIGamingAM5.Content)

$MSIMAGAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MAG%20Series/MAG.ps1")
Invoke-Expression $($MSIMAGAM5.Content)

$MSIAMEGAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MEG%20Series/MEG.ps1")
Invoke-Expression $($MSIMEGAM5.Content)

$MSIMPGAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/MPG%20Series/MPG.ps1")
Invoke-Expression $($MSIMPGAM5.Content)

$MSIPROAM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/AMD/AM%205/PRO%20Series/PRO.ps1")
Invoke-Expression $($MSIPROAM5.Content)

Write-Host
Write-Verbose "Completed: MSI AM5 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$ASRockAQUALGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/AQUA%20Motherboards/AQUA.ps1")
Invoke-Expression $($ASRockAQUALGA1700.Content)

$ASRockExtremeLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Extreme%20Motherboards/Extreme.ps1")
Invoke-Expression $($ASRockExtremeLGA1700.Content)

$ASRockPROLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($ASRockPROLGA1700.Content)

$ASRockPhantomGamingLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Phantom%20Gaming%20Motherboards/PhantomGaming.ps1")
Invoke-Expression $($ASRockPhantomGamingLGA1700.Content)

$ASRockSteelLegendLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($ASRockSteelLegendLGA1700.Content)

$ASRockTaichiLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201700/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($ASRockTaichiLGA1700.Content)


Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

Write-Host
Write-Verbose "Processing: ASUS Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host 

$ASUSBusinessLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Business%20Motherboards/Business.ps1")
Invoke-Expression $($ASUSBusinessLGA1700.Content)

$ASUSCSMLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($ASUSCSMLGA1700.Content)

$ASUSExpeditionLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Expedition%20Motherboards/Expedition.ps1")
Invoke-Expression $($ASUSExpeditionLGA1700.Content)

$ASUSOthersLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Other%20Motherboards/Other.ps1")
Invoke-Expression $($ASUSOthersLGA1700.Content)

$ASUSPRIMELGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($ASUSPRIMELGA1700.Content)

$ASUSProArtLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ASUSProArtLGA1700.Content)

$ASUSROGLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ASUSROGLGA1700.Content)

$ASUSTUFGamingLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/TUF%20Gaming%20Motherboards/TUFGaming.ps1")
Invoke-Expression $($ASUSTUFGamingLGA1700.Content)

$ASUSWorkstationLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201700/Workstation%20Motherboards/Workstation.ps1")
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

$MSIMAGLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MAG%20Series/MAG.ps1")
Invoke-Expression $($MSIMAGLGA1700.Content)

$MSIMEGLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MEG%20Series/MEG.ps1")
Invoke-Expression $($MSIMEGLGA1700.Content)

$MSIMPGLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/MPG%20Series/MPG.ps1")
Invoke-Expression $($MSIMPGLGA1700.Content)

$MSIPROLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201700/PRO%20Series/PRO.ps1")
Invoke-Expression $($MSIPROLGA1700.Content)

Write-Host
Write-Verbose "Completed: MSI Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: Intel LGA 1700 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ASRock Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$ASRockAQUALGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/AQUA%20Motherboards/AQUA.ps1")
Invoke-Expression $($ASRockAQUALGA1851.Content)

$ASRockPROLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/PRO%20Motherboards/PRO.ps1")
Invoke-Expression $($ASRockPROLGA1851.Content)

$ASRockSteelLegendLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Steel%20Legend%20Motherboards/SteelLegend.ps1")
Invoke-Expression $($ASRockSteelLegendLGA1851.Content)

$ASRockTaichiLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASRock/Desktops/Intel/LGA%201851/Taichi%20Motherboards/Taichi.ps1")
Invoke-Expression $($ASRockTaichiLGA1851.Content)

Write-Host
Write-Verbose "Completed: ASRock Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

Write-Host
Write-Verbose "Processing: ASUS Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$ASUSBusinessLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Business%20Motherbords/Business.ps1")
Invoke-Expression $($ASUSBusinessLGA1851.Content)

$ASUSCSMLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/CSM%20Motherboards/CSM.ps1")
Invoke-Expression $($ASUSCSMLGA1851.Content)

$ASUSOthersLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Other%20Motherboards/Other.ps1")
Invoke-Expression $($ASUSOthersLGA1851.Content)

$ASUSPRIMELGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/PRIME%20Motherboards/PRIME.ps1")
Invoke-Expression $($ASUSPRIMELGA1851.Content)

$ASUSProArtLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ProArt%20Motherboards/ProArt.ps1")
Invoke-Expression $($ASUSProArtLGA1851.Content)

$ASUSROGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/ROG%20-%20Republic%20of%20Gamers%20Motherboards/ROG%20-%20Republic%20of%20Gamers.ps1")
Invoke-Expression $($ASUSROGLGA1851.Content)

$ASUSTUFGamingLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/TUF%20Gaming/TUFGaming.ps1")
Invoke-Expression $($ASUSTUFGamingLGA1851.Content)

$ASUSWorkstationLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/Intel/LGA%201851/Workstation%20Motherboards/Workstation.ps1")
Invoke-Expression $($ASUSWorkstationLGA1851.Content)

Write-Host
Write-Verbose "Completed: ASUS Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Gigabyte Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$GigabyteAEROLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AERO%20Motherboards/AERO.ps1")
Invoke-Expression $($GigabyteAEROLGA1851.Content)

$GigabyteAITOPLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AI-TOP%20Motherboards/AI-TOP.ps1")
Invoke-Expression $($GigabyteAITOPLGA1851.Content)

$GigabyteAORUSLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/AORUS%20Motherboards/AORUS.ps1")
Invoke-Expression $($GigabyteAORUSLGA1851.Content)

$GigabyteEagleLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/Eagle%20Motherboards/Eagle.ps1")
Invoke-Expression $($GigabyteEagleLGA1851.Content)

$GigabyteGamingLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/Gaming%20Motherboards/Gaming.ps1")
Invoke-Expression $($GigabyteGamingLGA1851.Content)

$GigabyteUDLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/Gigabyte/Desktops/Intel/LGA%201851/UD%20-%20Ultra%20Durable%20Motherboards/UD%20-%20UltraDurable.ps1")
Invoke-Expression $($GigabyteUDLGA1851.Content)


Write-Host
Write-Verbose "Completed: Gigabyte Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: MSI Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host 

$MSIGamingLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/Gaming%20Series/Gaming.ps1")
Invoke-Expression $($MSIGamingLGA1851.Content)

$MSIMAGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/MAG%20Series/MAG.ps1")
Invoke-Expression $($MSIMAGLGA1851.Content)

$MSIAMEGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/MEG%20Series/MEG.ps1")
Invoke-Expression $($MSIMEGLGA1851.Content)

$MSIMPGLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/MPG%20Series/MPG.ps1")
Invoke-Expression $($MSIMPGLGA1851.Content)

$MSIPROLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/MSI/Desktops/Intel/LGA%201851/PRO%20Series/PRO.ps1")
Invoke-Expression $($MSIPROLGA1851.Content)


Write-Host
Write-Verbose "Completed: MSI Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Completed: Intel LGA 1851 Motherboard driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: ALL Virtualization driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Microsoft Hyper-V virtualization driver downloads" -Verbose
Write-Host 

$HyperV = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Hyper-V/Hyper-V-NetworkDrivers.ps1")
Invoke-Expression $($HyperV.Content)

Write-Host
Write-Verbose "Processing: Proxmox virtualization driver downloads" -Verbose
Write-Host

$Proxmox = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/Proxmox/Proxmox.ps1")
Invoke-Expression $($Proxmox.Content)

Write-Host
Write-Verbose "Processing: VMWare ESXI vSphere virtualization driver downloads" -Verbose
Write-Host

$ESXI = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXI-Drivers.ps1")
Invoke-Expression $($ESXI.Content)

Write-Host
Write-Verbose "Processing: VMWare Workstation Pro virtualization driver downloads" -Verbose
Write-Host

$VMWareWSPro = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloudDrivers/refs/heads/main/Network%20and%20Storage%20/VMWare%20Workstation/VMWare-WorkstationPRO-Drivers.ps1")
Invoke-Expression $($VMWareWSPro.Content)

Write-Host
Write-Verbose "Completed: ALL Virtualization driver downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Additional OSDCloud scripting support downloads" -Verbose
Write-Host

$VBS = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Scripting%20Support/VBS%20Scripting/VBSScriptingSupport-Download.ps1")
Invoke-Expression $($VBS.Content)

Write-Host
Write-Verbose "Completed: Additional OSDCloud scripting support downloads" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: Google Chrome - portable browser" -Verbose
Write-Host

$PortableBrowser = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Browser/PortableBrowser-Download.ps1")
Invoke-WebRequest $($PortableBrowser.Content)

Write-Host
Write-Verbose "Processing: User Profile Backup and Restore" -Verbose
Write-Host

$UPBR = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UPBR-Download.ps1")
Invoke-Expression $($UPBR.Content)

Write-Host
Write-Verbose "Processing: System Imaging utilities" -Verbose
Write-Host

$Ghost = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghosting.ps1")
Invoke-Expression $($Ghost.Content)

Write-Host
Write-Verbose "Processing: Microsoft DaRT and Remote Desktop Connections" -Verbose
Write-Host

$DaRT = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/DaRT/DaRT.ps1")
Invoke-WebRequest $($DaRT.Content)

$MSTSC = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/MSTSC.ps1")
Invoke-Expression $($MSTSC.Content)

$CloudPC = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/CloudPC%20-%20Download.ps1")
Invoke-Expression $($CloudPC.Content) 

Write-Host
Write-Verbose "Processing: Notepad ++" -Verbose
Write-Host

$NotepadPP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Text%20Editor/NotepadPP.ps1")
Invoke-Expression $($NotepadPP.Content)

Write-Host
Write-Verbose "Processing: Explorer ++" -Verbose
Write-Host

$ExplorerPP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/File%20Explorer/ExplorerPP.ps1")
Invoke-Expression $($ExplorerPP.Content)

Write-Host
Write-Verbose "Processing: Microsoft Endpoint Configuration Manager Log Viewer - CM Trace" -Verbose
Write-Host

$CMTrace = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Log%20Viewer/CMTrace.ps1")
Invoke-Expression $($CMTrace.Content)

Write-Host
Write-Verbose "Completed: Download of Extra OSDCloud ISO Utilities" -Verbose
Write-Host

Write-Host
Write-Verbose "Processing: NEW OSDCloud wallpaper" -Verbose
Write-Host

$OSDCloudWallpaper = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Extra%20Files/Wallpaper/OSDCloudWallpaper-Download.ps1")
Invoke-Expression $($OSDCloudWallpaper.Content) 

Write-Host
Write-Verbose "Completed: OSDCloud wallpaper download" -Verbose
Write-Host

################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name OSDCloud-ALLCPU -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\All-CPU"
New-OSDCloudWorkspace -WorkspacePath $WorkspacePath
Set-OSDCloudWorkspace -WorkspacePath $WorkspacePath

Write-Host
Write-Verbose "Confirming new OSDCloud Workspace Path..." -Verbose
Get-OSDCloudWorkspace

#################################
# Adding PowerShell 7 to OSDCloud 
#################################

$AddPS7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/PS%207%20Support%20to%20OSDCloud/AddPS7-OSDCloudISO.ps1")
Invoke-Expression $($AddPS7.Content)

#################################
# OSDCloud - Cloud Drivers
#################################

Write-Host
Write-Verbose "Integrating OSDCloud - Cloud Drivers..." -Verbose
Write-Host

$DellCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers.ps1")
Invoke-Expression $($DellCloudDrivers.Content)

$DellCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows10\1836"
$DellCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows10\22000"
$DellCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows11\Extract"
$DellCloudDriverPath4 = "C:\Drivers\Cloud Drivers\Dell\Windows PE\Extract"
$DellCloudDriverPath5 = "C:\Drivers\Cloud Drivers\Dell\Storage\Other\Extract"
$DellCloudDriverPath6 = "C:\Drivers\Cloud Drivers\Dell\Storage\Windows10\Extract"
$DellCloudDriverPath7 = "C:\Drivers\Cloud Drivers\Dell\Storage\Windows11\Extract"

Write-Verbose "Processing: Integrating OSDCloud Dell Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath4
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath5
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath6
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath7

Write-Host

$IntelCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers.ps1")
Invoke-Expression $($IntelCloudDrivers.Content)

$IntelCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Intel\Network\Client OS"
$IntelCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Intel\Network\Server OS"
$IntelCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Intel\Network\Other\1"
$IntelCloudDriverPath4 = "C:\Drivers\Cloud Drivers\Intel\Network\Other\2"

Write-Verbose "Processing: Integrating OSDCloud Intel Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath4

$SurfaceCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.ps1")
Invoke-Expression $($SurfaceCloudDrivers.Content)

$SurfaceCloudDriverPath = "C:\Drivers\Cloud Drivers\Surface\Extract"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud Microsoft Surface Tablet Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $SurfaceCloudDriverPath


$NutanixCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Nutanix%20Drivers/Nutanix-CloudDrivers.ps1")
Invoke-Expression $($NutanixCloudDrivers.Content)

$NutanixCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\1"
$NutanixCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\2"
$NutanixCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\3"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud Nutanix Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath3


$USBCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers.ps1")
Invoke-Expression $($USBCloudDrivers.Content)

$USBCloudDriverPath1 = "C:\Drivers\Cloud Drivers\USB\Extract\1"
$USBCloudDriverPath2 = "C:\Drivers\Cloud Drivers\USB\Extract\2"
$USBCloudDriverPath3 = "C:\Drivers\Cloud Drivers\USB\Extract\3"
$USBCloudDriverPath1 = "C:\Drivers\Cloud Drivers\USB\Extract\4"
$USBCloudDriverPath2 = "C:\Drivers\Cloud Drivers\USB\Extract\5"
$USBCloudDriverPath3 = "C:\Drivers\Cloud Drivers\USB\Extract\6"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud USB Cloud Drivers..." --Verbose

Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath4
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath5
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath6

$WLANCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/WLAN%20Drivers/WLAN-CloudDrivers.ps1")
Invoke-Expression $($WLANCloudDrivers.Content)

$WLANCloudDriverPath = "C:\Drivers\Cloud Drivers\WLAN\Extract"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud WiFi Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $WLANCloudDriverPath

$VMWareCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/VMWare%20Drivers/VMWare-CloudDrivers.ps1")
Invoke-Expression $($VMWareCloudDrivers.Content)

$VMWareCloudDriverPath1 = "C:\Drivers\Cloud Drivers\VMWare\Extract\1"
$VMWareCloudDriverPath2 = "C:\Drivers\Cloud Drivers\VMWare\Extract\2"
$VMWareCloudDriverPath3 = "C:\Drivers\Cloud Drivers\VMWare\Extract\3"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud VMWare Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath3

Write-Host
Write-Verbose "Completed: Integration of OSDCloud - Cloud Drivers..." -Verbose
Write-Host

######################################
## Extra Scripting Support
######################################

# VBS Scripting Support

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"
$VBSName1 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBSName2 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBSName3 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBSName4 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"
$VBS1 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBS2 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBS3 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBS4 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"

$sourceWIMDir = "\Media\sources"
$WorkspacePath = Get-OSDCloudWorkspace
$WimFile = Join-Path -Path $WorkspacePath -ChildPath $sourceWIMDir
$mountdir = "C:\Mount"

Write-Verbose "Processing: Mounting OSDCloud boot.wim" -Verbose
# Mount the image

Mount-WindowsImage -ImagePath "$WimFile\boot.wim" -Path $mountdir -Index 1

Write-Host
Write-Verbose "Processing: VBS Scripting Support..." -Verbose 

Write-Host
Write-Verbose "Processing Item: $VBSName1..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS1
Write-Host

Write-Verbose "Processing Item: $VBSName2..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS2
Write-Host

Write-Verbose "Processing Item: $VBSName3..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS3
Write-Host

Write-Verbose "Processing Item: $VBSName4..." -Verbose
Add-WindowsPackage -Path $mountdir -PackagePath $VBS4

Write-Host
Write-Verbose "Completed: Integration of VBS Scripting Support for OSDCloud..." -Verbose
Write-Host

########################################
# 3rd party software and utilities
########################################

# Portable Browsers

Write-Host
Write-Verbose "Processing: Google Chrome Portable Browser for OSDCloud..." -Verbose 
$ChromePath = "C:\OSDCloud\GitHub\downloads\Chrome.exe"
$ChromeDestination = "$mountdir\Windows\System32"

Copy-Item -Path $ChromePath -Destination $ChromeDestination -Force

Write-Host
Write-Verbose "Completed: Integration of Google Chrome Portable Browser for OSDCloud..." -Verbose
Write-Host

# MS DaRT Remote Connections and Troubleshooting


# MSTSC

Write-Host
Write-Verbose "Processing: Microsoft Remote Desktop Client for OSDCloud..." -Verbose 
$MSTSCPath1 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files"
$MSTSCPath2 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files\en-us"
$MSTSCDestination1 = "$mountdir\Windows\System32"
$MSTSCDestination2 = "$mountdir\Windows\System32\en-US"

Copy-Item -Path $MSTSCPath1 -Destination $MSTSCDestination1 -Recurse -Force
Copy-Item -Path $MSTSCPath2 -Destination $MSTSCDestination2 -Recurse -Force

# CloudPC

Write-Host
Write-Verbose "Processing: Microsoft Remote Desktop - Cloud PC for OSDCloud..." -Verbose 
$CloudPCPath1 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files"
$CloudPCPath2 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files\en-us"
$CloudPCDestination1 = "$mountdir\Windows\System32"
$CloudPCDestination2 = "$mountdir\Windows\System32\en-US"

Copy-Item -Path "$CloudPCPath1\*" -Destination $CloudPCDestination1  -Force
Copy-Item -Path "$CloudPCPath2\*" -Destination $CloudPCDestination2  -Force

# CMTrace 

Write-Verbose "Processing: Microsoft Endpoint Configuration Manager Log Viewer CM Trace for OSDCloud..." -Verbose 
$CMTracePath = "C:\OSDCloud\downloads\GitHub\MECM-LogViewer"
$CMTraceDestination = "$mountdir\Windows\System32"

Copy-Item -Path $CMTracePath -Destination $CMTraceDestination -Force

# Ghost Imaging

Write-Host
Write-Verbose "Processing: Ghost Imaging for OSDCloud..." -Verbose 
$Ghost64Path = "C:\OSDCloud\GitHub\downloads\Ghost\Ghost64.exe"
$GhostExplorerPath = "C:\OSDCloud\GitHub\downloads\Ghost\Ghostexp.exe"
$GhostServPath = "C:\OSDCloud\GitHub\downloads\Ghost\GhostSrv.exe"
$GhostDestination = "$mountdir\Windows\System32"

Copy-Item -Path $Ghost64Path -Destination $GhostDestination -Force
Copy-Item -Path $GhostExplorerPath -Destination $GhostDestination -Force
Copy-Item -Path $GhostServPath -Destination $GhostDestination -Force

Write-Host
Write-Verbose "Completed: Integration of Ghost Imaging for OSDCloud..." -Verbose
Write-Host

# User Profile Backup and Restore 

Write-Host
Write-Verbose "Processing: User Profile Backup/Restore for OSDCloud..." -Verbose 
$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UBPRDestination = "$mountdir\Windows\System32"

Copy-Item -Path $UPBRFilePath -Destination $UBPRDestination -Force

Write-Host
Write-Verbose "Completed: Integration of User Profile Backup/Restore for OSDCloud..." -Verbose
Write-Host

# Disount the image
Write-Host
Write-Verbose "Processing: Dismounting OSDCloud boot.wim" -Verbose

Dismount-WindowsImage -Path $mountdir -Save

######################################
## Extra PowerShell Modules - OSDCloud
######################################

# PowerShell 5.1 Modules - OSDCloud

$OSDCloudPS5xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/5.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS5xMods.Content)

# PowerShell 7.x Modules - OSDCloud

$OSDCloudPS7xMods = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/PowerShell%20Modules/7.x/AddModules.ps1")
Invoke-Expression $($OSDCloudPS7xMods.Content)

# AM4 CPU Socket

Write-Host
Write-Verbose "Processing: AMD CPU Socket AM4 motherboards..." -Verbose 

Write-Host
Write-Verbose "Processing: ASUS AM 4 Business Motherboard Ethernet Drivers..." -Verbose 
$BusinessEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Business\Ethernet1"
$BusinessEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Business\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $BusinessEthernet1
Edit-OSDCloudWinPE -DriverPath $BusinessEthernet2

Write-Host
Write-Verbose "Processing: ASUS AM4 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

Write-Host
Write-Verbose "Processing: ASUS AM4 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\CSM\Ethernet"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet

Write-Host
Write-Verbose "Processing: ASUS AM4 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\CSM\Storage1"
$CSMStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\CSM\Storage2"

Edit-OSDCloudWinPE -DriverPath $CSMStorage1
Edit-OSDCloudWinPE -DriverPath $CSMStorage2

Write-Host
Write-Verbose "Processing: ASUS AM4 Other Motherboard Ethernet Drivers..." -Verbose 
$OtherEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Other\Ethernet"

Edit-OSDCloudWinPE -DriverPath $OtherEthernet

Write-Host
Write-Verbose "Processing: ASUS AM4 Other Motherboard Storage Drivers..." -Verbose 
$OtherStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Other\Storage"

Edit-OSDCloudWinPE -DriverPath $OtherStorage

Write-Host
Write-Verbose "Processing: ASUS AM4 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet1"
$PRIMEEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet2"
$PRIMEEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet1
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet2
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet3

Write-Host
Write-Verbose "Processing: ASUS AM4 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\WiFi"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi

Write-Host
Write-Verbose "Processing: ASUS AM4 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage1"
$PRIMEStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage2"
$PRIMEStorage3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage3"
$PRIMEStorage4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage4"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage1
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage2
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage3
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage4

Write-Host
Write-Verbose "Processing: ASUS AM4 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet

Write-Host
Write-Verbose "Processing: ASUS AM4 ProArt Motherboard WiFi Drivers..." -Verbose 
$ProArtWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\WiFi1"

Edit-OSDCloudWinPE -DriverPath $ProArtWiFi

Write-Host
Write-Verbose "Processing: ASUS AM4 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

Write-Host
Write-Verbose "Processing: ASUS AM4 ROG - Republic of Gamers Motherboard Bluetooth Drivers..." -Verbose 
$ROGBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $ROGBluetooth

Write-Host
Write-Verbose "Processing: ASUS AM4 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
$ROGEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet1"
$ROGEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet2"
$ROGEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet3"
$ROGEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet4"
$ROGEthernet5 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Ethernet5"

Edit-OSDCloudWinPE -DriverPath $ROGEthernet1
Edit-OSDCloudWinPE -DriverPath $ROGEthernet2
Edit-OSDCloudWinPE -DriverPath $ROGEthernet3
Edit-OSDCloudWinPE -DriverPath $ROGEthernet4
Edit-OSDCloudWinPE -DriverPath $ROGEthernet5

Write-Host
Write-Verbose "Processing: ASUS AM4 ROG - Republic of Gamers Motherboard WiFi Drivers..." -Verbose 
$ROGWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi1"
$ROGWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi2"
$ROGWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi3"
$ROGWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi4"

Edit-OSDCloudWinPE -DriverPath $ROGWiFi1
Edit-OSDCloudWinPE -DriverPath $ROGWiFi2
Edit-OSDCloudWinPE -DriverPath $ROGWiFi3
Edit-OSDCloudWinPE -DriverPath $ROGWiFi4


Write-Host
Write-Verbose "Processing: ASUS AM4 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Storage"
$ROGStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage1
Edit-OSDCloudWinPE -DriverPath $ROGStorage2

Write-Host
Write-Verbose "Processing: ASUS AM4 TUF Gaming Motherboard Bluetooth Drivers..." -Verbose 
$TUFBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $TUFBluetooth

Write-Host
Write-Verbose "Processing: ASUS AM4 TUF Gaming Motherboard Ethernet Drivers..." -Verbose 
$TUFEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet1"
$TUFEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet2"
$TUFEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet3"
$TUFEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Ethernet4"

Edit-OSDCloudWinPE -DriverPath $TUFEthernet1
Edit-OSDCloudWinPE -DriverPath $TUFEthernet2
Edit-OSDCloudWinPE -DriverPath $TUFEthernet3
Edit-OSDCloudWinPE -DriverPath $TUFEthernet4

Write-Host
Write-Verbose "Processing: ASUS AM4 TUF Gaming Motherboard WiFi Drivers..." -Verbose 
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
Write-Verbose "Processing: ASUS AM4 TUF Gaming Motherboard Storage Drivers..." -Verbose 
$TUFStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Storage1"
$TUFStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\TUF\Storage2"

Edit-OSDCloudWinPE -DriverPath $TUFStorage1
Edit-OSDCloudWinPE -DriverPath $TUFStorage2

Write-Host
Write-Verbose "Processing: ASUS AM4 Workstation Motherboard Ethernet Drivers..." -Verbose 
$WorkstationEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Workstation\Ethernet"

Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet

Write-Host
Write-Verbose "Processing: ASUS AM4 Workstation Motherboard Storage Drivers..." -Verbose 
$WorkstationStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Workstation\Storage1"
$WorkstationStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Workstation\Storage2"

Edit-OSDCloudWinPE -DriverPath $WorkstationStorage1
Edit-OSDCloudWinPE -DriverPath $WorkstationStorage2

Write-Host
Write-Verbose "Completed: Integration of ASUS AMD AM4 Motherboard Drivers..." -Verbose 

# ASRock AM4 Motherboards

Write-Host
Write-Verbose "Processing: ASRock AM4 Extreme Motherboard Ethernet Drivers..." -Verbose 
$ExtremeEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Ethernet"

Edit-OSDCloudWinPE -DriversPath $ExtremeEthernet

Write-Host
Write-Verbose "Processing: ASRock AM4 Extreme Motherboard Storage Drivers..." -Verbose 
$ExtremeStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Storage1"
$ExtremeStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Storage2"

Edit-OSDCloudWinPE -DriversPath $ExtremeStorage1
Edit-OSDCloudWinPE -DriversPath $ExtremeStorage2

Write-Host
Write-Verbose "Processing: ASRock AM4 PRO Motherboard Ethernet Drivers..." -Verbose 
$PROEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet1"
$PROEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet2"
$PROEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet3"
$PROEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet4"
$PROEthernet5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Ethernet5"

Edit-OSDCloudWinPE -DriversPath $PROEthernet1
Edit-OSDCloudWinPE -DriversPath $PROEthernet2
Edit-OSDCloudWinPE -DriversPath $PROEthernet3
Edit-OSDCloudWinPE -DriversPath $PROEthernet4
Edit-OSDCloudWinPE -DriversPath $PROEthernet5

Write-Host
Write-Verbose "Processing: ASRock AM 4 PRO Motherboard Storage Drivers..." -Verbose 
$PROStorage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PRO\Storage"

Edit-OSDCloudWinPE -DriversPath $PROStorage

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard Ethernet Drivers..." -Verbose 
$PhantomGamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet1"
$PhantomGamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet2"
$PhantomGamingEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet3"
$PhantomGamingEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet4"
$PhantomGamingEthernet5 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Ethernet5"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet1
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet2
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet3
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet4
Edit-OSDCloudWinPE -DriversPath $PhantomGamingEthernet5

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard WiFi Drivers..." -Verbose 
$PhantomGamingWLAN = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\WiFi"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 4 Phantom Gaming Motherboard Storage Drivers..." -Verbose 
$PhantomGamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Storage1"
$PhantomGamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\PhantomGaming\Storage2"

Edit-OSDCloudWinPE -DriversPath $PhantomGamingStorage1
Edit-OSDCloudWinPE -DriversPath $PhantomGamingStorage2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard Ethernet Drivers..." -Verbose 
$SteelLegendEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet1"
$SteelLegendEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet2"
$SteelLegendEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet3"
$SteelLegendEthernet4 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Ethernet4"

Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet1
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet2
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet3
Edit-OSDCloudWinPE -DriversPath $SteelLegendEthernet4

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard WiFi Drivers..." -Verbose 
$SteelLegendWLAN = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\WiFi"

Edit-OSDCloudWinPE -DriversPath $SteelLegendWiFi

Write-Host
Write-Verbose "Processing: ASRock AM 4 Steel Legend Motherboard Storage Drivers..." -Verbose 
$SteelLegendStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Storage1"
$SteelLegendStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\SteelLegend\Storage2"

Edit-OSDCloudWinPE -DriversPath $SteelLegendStorage1
Edit-OSDCloudWinPE -DriversPath $SteelLegendStorage2

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard Ethernet Drivers..." -Verbose 
$TaichiEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\Ethernet"

Edit-OSDCloudWinPE -DriversPath $TaichiEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard WiFi Drivers..." -Verbose 
$TaichiWLAN = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\WiFi"

Edit-OSDCloudWinPE -DriversPath $TaichiWLAN

Write-Host
Write-Verbose "Processing: ASRock AM 4 Taichi Motherboard Storage Drivers..." -Verbose 
$TaichiStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\Storage1"
$TaichiStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Taichi\Storage2"

Edit-OSDCloudWinPE -DriversPath $TaichiStorage1
Edit-OSDCloudWinPE -DriversPath $TaichiStorage2

Write-Host
Write-Verbose "Completed: Integration of ASRock AMD AM4 Motherboard Drivers..." -Verbose 


# Gigabyte AM 4 Motherboards

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Ethernet Drivers..." -Verbose 
$AEROEthernet = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\Ethernet"

Edit-OSDCloudWinPE -DriversPath $AEROEthernet

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard WiFi Drivers..." -Verbose 
$AEROWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\WiFi1"
$AEROWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\WiFi2"

Edit-OSDCloudWinPE -DriversPath $AEROWiFi1
Edit-OSDCloudWinPE -DriversPath $AEROWiFi2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AERO Motherboard Storage Drivers..." -Verbose 
$AEROStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage1"
$AEROStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AM4\AERO\Storage2"

Edit-OSDCloudWinPE -DriversPath  $AEROStorage1
Edit-OSDCloudWinPE -DriversPath  $AEROStorage2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Ethernet Drivers..." -Verbose 
$AORUSEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\A520\Ethernet1"
$AORUSEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\A520\Ethernet2"
$AORUSEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet1"
$AORUSEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet2"
$AORUSEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\Ethernet3"
$AORUSEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Ethernet1"
$AORUSEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Ethernet2"
$AORUSEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet1"
$AORUSEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet2"
$AORUSEthernet10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet3"
$AORUSEthernet11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet4"
$AORUSEthernet12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X370\Ethernet5"
$AORUSEthernet13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet1"
$AORUSEthernet14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet2"
$AORUSEthernet15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet3"
$AORUSEthernet16 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\Ethernet4"
$AORUSEthernet17 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet1"
$AORUSEthernet18 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet2"
$AORUSEthernet19 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet3"
$AORUSEthernet20 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet4"
$AORUSEthernet21 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet5"
$AORUSEthernet22 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet6"
$AORUSEthernet23 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet7"
$AORUSEthernet24 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet8"
$AORUSEthernet25 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet9"
$AORUSEthernet26 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet10"
$AORUSEthernet27 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Ethernet11"

Edit-OSDCloudWinPE -DriverPath $AORUSEthernet1
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet2
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet3
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet4
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet5
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet6
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet7
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet8
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet9
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet10
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet11
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet12
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet13
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet14
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet15
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet16
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet17
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet18
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet19
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet20
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet21
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet22
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet23
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet24
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet25
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet26
Edit-OSDCloudWinPE -DriverPath $AORUSEthernet27

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard WiFi Drivers..." -Verbose 
$AORUSWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B450\WiFi1"
$AORUSWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi1"
$AORUSWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi2"
$AORUSWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi3"
$AORUSWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi4"
$AORUSWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\WiFi5"
$AORUSWiFi7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X470\WiFi1"
$AORUSWiFi8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\WiFi1"
$AORUSWiFi9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\WiFi2"

Edit-OSDCloudWinPE -DriverPath $AORUSWiFi1
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi2
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi3
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi4
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi5
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi6
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi7
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi8
Edit-OSDCloudWinPE -DriverPath $AORUSWiFi9

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Storage Drivers..." -Verbose 
$AORUSStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\Storage\RAID\NVMe"
$AORUSStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\Storage\RAID\SATA"

Edit-OSDCloudWinPE -DriverPath $AORUSStorage1
Edit-OSDCloudWinPE -DriverPath $AORUSStorage2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Bluetooth Drivers..." -Verbose 
$AORUSBluetooth1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\B550\Bluetooth"
$AORUSBluetooth2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\AORUS\X570\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $AORUSBluetooth1
Edit-OSDCloudWinPE -DriverPath $AORUSBluetooth2

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Gaming Motherboard Ethernet Drivers..." -Verbose 
$GamingEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B350\Ethernet"
$GamingEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B450\Ethernet1"
$GamingEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B450\Ethernet2"
$GamingEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B550\Ethernet1"
$GamingEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B550\Ethernet2"
$GamingEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X370\Ethernet1"
$GamingEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X370\Ethernet2"
$GamingEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X570\Ethernet1"
$GamingEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\X570\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $GamingEthernet1
Edit-OSDCloudWinPE -DriverPath $GamingEthernet2
Edit-OSDCloudWinPE -DriverPath $GamingEthernet3
Edit-OSDCloudWinPE -DriverPath $GamingEthernet4
Edit-OSDCloudWinPE -DriverPath $GamingEthernet5
Edit-OSDCloudWinPE -DriverPath $GamingEthernet6
Edit-OSDCloudWinPE -DriverPath $GamingEthernet7
Edit-OSDCloudWinPE -DriverPath $GamingEthernet8
Edit-OSDCloudWinPE -DriverPath $GamingEthernet9

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 AORUS Motherboard Bluetooth Drivers..." -Verbose 
$GamingBluetooth = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B350\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $GamingBluetooth

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Gaming Motherboard Storage Drivers..." -Verbose 
$GamingStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B350\RAID\NVMe"
$GamingStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B350\RAID\SATA"
$GamingStorage3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B450\RAID\NVMe"
$GamingStorage4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\B450\RAID\SATA"
$GamingStorage5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B550\RAID\NVMe1"
$GamingStorage6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B550\RAID\NVMe2"
$GamingStorage7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\B550\RAID\SATA"
$GamingStorage8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X370\RAID\NVMe"
$GamingStorage9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X370\RAID\SATA"
$GamingStorage10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe1"
$GamingStorage11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe2"
$GamingStorage12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe3"
$GamingStorage13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\NVMe4"
$GamingStorage14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\SATA1"
$GamingStorage15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Gaming\Storage\X570\RAID\SATA2"

Edit-OSDCloudWinPE -DriverPath $GamingStorage1
Edit-OSDCloudWinPE -DriverPath $GamingStorage2
Edit-OSDCloudWinPE -DriverPath $GamingStorage3
Edit-OSDCloudWinPE -DriverPath $GamingStorage4
Edit-OSDCloudWinPE -DriverPath $GamingStorage5
Edit-OSDCloudWinPE -DriverPath $GamingStorage6
Edit-OSDCloudWinPE -DriverPath $GamingStorage7
Edit-OSDCloudWinPE -DriverPath $GamingStorage8
Edit-OSDCloudWinPE -DriverPath $GamingStorage9
Edit-OSDCloudWinPE -DriverPath $GamingStorage10
Edit-OSDCloudWinPE -DriverPath $GamingStorage11
Edit-OSDCloudWinPE -DriverPath $GamingStorage12
Edit-OSDCloudWinPE -DriverPath $GamingStorage13
Edit-OSDCloudWinPE -DriverPath $GamingStorage14
Edit-OSDCloudWinPE -DriverPath $GamingStorage15

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard Ethernet Drivers..." -Verbose 
$UDEthernet1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\Ethernet1"
$UDEthernet2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\Ethernet2"
$UDEthernet3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B350\Ethernet"
$UDEthernet4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\Ethernet1"
$UDEthernet5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\Ethernet2"
$UDEthernet6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet1"
$UDEthernet7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet2"
$UDEthernet8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet3"
$UDEthernet9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet4"
$UDEthernet10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet5"
$UDEthernet11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet6"
$UDEthernet12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet7"
$UDEthernet13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\Ethernet8"
$UDEthernet14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X370\Ethernet"
$UDEthernet15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\Ethernet1"
$UDEthernet16 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\Ethernet2"

Edit-OSDCloudWinPE -DriverPath $UDEthernet1
Edit-OSDCloudWinPE -DriverPath $UDEthernet2
Edit-OSDCloudWinPE -DriverPath $UDEthernet3
Edit-OSDCloudWinPE -DriverPath $UDEthernet4
Edit-OSDCloudWinPE -DriverPath $UDEthernet5
Edit-OSDCloudWinPE -DriverPath $UDEthernet6
Edit-OSDCloudWinPE -DriverPath $UDEthernet7
Edit-OSDCloudWinPE -DriverPath $UDEthernet8
Edit-OSDCloudWinPE -DriverPath $UDEthernet9
Edit-OSDCloudWinPE -DriverPath $UDEthernet10
Edit-OSDCloudWinPE -DriverPath $UDEthernet11
Edit-OSDCloudWinPE -DriverPath $UDEthernet12
Edit-OSDCloudWinPE -DriverPath $UDEthernet13
Edit-OSDCloudWinPE -DriverPath $UDEthernet14
Edit-OSDCloudWinPE -DriverPath $UDEthernet15
Edit-OSDCloudWinPE -DriverPath $UDEthernet16

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard WiFi Drivers..." -Verbose 
$UDWiFi1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\WiFi1"
$UDWiFi2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\WiFi2"
$UDWiFi3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\WiFi1"
$UDWiFi4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\WiFi2"
$UDWiFi5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\WiFi1"
$UDWiFi6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\WiFi2"

Edit-OSDCloudWinPE -DriverPath $UDWiFi1
Edit-OSDCloudWinPE -DriverPath $UDWiFi2
Edit-OSDCloudWinPE -DriverPath $UDWiFi3
Edit-OSDCloudWinPE -DriverPath $UDWiFi4
Edit-OSDCloudWinPE -DriverPath $UDWiFi5
Edit-OSDCloudWinPE -DriverPath $UDWiFi6

Write-Host
Write-Verbose "Processing: Gigabyte AM 4 Ultra Durable Motherboard Storage Drivers..." -Verbose 
$UDStorage1 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\RAID\NVMe"
$UDStorage2 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A320\RAID\SATA"
$UDStorage3 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe1"
$UDStorage4 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe2"
$UDStorage5 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe3"
$UDStorage6 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\NVMe4"
$UDStorage7 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\SATA1"
$UDStorage8 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\A520\RAID\SATA2"
$UDStorage9 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B350\RAID\NVMe"
$UDStorage10 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B350\RAID\SATA"
$UDStorage11 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\RAID\NVMe"
$UDStorage12 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B450\RAID\SATA"
$UDStorage13 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\NVMe1"
$UDStorage14 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\NVMe2"
$UDStorage15 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\SATA"
$UDStorage16 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\B550\RAID\Thunderbolt"
$UDStorage17 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X370\RAID\NVMe"
$UDStorage18 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X370\RAID\SATA"
$UDStorage19 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\RAID\NVMe1"
$UDStorage20 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\RAID\NVMe2"
$UDStorage21 = "C:\OSDCloud\Drivers\Motherboards\Gigabyte\Ultra Durable\X570\RAID\SATA"

Edit-OSDCloudWinPE -DriverPath $UDStorage1
Edit-OSDCloudWinPE -DriverPath $UDStorage2
Edit-OSDCloudWinPE -DriverPath $UDStorage3
Edit-OSDCloudWinPE -DriverPath $UDStorage4
Edit-OSDCloudWinPE -DriverPath $UDStorage5
Edit-OSDCloudWinPE -DriverPath $UDStorage6
Edit-OSDCloudWinPE -DriverPath $UDStorage7
Edit-OSDCloudWinPE -DriverPath $UDStorage8
Edit-OSDCloudWinPE -DriverPath $UDStorage9
Edit-OSDCloudWinPE -DriverPath $UDStorage10
Edit-OSDCloudWinPE -DriverPath $UDStorage11
Edit-OSDCloudWinPE -DriverPath $UDStorage12
Edit-OSDCloudWinPE -DriverPath $UDStorage13
Edit-OSDCloudWinPE -DriverPath $UDStorage14
Edit-OSDCloudWinPE -DriverPath $UDStorage15
Edit-OSDCloudWinPE -DriverPath $UDStorage16
Edit-OSDCloudWinPE -DriverPath $UDStorage17
Edit-OSDCloudWinPE -DriverPath $UDStorage18
Edit-OSDCloudWinPE -DriverPath $UDStorage19
Edit-OSDCloudWinPE -DriverPath $UDStorage20
Edit-OSDCloudWinPE -DriverPath $UDStorage21

Write-Host
Write-Verbose "Completed: Integration of Gigabyte AMD AM4 Motherboard Drivers..." -Verbose 

# MSI AM 4 Motherboards

Write-Host
Write-Verbose "Attention: MSI does not have any AM4 motherboard downloads avaible on their website..." -Verbose 

Write-Host
Write-Verbose "Completed: Integration of AMD AM4 Motherboard Drivers..." -Verbose 

# AM5 CPU Socket

Write-Host
Write-Verbose "Processing: AMD CPU Socket AM5 motherboards..." -Verbose 

# ASRock AM5 Motherboards

Write-Host
Write-Verbose "Processing: ASRock AM5 PRO Motherboard Ethernet Drivers..." -Verbose
$PROAM5Ethernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\Ethernet"

Edit-OSDCloudWinPE -DriverPath $PROAM5Ethernet 

Write-Host
Write-Verbose "Processing: ASRock AM5 PRO Motherboard WiFi Drivers..." -Verbose
$PROAM5WiFi = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\WiFi"

Edit-OSDCloudWinPE -DriverPath $PROAM5WiFi 

Write-Host
Write-Verbose "Processing: ASRock AM5 PRO Motherboard Bluetooth Drivers..." -Verbose
$PROAM5Bluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $PROAM5Bluetooth

Write-Host
Write-Verbose "Processing: ASRock AM5 PRO Motherboard Storage Drivers..." -Verbose
$PROAM5Storage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\PRO\Storage"

Edit-OSDCloudWinPE -DriverPath $PROAM5Storage

Write-Host
Write-Verbose "Processing: ASRock AM5 Steel Legend Motherboard Ethernet Drivers..." -Verbose
$SteelLegendAM5Ethernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\Ethernet"

Edit-OSDCloudWinPE -DriverPath $SteelLegendAM5Ethernet 

Write-Host
Write-Verbose "Processing: ASRock AM5 Steel Legend Motherboard WiFi Drivers..." -Verbose
$SteelLegendAM5WiFi = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\WiFi"

Edit-OSDCloudWinPE -DriverPath $SteelLegendAM5WiFi

Write-Host
Write-Verbose "Processing: ASRock AM5 Steel Legend Motherboard Bluetooth Drivers..." -Verbose
$SteelLegendAM5Bluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $SteelLegendAM5Bluetooth

Write-Host
Write-Verbose "Processing: ASRock AM5 Steel Legend Motherboard Storage Drivers..." -Verbose
$SteelLegendAM5Storage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\SteelLegend\Storage"

Edit-OSDCloudWinPE -DriverPath $SteelLegendAM5Storage

Write-Host
Write-Verbose "Processing: ASRock AM5 Taichi Motherboard Ethernet Drivers..." -Verbose
$TaichiAM5Ethernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Ethernet"

Edit-OSDCloudWinPE -DriverPath $TaichiAM5Ethernet

Write-Host
Write-Verbose "Processing: ASRock AM5 Taichi Motherboard WiFi Drivers..." -Verbose
$TaichiAM5WiFi = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\WiFi"

Edit-OSDCloudWinPE -DriverPath $TaichiAM5WiFi

Write-Host
Write-Verbose "Processing: ASRock AM5 Taichi Motherboard Bluetooth Drivers..." -Verbose
$TaichiAM5Bluetooth = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Bluetooth1"
$TaichiAM5Bluetooth1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Bluetooth2"

Edit-OSDCloudWinPE -DriverPath $TaichiAM5Bluetooth
Edit-OSDCloudWinPE -DriverPath $TaichiAM5Bluetooth1

Write-Host
Write-Verbose "Processing: ASRock AM5 Taichi Motherboard Storage Drivers..." -Verbose
$TaichiAM5Storage = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM5\Taichi\Storage"

Edit-OSDCloudWinPE -DriverPath $TaichiAM5Storage


# ASUS AM5 Motherboards


Write-Host
Write-Verbose "Processing: ASUS AM5 Business Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 Business Motherboard Storage Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 CSM Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 CSM Motherboard Storage Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 Expedition Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 Expedition Motherboard Storage Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 Other Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 Other Motherboard Storage Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 PRIME Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 PRIME Motherboard Storage Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 ProArt Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 ProArt Motherboard Storage Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 TUF Gaming Motherboard Ethernet Drivers..." -Verbose


Write-Host
Write-Verbose "Processing: ASUS AM5 TUF Gaming Motherboard Storage Drivers..." -Verbose


# MSI AM5 Motherboards

# Gigabyte AM5 Motherboards





Write-Host
Write-Verbose "Completed: Integration of AMD AM5 Motherboard Drivers..." -Verbose


# LGA 1700 motherboards



# LGA 1851 motherboards


# Virtualization Drivers

###########################################
# Rename OSDCloud ISO
#########################################

$OSDCloudISOPath = "C:\OSDCloud\All-CPU"

Write-Verbose "Renaming OSDCloud ISO Files..." -Verbose
Rename-Item -Path "$OSDCloudISOPath\OSDCloud.iso" -NewName "C:\OSDCloud\All-CPU\OSDCloud-ALL-CPU.iso" -Force
Rename-Item -Path "$OSDCloudISOPath\OSDCloud_NoPrompt.iso" -NewName "C:\OSDCloud\All-CPU\OSDCloud-ALL-CPU_NoPrompt.iso" -Force
