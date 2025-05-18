Function Show-SocketLGA1851{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Socket LGA1851 ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: ASRock Socket LGA1851 motherboards"
Write-Host " 2. OSDCloud: ASUS Socket LGA1851 Motherboard"
Write-Host " 3. OSDCloud: Gigabyte Socket LGA1851 Motherboard"
Write-Host " 4. OSDCloud: MSI Socket LGA1851 Motherboard"
Write-Host " 5. Return to OSD Cloud Motherboard Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ASRock = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASRock/MainMenu.ps1")
        Invoke-Expression $($ASRock.Content)
        }
  '2' { cls
        $ASUS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/Intel/Socket%20LGA1851/ASUS/MainMenu.ps1")
        Invoke-Expression $($ASUS.Content)
        }
  '3' { cls
        $Gigabyte = Invoke-WebRequest("")
        Invoke-Expression $($Gigabyte.Content)
        } 
  '4' { cls
        $MSI = Invoke-WebRequest("")
        Invoke-Expression $($MSI.Content)
        } 
  '5' { cls
        Show-MainMenu
        }
    }
    }
     until ($selection -eq '5'){Show-MainMenu}
    }

Show-SocketLGA1851
