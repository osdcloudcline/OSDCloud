Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - Gigabyte AMD Main Menu',
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
Write-Host '          - Creating ISO images for Gigabyte LGA1700 Desktop motherboards         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '          - Gigabyte: AMD LGA1700 AORUS motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD LGA1700 Gaming motherboards                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD LGA1700 UD - Ultra Durable motherboards                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD LGA1700 AERO motherboards                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: ALL AMD LGA1700 motherboards                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - Gigabyte AMD LGA 1700 AORUS motherboards"
Write-Host " 2. OSDCloud: Create ISO - Gigabyte AMD LGA 1700 Gaming motherboards"
Write-Host " 3. OSDCloud: Create ISO - Gigabyte AMD LGA 1700 UD - Ultra Durable motherboards"
Write-Host " 4. OSDCloud: Create ISO - Gigabyte AMD LGA 1700 AERO motherboards"
Write-Host " 5. OSDCloud: Create ISO - Gigabyte AMD LGA 1700 Eagle motherboards"
Write-Host " 6. OSDCloud: Create ISO - ALL Gigabyte AMD LGA 1700 motherboards"
Write-Host " 7. OSDCloud: Get Help"
Write-Host " 8. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $AORUS = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/Intel/LGA%201700/AORUS.ps1")
    Invoke-Expression $($AORUS.Content)
    }
'2'{cls
    $Gaming = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/Intel/LGA%201700/Gaming.ps1")
    Invoke-Expression $($Gaming.Content)
    }
'3'{cls
    $UltraDurable = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/Intel/LGA%201700/UD-Ultra%20Durable.ps1")
    Invoke-Expression $($UltraDurable.Content)
    }
'4'{cls
    $AERO = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/Intel/LGA%201700/AERO.ps1")
    Invoke-Expression $($AERO.Content)
    }  
'5'{cls
    $Eagle = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/Intel/LGA%201700/Eagle.ps11")
    Invoke-Expression $($Eagle.Content)
    } 
'6'{cls
    $ALLGigabyte = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/Intel/LGA%201700/ALL-Gigabyte-LGA1700.ps1")
    Invoke-Expression $($ALLGigabyte.Content)
    }
'7'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'8'{cls
    $OSDCloudMain = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '8'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
