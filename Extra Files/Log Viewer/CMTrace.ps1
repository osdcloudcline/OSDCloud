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
