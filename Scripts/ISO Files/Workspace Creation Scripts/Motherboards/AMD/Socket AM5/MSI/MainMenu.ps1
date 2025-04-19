Function Show-MSIAM5{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud MSI Socket AM5 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ALL MSI Socket AM5 motherboards"
Write-Host " 2. OSDCloud: MSI Gaming Socket AM5 Motherboard"
Write-Host " 3. OSDCloud: MSI MAG Socket AM5 Motherboard"
Write-Host " 4. OSDCloud: MSI MEG Socket AM5 Motherboard"
Write-Host " 5. OSDCloud: MSI MPG Socket AM5 Motherboard"
Write-Host " 6. OSDCloud: MSI PRO Socket AM5 Motherboard"
Write-Host " 7. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $MSI = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/MSI/ALL-MSI-AM5.ps1")
        Invoke-Expression $($MSI.Content)
        }
  '2' { cls
        $Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/MSI/Gaming.ps1")
        Invoke-Expression $($Gaming.Content)
        }
  '3' { cls
        $MAG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/MSI/MAG.ps1")
        Invoke-Expression $($MAG.Content)
        }
  '4' { cls
        $MEG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/MSI/MEG.ps1")
        Invoke-Expression $($MEG.Content)
        }
  '5' { cls
        $MPG = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/MSI/MPG.ps1")
        Invoke-Expression $($MPG.Content)
        }
  '6' { cls
        $PRO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/MSI/PRO.ps1")
        Invoke-Expression $($PRO.Content)
        }
  '7' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '7'){Show-MainMenu}
  }

Show-MSIAM5
