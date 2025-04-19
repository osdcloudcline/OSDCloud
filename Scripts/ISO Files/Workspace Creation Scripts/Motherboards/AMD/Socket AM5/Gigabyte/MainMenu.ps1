Function Show-GigabyteAM5{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Gigabyte Socket AM5 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL Gigabyte Socket AM5 motherboards"
Write-Host " 2. OSDCloud: Gigabyte AERO Socket AM5 Motherboard"
Write-Host " 3. OSDCloud: Gigabyte AI TOP Socket AM5 Motherboard"
Write-Host " 4. OSDCloud: Gigabyte AORUS Socket AM5 Motherboard"
Write-Host " 5. OSDCloud: Gigabyte Eagle Socket AM5 Motherboard"
Write-Host " 6. OSDCloud: Gigabyte Gaming Socket AM5 Motherboard"
Write-Host " 7. OSDCloud: Gigabyte UD - Ultra Durable Socket AM5 Motherboard"
Write-Host " 8. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Gigabyte = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/Gigabyte/ALL-Gigabyte-AM5.ps1")
        Invoke-Expression $($Gigabyte.Content)
        }
  '2' { cls
        $AERO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/Gigabyte/AERO.ps1")
        Invoke-Expression $($AERO.Content)
        }
  '3' { cls
        $AITOP = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/Gigabyte/AI-TOP.ps1")
        Invoke-Expression $($AITOP.Content)
        }
  '4' { cls
        $AORUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/Gigabyte/AORUS.ps1")
        Invoke-Expression $($AORUS.Content)
        }
  '5' { cls
        $Eagle = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/Gigabyte/Eagle.ps1")
        Invoke-Expression $($Eagle.Content)
        }
  '6' { cls
        $Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/Gigabyte/Gaming.ps1")
        Invoke-Expression $($Gaming.Content)
        }
  '7' { cls
        $UD = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/Gigabyte/UD-UltraDurable.ps1")
        Invoke-Expression $($UD.Content)
        }
  '8' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '8'){Show-MainMenu}
  }

Show-GigabyteAM5
