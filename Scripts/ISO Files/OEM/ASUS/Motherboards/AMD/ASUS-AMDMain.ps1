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
Write-Host '          - Creating ISO images for Desktop motherboards                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                 for the following manufacturers:                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: AMD AM4/AM5 socket types                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - ASUS AMD AM 4"
Write-Host " 2. OSDCloud: Create ISO - ASUS AMD AM 5"
Write-Host " 3. OSDCloud: Get Help"
Write-Host " 4. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $AM4 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM4/AM4-Main.ps1")
    Invoke-Expression $($AM4.Content)
    }
'2'{cls
    $AM5 = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/AMD/AM5/AM5-Main.ps1")
    Invoke-Expression $($AM5.Content)
    }
'3'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'4'{cls
    $OSDCloudMain = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '4'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
