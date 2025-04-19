Function Show-GigabyteAM4{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Gigabyte Socket AM4 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL Gigabyte Socket AM4 motherboards"
Write-Host " 2. OSDCloud: Gigabyte AERO Socket AM4 Motherboard"
Write-Host " 3. OSDCloud: Gigabyte AORUS Socket AM4 Motherboard"
Write-Host " 4. OSDCloud: Gigabyte Gaming Socket AM4 Motherboard"
Write-Host " 5. OSDCloud: Gigabyte UD - Ultra Durable Socket AM4 Motherboard"
Write-Host " 6. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Gigabyte = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/Gigabyte/ALL-Gigabyte-AM4.ps1")
        Invoke-Expression $($Gigabyte.Content)
        }
  '2' { cls
        $AERO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/Gigabyte/AERO.ps1")
        Invoke-Expression $($AERO.Content)
        }
  '3' { cls
        $AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/Gigabyte/AORUS.ps1")
        Invoke-Expression $($AORUS.Content)
        }
  '4' { cls
        $Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/Gigabyte/Gaming.ps1")
        Invoke-Expression $($Gaming.Content)
        }
  '5' { cls
        $UD = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/Gigabyte/UD-UltraDurable.ps1")
        Invoke-Expression $($UD.Content)
        }
  '6' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '6'){Show-MainMenu}
  }

Show-GigabyteAM4
