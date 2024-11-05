Write-Host '                                                                              '
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host ' The following extra files will be integrated into OSDCloud boot.wim:         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Custom OSD Cloud Wallpaper                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '                                                                              '
pause


######################################################################################
####    OSDCloud Wallpaper URL                                                 #######
######################################################################################
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Wallpaper/winpe.jpg"

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

