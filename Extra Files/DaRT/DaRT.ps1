$DaRTLog = "C:\Logs\OSDCloud\DaRT\DaRT.log"

Start-Transcript -Path $DaRTLog

Get-Date

##############################################################
## DART File URL Paths
##############################################################

$DART64CABURL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/DaRT/Toolsx64.cab"
$DARTConfig8URL = ""

################################################################
## DART File Destination
################################################################

$DARTDestination = "C:\OSDCloud\GitHub\downloads\DART"
$DART64CABDestination = ""
$DARTConfig8Destination = ""

Import-Module -Name OSD -Force

Write-Verbose "Processing: Acquiring DART Files..." -Verbose
Save-WebFile -SourceUrl $DART64CABURL -Destination $DARTDestination
Save-WebFile -SourceUrl $DARTConfig8URL -Destination $DARTDestination
