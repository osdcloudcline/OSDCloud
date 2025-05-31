
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4PowerShell -Force

######################################################################################
####    OSDCloud Web Browser URL                                                 #######
######################################################################################
$OSDBrowser = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Browser/Chrome.exe"


######################################################################################
####    OSDCloud Chrome Browser EXTRACTION LOCATION                            #######
######################################################################################
$ChromePath = "C:\OSDCloud Software\Browsers\Chrome"
$ChromeDownloadPath = "C:\OSDCloud Software\Browsers\Chrome" 

Write-Verbose "Acquiring Google Chrome Portable Web Browser from GitHub repository..." -Verbose
Save-WebFile -SourceUrl $OSDBrowser  -DestinationDirectory $ChromeDownloadPath 

############################################
# Explorer + +  File URLs
############################################

$ExplorerPPFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/File%20Explorer/Explorer++.exe"

####################################################################
# Explorer + + DL File Destination ##############
####################################################################

$ExplorerPPDestination = "C:\OSDCloud Software\File Explorer"

Write-Verbose "Processing: Acquiring Explorer + + for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $ExplorerPPFile1URL -DestinationDirectory $ExplorerPPDestination

####################################################################
# Symantec Ghost Suite  ##############
####################################################################

$GhostURL1 = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/Imaging/Ghost/Ghost.zip"
$GhostURL2 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghost64.exe"
$GhostURL3 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/GhostSrv.exe"
$GhostURL4 = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghostexp.exe"

$GhostDestination = "C:\OSDCloud Software\Ghost"

Write-Verbose "Processing: Symantec Ghost " -Verbose
Save-WebFile -SourceUrl $GhostURL1 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL2 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL3 -DestinationDirectory $GhostDestination
Save-WebFile -SourceUrl $GhostURL4 -DestinationDirectory $GhostDestination
Write-Host
Write-Verbose "Completed: Symantec Ghost file downloads" -Verbose
Write-Host

############################################
# CM Trace File URLs
############################################

$CMTraceFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Log%20Viewer/CMTrace.exe"

####################################################################
# Log Viewer - CM Trace DL File Destination ##############
####################################################################

$CMTraceDestination = "C:\OSDCloud Software\MECM-LogViewer"

Write-Verbose "Processing: Acquiring CM Trace for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $CMTraceFile1URL -DestinationDirectory $CMTraceDestination

############################################
# CloudPC File URLs
############################################

$CloudPCFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/CommonServiceLocator.dll"
$CloudPCFile2URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/CommonServiceLocator.dll"
$CloudPCFile3URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/Microsoft.SlimCV.VBM.dll"
$CloudPCFile4URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/MsMmrDVCPlugin.dll"
$CloudPCFile5URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/MsRdcWebRTCAddIn.dll"
$CloudPCFile6URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/MsTeamsPluginAvd.dll"
$CloudPCFile7URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/Newtonsoft.Json.dll"
$CloudPCFile8URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/Prism.Unity.Wpf.dll"
$CloudPCFile9URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/Prism.Wpf.dll"
$CloudPCFile10URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/Prism.dll"
$CloudPCFile11URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RDClient.Logging.dll"
$CloudPCFile12URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.Common.dll"
$CloudPCFile13URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.Contracts.dll"
$CloudPCFile14URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.Diagnostics.dll"
$CloudPCFile15URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.Helpers.dll"
$CloudPCFile16URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.Instrumentation.dll"
$CloudPCFile17URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.PlatformAbstractions.dll"
$CloudPCFile18URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.RemoteFeedClient.dll"
$CloudPCFile19URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.Tracing.dll"
$CloudPCFile20URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.UpdateLib.dll"
$CloudPCFile21URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.Utilities.dll"
$CloudPCFile22URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.WPF.Core.dll"
$CloudPCFile23URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdClient.WPF.Win10.dll"
$CloudPCFile24URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/RdpWinStlHelper.dll"
$CloudPCFile25URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/System.Diagnostics.DiagnosticSource.dll"
$CloudPCFile26URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/System.Net.Http.dll"
$CloudPCFile27URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/System.Runtime.CompilerServices.Unsafe.dll"
$CloudPCFile28URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/System.ValueTuple.dll"
$CloudPCFile29URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/System.Windows.Interactivity.dll"
$CloudPCFile30URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/Unity.Abstractions.dll"
$CloudPCFile31URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/Unity.Container.dll"
$CloudPCFile32URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/concrt140.dll"
$CloudPCFile33URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msrdc.exe"
$CloudPCFile34URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msrdcw.exe"
$CloudPCFile35URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msvcp140.dll"
$CloudPCFile36URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msvcp140_1.dll"
$CloudPCFile37URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msvcp140_2.dll"
$CloudPCFile38URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msvcp140_atomic_wait.dll"
$CloudPCFile39URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msvcp140_codecvt_ids.dll"
$CloudPCFile40URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/rdclientax.dll"
$CloudPCFile41URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/rdpnanoTransport.dll"
$CloudPCFile42URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/vccorlib140.dll"
$CloudPCFile43URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/vcruntime140.dll"
$CloudPCFile44URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/vcruntime140_1.dll"


$CloudPCenusFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/msrdc.exe.mui"
$CloudPCenusFile2URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Remote%20Desktop%20-%20Cloud%20PC/rdclientax.dll.mui"


Import-Module -Name OSD -Force


###################################################################################################
# Microsoft Remote Desktop Virtual Desktop Infrastructure CloudPC DL File Destination ##############
####################################################################################################

$CloudPCDestination1 = "C:\OSDCloud Software\CloudPC\Sys32Files"
$CloudPCDestination2 = "C:\OSDCloud Software\CloudPC\Sys32Files\en-us"


Write-Verbose "Processing: Acquiring files for Microsoft Virtual Desktop Infrastructure Cloud PC integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $CloudPCFile1URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile2URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile3URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile4URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile5URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile6URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile7URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile8URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile9URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile10URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile11URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile12URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile13URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile14URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile15URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile16URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile17URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile18URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile19URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile20URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile21URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile22URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile23URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile24URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile25URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile26URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile27URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile28URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile29URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile30URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile31URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile32URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile33URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile34URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile35URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile36URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile37URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile38URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile39URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile40URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile41URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile42URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile43URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile44URL -DestinationDirectory $CloudPCDestination1

Save-WebFile -SourceUrl $CloudPCenusFile1URL -DestinationDirectory $CloudPCDestination2
Save-WebFile -SourceUrl $CloudPCenusFile2URL -DestinationDirectory $CloudPCDestination2


Write-Host
Write-Verbose "Completed: Download of files for Microsoft Virtual Desktop Infrastructure Cloud PC integration to OSDCloud..." -Verbose

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

####################################################################
# Microsoft Remote Desktop Client DL File Destination ##############
####################################################################

$MSTSCDestination1 = "C:\OSDCloud Software\MSTSC\Sys32Files"
$MSTSCDestination2 = "C:\OSDCloud Software\MSTSC\Sys32Files\en-us"


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

############################################
# HWInfo  File URLs
############################################

$HWInfoFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/System%20Information/HWiNFO.zip"

####################################################################
# HWInfo DL File Destination ##############
####################################################################

$HWInfoDestination = "C:\OSDCloud Software\HWInfo"
$HWInfoZIPDestination = "C:\OSDCloud Software\HWInfo\Extract"

Write-Verbose "Processing: Acquiring HWiNFO Portable for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $HWInfoFile1URL -DestinationDirectory $HWInfoDestination

Write-Host
Write-Verbose "Completed: Download of HWiNFO Portable for integration to OSDCloud..." -Verbose

############################################
# Notepad + +  File URLs
############################################

$NotepadPPFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Text%20Editor/notepad++.exe"

####################################################################
# Explorer + + DL File Destination ##############
####################################################################

$NotepadPPDestination = "C:\OSDCloud Software\TextEditor"

Write-Verbose "Processing: Acquiring Notepad + + for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $NotepadPPFile1URL -DestinationDirectory $NotepadPPDestination

Write-Host
Write-Verbose "Completed: Download of Notepad ++for integration to OSDCloud..." -Verbose

######################################################################################
####    USER PROFILE BACKUP AND RESTORE URL                                    #######
######################################################################################

$UPBR_URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"

######################################################################################
####    USER PROFILE BACKUP AND RESTORE EXTRACTION LOCATION                    #######
######################################################################################
$UPBRFilePath = "C:\OSDCloud Software\ProfileBackupRestore"
$OSDCloudUPBRdownload = "C:\OSDCloud Software\ProfileBackupRestore"

Write-Host "Acquiring User Profile Backup and Restore from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $UPBR_URL -DestinationDirectory $OSDCloudUPBRdownload
Rename-Item -Path "$UPBRFilePath\UserProfileBackupRestore.exe" -NewName "$UPBRFilePath\UPBR.exe" -Force

######################################################################################
####    OSDCloud Wallpaper URL                                                 #######
######################################################################################
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/BGInfo/3185840.jpg"


Write-Verbose "Processing: Downloading new OSDCloud wallpaper..." -Verbose
$OSDCloudWallpaperdownloads = "C:\OSDCloud Software\wallpaper"
$OSDCloudWallpaperURL = "https://github.com/osdcloudcline/OSDCloud/blob/main/Extra%20Files/BGInfo/3185840.jpg"
Save-WebFile -SourceUrl $OSDCloudWallpaperURL -DestinationDirectory $OSDCloudWallpaperdownloads

######################################################################################
####    BGInfo URL                                                 #######
######################################################################################

$BGInfo64URL = ""
$BGIFileURL = ""

$destination = "C:\OSDCloud Software\BGInfo"

Write-Host
Write-Verbose "Completed: ALL Extra App and file downloads"
