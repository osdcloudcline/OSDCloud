$GhostLog = "C:\Logs\OSDCloud\Ghost\Ghost.log"

Start-Transcript -Path $GhostLog

Import-Module -Name OSD -Force

#################################################
## Ghost EXE download URL
################################################

$Ghost64URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghost64.exe"

$GhostExplorerURL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghostexp.exe"

$GhostServURL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/GhostSrv.exe"

$GhostDestination = "C:\OSDCloud\downloads\GitHub\Ghost"

Write-Verbose "Processing: Ghost 64-bit" -Verbose
Save-WebFile -SourceUrl $Ghost64URL -DestinationDirectory $GhostDestination

Write-Verbose "Processing: Ghost Explorer" -Verbose
Save-WebFile -SourceUrl $GhostExplorerURL -DestinationDirectory $GhostDestination

Write-Verbose "Processing: Ghost Server" -Verbose
Save-WebFile -SourceUrl $GhostServURL -DestinationDirectory $GhostDestination

Write-Host
Write-Verbose "Completed: Symantec Ghost file downloads" -Verbose
Write-Host

Stop-Transcript
