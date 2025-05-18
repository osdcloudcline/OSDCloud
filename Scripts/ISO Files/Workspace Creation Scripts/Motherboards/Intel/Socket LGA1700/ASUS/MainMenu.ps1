Function Show-ASUSLGA1700{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud ASUS Socket LGA1700 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL ASUS Socket LGA1700 motherboards"
Write-Host " 2. OSDCloud: ASUS Business Socket LGA1700 Motherboard"
Write-Host " 3. OSDCloud: ASUS CSM Socket LGA1700 Motherboard"
Write-Host " 4. OSDCloud: ASUS Expedition Socket LGA1700 Motherboard"
Write-Host " 5. OSDCloud: ASUS Other Socket LGA1700 Motherboard"
Write-Host " 6. OSDCloud: ASUS PRIME Socket LGA1700 Motherboard"
Write-Host " 7. OSDCloud: ASUS ProArt Socket LGA1700 Motherboard"
Write-Host " 8. OSDCloud: ASUS ROG Socket LGA1700 Motherboard"
Write-Host " 9. OSDCloud: ASUS TUF Gaming Socket LGA1700 Motherboard"
Write-Host " 10. OSDCloud: ASUS Workstation Socket LGA1700 Motherboard"
Write-Host " 11. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/ALL-ASUS-LGA1700.ps1")
        Invoke-Expression $($ASUS.Content)
        }
  '2' { cls
        $Business = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/Business.ps1")
        Invoke-Expression $($Business.Content)
        }
  '3' { cls
        $CSM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/CSM.ps1")
        Invoke-Expression $($CSM.Content)
        }
  '4' { cls
        $Expedition = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/Expedition.ps1")
        Invoke-Expression $($Expedition.Content)
        }
  '5' { cls
        $Other = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/Other.ps1")
        Invoke-Expression $($Other.Content)
        }
  '6' { cls
        $PRIME = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/PRIME.ps1")
        Invoke-Expression $($PRIME.Content)
        }
  '7' { cls
        $ProArt = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/ProArt.ps1")
        Invoke-Expression $($ProArt.Content)
        }
  '8' { cls
        $ROG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/ROG.ps1")
        Invoke-Expression $($ROG.Content)
        }
  '9' { cls
        $TUFGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/TUFGaming.ps1")
        Invoke-Expression $($TUFGaming.Content)
        }
  '10' { cls
        $Workstation = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASUS/Workstation.ps1")
        Invoke-Expression $($Workstation.Content)
        }   
  '11' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '11'){Show-MainMenu}
    }

Show-ASUSLGA1700
