Write-Host '                                                                              '
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host ' The following extra files will be integrated into OSDCloud boot.wim:         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Operating System User Profile Backup and Restore                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '                                                                              '
pause

######################################################################################
####    USER PROFILE BACKUP AND RESTORE URL                                    #######
######################################################################################

$UPBR_URL = "https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"

######################################################################################
####    USER PROFILE BACKUP AND RESTORE EXTRACTION LOCATION                    #######
######################################################################################
$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"


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

Write-Host "Acquiring User Profile Backup and Restore from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $UPBR_URL -DestinationDirectory $OSDCloudGHdownloads
Rename-Item -Path $UPBRFilePath -NewName "C:\OSDCloud\GitHub\downloads\UPBR.exe"

Get-OSDCloudMount

$UBPRDestination = "$mountdir\Windows\System32"
Copy-Item -Path $UPBRFilePath -Destination $UBPRDestination

Get-OSDCloudDismount
