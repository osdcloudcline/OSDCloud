
Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - MSI Intel Main Menu',
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
Write-Host '          - Creating ISO images for MSI LGA 1700 Desktop motherboards         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '          - MSI: Intel LGA 1700 MAG motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - MSI: Intel LGA 1700 MEG motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - MSI: Intel LGA 1700 Gaming motherboards                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - MSI: Intel LGA 1700 MPG motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - MSI: Intel LGA 1700 PRO motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - MSI: ALL Intel LGA 1700 motherboards                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - MSI Intel LGA 1700 MAG motherboards"
Write-Host " 2. OSDCloud: Create ISO - MSI Intel LGA 1700 MEG motherboards"
Write-Host " 3. OSDCloud: Create ISO - MSI Intel LGA 1700 Gaming motherboards"
Write-Host " 4. OSDCloud: Create ISO - MSI Intel LGA 1700 MPG motherboards"
Write-Host " 5. OSDCloud: Create ISO - MSI Intel LGA 1700 PRO motherboards"
Write-Host " 6. OSDCloud: Create ISO - ALL MSI Intel LGA 1700 motherboards"
Write-Host " 7. OSDCloud: Get Help"
Write-Host " 8. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $MAG = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/Intel/LGA%201700/MAG.ps1")
    Invoke-Expression $($MAG.Content)
    }
'2'{cls
    $MEG = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/Intel/LGA%201700/MEG.ps1")
    Invoke-Expression $($MEG.Content)
    }
'3'{cls
    $Gaming = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/Intel/LGA%201700/Gaming.ps1")
    Invoke-Expression $($Gaming.Content)
    }
'4'{cls
    $MPG = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/Intel/LGA%201700/MPG.ps1")
    Invoke-Expression $($MPG.Content)
    }  
'5'{cls
    $PRO = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/Intel/LGA%201700/PRO.ps1")
    Invoke-Expression $($PRO.Content)
    }

'6'{cls
    $ALLMSI = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OEM/MSI/Motherboards/Intel/LGA%201700/ALL-MSI-LGA1700.ps1")
    Invoke-Expression $($ALLMSI.Content)
    }
'7'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloMPG\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloMPG\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'8'{cls
    $OSDCloMPGMain = Invoke-WebRequest("https://raw.githubusercontent.com/osdcloMPGcline/OSDCloMPG/refs/heads/main/Scripts/NEW-OSDCloMPGMain.ps1")
    Invoke-Expression $($OSDCloMPGMain.Content)
   }
    }
    }
     until ($selection -eq '8'){Invoke-Expression $($OSDCloMPGMain.Content)}
    }

    
Show-MainMenu
