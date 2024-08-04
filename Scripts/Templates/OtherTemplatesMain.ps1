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
Write-Host " 1. HP Laptops"
Write-Host " 2. ASUS Laptops"
Write-Host " 3. Acer Laptops"
Write-Host " 4. Lenovo Laptops"
Write-Host " 5. Virtual Machines"
Write-Host " 6. MS Surface Devices"
Write-Host " 7. Return to OSD Cloud Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $HPTemplateConfigScript = Invoke-WebRequest("")
        Invoke-Expression $($HPTemplateConfigScript.Content)
        }
  '2' { cls
        $ASUSTemplateConfigScript = Invoke-WebRequest("")
        Invoke-Expression $($ASUSTemplateConfigScript.Content)
        }
  '3' { cls
        $AcerTemplateConfigScript = Invoke-WebRequest("")
        Invoke-Expression $($AcerTemplateConfigScript.Content)
        }
  '4' { cls
        $LenovoTemplateConfigScript = Invoke-WebRequest("")
        Invoke-Expression $($LenovoTemplateConfigScript.Content)
        }
  '5' { cls
         $ESXIVMTemplateConfigScript = Invoke-WebRequest("")
        Invoke-Expression $($ESXIVMTemplateConfigScript.Content)
        }
  '6' { cls
        $MSSurfaceTemplateConfigScript = Invoke-WebRequest("")
        Invoke-Expression $($MSSurfaceTemplateConfigScript.Content)
        }
  '7'{cls
        $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/OSDCloud.ps1")
        Invoke-Expression $($OSDCloudMain.Content)
       }
    }
    }
     until ($selection -eq '7'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
