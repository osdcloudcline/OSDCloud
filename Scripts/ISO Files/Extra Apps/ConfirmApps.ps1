$mountdir = "C:\Mount"

$ChromePath = "$mountdir\Windows\System32\Chrome.exe"
$ExplorerPPPath = "$mountdir\Windows\System32\Explorer++.exe"
$Ghost64Path = "$mountdir\Windows\System32\Ghost64.exe"
$GhostExplorerPath = "$mountdir\Windows\System32\Ghostexp.exe"
$GhostServPath = "$mountdir\Windows\System32\GhostSrv.exe"
$CMTracePath = "$mountdir\Windows\System32\CMTrace.exe"
$NotepadPPPath = "$mountdir\Windows\System32\notepad++.exe"
$UPBRPath = "$mountdir\Windows\System32\UPBR.exe"
$HWiNFOPATH = "$mountdir\Windows\System32\HWiNFO\HWiNFOPortable.exe"

$CloudPCFile1 = "$mountdir\Windows\System32\CommonServiceLocator.dll"
$CloudPCFile2 = "$mountdir\Windows\System32\CommonServiceLocator.dll"
$CloudPCFile3 = "$mountdir\Windows\System32\Microsoft.SlimCV.VBM.dll"
$CloudPCFile4 = "$mountdir\Windows\System32\MsMmrDVCPlugin.dll"
$CloudPCFile5 = "$mountdir\Windows\System32\MsRdcWebRTCAddIn.dll"
$CloudPCFile6 = "$mountdir\Windows\System32\MsTeamsPluginAvd.dll"
$CloudPCFile7 = "$mountdir\Windows\System32\Newtonsoft.Json.dll"
$CloudPCFile8 = "$mountdir\Windows\System32\Prism.Unity.Wpf.dll"
$CloudPCFile9 = "$mountdir\Windows\System32\Prism.Wpf.dll"
$CloudPCFile10 = "$mountdir\Windows\System32\Prism.dll"
$CloudPCFile11 = "$mountdir\Windows\System32\RDClient.Logging.dll"
$CloudPCFile12 = "$mountdir\Windows\System32\RdClient.Common.dll"
$CloudPCFile13 = "$mountdir\Windows\System32\RdClient.Contracts.dll"
$CloudPCFile14 = "$mountdir\Windows\System32\RdClient.Diagnostics.dll"
$CloudPCFile15 = "$mountdir\Windows\System32\RdClient.Helpers.dll"
$CloudPCFile16 = "$mountdir\Windows\System32\RdClient.Instrumentation.dll"
$CloudPCFile17 = "$mountdir\Windows\System32\RdClient.PlatformAbstractions.dll"
$CloudPCFile18 = "$mountdir\Windows\System32\RdClient.RemoteFeedClient.dll"
$CloudPCFile19 = "$mountdir\Windows\System32\RdClient.Tracing.dll"
$CloudPCFile20 = "$mountdir\Windows\System32\RdClient.UpdateLib.dll"
$CloudPCFile21 = "$mountdir\Windows\System32\RdClient.Utilities.dll"
$CloudPCFile22 = "$mountdir\Windows\System32\RdClient.WPF.Core.dll"
$CloudPCFile23 = "$mountdir\Windows\System32\RdClient.WPF.Win10.dll"
$CloudPCFile24 = "$mountdir\Windows\System32\RdpWinStlHelper.dll"
$CloudPCFile25 = "$mountdir\Windows\System32\System.Diagnostics.DiagnosticSource.dll"
$CloudPCFile26 = "$mountdir\Windows\System32\System.Net.Http.dll"
$CloudPCFile27 = "$mountdir\Windows\System32\System.Runtime.CompilerServices.Unsafe.dll"
$CloudPCFile28 = "$mountdir\Windows\System32\System.ValueTuple.dll"
$CloudPCFile29 = "$mountdir\Windows\System32\System.Windows.Interactivity.dll"
$CloudPCFile30 = "$mountdir\Windows\System32\Unity.Abstractions.dll"
$CloudPCFile31 = "$mountdir\Windows\System32\Unity.Container.dll"
$CloudPCFile32 = "$mountdir\Windows\System32\concrt140.dll"
$CloudPCFile33 = "$mountdir\Windows\System32\msrdc.exe"
$CloudPCFile34 = "$mountdir\Windows\System32\msrdcw.exe"
$CloudPCFile35 = "$mountdir\Windows\System32\msvcp140.dll"
$CloudPCFile36 = "$mountdir\Windows\System32\msvcp140_1.dll"
$CloudPCFile37 = "$mountdir\Windows\System32\msvcp140_2.dll"
$CloudPCFile38 = "$mountdir\Windows\System32\msvcp140_atomic_wait.dll"
$CloudPCFile39 = "$mountdir\Windows\System32\msvcp140_codecvt_ids.dll"
$CloudPCFile40 = "$mountdir\Windows\System32\rdclientax.dll"
$CloudPCFile41 = "$mountdir\Windows\System32\rdpnanoTransport.dll"
$CloudPCFile42 = "$mountdir\Windows\System32\vccorlib140.dll"
$CloudPCFile43 = "$mountdir\Windows\System32\vcruntime140.dll"
$CloudPCFile44 = "$mountdir\Windows\System32\vcruntime140_1.dll"
$CloudPCenusFile1 = "$mountdir\Windows\System32\en-us\msrdc.exe.mui"
$CloudPCenusFile2 = "$mountdir\Windows\System32\en-us\rdclientax.dll.mui"

