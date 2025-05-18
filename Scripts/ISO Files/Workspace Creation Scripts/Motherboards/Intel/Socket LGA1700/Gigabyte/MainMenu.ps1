Function Show-GigabyteLGA1700{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Gigabyte Socket LGA1700 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL Gigabyte Socket LGA1700 motherboards"
Write-Host " 2. OSDCloud: Gigabyte AERO Socket LGA1700 Motherboard"
Write-Host " 3. OSDCloud: Gigabyte AORUS Socket LGA1700 Motherboard"
Write-Host " 4. OSDCloud: Gigabyte Eagle Socket LGA1700 Motherboard"
Write-Host " 5. OSDCloud: Gigabyte Gaming Socket LGA1700 Motherboard"
Write-Host " 6. OSDCloud: Gigabyte UD - Ultra Durable Socket LGA1700 Motherboard"
Write-Host " 7. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Gigabyte = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/Gigabyte/ALL-Gigabyte-LGA1700.ps1")
        Invoke-Expression $($Gigabyte.Content)
        }
  '2' { cls
        $AERO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/Gigabyte/AERO.ps1")
        Invoke-Expression $($AERO.Content)
        }
  '3' { cls
        $AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/Gigabyte/AORUS.ps1")
        Invoke-Expression $($AORUS.Content)
        }
  '4' { cls
        $Eagle = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/Gigabyte/Eagle.ps1")
        Invoke-Expression $($Eagle.Content)
        }
  '5' { cls
        $Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/Gigabyte/Gaming.ps1")
        Invoke-Expression $($Gaming.Content)
        }
  '6' { cls
        $UD = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/Gigabyte/UD-UltraDurable.ps1")
        Invoke-Expression $($UD.Content)
        }
  '7' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '7'){Show-MainMenu}
  }

Show-GigabyteLGA1700
