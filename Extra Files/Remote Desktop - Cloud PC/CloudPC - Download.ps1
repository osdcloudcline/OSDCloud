$CloudPCLog = "C:\Logs\OSDCloud\CloudPC\CloudPC.log"

Start-Transcript -Path $CloudPCLog

Get-Date

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

$CloudPCDestination1 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files"
$CloudPCDestination2 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files\en-us"


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
Save-WebFile -SourceUrl $CloudPCFile430URL -DestinationDirectory $CloudPCDestination1
Save-WebFile -SourceUrl $CloudPCFile441URL -DestinationDirectory $CloudPCDestination1

Save-WebFile -SourceUrl $CloudPCenusFile1URL -DestinationDirectory $CloudPCDestination2
Save-WebFile -SourceUrl $CloudPCenusFile2URL -DestinationDirectory $CloudPCDestination2


Write-Host
Write-Verbose "Completed: Download of files for Microsoft Virtual Desktop Infrastructure Cloud PC integration to OSDCloud..." -Verbose

Stop-Transcript
