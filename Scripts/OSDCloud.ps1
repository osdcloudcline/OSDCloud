##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Initial Setup - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create Templates - Dell Systems and Custom Built Systems"
Write-Host " 2. OSDCloud: Create Templates - Other Systems"
Write-Host " 3. OSDCloud: Add Drivers"
Write-Host " 4. OSDCloud: Change Wallpaper, Add VBS Support and User Profile Backup"
Write-Host " 5. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Templates = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/TemplatesMain.ps1")
        Invoke-Expression $($Templates.Content)
        }
 '2' { cls
        $OtherTemplates = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OtherTemplatesMain.ps1")
        Invoke-Expression $($OtherTemplates.Content)
        }
 '3' { cls
        $Drivers = Invoke-WebRequest ("")
        Invoke-Expression $($Drivers.Content)
        }
 '4' { cls
        $ExtraItems = Invoke-WebRequest ("")
        Invoke-Expression $($ExtraItems.Content)
        }
'5'{cls
        $OSDCloudMain = Invoke-WebRequest("")
        Invoke-Expression $($OSDCloudMain.Content)
       }
    }
    }
     until ($selection -eq '5'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
