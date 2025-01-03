$MSTSCLog = "C:\Logs\OSDCloud\MSTSC\MSTSC.log"

Start-Process -Path $MSTSCLog

Get-Date

############################################
# MSTSC RDP File URLs
############################################

$MSTSCFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/d3d10.dll"
$MSTSCFile2URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/d3d10_1.dll"
$MSTSCFile3URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/d3d10_1core.dll"
$MSTSCFile4URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/d3d10core.dll"
$MSTSCFile5URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/d3d10level9.dll"
$MSTSCFile6URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/dxgi.dll"
$MSTSCFile7URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/msacm.dll"
$MSTSCFile8URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/msacm32.dll"
$MSTSCFile9URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/msacm32.drv"
$MSTSCFile10URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/mstsc.exe"
$MSTSCFile11URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/mstscax.dll"
$MSTSCenusFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/msacm32.dll.mui"
$MSTSCenusFile2URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/msacm32.drv.mui"
$MSTSCenusFile3URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/mstsc.exe.mui"
$MSTSCenusFile4URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20Control/mstscax.dll.mui"

Import-Module -Name OSD -Force


####################################################################
# Microsoft Remote Desktop Client DL File Destination ##############
####################################################################

$MSTSCDestination1 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files"
$MSTSCDestination2 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files\en-us"


Write-Verbose "Processing: Acquiring files for Microsoft Remote Desktop integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $MSTSCFile1URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile2URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile3URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile4URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile5URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile6URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile7URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile8URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile9URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile10URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCFile11URL -DestinationDirectory $MSTSCDestination1
Save-WebFile -SourceUrl $MSTSCenusFile1URL -DestinationDirectory $MSTSCDestination2
Save-WebFile -SourceUrl $MSTSCenusFile2URL -DestinationDirectory $MSTSCDestination2
Save-WebFile -SourceUrl $MSTSCenusFile3URL -DestinationDirectory $MSTSCDestination2
Save-WebFile -SourceUrl $MSTSCenusFile4URL -DestinationDirectory $MSTSCDestination2

Write-Host
Write-Verbose "Completed: Download of files for Microsoft Remote Desktop integration to OSDCloud..." -Verbose

Stop-Transcript
