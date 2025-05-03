Function Show-ASRockLGA1700{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud ASRock Socket LGA1700 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL ASRock Socket LGA1700 motherboards"
Write-Host " 2. OSDCloud: ASRock Extreme Socket LGA1700 Motherboard"
Write-Host " 3. OSDCloud: ASRock AQUA Socket LGA1700 Motherboard"
Write-Host " 4. OSDCloud: ASRock Live Mixer Socket LGA1700 Motherboard"
Write-Host " 5. OSDCloud: ASRock PRO Socket LGA1700 Motherboard"
Write-Host " 6. OSDCloud: ASRock Phantom Gaming Socket LGA1700 Motherboard"
Write-Host " 7. OSDCloud: ASRock Steel Legend Socket LGA1700 Motherboard"
Write-Host " 8. OSDCloud: ASRock Taichi Socket LGA1700 Motherboard"
Write-Host " 9. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASRock = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/ALL-ASRock-LGA1700.ps1")
        Invoke-Expression $($ASRock.Content)
        }
  '2' { cls
        $Extreme = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/Extreme.ps1")
        Invoke-Expression $($Extreme.Content)
        }
  '3' { cls
        $AQUA = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/AQUA.ps1")
        Invoke-Expression $($AQUA.Content)
        }
  '4' { cls
        $LiveMixer = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/LiveMixer.ps1")
        Invoke-Expression $($LiveMixer.Content)
        }
  '5' { cls
        $PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/PRO.ps1")
        Invoke-Expression $($PRO.Content)
        }
  '6' { cls
        $PhantomGaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/PhantomGaming.ps1")
        Invoke-Expression $($PhantomGaming.Content)
        }
  '7' { cls
        $SteelLegend = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/SteelLegend.ps1")
        Invoke-Expression $($SteelLegend.Content)
        }
  '8' { cls
        $Taichi = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1700/ASRock/Taichi.ps1")
        Invoke-Expression $($Taichi.Content)
        }   
  '9' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '9'){Show-MainMenu}
    }

Show-ASRockLGA1700
