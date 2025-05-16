Function Show-ASRockLGA1851{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud ASRock Socket LGA1851 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL ASRock Socket LGA1851 motherboards"
Write-Host " 2. OSDCloud: ASRock AQUA Socket LGA1851 Motherboard"
Write-Host " 3. OSDCloud: ASRock Live Mixer Socket LGA1851 Motherboard"
Write-Host " 4. OSDCloud: ASRock PRO Socket LGA1851 Motherboard"
Write-Host " 5. OSDCloud: ASRock Steel Legend Socket LGA1851 Motherboard"
Write-Host " 6. OSDCloud: ASRock Taichi Socket LGA1851 Motherboard"
Write-Host " 7. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASRock = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASRock/ALL-ASRock-LGA1851.ps1")
        Invoke-Expression $($ASRock.Content)
        }
  '2' { cls
        $AQUA = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASRock/AQUA.ps1")
        Invoke-Expression $($AQUA.Content)
        }
  '3' { cls
        $LiveMixer = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASRock/LiveMixer.ps1")
        Invoke-Expression $($LiveMixer.Content)
        }
  '4' { cls
        $PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASRock/PRO.ps1")
        Invoke-Expression $($PRO.Content)
        }
  '5' { cls
        $SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASRock/SteelLegend.ps1")
        Invoke-Expression $($SteelLegend.Content)
        }
  '6' { cls
        $Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASRock/Taichi.ps1")
        Invoke-Expression $($Taichi.Content)
        }   
  '7' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '7'){Show-MainMenu}
    }

Show-ASRockLGA1851
