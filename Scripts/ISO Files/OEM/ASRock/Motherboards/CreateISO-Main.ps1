#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ASUS ISO Creation Main Menu',
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
Write-Host '     - Creating ISO images for Desktop motherboards                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '              for the following manufacturers:                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock: Intel LGA 1700/LGA 1851 and AMD AM5/AM4 socket types           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - ASRock Intel Main Menu"
Write-Host " 2. OSDCloud: Create ISO - ASRock AMD Main Menu"
Write-Host " 3. OSDCloud: Get Help"
Write-Host " 4. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $IntelMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/Intel/ASRock-IntelMain.ps1")
    Invoke-Expression $($IntelMain.Content)
    }
'2'{cls
    $AMDMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASRock/Motherboards/AMD/ASRock-AMDMain.ps1")
    Invoke-Expression $($AMDMain.Content)
    }
'3'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'4'{cls
    $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
    until ($selection -eq '4'){Invoke-Expression $($OSDCloudMain.Content)}
    }
     
  

    
Show-MainMenu

