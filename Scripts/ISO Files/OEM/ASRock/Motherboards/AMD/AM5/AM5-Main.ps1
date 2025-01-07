
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
Write-Host '          - Creating ISO images for ASRock AM5 Desktop motherboards           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 PRO motherboards                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 Steel Legend motherboards                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: AMD AM4 Taichi motherboards                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: ALL AMD AM5 motherboards                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - ASRock AMD AM 5 PRO motherboards"
Write-Host " 2. OSDCloud: Create ISO - ASRock AMD AM 5 Steel Legend motherboards"
Write-Host " 3. OSDCloud: Create ISO - ASRock AMD AM 5 Taichi motherboards"
Write-Host " 4. OSDCloud: Create ISO - ALL ASRock AMD AM 5 motherboards"
Write-Host " 5. OSDCloud: Get Help"
Write-Host " 6. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

'1'{cls
    $PRO = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/PRO.ps1")
    Invoke-Expression $($PRO.Content)
    }
'2'{cls
    $SteelLegend = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/SteelLegend.ps1")
    Invoke-Expression $($SteelLegend.Content)
    }
'3'{cls
    $Taichi = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/Taichi.ps1")
    Invoke-Expression $($Taichi.Content)
    }
'4'{cls
    $ALLASRock = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/AM5/ALL-ASRock-AM5.ps1")
    Invoke-Expression $($ALLASRock.Content)
    }
'5'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'6'{cls
    $OSDCloudMain = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '9'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
