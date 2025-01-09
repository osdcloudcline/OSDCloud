$GhostLog = "C:\Logs\OSDCloud\Ghost\Ghost.log"

Start-Transcript -Path $GhostLog

Import-Module -Name OSD -Force

#################################################
## Ghost EXE download URL
################################################

$GhostURL1 = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Imaging/Ghost/Ghost.zip"
$GhostURL2 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghost64.exe"
$GhostURL3 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/GhostSrv.exe"
$GhostURL4 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghostexp.exe"

$GhostDestination = "C:\OSDCloud\downloads\GitHub\Ghost"

Write-Verbose "Processing: Symantec Ghost " -Verbose
Save-WebFile -SourceUrl $GhostURL1 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL2 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL3 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL4 -DestinationDirectory $GhostDestination
Write-Host
Write-Verbose "Completed: Symantec Ghost file downloads" -Verbose
Write-Host

Write-Verbose "Confirming successful download of Symantec Ghost..." -Verbose
$Ghost = Test-Path -Path "$GhostDestination\Ghost.zip"
$Ghost2 = Test-Path -Path "$GhostDestination\Ghost64.exe"
$Ghost3 = Test-Path -Path "$GhostDestination\GhostSrv.exe"
$Ghost4 = Test-Path -Path "$GhostDestination\Ghostexp.exe"

If($Ghost -and $Ghost2 -and $Ghost3 -and $Ghost4 -eq $true ){
Write-Host "Symantec Ghost successfully downloaded" -ForegroundColor Cyan
}
ElseIf($Ghost -and $Ghost2 -and $Ghost3 -and $Ghost4 -eq $false){
Write-Verbose "Acquiring Symantec Ghost from GitHub repository..." -Verbose

Save-WebFile -SourceUrl $GhostURL2 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL3 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL4 -DestinationDirectory $GhostDestination

Write-Host
Write-Verbose "Completed: Symantec Ghost has been downloaded..." -Verbose
Write-Host
}

Stop-Transcript
