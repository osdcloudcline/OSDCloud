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
Write-Host " 1. Virtualization"
Write-Host " 2. ASRock - AMD"
Write-Host " 3. ASRock - Intel"
Write-Host " 4. ASUS - AMD"
Write-Host " 5. ASUS - Intel"
Write-Host " 6. Gigabyte - AMD"
Write-Host " 7. Gigabyte - Intel"
Write-Host " 8. MSI - AMD"
Write-Host " 9. MSI - Intel"
Write-Host " 10. Custom Built PC Scripts"
Write-Host " 11. OEM Pre-Built Devices"
Write-Host " 12. Return to OSD Cloud Main Menu"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Virtualization = Invoke-WebRequest("")
        Invoke-Expression $($Virtualization.Content)
        }
  '2' { cls
        $ASRockAMD = Invoke-WebRequest("")
        Invoke-Expression $($ASRockAMD.Content)
        }
  '3' { cls
        $ASRockIntel = Invoke-WebRequest("")
        Invoke-Expression $($ASRockIntel.Content)
        }
  '4' { cls
        $ASUSAMD = Invoke-WebRequest("")
        Invoke-Expression $($ASUSAMD.Content)
        }
  '5' { cls
        $ASUSIntel = Invoke-WebRequest("")
        Invoke-Expression $($ASUSIntel.Content)
        }
  '6' { cls
        $GigabyteAMD = Invoke-WebRequest("")
        Invoke-Expression $($GigabyteAMD.Content)
        }
  '7' { cls
        $GigabyteIntel = Invoke-WebRequest("")
        Invoke-Expression $($GigabyteIntel.Content)
        }
  '8' { cls
        $MSIAMD = Invoke-WebRequest("")
        Invoke-Expression $($MSIAMD.Content)
        }
  '9' { cls
        $MSIIntel = Invoke-WebRequest("")
        Invoke-Expression $($MSIIntel.Content)
        }
  '10' { cls
        $CustomBuilt = Invoke-WebRequest("")
        Invoke-Expression $($CustomBuilt.Content)
        }
  '11' { cls
        $OEMPreBuilt = Invoke-WebRequest("")
        Invoke-Expression $($OEMPreBuilt.Content)
        }
  '12' { cls
        $OSDCloudMain = Invoke-WebRequest("")
        Invoke-Expression $($OSDCloudMain.Content)
        }
    }
    }
     until ($selection -eq '12'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
