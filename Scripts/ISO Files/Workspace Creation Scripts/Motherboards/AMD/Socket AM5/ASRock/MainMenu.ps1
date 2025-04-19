Function Show-ASRockAM5{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud ASRock Socket AM5 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL ASRock Socket AM5 motherboards"
Write-Host " 2. OSDCloud: ASRock PRO Socket AM5 Motherboard"
Write-Host " 3. OSDCloud: ASRock Steel Legend Socket AM5 Motherboard"
Write-Host " 4. OSDCloud: ASRock Taichi Socket AM5 Motherboard"
Write-Host " 5. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASRock = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/ALL-ASRock-AM5.ps1")
        Invoke-Expression $($ASRock.Content)
        }
  '2' { cls
        $PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/PRO.ps1")
        Invoke-Expression $($PRO.Content)
        }
  '3' { cls
        $SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/SteelLegend.ps1")
        Invoke-Expression $($SteelLegend.Content)
        }
  '4' { cls
        $Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/Taichi.ps1")
        Invoke-Expression $($Taichi.Content)
        }   
  '5' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '5'){Show-MainMenu}
    }

Show-ASRockAM5
