Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ASRock AMD Main Menu',
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
Write-Host '          - Creating ISO images for ASRock AM4 Desktop motherboards           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 Extreme motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 Fatal1ty Gaming motherboards                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 PRO motherboards                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 Phantom Gaming motherboards                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 Steel Legend motherboards                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 Taichi motherboards                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: ALL AMD AM4 motherboards                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - ASRock AMD AM 4 Extreme motherboards"
Write-Host " 2. OSDCloud: Create ISO - ASRock AMD AM 4 Fatal1ty Gaming motherboards"
Write-Host " 3. OSDCloud: Create ISO - ASRock AMD AM 4 PRO motherboards"
Write-Host " 4. OSDCloud: Create ISO - ASRock AMD AM 4 Phantom Gaming motherboards"
Write-Host " 5. OSDCloud: Create ISO - ASRock AMD AM 4 Steel Legend motherboards"
Write-Host " 6. OSDCloud: Create ISO - ASRock AMD AM 4 Taichi motherboards"
Write-Host " 7. OSDCloud: Create ISO - ALL ASRock AMD AM 4 motherboards"
Write-Host " 8. OSDCloud: Get Help"
Write-Host " 9. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $Extreme = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/Extreme.ps1")
    Invoke-Expression $($Extreme.Content)
    }
'2'{cls
    $Fatal1tyGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/Fatal1tyGaming.ps1")
    Invoke-Expression $($Fatal1tyGaming.Content)
    }
'3'{cls
    $PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/PRO.ps1")
    Invoke-Expression $($PRO.Content)
    }
'4'{cls
    $PhantomGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/PhantomGaming.ps1")
    Invoke-Expression $($PhantomGaming.Content)
    }
'5'{cls
    $SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/SteelLegend.ps1")
    Invoke-Expression $($SteelLegend.Content)
    }
'6'{cls
    $Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/Taichi.ps1")
    Invoke-Expression $($Taichi.Content)
    }
'7'{cls
    $ALLASRock = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM4/ALL-ASRock-AM4.ps1")
    Invoke-Expression $($ALLASRock.Content)
    }
'8'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'9'{cls
    $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '9'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