$MSTSCFile1 = "$mountdir\Windows\System32\d3d10.dll"
$MSTSCFile2 = "$mountdir\Windows\System32\d3d10_1.dll"
$MSTSCFile3 = "$mountdir\Windows\System32\d3d10_1core.dll"
$MSTSCFile4 = "$mountdir\Windows\System32\d3d10core.dll"
$MSTSCFile5 = "$mountdir\Windows\System32\d3d10level9.dll"
$MSTSCFile6 = "$mountdir\Windows\System32\dxgi.dll"
$MSTSCFile7 = "$mountdir\Windows\System32\msacm.dll"
$MSTSCFile8 = "$mountdir\Windows\System32\msacm32.dll"
$MSTSCFile9 = "$mountdir\Windows\System32\msacm32.drv"
$MSTSCFile10 = "$mountdir\Windows\System32\mstsc.exe"
$MSTSCFile11 = "$mountdir\Windows\System32\mstscax.dll"
$MSTSCenusFile1 = "$mountdir\Windows\System32\en-us\msacm32.dll.mui"
$MSTSCenusFile2 = "$mountdir\Windows\System32\en-us\msacm32.drv.mui"
$MSTSCenusFile3 = "$mountdir\Windows\System32\en-us\mstsc.exe.mui"
$MSTSCenusFile4 = "$mountdir\Windows\System32\en-us\mstscax.dll.mui"

Write-Host "Confirming ALL OSDCloud Portable and and nessary files have successfully been copied to the image. Please wait for file verification to complete" -ForegroundColor Cyan

Write-Host "Processing: Google Chrome" -ForegroundColor Cyan
Test-Path -Path $ChromePath

Write-Host "Processing: Explorer ++" -ForegroundColor Cyan
Test-Path -Path $ExplorerPPPath

Write-Host "Processing: Symantec Ghost" -ForegroundColor Cyan
Test-Path -Path $Ghost64Path
Test-Path -Path $GhostExplorerPath
Test-Path -Path $GhostServPath

Write-Host "Processing: MECM Log Viewer" -ForegroundColor Cyan
Test-Path -Path $CMTracePath

Write-Host "Processing: Notepad ++" -ForegroundColor Cyan
Test-Path -Path $NotepadPPPath

Write-Host "Processing: User Profile Backup and Restore - UPBR" -ForegroundColor Cyan
Test-Path -Path $UPBRPath

Write-Host "Processing: HWiNFO" -ForegroundColor Cyan
Test-Path -Path $HWiNFOPATH

Write-Host "Processing: Cloud PC" -ForegroundColor Cyan
Test-Path -Path $CloudPCFile1 
Test-Path -Path $CloudPCFile2 
Test-Path -Path $CloudPCFile3 
Test-Path -Path $CloudPCFile4 
Test-Path -Path $CloudPCFile5 
Test-Path -Path $CloudPCFile6 
Test-Path -Path $CloudPCFile7 
Test-Path -Path $CloudPCFile8 
Test-Path -Path $CloudPCFile9 
Test-Path -Path $CloudPCFile10 
Test-Path -Path $CloudPCFile11 
Test-Path -Path $CloudPCFile12 
Test-Path -Path $CloudPCFile13 
Test-Path -Path $CloudPCFile14 
Test-Path -Path $CloudPCFile15 
Test-Path -Path $CloudPCFile16 
Test-Path -Path $CloudPCFile17 
Test-Path -Path $CloudPCFile18 
Test-Path -Path $CloudPCFile19 
Test-Path -Path $CloudPCFile20 
Test-Path -Path $CloudPCFile21 
Test-Path -Path $CloudPCFile22 
Test-Path -Path $CloudPCFile23 
Test-Path -Path $CloudPCFile24 
Test-Path -Path $CloudPCFile25 
Test-Path -Path $CloudPCFile26 
Test-Path -Path $CloudPCFile27 
Test-Path -Path $CloudPCFile28 
Test-Path -Path $CloudPCFile29 
Test-Path -Path $CloudPCFile30 
Test-Path -Path $CloudPCFile31 
Test-Path -Path $CloudPCFile32 
Test-Path -Path $CloudPCFile33 
Test-Path -Path $CloudPCFile34 
Test-Path -Path $CloudPCFile35 
Test-Path -Path $CloudPCFile36 
Test-Path -Path $CloudPCFile37 
Test-Path -Path $CloudPCFile38 
Test-Path -Path $CloudPCFile39 
Test-Path -Path $CloudPCFile40 
Test-Path -Path $CloudPCFile41 
Test-Path -Path $CloudPCFile42 
Test-Path -Path $CloudPCFile43 
Test-Path -Path $CloudPCFile44 
Test-Path -Path $CloudPCenusFile1 
Test-Path -Path $CloudPCenusFile2 

Write-Host "Processing: Microsoft Remote Desktop Connection - MSTSC" -ForegroundColor Cyan
Test-Path -Path $MSTSCFile1 
Test-Path -Path $MSTSCFile2 
Test-Path -Path $MSTSCFile3 
Test-Path -Path $MSTSCFile4 
Test-Path -Path $MSTSCFile5 
Test-Path -Path $MSTSCFile6 
Test-Path -Path $MSTSCFile7 
Test-Path -Path $MSTSCFile8 
Test-Path -Path $MSTSCFile9 
Test-Path -Path $MSTSCFile10
Test-Path -Path $MSTSCFile11 
Test-Path -Path $MSTSCenusFile1 
Test-Path -Path $MSTSCenusFile2 
Test-Path -Path $MSTSCenusFile3 
Test-Path -Path $MSTSCenusFile4 

Write-Host "ALL OSDCloud Portable and and nessary files have successfully been confirmed" -ForegroundColor Cyan
