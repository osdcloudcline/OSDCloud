$GhostLog = "C:\Logs\OSDCloud\Ghost\Ghost.log"

Start-Transcript -Path $GhostLog

Import-Module -Name OSD -Force

#################################################
## Ghost EXE download URL
################################################

$GhostURL1 = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Imaging/Ghost/Ghost.zip"
$GhostURL2 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghost64.exe"
$GhostURL3 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/GhostSrv.exe"

$GhostDestination = "C:\OSDCloud\downloads\GitHub\Ghost"

Write-Verbose "Processing: Symantec Ghost " -Verbose
Save-WebFile -SourceUrl $GhostURL -DestinationDirectory $GhostDestination
Write-Host
Write-Verbose "Completed: Symantec Ghost file downloads" -Verbose
Write-Host

Write-Verbose "Confirming successful download of Symantec Ghost..." -Verbose
$Ghost = Test-Path -Path "$GhostDestination\Ghost.zip"


If($Ghost -eq $true ){
Write-Host "Symantec Ghost successfully downloaded" -ForegroundColor Cyan
Expand-7Zip -ArchiveFileName "$GhostDestination\Ghost.zip" -TargetPath $GhostDestination
}
ElseIf($Ghost -eq $false){
Write-Verbose "Acquiring Symantec Ghost from GitHub repository..." -Verbose

Save-WebFile -SourceUrl $GhostURL -DestinationDirectory $GhostDestination
Expand-7Zip -ArchiveFileName "$GhostDestination\Ghost.zip" -TargetPath $GhostDestination

Write-Host
Write-Verbose "Completed: Symantec Ghost has been downloaded..." -Verbose
Write-Host
}
Stop-Transcript
