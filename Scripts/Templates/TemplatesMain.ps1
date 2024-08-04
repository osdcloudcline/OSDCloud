##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud Initial Template Creation - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Dell Laptops"
Write-Host " 2. Dell Desktops"
Write-Host " 3. Custom Built Desktops + AMD/Intel Motherboards"
Write-Host " 10. Return to Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $DellLaptopsOSDCloudConfigScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/DELLConfigureOSDCloudMain.ps1")
        Invoke-Expression $($DellLaptopsOSDCloudConfigScript.Content)
        }
  '2' { cls
        $DellDesktopsOSDCloudConfigScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Desktops/Dell%20/DellDesktopsConfigureOSDCloudMain.ps1")
        Invoke-Expression $($DellDesktopsOSDCloudConfigScript.Content)
        }
  '3' { cls
        $CustomPCOSDCloudConfigScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Desktops/Custom%20Build%20/CustomBuildConfigureOSDCloudMain.ps1")
        Invoke-Expression $($CustomPCOSDCloudConfigScript.Content)
        }
   '4'{cls
        $OSDMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
        Invoke-Expression $($OSDMain.Content)
       }
    }
    }
     until ($selection -eq '4'){Invoke-Expression $($OSDMain.Content)}
    }

    
Show-MainMenu
