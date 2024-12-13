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
Write-Verbose "Processing: ASUS AM 4 Business Motherboard Storage Drivers..." -Verbose 
$BusinessStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Business\Storage"

Edit-OSDCloudWinPE -DriverPath $BusinessStorage

Write-Host
Write-Verbose "Processing: ASUS AM 4 CSM Motherboard Ethernet Drivers..." -Verbose 
$CSMEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\CSM\Ethernet"

Edit-OSDCloudWinPE -DriverPath $CSMEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 CSM Motherboard Storage Drivers..." -Verbose 
$CSMStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\CSM\Storage1"
$CSMStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\CSM\Storage2"

Edit-OSDCloudWinPE -DriverPath $CSMStorage1
Edit-OSDCloudWinPE -DriverPath $CSMStorage2

Write-Host
Write-Verbose "Processing: ASUS AM 4 Other Motherboard Ethernet Drivers..." -Verbose 
$OtherEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Other\Ethernet"

Edit-OSDCloudWinPE -DriverPath $OtherEthernet

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Other Motherboard Storage Drivers..." -Verbose 
$OtherStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Other\Storage"

Edit-OSDCloudWinPE -DriverPath $OtherStorage

Write-Host
Write-Verbose "Processing: ASUS AM 4 PRIME Motherboard Ethernet Drivers..." -Verbose 
$PRIMEEthernet1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet1"
$PRIMEEthernet2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet2"
$PRIMEEthernet3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\Ethernet3"

Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet1
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet2
Edit-OSDCloudWinPE -DriverPath $PRIMEEthernet3

Write-Host
Write-Verbose "Processing: ASUS AM 4 PRIME Motherboard WiFi Drivers..." -Verbose 
$PRIMEWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\PRIME\WiFi"

Edit-OSDCloudWinPE -DriverPath $PRIMEWiFi

Write-Host
Write-Verbose "Processing: ASUS AM 4 PRIME Motherboard Storage Drivers..." -Verbose 
$PRIMEStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage1"
$PRIMEStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage2"
$PRIMEStorage3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage3"
$PRIMEStorage4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\LGA1851\PRIME\Storage4"

Edit-OSDCloudWinPE -DriverPath $PRIMEStorage1
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage2
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage3
Edit-OSDCloudWinPE -DriverPath $PRIMEStorage4

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard Ethernet Drivers..." -Verbose 
$ProArtEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\Ethernet"

Edit-OSDCloudWinPE -DriverPath $ProArtEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard WiFi Drivers..." -Verbose 
$ProArtWiFi = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\WiFi1"

Edit-OSDCloudWinPE -DriverPath $ProArtWiFi

Write-Host
Write-Verbose "Processing: ASUS AM 4 ProArt Motherboard Storage Drivers..." -Verbose 
$ProArtStorage = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ProArt\Storage"

Edit-OSDCloudWinPE -DriverPath $ProArtStorage

Write-Host
Write-Verbose "Processing: ASUS AM 4 ROG - Republic of Gamers Motherboard Bluetooth Drivers..." -Verbose 
$ROGBluetooth = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $ROGBluetooth

Write-Host
Write-Verbose "Processing: ASUS AM 4 ROG - Republic of Gamers Motherboard Ethernet Drivers..." -Verbose 
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
Write-Verbose "Processing: ASUS AM 4 ROG - Republic of Gamers Motherboard WiFi Drivers..." -Verbose 
$ROGWiFi1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi1"
$ROGWiFi2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi2"
$ROGWiFi3 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi3"
$ROGWiFi4 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\WiFi4"

Edit-OSDCloudWinPE -DriverPath $ROGWiFi1
Edit-OSDCloudWinPE -DriverPath $ROGWiFi2
Edit-OSDCloudWinPE -DriverPath $ROGWiFi3
Edit-OSDCloudWinPE -DriverPath $ROGWiFi4


Write-Host
Write-Verbose "Processing: ASUS AM 4 ROG - Republic of Gamers Motherboard Storage Drivers..." -Verbose 
$ROGStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Storage"
$ROGStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\ROG\Storage"

Edit-OSDCloudWinPE -DriverPath $ROGStorage1
Edit-OSDCloudWinPE -DriverPath $ROGStorage2

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
Write-Verbose "Processing: ASUS AM 4 Workstation Motherboard Ethernet Drivers..." -Verbose 
$WorkstationEthernet = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Workstation\Ethernet"

Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet

Write-Host
Write-Verbose "Processing: ASUS AM 4 Workstation Motherboard Storage Drivers..." -Verbose 
$WorkstationStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Workstation\Storage1"
$WorkstationStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Workstation\Storage2"

Edit-OSDCloudWinPE -DriverPath $WorkstationStorage1
Edit-OSDCloudWinPE -DriverPath $WorkstationStorage2

Write-Host
Write-Verbose "Completed: Integration of ASUS Intel AM 4 Motherboard Drivers..." -Verbose 

# ASRock AM 4 Motherboards

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Ethernet Drivers..." -Verbose 
$ExtremeEthernet = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Ethernet"

Edit-OSDCloudWinPE -DriversPath $ExtremeEthernet

Write-Host
Write-Verbose "Processing: ASRock AM 4 Extreme Motherboard Storage Drivers..." -Verbose 
$ExtremeStorage1 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Storage1"
$ExtremeStorage2 = "C:\OSDCloud\Drivers\Motherboards\ASRock\AM4\Extreme\Storage2"

Edit-OSDCloudWinPE -DriversPath $ExtremeStorage1
Edit-OSDCloudWinPE -DriversPath $ExtremeStorage2

Write-Host
Write-Verbose "Processing: ASRock AM 4 PRO Motherboard Ethernet Drivers..." -Verbose 
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
Write-Verbose "Completed: Integration of ASRock AMD AM 4 Motherboard Drivers..." -Verbose 


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
Write-Verbose "Completed: Integration of Gigabyte AMD AM 4 Motherboard Drivers..." -Verbose 

# MSI AM 4 Motherboards

Write-Host
Write-Verbose "Attention: MSI does not have any AM 4 motherboard downloads avaible on their website..." -Verbose 

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
