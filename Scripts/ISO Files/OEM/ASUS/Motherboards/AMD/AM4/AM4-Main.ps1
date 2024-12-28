#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ASUS AMD Main Menu',
   [string]$Question = 'What type of action do you need to do?' 
   )
cls

$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host '            This OSDCloud section allows the user to perform:                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Creating ISO images for ASUS AM4 Desktop motherboards             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 Business motherboards                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 CSM motherboards                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 Others motherboards                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 PRIME motherboards                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 ProArt motherboards                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 Republic of Gamers ROG motherboards                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 TUF Gaming motherboards                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4 Workstation motherboards                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: ALL AMD AM4 motherboards                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - ASUS AMD AM 4 Business motherboards"
Write-Host " 2. OSDCloud: Create ISO - ASUS AMD AM 4 CSM motherboards"
Write-Host " 3. OSDCloud: Create ISO - ASUS AMD AM 4 Others motherboards"
Write-Host " 4. OSDCloud: Create ISO - ASUS AMD AM 4 PRIME motherboards"
Write-Host " 5. OSDCloud: Create ISO - ASUS AMD AM 4 ProArt motherboards"
Write-Host " 6. OSDCloud: Create ISO - ASUS AMD AM 4 ROG - Republic of Gamers motherboards"
Write-Host " 7. OSDCloud: Create ISO - ASUS AMD AM 4 TUF Gaming motherboards"
Write-Host " 8. OSDCloud: Create ISO - ASUS AMD AM 4 Workstation motherboards"
Write-Host " 9. OSDCloud: Create ISO - ALL ASUS AMD AM 4 motherboards"
Write-Host " 10. OSDCloud: Get Help"
Write-Host " 11. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/Business.ps1")
    Invoke-Expression $($Business.Content)
    }
'2'{cls
    $CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/CSM.ps1")
    Invoke-Expression $($CSM.Content)
    }
'3'{cls
    $Others = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/Others.ps1")
    Invoke-Expression $($Others.Content)
    }
'4'{cls
    $PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/PRIME.ps1")
    Invoke-Expression $($PRIME.Content)
    }
'5'{cls
    $ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/ProArt.ps1")
    Invoke-Expression $($ProArt.Content)
    }
'6'{cls
    $ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/ROG%20-%20Republic%20of%20Gamers.ps1")
    Invoke-Expression $($ROG.Content)
    }
'7'{cls
    $TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/TUFGaming.ps1")
    Invoke-Expression $($TUFGaming.Content)
    }
'8'{cls
    $Workstation = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/AM5-Main.ps1")
    Invoke-Expression $($Workstation.Content)
    }
'9'{cls
    $ALLASUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/AM5-Main.ps1")
    Invoke-Expression $($ALLASUS.Content)
    }
'10'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'11'{cls
    $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '11'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
