$HWInfoLog = "C:\Logs\OSDCloud\System Information\HWInfo.log"

Start-Transcript -Path $HWInfoLog

Get-Date

############################################
# HWInfo  File URLs
############################################

$HWInfoFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/File%20Explorer/Explorer++.exe"

Import-Module -Name OSD -Force


####################################################################
# HWInfo DL File Destination ##############
####################################################################

$HWInfoDestination = "C:\OSDCloud\downloads\GitHub\HWInfo"
