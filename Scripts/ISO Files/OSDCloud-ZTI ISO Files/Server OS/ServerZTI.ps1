#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Cloud - ZTI Server OS Installations Main Menu',
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
Write-Host " 1. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows Server 2025 DataCenter"
Write-Host " 2. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows Server 2025 Standard"
Write-Host " 3. OSDCloud: Create ISO - OEM Pre-Built ZTI  - Windows Server 2025 Turbine"
Write-Host " 4. OSDCloud: Get Help"
Write-Host " 5. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $Server2025DC = Invoke-WebRequest("")
    Invoke-Expression $($Server2025DC.Content)
    }
'2'{cls
    $Server2025STD = Invoke-WebRequest("")
    Invoke-Expression $($Server2025STD.Content)
    }
'3'{cls
    $Server2025TurbineAzure = Invoke-WebRequest("")
    Invoke-Expression $($Server2025TurbineAzure.Content)
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
