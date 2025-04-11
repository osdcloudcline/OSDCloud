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
Write-Verbose "Completed: Download of Explorer + + for integration to OSDCloud..." -Verbose

Write-Verbose "Confirming successful download of Explorer + +..." -Verbose
$ExplorerPP = Test-Path -Path "$ExplorerPPDestination\Explorer++.exe"


If($ExplorerPP -eq $true ){
Write-Host "Explorer + + successfully downloaded" -ForegroundColor Cyan
}
ElseIf($ExplorerPP -eq $false){
Write-Verbose "Acquiring Explorer + + from GitHub repository..." -Verbose

Save-WebFile -SourceUrl $ExplorerPPFile1URL -DestinationDirectory $ExplorerPPDestination

Write-Host
Write-Verbose "Completed: Explorer + + have been downloaded..." -Verbose
Write-Host
}

Stop-Transcript
