#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ISO Creation ASUS LGA 1700 Main Menu',
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
Write-Host '          - Creating ISO images for Desktop motherboards                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                 for the following manufacturers:                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: Intel LGA 1700 socket types                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ASUS ALL LGA 1700 motherboards"
Write-Host " 2. OSDCloud: ASUS LGA 1700 Business motherboards"
Write-Host " 3. OSDCloud: ASUS LGA 1700 CSM motherboards"
Write-Host " 4. OSDCloud: ASUS LGA 1700 Other motherboards"
Write-Host " 5. OSDCloud: ASUS LGA 1700 PRIME motherboards"
Write-Host " 6. OSDCloud: ASUS LGA 1700 ProArt motherboards"
Write-Host " 7. OSDCloud: ASUS LGA 1700 ROG motherboards"
Write-Host " 8. OSDCloud: ASUS LGA 1700 TUF Gaming motherboards"
Write-Host " 9. OSDCloud: ASUS LGA 1700 Expedition motherboards"
Write-Host " 10. OSDCloud: ASUS LGA 1700 Workstation motherboards"
Write-Host " 11. OSDCloud: Get Help"
Write-Host " 12. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $ALLASUSLGA1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201700/ALL-ASUS-LGA1700.ps1")
    Invoke-Expression $($ALLASUSLGA1700.Content)
    }
'2'{cls
    $Business1700 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201700/Business.ps1")
    Invoke-Expression $($Business1700.Content)
    }
'3'{cls
    $CSM1700 = Invoke-WebRequest("")
    Invoke-Expression $($CSM1700.Content)
    }
'4'{cls
    $Other1700 = Invoke-WebRequest("")
    Invoke-Expression $($Other1700.Content)
    }
'5'{cls
    $PRIME1700 = Invoke-WebRequest("")
    Invoke-Expression $($PRIME1700.Content)
    }
'6'{cls
    $ProArt1700 = Invoke-WebRequest("")
    Invoke-Expression $($ProArt1700.Content)
    }
'7'{cls
    $ROG1700 = Invoke-WebRequest("")
    Invoke-Expression $($ROG1700.Content)
    }
'8'{cls
    $TUF1700 = Invoke-WebRequest("")
    Invoke-Expression $($TUF1700.Content)
    }
'9'{cls
    $Expedition1700 = Invoke-WebRequest("")
    Invoke-Expression $($Expedition1700.Content)
    }
'10'{cls
    $Workstation1700 = Invoke-WebRequest("")
    Invoke-Expression $($Workstation1700.Content)
    }
'11'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'12'{cls
    $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
    until ($selection -eq '10'){Invoke-Expression $($OSDCloudMain.Content)}
    }
   
  

    
Show-MainMenu

