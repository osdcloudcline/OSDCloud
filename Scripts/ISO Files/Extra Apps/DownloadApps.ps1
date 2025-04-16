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
