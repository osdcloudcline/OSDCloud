Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                                              ' -BackgroundColor White                                                              
Write-Host '    This scripts creates all ASRock OSCloud ISO files automatically:                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ALL ASRock Socket AM4                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM4 Extreme Motherboards                                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM4 Fatal1ty Gaming Motherboards                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM4 PRO Motherboards                                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM4 Phantom Gaming Motherboards                                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM4 Steel Legend Motherboards                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM4 Taichi Motherboards                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                              ' -BackgroundColor White
pause
Clear-Host


$ASRock1 = "ALL ASRock Socket AM4 Motherboards OSDCloud ISO script"
$ASRock2 = "ASRock Socket AM4 Extreme Motherboards OSDCloud ISO script"
$ASRock3 = "ASRock Socket AM4 Fatal1ty Gaming Motherboards OSDCloud ISO script"
$ASRock4 = "ASRock Socket AM4 PRO Motherboards OSDCloud ISO script"
$ASRock5 = "ASRock Socket AM4 Phantom Gaming Motherboards OSDCloud ISO script"
$ASRock6 = "ASRock Socket AM4 Steel Legend Motherboards OSDCloud ISO script"
$ASRock7 = "ASRock Socket AM4 TaiChi Motherboards OSDCloud ISO script"

Write-Verbose "Processing: $ASRock1" -Verbose

$ASRock1Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/ALL-ASRock-AM4.ps1")
Invoke-Expression $($ASRock1Script.Content)

$Cleanup1 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Cleanup.ps1")
Invoke-Expression $($Cleanup1.Content)

Write-Verbose "Processing: $ASRock2" -Verbose

$ASRock2Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/Extreme.ps1")
Invoke-Expression $($ASRock2Script.Content)

$Cleanup2 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Cleanup.ps1")
Invoke-Expression $($Cleanup2.Content)

Write-Verbose "Processing: $ASRock3" -Verbose

$ASRock3Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/Fatal1tyGaming.ps1")
Invoke-Expression $($ASRock3Script.Content)

$Cleanup3 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Cleanup.ps1")
Invoke-Expression $($Cleanup3.Content)

Write-Verbose "Processing: $ASRock4" -Verbose

$ASRock4Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/PRO.ps1")
Invoke-Expression $($ASRock4Script.Content)

$Cleanup4 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Cleanup.ps1")
Invoke-Expression $($Cleanup4.Content)

Write-Verbose "Processing: $ASRock5" -Verbose

$ASRock5Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/PhantomGaming.ps1")
Invoke-Expression $($ASRock5Script.Content)

$Cleanup5 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Cleanup.ps1")
Invoke-Expression $($Cleanup5.Content)

Write-Verbose "Processing: $ASRock6" -Verbose

$ASRock6Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/SteelLegend.ps1")
Invoke-Expression $($ASRock6Script.Content)

$Cleanup6 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Cleanup.ps1")
Invoke-Expression $($Cleanup6.Content)

Write-Verbose "Processing: $ASRock7" -Verbose

$ASRock7Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM4/ASRock/Taichi.ps1")
Invoke-Expression $($ASRock7Script.Content)

$Cleanup7 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Cleanup.ps1")
Invoke-Expression $($Cleanup7.Content)

