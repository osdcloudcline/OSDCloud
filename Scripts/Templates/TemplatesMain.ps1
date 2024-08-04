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
Write-Host " 1. Dell Alienware Laptops"
Write-Host " 2. Dell G-Series Laptops"
Write-Host " 3. Dell Inspiron Laptops"
Write-Host " 4. Dell Latitude Laptops"
Write-Host " 5. Dell Vostro Laptops"
Write-Host " 6. Dell XPS Laptops"
Write-Host " 7. Dell Micro Form Factor Optiplex Desktops"
Write-Host " 8. Custom Built Desktops"
Write-Host " 9. Return to OSD Cloud Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Alienware = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OEM/Dell/Laptops/Alienware.ps1")
        Invoke-Expression $($Alienware.Content)
        }
  '2' { cls
        $GSeries = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OEM/Dell/Laptops/GSeries.ps1")
        Invoke-Expression $($GSeries.Content)
        }
  '3' { cls
        $Inspiron = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OEM/Dell/Laptops/Inspiron.ps1")
        Invoke-Expression $($Inspiron.Content)
        }
  '4' { cls
        $Latitude = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OEM/Dell/Laptops/Latitude.ps1")
        Invoke-Expression $($Latitude.Content)
        }
  '5' { cls
        $Vostro = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OEM/Dell/Laptops/Vostro.ps1")
        Invoke-Expression $($Vostro.Content)
        }
  '6' { cls
        $XPS = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OEM/Dell/Laptops/XPS.ps1")
        Invoke-Expression $($XPS.Content)
        }
 '7' { cls
        $OptiplexMFF = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/Templates/OEM/Dell/MFF%20Desktops/Optiplex.ps1")
        Invoke-Expression $($OptiplexMFF.Content)
        } 
 '8' { cls
        $Custom = Invoke-WebRequest ("")
        Invoke-Expression $($Custom.Content)
        }
 '9'{cls
        $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/main/Scripts/OSDCloud.ps1")
        Invoke-Expression $($OSDCloudMain.Content)
       }
    }
    }
     until ($selection -eq '9'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
