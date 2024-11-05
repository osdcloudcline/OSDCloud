Write-Host '                                                                              '
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host ' The following scripting support will be integrated into OSDCloud boot.wim:   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - VBS Scripting Support                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
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
