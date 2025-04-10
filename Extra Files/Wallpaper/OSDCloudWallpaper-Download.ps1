Write-Host '                                                                                       '
Write-Host '                                                                                       ' -BackgroundColor White                                                              
Write-Host ' The following extra files will be downloaded and integrated into OSDCloud boot.wim:   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Custom OSD Cloud Wallpaper                                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                       ' -BackgroundColor White
Write-Host '                                                                                       '
pause


######################################################################################
####    OSDCloud Wallpaper URL                                                 #######
######################################################################################
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Wallpaper/winpe.jpg"


Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force


Write-Verbose "Processing: Downloading new OSDCloud wallpaper..." -Verbose
$OSDCloudGHdownloads = "C:\OSDCloud\downloads\GitHub\wallpaper"
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Wallpaper/winpe.jpg"
Save-WebFile -SourceUrl $OSDCloudWallpaperURL -DestinationDirectory $OSDCloudGHdownloads
