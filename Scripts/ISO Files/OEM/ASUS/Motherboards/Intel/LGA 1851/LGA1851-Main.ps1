$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host '            This OSDCloud section allows the user to perform:                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - Creating ISO images for Desktop motherboards                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                 for the following manufacturers:                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '          - ASUS: Intel LGA 1700/LGA 1851 socket types                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. OSDCloud: Create ISO - ASUS ALL LGA 1851 motherboards"
Write-Host " 2. OSDCloud: Create ISO - ASUS LGA 1851 Business motherboards"
Write-Host " 3. OSDCloud: Create ISO - ASUS LGA 1851 CSM motherboards"
Write-Host " 4. OSDCloud: Create ISO - ASUS LGA 1851 Other motherboards"
Write-Host " 5. OSDCloud: Create ISO - ASUS LGA 1851 PRIME motherboards"
Write-Host " 6. OSDCloud: Create ISO - ASUS LGA 1851 ProArt motherboards"
Write-Host " 7. OSDCloud: Create ISO - ASUS LGA 1851 ROG motherboards"
Write-Host " 8. OSDCloud: Create ISO - ASUS LGA 1851 TUF Gaming motherboards"
Write-Host " 9. OSDCloud: Get Help"
Write-Host " 10. Return to Main Menu"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1'{cls
    $ALLASUSLGA1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/ALL-ASUS-LGA1851.ps1")
    Invoke-Expression $($ALLASUSLGA1851.Content)
    }
'2'{cls
    $Business1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/Business.ps1")
    Invoke-Expression $($Business1851.Content)
    }
'3'{cls
    $CSM1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/CSM.ps1")
    Invoke-Expression $($CSM1851.Content)
    }
'4'{cls
    $Other1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/Other.ps1")
    Invoke-Expression $($Other1851.Content)
    }
'5'{cls
    $PRIME1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/PRIME.ps1")
    Invoke-Expression $($PRIME1851.Content)
    }
'6'{cls
    $ProArt1851 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/OEM/ASUS/Motherboards/Intel/LGA%201851/ProArt.ps1")
    Invoke-Expression $($ProArt1851.Content)
    }
'7'{cls
    $ROG1851 = Invoke-WebRequest("")
    Invoke-Expression $($ROG1851.Content)
    }
'8'{cls
    $TUF1851 = Invoke-WebRequest("")
    Invoke-Expression $($TUF1851.Content)
    }
'9'{cls
    Get-Command -Module OSD | Out-File -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    Start-Process -FilePath "C:\OSDCloud\Help\Commands\OSD\OSDFunctions.txt"
    pause
    Show-MainMenu
    }
'10'{cls
    $OSDCloudMain = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
    Invoke-Expression $($OSDCloudMain.Content)
   }
    }
    }
     until ($selection -eq '4'){Invoke-Expression $($OSDCloudMain.Content)}
    }

    
Show-MainMenu
