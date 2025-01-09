Write-Host '                                                                                   '
Write-Host '                                                                                   ' -BackgroundColor White                                                              
Write-Host ' The following extras will be downloaded to be integrated into OSDCloud boot.wim:  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome Portable Web Browser                                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                   ' -BackgroundColor White
Write-Host '                                                                                   '
pause

######################################################################################
####    OSDCloud Web Browser URL                                                 #######
######################################################################################
$OSDBrowser = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Browser/Chrome.zip"


######################################################################################
####    OSDCloud Chrome Browser EXTRACTION LOCATION                            #######
######################################################################################
$ChromePath = "C:\OSDCloud\GitHub\downloads\Chrome"
$ChromeDownloadPath = "C:\OSDCloud\GitHub\downloads\Browsers\Chrome" 

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4PowerShell -Force

Write-Verbose "Acquiring Google Chrome Portable Web Browser from GitHub repository..." -Verbose
Save-WebFile -SourceUrl $OSDBrowser  -DestinationDirectory $ChromeDownloadPath 
Write-Verbose "Expanding Google Chrome Portable Web Browser ..." -Verbose
Expand-7Zip -ArchiveFileName "$ChromeDownloadPath\Chrome.zip" -TargetPath $ChromePath -ErrorAction SilentlyContinue 
