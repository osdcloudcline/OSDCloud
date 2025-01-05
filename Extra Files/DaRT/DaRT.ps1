$DaRTLog = "C:\Logs\OSDCloud\DaRT\DaRT.log"

Start-Transcript -Path $DaRTLog

Get-Date

##############################################################
## DART File URL Paths
##############################################################

$DART64CABURL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/DaRT/Toolsx64.cab"
$DARTConfig8URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/DaRT/DartConfig8.dat"

################################################################
## DART File Destination
################################################################

$DARTDestination = "C:\OSDCloud\downloads\GitHub\DART"
$DART64CABDestination = "C:\Program Files\Microsoft DaRT\v10"
$DARTConfig8Destination = "C:\Program Files\Microsoft Deployment Toolkit\Templates"

Import-Module -Name OSD -Force

Write-Host
Write-Verbose "Processing: Acquiring Microsoft DART files..." -Verbose
Write-Host

Save-WebFile -SourceUrl $DART64CABURL -DestinationDirectory $DARTDestination
Save-WebFile -SourceUrl $DARTConfig8URL -DestinationDirectory $DARTDestination

Write-Host
Write-Verbose "Completed: Microsoft DART files have been downloaded..." -Verbose
Write-Host

Stop-Transcript 
