#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ZTI OEM Pre-Built Installations Main Menu',
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
Write-Host " 1. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows 11 Enterprise 24H2 - ALL AMD"
Write-Host " 2. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows 11 Enterprise 24H2 - ALL Intel"
Write-Host " 3. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows 11 Pro 24H2 - ALL AMD"
Write-Host " 1. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows 11 Pro 24H2 - ALL Intel"
Write-Host " 2. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows 11 Pro Workstation 24H2 - ALL AMD"
Write-Host " 3. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows 11 Pro Workstation 24H2 - ALL Intel"
Write-Host " 4. OSDCloud: Get Help"
Write-Host " 5. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $Win1124H2ENTAMD = Invoke-WebRequest("")
    Invoke-Expression $($Win1124H2ENTAMD.Content)
    }
'2'{cls
    $Win1124H2ENTIntel = Invoke-WebRequest("")
    Invoke-Expression $($Win1124H2ENTIntel.Content)
    }
'3'{cls
    $Win1124H2ProAMD = Invoke-WebRequest("")
    Invoke-Expression $($Win1124H2ProAMD.Content)
    }
'4'{cls
    $Win1124H2ProIntel= Invoke-WebRequest("")
    Invoke-Expression $($Win1124H2ProIntel.Content)
    }
'5'{cls
    $Win1124H2ProWSAMD = Invoke-WebRequest("")
    Invoke-Expression $($Win1124H2ProWSAMD.Content)
    }
'6'{cls
    $Win1124H2ProWSIntel = Invoke-WebRequest("")
    Invoke-Expression $($Win1124H2ProWSIntel.Content)
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
