Write-Host '                                                                              '
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host ' The following extra files will be integrated into OSDCloud boot.wim:         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Custom OSD Cloud Wallpaper                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Google Chrome Portable Web Browser                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Operating System User Profile Backup and Restore                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '                                                                              '
pause


#######################################################################################
###########     OSDCloud VBS Script DOWNLOAD/EXTRACTION LOCATION       ################
#######################################################################################

$OSDCloudVBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

#######################################################################################
####               VBS SCRIPT SUPPORT URL                             #################
#######################################################################################

$VBSScriptSupport_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/Scripting%20Support/VBS%20Scripting/VBScriptCABFiles.zip"

######################################################################################
####    USER PROFILE BACKUP AND RESTORE URL                                    #######
######################################################################################

$UPBR_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"

######################################################################################
####    USER PROFILE BACKUP AND RESTORE EXTRACTION LOCATION                    #######
######################################################################################
$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"


######################################################################################
####    OSDCloud Wallpaper URL                                                 #######
######################################################################################
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Wallpaper/winpe.jpg"

######################################################################################
####    OSDCloud Web Browser URL                                                 #######
######################################################################################
$OSDBrowser = "https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/Browser/Chrome.exe"

######################################################################################
####    OSDCloud Chrome Browser EXTRACTION LOCATION                            #######
######################################################################################
$ChromePath = "C:\OSDCloud\GitHub\downloads\Chrome.exe"

Function Get-OSDCloudMount(){
$OSDCloudMountQues = Read-Host -Prompt 'Is the OSD Cloud boot.wim already mounted?'
If(($OSDCloudMountQues -eq "Y") -or ($OSDCloudMountQues -eq "y") -or ($OSDCloudMountQues -eq "Yes") -or ($OSDCloudMountQues -eq "yes")){
$OSDCloudMountDir = Read-Host -Prompt 'Please provide current mount directory'
}
ElseIf(($OSDCloudMountQues -eq "N") -or ($OSDCloudMountQues -eq "n") -or ($OSDCloudMountQues -eq "No") -or ($OSDCloudMountQues -eq "no")){
$OSDCloudWIM = Read-Host -Prompt 'Please Specify the location of your OSDCloud boot.wim file'
$mountdir = Read-Host 'Please specify the mount point'
Write-Host "Mounting OSDCloud boot.wim..." 
Mount-WindowsImage -ImagePath "$OSDCloudWIM\boot.wim" -Index 1 -Path $mountdir
Write-Host "Mounting completed..."
}


Function Get-OSDCloudDismount(){
$mountdir = Read-Host -Prompt 'Please provide mount directory'
Dismount-WindowsImage -Path $mountdir -Save
}

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Host "Acquiring VBS Script Support CAB Files from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $VBSScriptSupport_URL -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Integrating VBS Scripting Support into OSDCloud..." -ForegroundColor Green
$VBSName1 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBSName2 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBSName3 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBSName4 = "Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"

$VBS1 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~~.cab"
$VBS2 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~amd64~en-us~.cab"
$VBS3 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~~.cab"
$VBS4 = "$OSDCloudVBS_Extract\Microsoft-Windows-VBSCRIPT-FoD-Package~31bf3856ad364e35~wow64~en-us~.cab"

Get-OSDCloudMount

Write-Host "Processing Item: $VBSName1..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS1

Write-Host "Processing Item: $VBSName2..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS2

Write-Host "Processing Item: $VBSName3..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS3

Write-Host "Processing Item: $VBSName4..."
Add-WindowsPackage -Path $mountdir -PackagePath $VBS4

Get-OSDCloudDismount

Write-Host "Acquiring User Profile Backup and Restore from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $UPBR_URL -DestinationDirectory $OSDCloudGHdownloads
Rename-Item -Path $UPBRFilePath -NewName "C:\OSDCloud\GitHub\downloads\UPBR.exe"

Get-OSDCloudMount

$UBPRDestination = "$mountdir\Windows\System32"
Copy-Item -Path $UPBRFilePath -Destination $UBPRDestination

Get-OSDCloudDismount

Write-Host "Acquiring Google Chrome Portable Web Browser from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $OSDBrowser DestinationDirectory $OSDCloudGHdownloads

Get-OSDCloudMount

$ChromeDestination = "$mountdir\Windows\System32"
Copy-Item -Path $ChromePath -Destination $ChromeDestination

Get-OSDCloudDismount

Write-Host "Changing OSDCloud wallpaper..." -ForegroundColor Green
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Wallpaper/winpe.jpg"
Save-WebFile -SourceUrl $OSDCloudWallpaperURL -DestinationDirectory $OSDCloudGHdownloads
Edit-OSDCloudWinPE -Wallpaper "$OSDCloudGHdownloads\winpe.jpg"

