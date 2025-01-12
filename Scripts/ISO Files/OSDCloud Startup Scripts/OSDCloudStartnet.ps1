#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud Startnet - Main Menu',
   [string]$Question = 'What type of action do you need to do?' 
   )
cls

       $os = Get-CimInstance -ClassName Win32_OperatingSystem
       $PCName = "$env:computername"
       $OSVerison = $($os.Version)
       $UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
       $FullOS = $($os.Caption)
       $OSBuild = $($os.Version) + "." + $UBR
       $DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
       $EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
       $CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion"
       $EdgeEXE = Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' "(default)"
       $EdgeBrowser = (Get-Item $EdgeEXE).VersionInfo.ProductVersion

       $IP1 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet" -and $_.PrefixLength -eq "24"}).IPAddress
       $IP2 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet 2" -and $_.PrefixLength -eq "24"}).IPAddress
       $IP3 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "WiFi" -and $_.PrefixLength -eq "24"}).IPAddress
       $NetName = (Get-NetconnectionProfile).Name
       $GatewayDNS = (Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=TRUE -ComputerName $env:computername).DefaultIPGateway
       $ExternalIP = (Invoke-WebRequest -uri "https://api.ipify.org/").Content
       
       
       $Baseboard1 = (Get-CimInstance -ClassName Win32_Baseboard).Manufacturer
       $Baseboard2 = (Get-CimInstance -ClassName Win32_Baseboard).Product
       $CPU = (Get-CimInstance -Class Win32_Processor -ComputerName "$env:computername").Name
       $RAM = (Get-CimInstance -Class Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).sum/1gb
       $PCManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
       $BIOS1 = (Get-CimInstance -ClassName Win32_BIOS).Manufacturer
       $BIOS2 = (Get-CimInstance -ClassName Win32_BIOS).SMBIOSBIOSVersion
       $CheckUEFIBoot = [System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI PK).bytes) -match "DO NOT TRUST|DO NOT SHIP"
       
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 

       Write-Host 
       Write-Host         "System Hardware Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Processor: $CPU" -Verbose
       Write-Verbose "System Memory: $RAM GB" -Verbose
       Write-Verbose "Motherboard: $Baseboard1 $Baseboard2" -Verbose
       Write-Verbose "Manufacturer: $PCManufacturer" -Verbose
       Write-Verbose "System BIOS: $BIOS1 $BIOS2" -Verbose
       
       Write-Host 
       Write-Host         "Network Connection Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "System IP Address 1: $IP1" -Verbose
       Write-Verbose "System IP Address 2: $IP2" -Verbose
       Write-Verbose "System IP Address 3: $IP3" -Verbose
       Write-Verbose "Network Name: $NetName" -Verbose
       Write-Verbose "System Gateway/DNS Server: $GatewayDNS" -Verbose
       Write-Verbose "WAN or External IP Address: $ExternalIP" -Verbose

$WiFiConnect = "X:\Windows\WirelessConnect.exe"
Start-Process -FilePath $WiFiConnect

Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host '                  Welcome to OSDCloud!                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White  
Write-Host '   OSDCloud allows you to install Windows directly from the internet.         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '    Within this bootable environment contains the  following:                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Ethernet, Storage, WiFi and Bluetooth drivers                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Scripting: PowerShell 7 support and VBS Scripting Support              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Imaging/Recovery Tools: MS DaRT, Symantec Ghost and CloneZilla         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Remote Connections: MS Remote Desktop                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Data Backup: User Profile Backup/Restore                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Log Viewer: MECM CM Trace                                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Text Editor: Notepad ++                                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - File Explorer: Explorer ++                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Portable Web Browser: Google Chrome                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host '                  Welcome to OSDCloud!                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White  
Write-Host '   This OSDCloud Startnet.ps1 script will allow you to perform the following: ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '     - ZTI Installations of Windows 11 Enterprise and Professional            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ZTI Installations of Windows 12                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ZTI Installations of Windows Server 2025                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OS Installations via CLI using Start-OSDCloud PowerShell command       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OS Installations via GUI using Start-OSDCloudGUI PowerShell command    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OS Installations via Azure using Start-OSDCloudAzure PowerShell cmd    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OS Installations via custom image                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Accessing utilities from Windows PE OSDCloud environment               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - View list of OSDCloud functions - AKA OSDCloud HELP                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. ZTI Installation: Windows 11 Enterprise"
Write-Host " 2. ZTI Installation: Windows 11 Professional"
Write-Host " 3. ZTI Installation: Windows 12 Enterprise"
Write-Host " 4. ZTI Installation: Windows 12 Professional"
Write-Host " 5. ZTI Installation: Windows Server 2025"
Write-Host " 6. OSDCloud CLI Installation"
Write-Host " 7. OSDCloud GUI Installation"
Write-Host " 8. OSDCloud Azure Installation"
Write-Host " 9. OSDCloud Custom Image Installation"
Write-Host " 10. Access Utilities"
Write-Host " 11. OSDCloud: Get Help"
Write-Host " 12. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    Start-OSDCloud -OSLanguage en-us -OSBuild 24H2 -OSEdition Enterprise -ZTI
    }
