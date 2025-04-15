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
Write-Host '     - ALL ASRock Socket AM5                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM5 PRO Motherboards                                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM5 Steel Legend Motherboards                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - ASRock Socket AM5 Taichi Motherboards                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                              ' -BackgroundColor White
pause
Clear-Host


$ASRock1 = "ALL ASRock Socket AM5 Motherboards OSDCloud ISO script"
$ASRock2 = "ASRock Socket AM5 PRO Motherboards OSDCloud ISO script"
$ASRock3 = "ASRock Socket AM5 Steel Legend Motherboards OSDCloud ISO script"
$ASRock4 = "ASRock Socket AM5 TaiChi Motherboards OSDCloud ISO script"

Write-Verbose "Processing: $ASRock1" -Verbose

$ASRock1Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/ALL-ASRock-AM5.ps1")
Invoke-Expression $($ASRock1Script.Content)

Write-Verbose "Processing: $ASRock2" -Verbose

$ASRock2Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/PRO.ps1")
Invoke-Expression $($ASRock2Script.Content)

Write-Verbose "Processing: $ASRock3" -Verbose

$ASRock3Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/SteelLegend.ps1")
Invoke-Expression $($ASRock3Script.Content)

Write-Verbose "Processing: $ASRock4" -Verbose

$ASRock4Script = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/Workspace%20Creation%20Scripts/Motherboards/AMD/Socket%20AM5/ASRock/Taichi.ps1")
Invoke-Expression $($ASRock4Script.Content)
