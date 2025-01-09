$DaRTLog = "C:\Logs\OSDCloud\DaRT\DaRT.log"

Start-Transcript -Path $DaRTLog

Get-Date

##############################################################
## DART File URL Paths
##############################################################

$DART64CAB_URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/DaRT/Toolsx64.cab"
$DARTConfig8_URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/DaRT/DartConfig8.dat"

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

Save-WebFile -SourceUrl $DART64CAB_URL -DestinationDirectory $DARTDestination
Save-WebFile -SourceUrl $DARTConfig8_URL -DestinationDirectory $DARTDestination

Write-Host
Write-Verbose "Completed: Microsoft DART files have been downloaded..." -Verbose
Write-Host

Write-Verbose "Confirming successful download of Google Chrome Portable Browser..." -Verbose
$DARTTP1 = Test-Path -Path "$DARTDestination\Toolsx64.cab"
$DARTTP2 = Test-Path -Path "$DARTDestination\DartConfig8.dat"

If($DARTTP1 -and $DARTTP2 -eq $true ){
Write-Host "Microsoft Diagnostics and Recovery Tools successfully downloaded"
}
ElseIf($DARTTP1 -and $DARTTP2 -eq $false){
Write-Verbose "Acquiring Microsoft Diagnostics and Recovery Tools from GitHub repository..." -Verbose

Save-WebFile -SourceUrl $DART64CAB_URL -DestinationDirectory $DARTDestination
Save-WebFile -SourceUrl $DARTConfig8_URL -DestinationDirectory $DARTDestination

Write-Host
Write-Verbose "Completed: Microsoft DART files have been downloaded..." -Verbose
Write-Host
}

Stop-Transcript 
