Function Show-MainMenu{ 
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud ISO Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Socket AM4 motherboards"
Write-Host " 2. OSDCloud: Socket AM5 motherboards"
Write-Host " 3. OSDCloud: Socket LGA1700 motherboards"
Write-Host " 4. OSDCloud: Socket LGA1851 motherboards"
Write-Host " 5. Return to OSD Cloud Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $AM4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/MainMenu.ps1")
        Invoke-Expression $($AM4.Content)
        }
  '2' { cls
        $AM5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/MainMenu.ps1")
        Invoke-Expression $($AM5.Content)
        }
  '3' { cls
        $LGA1700 = Invoke-WebRequest("")
        Invoke-Expression $($LGA1700.Content)
        }
  '4' { cls
        $LGA1851 = Invoke-WebRequest("")
        Invoke-Expression $($LGA1851.Content)
        }   
  '5' { cls
        $OSDCloudMain = Invoke-WebRequest("")
        Invoke-Expression $($OSDCloudMain.Content)
        }
    }
    }
     until ($selection -eq '5'){Invoke-Expression $($OSDCloudMain.Content)}

Show-MainMenu
