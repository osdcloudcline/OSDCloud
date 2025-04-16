
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