'2'{cls
    Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    Start-OSDCloud -OSLanguage en-us -OSBuild 24H2 -OSEdition Professional -ZTI
    }
'3'{cls
    Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    }
'4'{cls
     Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    }
 '5'{cls
     Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    
    }
'6'{cls
    Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    Start-OSDCloud
    }
'7'{cls
    Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    Start-OSDCloudGUI
    }
'8'{cls
    Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    Start-OSDCloudAzure
    }
'9'{cls
    Write-Host "Updating OSD PowerShell Module..." -ForegroundColor Cyan
    Install-Module -Name OSD -Force
    Write-Host "Importing OSD PowerShell Module..." -ForegroundColor Cyan
    Import-Module -Name OSD -Force
    Write-Host
    Write-Host "Detecting if there are custom OS images..." -ForegroundColor Cyan 
    Start-OSDCloudGUI
    }
'10'{cls
     Show-UtilitiesMenu
    }
'11'{cls
    Get-Command osdcloud*
    pause
    Show-MainMenu
    }
'12'{cls
    Show-MainMenu
   }
    }
    }
     until ($selection -eq '12'){ShowMainMenu}
    }


Function Show-UtilitiesMenu{

 [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud Startnet - Utilities Main Menu',
   [string]$Question = 'What type of action do you need to do?' 
   )
cls
Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host '                  Welcome to OSDCloud!                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White  
Write-Host '                   OSDCloud Utilities:                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '     - Microsoft Diagnostic and Recovery Tools                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Symantec Ghost                                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Notepad ++                                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Explorer ++                                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome, portable version                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Log Viewer via CMTrace                                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - User Profile Backup and Restore                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Microsoft Remote Desktop Connection (MSTSC)                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Remote Desktop for Cloud PC                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. Microsoft Diagnostics and Recovery Tools"
Write-Host " 2. Symantec Ghost"
Write-Host " 3. Microsoft Remote Desktop Connection (MSTSC)"
Write-Host " 4. Remote Desktop for Cloud PC"
Write-Host " 5. Explorer ++"
Write-Host " 6. Notepad ++"
Write-Host " 7. Google Chrome"
Write-Host " 8. User Profile Backup/Restore"
Write-Host " 9. Log Viewer - CM Trace"
Write-Host " 10. OSDCloud: Get Help"
Write-Host " 11. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    
    }
'2'{cls
    $Ghost64Path = "X:\Windows\System32\Ghost64.exe"
    Start-Process -FilePath $Ghost64Path
    }
'3'{cls
    Write-Verbose "Processing: Registering neccessary DLL Files. Please be patient" -Verbose
Write-Host

    $DLLMainDir = "X:\Windows\System32"
    $MSTSCDLL1 = "$DLLMainDir\d3d10.dll"
    $MSTSCDLL2 = "$DLLMainDir\d3d10_1.dll"
    $MSTSCDLL3 = "$DLLMainDir\d3d10_1core.dll"
    $MSTSCDLL4 = "$DLLMainDir\d3d10core.dll"
    $MSTSCDLL5 = "$DLLMainDir\d3d10level9.dll"
    $MSTSCDLL6 = "$DLLMainDir\dxgi.dll"
    $MSTSCDLL7 = "$DLLMainDir\msacm.dll"
    $MSTSCDLL8 = "$DLLMainDir\msacm32.dll"
    $MSTSCDLL9 = "$DLLMainDir\mstscax.dll"

   $arguments1 = "/s", $MSTSCDLL1
   $arguments2 = "/s", $MSTSCDLL2
   $arguments3 = "/s", $MSTSCDLL3
   $arguments4 = "/s", $MSTSCDLL4
   $arguments5 = "/s", $MSTSCDLL5
   $arguments6 = "/s", $MSTSCDLL6
   $arguments7 = "/s", $MSTSCDLL7
   $arguments8 = "/s", $MSTSCDLL8
   $arguments9 = "/s", $MSTSCDLL9
   
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments1 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments2 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments3 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments4 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments5 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments6 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments7 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments8 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments9 -Wait -NoNewWindow -PassThru
   
   $MSTSCPath = "X:\Windows\System32\"
   Start-Process -FilePath $MSTSCPath
    }
