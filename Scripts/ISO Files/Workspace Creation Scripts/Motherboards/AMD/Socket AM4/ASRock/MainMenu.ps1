Function Show-ASRockAM4{ 

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL ASRock Socket AM4 motherboards"
Write-Host " 2. OSDCloud: ASRock Extreme Socket AM4 Motherboard"
Write-Host " 3. OSDCloud: ASRock Fatal1ty Gaming Socket AM4 Motherboard"
Write-Host " 4. OSDCloud: ASRock PRO Socket AM4 Motherboard"
Write-Host " 5. OSDCloud: ASRock Phantom Gaming Socket AM4 Motherboard"
Write-Host " 6. OSDCloud: ASRock Steel Legend Socket AM4 Motherboard"
Write-Host " 7. OSDCloud: ASRock Taichi Socket AM4 Motherboard"
Write-Host " 8. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASRock = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/ALL-ASRock-AM4.ps1")
        Invoke-Expression $($ASRock.Content)
        }
  '2' { cls
        $Extreme = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/Extreme.ps1")
        Invoke-Expression $($Extreme.Content)
        }
  '3' { cls
        $Fatal1tyGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/Fatal1tyGaming.ps1")
        Invoke-Expression $($Fatal1tyGaming.Content)
        }
  '4' { cls
        $PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/PRO.ps1")
        Invoke-Expression $($PRO.Content)
        }
  '5' { cls
        $PhantomGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/PhantomGaming.ps1")
        Invoke-Expression $($PhantomGaming.Content)
        }
  '6' { cls
        $SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/SteelLegend.ps1")
        Invoke-Expression $($SteelLegend.Content)
        }
  '7' { cls
        $Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/Taichi.ps1")
        Invoke-Expression $($Taichi.Content)
        }   
  '8' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '8'){Show-MainMenu}
    }

Show-ASRockAM4
