#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ZTI Installations Main Menu',
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
Write-Host '          - Creating ISO images for ZTI Installations                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - Customized ZTI Installations"
Write-Host " 2. OSDCloud: Create ISO - Untouched ZTI Installations"
Write-Host " 3. OSDCloud: Create ISO - OEM Pre-Built ZTI Installations"
Write-Host " 4. OSDCloud: Get Help"
Write-Host " 5. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $ZTICustomMain = Invoke-WebRequest("")
    Invoke-Expression $($ZTICustomMain.Content)
    }
'2'{cls
    $ZTIUntouchedMain = Invoke-WebRequest("")
    Invoke-Expression $($ZTIUntouchedMain.Content)
    }
'3'{cls
    $ZTIOEMMain = Invoke-WebRequest("")
    Invoke-Expression $($ZTIOEMMain.Content)
    }
'4'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'5'{cls
    $OSDCloudMain = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '5'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
