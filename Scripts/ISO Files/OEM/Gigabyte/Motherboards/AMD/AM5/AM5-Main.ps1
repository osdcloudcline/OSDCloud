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
Write-Host '          - Creating ISO images for Gigabyte AM5 Desktop motherboards         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '          - Gigabyte: AMD AM5 AORUS motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD AM5 AI TOP motherboards                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD AM5 Gaming motherboards                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD AM5 UD - Ultra Durable motherboards                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD AM5 AERO motherboards                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: AMD AM5 Eagle motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Gigabyte: ALL AMD AM5 motherboards                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - Gigabyte AMD AM 5 AORUS motherboards"
Write-Host " 2. OSDCloud: Create ISO - Gigabyte AMD AM 5 AI TOP motherboards"
Write-Host " 3. OSDCloud: Create ISO - Gigabyte AMD AM 5 Gaming motherboards"
Write-Host " 4. OSDCloud: Create ISO - Gigabyte AMD AM 5 UD - Ultra Durable motherboards"
Write-Host " 5. OSDCloud: Create ISO - Gigabyte AMD AM 5 AERO motherboards"
Write-Host " 6. OSDCloud: Create ISO - Gigabyte AMD AM 5 Eagle motherboards"
Write-Host " 7. OSDCloud: Create ISO - ALL Gigabyte AMD AM 5 motherboards"
Write-Host " 8. OSDCloud: Get Help"
Write-Host " 9. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $AORUS = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/AORUS.ps1")
    Invoke-Expression $($AORUS.Content)
    }
'2'{cls
    $AITop = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/AI-TOP.ps1")
    Invoke-Expression $($AITop.Content)
    }
'3'{cls
    $Gaming = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/Gaming.ps1")
    Invoke-Expression $($Gaming.Content)
    }
'4'{cls
    $UD = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/UD-Ultra%20Durable.ps1")
    Invoke-Expression $($UD.Content)
    }  
'5'{cls
    $AERO = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/AERO.ps1")
    Invoke-Expression $($AERO.Content)
    }  
'6'{cls
    $Eagle = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/Eagle.ps1")
    Invoke-Expression $($Eagle.Content)
    }  
'7'{cls
    $ALLGigabyte = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/Gigabyte/Motherboards/AMD/AM5/ALL-Gigabyte-AM5.ps1")
    Invoke-Expression $($ALLGigabyte.Content)
    }
'8'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'9'{cls
    $OSDCloudMain = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '9'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