'4'{cls
    Write-Verbose "Processing: Registering neccessary DLL Files. Please be patient" -Verbose
    Write-Host

    $DLLMainDir = "X:\Windows\System32"
    $CloudPCDLL1 = "$DLLMainDir\CommonServiceLocator.dll"
    $CloudPCDLL2 = "$DLLMainDir\CommonServiceLocator.dll"
    $CloudPCDLL3 = "$DLLMainDir\Microsoft.SlimCV.VBM.dll"
    $CloudPCDLL4 = "$DLLMainDir\MsMmrDVCPlugin.dll"
    $CloudPCDLL5 = "$DLLMainDir\MsRdcWebRTCAddIn.dll"
    $CloudPCDLL6 = "$DLLMainDir\MsTeamsPluginAvd.dll"
    $CloudPCDLL7 = "$DLLMainDir\Newtonsoft.Json.dll"
    $CloudPCDLL8 = "$DLLMainDir\Prism.Unity.Wpf.dll"
    $CloudPCDLL9 = "$DLLMainDir\Prism.Wpf.dll"
    $CloudPCDLL10 = "$DLLMainDir\Prism.dll"
    $CloudPCDLL11 = "$DLLMainDir\RDClient.Logging.dll"
    $CloudPCDLL12 = "$DLLMainDir\RdClient.Common.dll"
    $CloudPCDLL13 = "$DLLMainDir\RdClient.Contracts.dll"
    $CloudPCDLL14 = "$DLLMainDir\RdClient.Diagnostics.dll"
    $CloudPCDLL15 = "$DLLMainDir\RdClient.Helpers.dll"
    $CloudPCDLL16 = "$DLLMainDir\RdClient.Instrumentation.dll"
    $CloudPCDLL17 = "$DLLMainDir\RdClient.PlatformAbstractions.dll"
    $CloudPCDLL18 = "$DLLMainDir\RdClient.RemoteFeedClient.dll"
    $CloudPCDLL19 = "$DLLMainDir\RdClient.Tracing.dll"
    $CloudPCDLL20 = "$DLLMainDir\RdClient.UpdateLib.dll"
    $CloudPCDLL21 = "$DLLMainDir\RdClient.Utilities.dll"
    $CloudPCDLL22 = "$DLLMainDir\RdClient.WPF.Core.dll"
    $CloudPCDLL23 = "$DLLMainDir\RdClient.WPF.Win10.dll"
    $CloudPCDLL24 = "$DLLMainDir\RdpWinStlHelper.dll"
    $CloudPCDLL25 = "$DLLMainDir\System.Diagnostics.DiagnosticSource.dll"
    $CloudPCDLL26 = "$DLLMainDir\System.Net.Http.dll"
    $CloudPCDLL27 = "$DLLMainDir\System.Runtime.CompilerServices.Unsafe.dll"
    $CloudPCDLL28 = "$DLLMainDir\System.ValueTuple.dll"
    $CloudPCDLL29 = "$DLLMainDir\System.Windows.Interactivity.dll"
    $CloudPCDLL30 = "$DLLMainDir\Unity.Abstractions.dll"
    $CloudPCDLL31 = "$DLLMainDir\Unity.Container.dll"
    $CloudPCDLL32 = "$DLLMainDir\concrt140.dll"
    $CloudPCDLL33 = "$DLLMainDir\msvcp140.dll"
    $CloudPCDLL34 = "$DLLMainDir\msvcp140_1.dll"
    $CloudPCDLL35 = "$DLLMainDir\msvcp140_2.dll"
    $CloudPCDLL36 = "$DLLMainDir\msvcp140_atomic_wait.dll"
    $CloudPCDLL37 = "$DLLMainDir\msvcp140_codecvt_ids.dll"
    $CloudPCDLL38 = "$DLLMainDir\rdclientax.dll"
    $CloudPCDLL39 = "$DLLMainDir\rdpnanoTransport.dll"
    $CloudPCDLL40 = "$DLLMainDir\vccorlib140.dll"
    $CloudPCDLL41 = "$DLLMainDir\vcruntime140.dll"
    $CloudPCDLL42 = "$DLLMainDir\vcruntime140_1.dll"

   $arguments1 = "/s", $CloudPCDLL1
   $arguments2 = "/s", $CloudPCDLL2
   $arguments3 = "/s", $CloudPCDLL3
   $arguments4 = "/s", $CloudPCDLL4
   $arguments5 = "/s", $CloudPCDLL5
   $arguments6 = "/s", $CloudPCDLL6
   $arguments7 = "/s", $CloudPCDLL7
   $arguments8 = "/s", $CloudPCDLL8
   $arguments9 = "/s", $CloudPCDLL9
   $arguments10 = "/s", $CloudPCDLL0
   $arguments11 = "/s", $CloudPCDLL11
   $arguments12 = "/s", $CloudPCDLL12
   $arguments13 = "/s", $CloudPCDLL13
   $arguments14 = "/s", $CloudPCDLL14
   $arguments15 = "/s", $CloudPCDLL15
   $arguments16 = "/s", $CloudPCDLL16
   $arguments17 = "/s", $CloudPCDLL17
   $arguments18 = "/s", $CloudPCDLL18
   $arguments19 = "/s", $CloudPCDLL19
   $arguments20 = "/s", $CloudPCDLL20
   $arguments21 = "/s", $CloudPCDLL21
   $arguments22 = "/s", $CloudPCDLL22
   $arguments23 = "/s", $CloudPCDLL23
   $arguments24 = "/s", $CloudPCDLL24
   $arguments25 = "/s", $CloudPCDLL25
   $arguments26 = "/s", $CloudPCDLL26
   $arguments27 = "/s", $CloudPCDLL27
   $arguments28 = "/s", $CloudPCDLL28
   $arguments29 = "/s", $CloudPCDLL29
   $arguments30 = "/s", $CloudPCDLL30
   $arguments31 = "/s", $CloudPCDLL31
   $arguments32 = "/s", $CloudPCDLL32
   $arguments33 = "/s", $CloudPCDLL33
   $arguments34 = "/s", $CloudPCDLL34
   $arguments35 = "/s", $CloudPCDLL35
   $arguments36 = "/s", $CloudPCDLL36
   $arguments37 = "/s", $CloudPCDLL37
   $arguments38 = "/s", $CloudPCDLL38
   $arguments39 = "/s", $CloudPCDLL39
   $arguments40 = "/s", $CloudPCDLL40
   $arguments41 = "/s", $CloudPCDLL41
   $arguments42 = "/s", $CloudPCDLL42

   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments1 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments2 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments3 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments4 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments5 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments6 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments7 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments8 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments9 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments10 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments11 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments12 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments13 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments14 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments15 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments16 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments17 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments18 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments19 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments20 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments21 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments22 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments23 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments24 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments25 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments26 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments27 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments28 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments29 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments30 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments31 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments32 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments33 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments34 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments35 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments36 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments37 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments38 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments39 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments40 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments41 -Wait -NoNewWindow -PassThru
   Start-Process -FilePath "regsvr32.exe" -ArgumentsList $arguments42 -Wait -NoNewWindow -PassThru

   Write-Verbose "Completed: Registering neccessary DLL Files." -Verbose
   Write-Host
    
    $CloudPCPath = "X:\Windows\System32\msrdcw.exe"
    Start-Process -FilePath $CloudPCPath
    }
 '5'{cls
    $ExplorerPPPath = "X:\Windows\System32\Explorer++.exe"
    Start-Process -FilePath $ExplorerPPPath
    }
'6'{cls
    $NotepadPPPath = "X:\Windows\System32\notepad++.exe"
    Start-Process -FilePath $NotepadPPPath
    }
'7'{cls
   $BrowserPath = "X:\Windows\System32\Chrome.exe"
   Start-Process -FilePath $BrowserPath
    }
'8'{cls
   $UPBRPath = "X:\Windows\System32\UserProfileBackupRestore.exe"
   Start-Process -FilePath $UPBRPath
    }
'9'{cls
    $LogViewerPath = "X:\Windows\System32\CMTrace.exe"
   Start-Process -FilePath $LogViewerPath
    }
'10'{cls
    Get-Command osdcloud*
    pause
    Show-MainMenu
    }
'11'{cls
    Show-MainMenu
   }
    }
    }
     until ($selection -eq '11'){ShowMainMenu}
}
Show-MainMenu
