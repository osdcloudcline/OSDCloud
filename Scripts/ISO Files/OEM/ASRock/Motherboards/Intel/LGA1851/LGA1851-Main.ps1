#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ISO Creation ASUS LGA 1851 Main Menu',
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
Write-Host '          - Creating ISO images for Desktop mPROboards                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                 for the following manufacturers:                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASRock: Intel LGA 1851 socket types                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ASRock ALL LGA 1851 mPROboards"
Write-Host " 2. OSDCloud: ASRock LGA 1851 AQUA mPROboards"
Write-Host " 3. OSDCloud: ASRock LGA 1851 PRO mPROboards"
Write-Host " 4. OSDCloud: ASRock LGA 1851 Steel Legend mPROboards"
Write-Host " 5. OSDCloud: ASRock LGA 1851 Taichi mPROboards"
Write-Host " 6. OSDCloud: Get Help"
Write-Host " 7. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $ALLASRockLGA1851 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/ALL-ASRock-LGA1851.ps1")
    Invoke-Expression $($ALLASRockLGA1851.Content)
    }
'2'{cls
    $AQUA1851 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/AQUA.ps1")
    Invoke-Expression $($AQUA1851.Content)
    }
'3'{cls
    $PRO1851 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/PRO.ps1")
    Invoke-Expression $($PRO1851.Content)
    }
'4'{cls
    $SteelLegend1851 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/SteelLegend.ps1")
    Invoke-Expression $($SteelLegend1851.Content)
    }
'5'{cls
    $Taichi1851 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/LGA1851/Taichi.ps1")
    Invoke-Expression $($Taichi1851.Content)
    }
'6'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'7'{cls
    $OSDCloudMain = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
    until ($selection -eq '7'){Invoke-Expression $($OSDCloudMain.Content)}
    }
   
      
Show-MainMenu
