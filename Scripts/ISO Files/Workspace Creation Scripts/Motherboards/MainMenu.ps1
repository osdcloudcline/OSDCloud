Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                                                   ' -BackgroundColor White                                                              
Write-Host '    This scripts creates an OSCloud Deployment ISO file for the following:                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - all AMD AM4 and AM5 Socket types and all Intel LGA1700 and 1851 Socket types motherboards   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Networking and Storage: VM drivers for ESXI, Hyper-V, VMWare Workstation and Proxmox        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Wireless networking support                                                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - FOR SYSTEM REFRESH: User Profile Backup and Restore for data backup                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome portable browser                                                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - PowerShell Modules: Version 5.x and 7.x                                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Imaging Tools: Symantec Ghost                                                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - System Rescue/Troubleshooting: Microsoft DaRT Support                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                                   ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Socket AM4 motherboards"
Write-Host " 2. OSDCloud: Socket AM5 motherboards"
Write-Host " 3. OSDCloud: Socket LGA1700 motherboards"
Write-Host " 4. OSDCloud: Socket LGA1851 motherboards"
Write-Host " 5. Return to OSD Cloud Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $AM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/MainMenu.ps1")
        Invoke-Expression $($AM4.Content)
        }
  '2' { cls
        $AM5 = Invoke-WebRequest("")
        Invoke-Expression $($AM5.Content)
        }
  '3' { cls
        $LGA1700 = Invoke-WebRequest("")
        Invoke-Expression $($LGA1700.Content)
        }
  '4' { cls
        $LGA1851 = Invoke-WebRequest("")
        Invoke-Expression $($LGA1851.Content)
        }   
  '9' { cls
        $OSDCloudMain = Invoke-WebRequest("")
        Invoke-Expression $($OSDCloudMain.Content)
        }
    }
    }
     until ($selection -eq '9'){Invoke-Expression $($OSDCloudMain.Content)}

Show-MainMenu
