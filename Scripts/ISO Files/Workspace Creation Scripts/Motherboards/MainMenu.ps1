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
Write-Host " 1. OSDCloud: ASRock Socket AM4 motherboards"
Write-Host " 2. OSDCloud: ASRock Socket AM5 motherboards"
Write-Host " 3. OSDCloud: ASRock Socket LGA1700 motherboards"
Write-Host " 4. OSDCloud: ASRock Socket LGA1851 motherboards"
Write-Host " 5. OSDCloud: ASUS Socket AM4 motherboards"
Write-Host " 6. OSDCloud: ASUS Socket AM5 motherboards"
Write-Host " 7. OSDCloud: ASUS Socket LGA1700 motherboards"
Write-Host " 8. OSDCloud: ASUS Socket LGA1851 motherboards"
Write-Host " 9. OSDCloud: Gigabyte Socket AM4 motherboards"
Write-Host " 10. OSDCloud: Gigabyte Socket AM5 motherboards"
Write-Host " 11. OSDCloud: Gigabyte Socket LGA1700 motherboards"
Write-Host " 12. OSDCloud: Gigabyte Socket LGA1851 motherboards"
Write-Host " 13. OSDCloud: MSI Socket AM5 motherboards"
Write-Host " 14. OSDCloud: MSI Socket LGA1700 motherboards"
Write-Host " 15. OSDCloud: MSI Socket LGA1851 motherboards"
Write-Host " 5. OSDCloud: OEM Desktops"
Write-Host " 6. OSDCloud: OEM Laptops"
Write-Host " 7. OSDCloud: OEM Tablet PCs"
Write-Host " 8. OSDCloud: Virtualization"
Write-Host " 9. Return to OSD Cloud Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASRockAM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/MainMenu.ps1")
        Invoke-Expression $($ASRockAM4.Content)
        }
  '2' { cls
        $CPUSocketType = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/By%20CPU%20and%20Socket%20Type/MainMenu.ps1")
        Invoke-Expression $($CPUSocketType.Content)
        }
  '3' { cls
        $CustomScripts = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Custom/MainMenu.ps1")
        Invoke-Expression $($CustomScripts.Content)
        }
  '4' { cls
        $Motherboards = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/MainMenu.ps1")
        Invoke-Expression $($Motherboards.Content)
        }
  '5' { cls
        $OEMDesktops = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/OEM%20Desktops/MainMenu.ps1")
        Invoke-Expression $($OEMDesktops.Content)
        }
  '6' { cls
        $OEMLaptops = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/OEM%20Laptops/MainMenu.ps1")
        Invoke-Expression $($OEMLaptops.Content)
        }
  '7' { cls
        $OEMTablets = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/OEM%20Tablet%20PCs/MainMenu.ps1")
        Invoke-Expression $($OEMTablets.Content)
        }
  '8' { cls
        $Virtualization = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Virtualization/MainMenu.ps1")
        Invoke-Expression $($Virtualization.Content)
        }    
  '9' { cls
        $OSDCloudMain = Invoke-WebRequest("")
        Invoke-Expression $($OSDCloudMain.Content)
        }
    }
    }
     until ($selection -eq '9'){Invoke-Expression $($OSDCloudMain.Content)}

Show-MainMenu
