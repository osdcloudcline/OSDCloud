$GhostLog = "C:\Logs\OSDCloud\Ghost\Ghost.log"

Start-Transcript -Path $GhostLog

Import-Module -Name OSD -Force

#################################################
## Ghost EXE download URL
################################################

$GhostURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Imaging/Ghost/Ghost.zip"

$GhostDestination = "C:\OSDCloud\downloads\GitHub\Ghost"

Write-Verbose "Processing: Symantec Ghost " -Verbose
Save-WebFile -SourceUrl $GhostURL -DestinationDirectory $GhostDestination
Expand-7Zip -ArchiveFileName "$GhostDestination\Ghost.zip" -Destination $GhostDestination
Write-Host
Write-Verbose "Completed: Symantec Ghost file downloads" -Verbose
Write-Host

Stop-Transcript
