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
$OSDBrowser = "https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/Browser/Chrome.exe"

######################################################################################
####    OSDCloud Chrome Browser EXTRACTION LOCATION                            #######
######################################################################################
$ChromePath = "C:\OSDCloud\GitHub\downloads\Chrome.exe"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Verbose "Acquiring Google Chrome Portable Web Browser from GitHub repository..." -Verbose
Save-WebFile -SourceUrl $OSDBrowser DestinationDirectory $OSDCloudGHdownloads
