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

$DARTDestination = "C:\OSDCloud\GitHub\downloads\DART"
$DART64CABDestination = ""
$DARTConfig8Destination = ""

Import-Module -Name OSD -Force

Write-Verbose "Processing: Acquiring Microsoft DART Files..." -Verbose
Save-WebFile -SourceUrl $DART64CABURL -DestinationDirectory $DARTDestination
Save-WebFile -SourceUrl $DARTConfig8URL -DestinationDirectory $DARTDestination

Stop-Transcript 
