$ExplorerPPLog = "C:\Logs\OSDCloud\File Explorer\ExplorerPP.log"

Start-Transcript -Path $ExplorerPPLog

Get-Date

############################################
# Explorer + +  File URLs
############################################

$ExplorerPPFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/File%20Explorer/Explorer++.exe"

Import-Module -Name OSD -Force


####################################################################
# Explorer + + DL File Destination ##############
####################################################################

$ExplorerPPDestination = "C:\OSDCloud\downloads\GitHub\FileExplorer"



Write-Verbose "Processing: Acquiring Explorer + + for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $ExplorerPPFile1URL -DestinationDirectory $ExplorerPPDestination

Write-Host
Write-Verbose "Completed: Download of Explorer + +for integration to OSDCloud..." -Verbose

Stop-Transcript
