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
Write-Host '          - Creating ISO images for Desktop mPROboards                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                 for the following manufacturers:                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: Intel LGA 1700 socket types                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ASRock ALL LGA 1700 mPROboards"
Write-Host " 2. OSDCloud: ASRock LGA 1700 AQUA mPROboards"
Write-Host " 3. OSDCloud: ASRock LGA 1700 Extreme mPROboards"
Write-Host " 4. OSDCloud: ASRock LGA 1700 PRO mPROboards"
Write-Host " 5. OSDCloud: ASRock LGA 1700 Phantom Gaming mPROboards"
Write-Host " 6. OSDCloud: ASRock LGA 1700 Steel Legend mPROboards"
Write-Host " 7. OSDCloud: ASRock LGA 1700 Taichi mPROboards"
Write-Host " 8. OSDCloud: Get Help"
Write-Host " 9. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $ALLASRockLGA1700 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1700/ALL-ASRock-LGA1700.ps1")
    Invoke-Expression $($ALLASRockLGA1700.Content)
    }
'2'{cls
    $AQUA1700 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1700/AQUA.ps1")
    Invoke-Expression $($AQUA1700.Content)
    }
'3'{cls
    $Extreme1700 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1700/Extreme.ps1")
    Invoke-Expression $($Extreme1700.Content)
    }
'4'{cls
    $PRO1700 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1700/PRO.ps1")
    Invoke-Expression $($PRO1700.Content)
    }
'5'{cls
    $PhantomGaming1700 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1700/PhantomGaming.ps1")
    Invoke-Expression $($PhantomGaming1700.Content)
    }
'6'{cls
    $SteelLegend1700 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1700/SteelLegend.ps1")
    Invoke-Expression $($SteelLegend1700.Content)
    }
'7'{cls
    $Taichi1700 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1700/Taichi.ps1")
    Invoke-Expression $($Taichi1700.Content)
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
