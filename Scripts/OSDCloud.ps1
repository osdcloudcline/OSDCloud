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
Write-Host " 1. OSDCloud: Create ISO - Dell Systems and Custom Built Systems"
Write-Host " 2. OSDCloud: Create ISO - Other Systems"
Write-Host " 3. OSDCloud: Add Drivers"
Write-Host " 4. OSDCloud: Change Wallpaper, Add VBS Support and User Profile Backup"
Write-Host " 5. Access OSD Builder"
Write-Host " 6. OSDCloud: Get Help"
Write-Host " 7. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ISO = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/ISO%20Files/ISOMain.ps1")
        Invoke-Expression $($ISO.Content)
        }
 '2' { cls
        $OtherISO = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OtherTemplatesMain.ps1")
        Invoke-Expression $($OtherISO.Content)
        }
 '3' { cls
        $Drivers = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/OSDCloudDriversMain.ps1")
        Invoke-Expression $($Drivers.Content)
        }
 '4' { cls
        $ExtraItems = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/OSDCloudExtraFiles.ps1")
        Invoke-Expression $($ExtraItems.Content)
        }
'5'  {cls
       
      }
'6' { cls
      Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
      pause
      Show-MainMenu
      }
'7'{cls
        $OSDSYSTEMMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
        Invoke-Expression $($OSDSYSTEMMain.Content)
       }
    }
    }
     until ($selection -eq '7'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
