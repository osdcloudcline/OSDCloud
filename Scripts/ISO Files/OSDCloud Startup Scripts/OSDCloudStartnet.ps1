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
   
    }
'3'{cls
    
    }
'4'{cls
     
    }
 '5'{cls
    
    
    }
'6'{cls
    
    }
'7'{cls
   
    }
'8'{cls
   
    }
'9'{cls
    
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