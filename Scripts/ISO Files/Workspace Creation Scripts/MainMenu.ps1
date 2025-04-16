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
Write-Host " 1. AI-Copilot PCs"
Write-Host " 2. By CPU and Socket Type"
Write-Host " 3. Custom Scripts"
Write-Host " 4. Motherboards"
Write-Host " 5. OEM Desktops"
Write-Host " 6. OEM Laptops"
Write-Host " 7. OEM Tablet PCs"
Write-Host " 8. Return to OSD Cloud Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $AICopilot = Invoke-WebRequest("")
        Invoke-Expression $($AICopilot.Content)
        }
  '2' { cls
        $CPUSocketType = Invoke-WebRequest("")
        Invoke-Expression $($CPUSocketType.Content)
        }
  '3' { cls
        $CustomScripts = Invoke-WebRequest("")
        Invoke-Expression $($CustomScripts.Content)
        }
  '4' { cls
        $Motherboards = Invoke-WebRequest("")
        Invoke-Expression $($Motherboards.Content)
        }
  '5' { cls
        $OEMDesktops = Invoke-WebRequest("")
        Invoke-Expression $($OEMDesktops.Content)
        }
  '6' { cls
        $OEMLaptops = Invoke-WebRequest("")
        Invoke-Expression $($OEMLaptops.Content)
        }
  '7' { cls
        $OEMTablets = Invoke-WebRequest("")
        Invoke-Expression $($OEMTablets.Content)
        }
  '8' { cls
        $OSDCloudMain = Invoke-WebRequest("")
        Invoke-Expression $($OSDCloudMain.Content)
        }
    }
    }
     until ($selection -eq '8'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
