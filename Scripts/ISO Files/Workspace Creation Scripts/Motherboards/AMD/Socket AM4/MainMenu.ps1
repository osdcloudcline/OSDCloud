Function Show-SocketAM4{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Socket AM4 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ASRock Socket AM4 motherboards"
Write-Host " 2. OSDCloud: ASUS Socket AM4 Motherboard"
Write-Host " 3. OSDCloud: Gigabyte Socket AM4 Motherboard"
Write-Host " 4. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASRock = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/MainMenu.ps1")
        Invoke-Expression $($ASRock.Content)
        }
  '2' { cls
        $ASUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASUS/MainMenu.ps1")
        Invoke-Expression $($ASUS.Content)
        }
  '3' { cls
        $Gigabyte = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/Gigabyte/MainMenu.ps1")
        Invoke-Expression $($Gigabyte.Content)
        }   
  '4' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '4'){Show-MainMenu}
    }

Show-SocketAM4
