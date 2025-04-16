Function Show-ASRockAM4{ 

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ASRock Socket AM4 motherboards"
Write-Host " 2. OSDCloud: ASUS Socket AM4 Motherboard"
Write-Host " 3. OSDCloud: Gigabyte Socket AM4 Motherboard"
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
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '4'){Show-MainMenu}
    }

Show-ASRockAM4
