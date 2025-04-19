Function Show-ASUSAM5{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud ASUS Socket AM5 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL ASUS Socket AM5 motherboards"
Write-Host " 2. OSDCloud: ASUS Business Socket AM5 Motherboard"
Write-Host " 3. OSDCloud: ASUS CSM Socket AM5 Motherboard"
Write-Host " 4. OSDCloud: ASUS Expedition Socket AM5 Motherboard"
Write-Host " 5. OSDCloud: ASUS Others Socket AM5 Motherboard"
Write-Host " 6. OSDCloud: ASUS PRIME Socket AM5 Motherboard"
Write-Host " 7. OSDCloud: ASUS ProArt Socket AM5 Motherboard"
Write-Host " 8. OSDCloud: ASUS ROG - Republic of Gamers Socket AM5 Motherboard"
Write-Host " 9. OSDCloud: ASUS TUF Gaming Socket AM5 Motherboard"
Write-Host " 10. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/ALL-ASUS-AM5.ps1")
        Invoke-Expression $($ASUS.Content)
        }
  '2' { cls
        $Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/Business.ps1")
        Invoke-Expression $($Business.Content)
        }
  '3' { cls
        $CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/CSM.ps11")
        Invoke-Expression $($CSM.Content)
        }
  '4' { cls
        $Expeditions = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/Expedition.ps1")
        Invoke-Expression $($Expeditions.Content)
        }
  '5' { cls
        $Others = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/Others.ps1")
        Invoke-Expression $($Others.Content)
        }
  '6' { cls
        $PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/PRIME.ps1")
        Invoke-Expression $($PRIME.Content)
        }
  '7' { cls
        $ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/ProArt.ps1")
        Invoke-Expression $($ProArt.Content)
        }
  '8' { cls
        $ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/ROG.ps1")
        Invoke-Expression $($ROG.Content)
        } 
  '9' { cls
        $TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASUS/TUFGaming.ps1")
        Invoke-Expression $($TUFGaming.Content)
        }
  '10' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '10'){Show-MainMenu}
  }
Show-ASUSAM5
