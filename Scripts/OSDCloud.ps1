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
Write-Host " 1. Create Templates"
Write-Host " 2. Dell Desktops"
Write-Host " 3. Custom Built Desktops + AMD/Intel Motherboards"
Write-Host " 4. HP Laptops"
Write-Host " 5. ASUS Laptops"
Write-Host " 6. Acer Laptops"
Write-Host " 7. Lenovo Laptops"
Write-Host " 8. Virtual Machines"
Write-Host " 9. MS Surface Devices"
Write-Host " 10. Return to Main Menu"

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
        $DellDesktopsOSDCloudConfigScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Desktops/Dell%20/DellDesktopsConfigureOSDCloudMain.ps1")
        Invoke-Expression $($DellDesktopsOSDCloudConfigScript.Content)
        }
  '3' { cls
        $CustomPCOSDCloudConfigScript = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Desktops/Custom%20Build%20/CustomBuildConfigureOSDCloudMain.ps1")
        Invoke-Expression $($CustomPCOSDCloudConfigScript.Content)
        }
  '4' { cls
        $HPLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($HPLaptopsOSDCloudConfigScript.Content)
        }
  '5' { cls
        $ASUSLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($ASUSLaptopsOSDCloudConfigScript.Content)
        }
  '6' { cls
        $AcerLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($AcerLaptopsOSDCloudConfigScript.Content)
        }
  '7' { cls
        $LenovoLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($LenovoLaptopsOSDCloudConfigScript.Content)
        }
  '8' { cls
         $ESXIVMOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($ESXIVMOSDCloudConfigScript.Content)
        }
  '9' { cls
        $MSSurfaceOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($MSSurfaceOSDCloudConfigScript.Content)
        }
   '10'{cls
        $OSDMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
        Invoke-Expression $($OSDMain.Content)
       }
    }
    }
     until ($selection -eq '10'){Invoke-Expression $($OSDMain.Content)}
    }

    
Show-MainMenu
