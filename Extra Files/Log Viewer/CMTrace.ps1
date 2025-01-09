$CMTraceLog = "C:\Logs\OSDCloud\LogViewer\CMTrace.log"

Start-Transcript -Path $MSTSCLog

Get-Date

############################################
# CM Trace File URLs
############################################

$CMTraceFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Log%20Viewer/CMTrace.exe"

Import-Module -Name OSD -Force


####################################################################
# Log Viewer - CM Trace DL File Destination ##############
####################################################################

$CMTraceDestination = "C:\OSDCloud\downloads\GitHub\MECM-LogViewer"



Write-Verbose "Processing: Acquiring CM Trace for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $CMTraceFile1URL -DestinationDirectory $CMTraceDestination

Write-Host
Write-Verbose "Completed: Download of CM Trace for integration to OSDCloud..." -Verbose

Write-Verbose "Confirming successful download of CM Trace..." -Verbose
$CMTrace = Test-Path -Path "$CMTraceDestination\CMTrace.exe"


If($CMTrace -eq $true ){
Write-Host "CM Trace successfully downloaded" -ForegroundColor Cyan
}
ElseIf($CMTrace -eq $false){
Write-Verbose "Acquiring CM Trace from GitHub repository..." -Verbose

Save-WebFile -SourceUrl $CMTraceFile1URL -DestinationDirectory $CMTraceDestination

Write-Host
Write-Verbose "Completed: CM Trace has been downloaded..." -Verbose
Write-Host
}

Stop-Transcript
