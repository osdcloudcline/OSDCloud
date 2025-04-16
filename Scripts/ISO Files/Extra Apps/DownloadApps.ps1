
######################################################################################
####    OSDCloud Web Browser URL                                                 #######
######################################################################################
$OSDBrowser = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Browser/Chrome.exe"


######################################################################################
####    OSDCloud Chrome Browser EXTRACTION LOCATION                            #######
######################################################################################
$ChromePath = "C:\OSDCloud Software\Browsers\Chrome"
$ChromeDownloadPath = "C:\OSDCloud Software\Browsers\Chrome" 

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4PowerShell -Force

Write-Verbose "Acquiring Google Chrome Portable Web Browser from GitHub repository..." -Verbose
Save-WebFile -SourceUrl $OSDBrowser  -DestinationDirectory $ChromeDownloadPath 

############################################
# Explorer + +  File URLs
############################################

$ExplorerPPFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/File%20Explorer/Explorer++.exe"

####################################################################
# Explorer + + DL File Destination ##############
####################################################################

$ExplorerPPDestination = "C:\OSDCloud Software\File Explorer"

Write-Verbose "Processing: Acquiring Explorer + + for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $ExplorerPPFile1URL -DestinationDirectory $ExplorerPPDestination


####################################################################
# Symantec Ghost Suite  ##############
####################################################################

$GhostURL1 = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Imaging/Ghost/Ghost.zip"
$GhostURL2 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghost64.exe"
$GhostURL3 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/GhostSrv.exe"
$GhostURL4 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghostexp.exe"

$GhostDestination = "C:\OSDCloud Software\Ghost"

Write-Verbose "Processing: Symantec Ghost " -Verbose
Save-WebFile -SourceUrl $GhostURL1 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL2 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL3 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL4 -DestinationDirectory $GhostDestination
Write-Host
Write-Verbose "Completed: Symantec Ghost file downloads" -Verbose
Write-Host

############################################
# CM Trace File URLs
############################################

$CMTraceFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Log%20Viewer/CMTrace.exe"

####################################################################
# Log Viewer - CM Trace DL File Destination ##############
####################################################################

$CMTraceDestination = "C:\OSDCloud Software\MECM-LogViewer"

Write-Verbose "Processing: Acquiring CM Trace for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $CMTraceFile1URL -DestinationDirectory $CMTraceDestination
