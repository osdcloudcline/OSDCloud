Write-Host '                                                                                      '
Write-Host '                                                                                      ' -BackgroundColor White     
Write-Host ' The following extra files will be downloaded and integrated into OSDCloud boot.wim:  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                      ' -BackgroundColor White 
Write-Host '     - Operating System User Profile Backup and Restore                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                      ' -BackgroundColor White
Write-Host '                                                                                      '
pause

######################################################################################
####    USER PROFILE BACKUP AND RESTORE URL                                    #######
######################################################################################

$UPBR_URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"

######################################################################################
####    USER PROFILE BACKUP AND RESTORE EXTRACTION LOCATION                    #######
######################################################################################
$UPBRFilePath = "C:\OSDCloud\downloads\GitHub\ProfileBackupRestore"
$OSDCloudUPBRdownload = "C:\OSDCloud\downloads\GitHub\ProfileBackupRestore"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Host "Acquiring User Profile Backup and Restore from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $UPBR_URL -DestinationDirectory $OSDCloudUPBRdownload
Rename-Item -Path "$UPBRFilePath\UserProfileBackupRestore.exe" -NewName "$UPBRFilePath\User Profile Backup and Restore.exe" -Force
