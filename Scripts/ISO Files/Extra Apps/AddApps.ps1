########################################
# 3rd party software and utilities
########################################

# Portable Browsers

Write-Host
Write-Verbose "Processing: Google Chrome Portable Browser for OSDCloud..." -Verbose 
$ChromePath = "C:\OSDCloud\GitHub\downloads\Chrome.exe"
$ChromeDestination = "$mountdir\Windows\System32"

Copy-Item -Path $ChromePath -Destination $ChromeDestination -Force

Write-Host
Write-Verbose "Completed: Integration of Google Chrome Portable Browser for OSDCloud..." -Verbose
Write-Host

# CMTrace 

Write-Host
Write-Verbose "Processing: CMTrace Log Viewer for OSDCloud..." -Verbose 

$CMTracePath = "C:\OSDCloud\downloads\GitHub\MECM-LogViewer\CMTrace.exe"
$CMTraceDestination = "$mountdir\Windows\System32"

Copy-Item -Path $CMTracePath -Destination $CMTraceDestination -Force

# MSTSC

Write-Host
Write-Verbose "Processing: Microsoft Remote Desktop for OSDCloud..." -Verbose 
$MSTSCPath1 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files"
$MSTSCPath2 = "C:\OSDCloud\downloads\GitHub\MSTSC\Sys32Files\en-us"
$MSTSCDestination1 = "$mountdir\Windows\System32"
$MSTSCDestination2 = "$mountdir\Windows\System32\en-US"

Copy-Item -Path "$MSTSCPath1\*" -Destination $MSTSCDestination1 -Recurse  -Force
Copy-Item -Path "$MSTSCPath2\*" -Destination $MSTSCDestination2  -Recurse -Force

# CloudPC

Write-Host
Write-Verbose "Processing: Microsoft Remote Desktop - Cloud PC for OSDCloud..." -Verbose 
$CloudPCPath1 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files"
$CloudPCPath2 = "C:\OSDCloud\downloads\GitHub\CloudPC\Sys32Files\en-us"
$CloudPCDestination1 = "$mountdir\Windows\System32"
$CloudPCDestination2 = "$mountdir\Windows\System32\en-US"

Copy-Item -Path "$CloudPCPath1\*" -Destination $CloudPCDestination1  -Recurse -Force
Copy-Item -Path "$CloudPCPath2\*" -Destination $CloudPCDestination2  -Recurse -Force

# Ghost Imaging

Write-Host
Write-Verbose "Processing: Ghost Imaging for OSDCloud..." -Verbose 
$Ghost64Path = "C:\OSDCloud\GitHub\downloads\Ghost\Ghost64.exe"
$GhostExplorerPath = "C:\OSDCloud\GitHub\downloads\Ghost\Ghostexp.exe"
$GhostServPath = "C:\OSDCloud\GitHub\downloads\Ghost\GhostSrv.exe"
$GhostDestination = "$mountdir\Windows\System32"

Copy-Item -Path $Ghost64Path -Destination $GhostDestination -Force
Copy-Item -Path $GhostExplorerPath -Destination $GhostDestination -Force
Copy-Item -Path $GhostServPath -Destination $GhostDestination -Force

Write-Host
Write-Verbose "Completed: Integration of Ghost Imaging for OSDCloud..." -Verbose
Write-Host

# User Profile Backup and Restore 

Write-Host
Write-Verbose "Processing: User Profile Backup/Restore for OSDCloud..." -Verbose 

$UPBRFilePath = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UBPRDestination = "$mountdir\Windows\System32"

Copy-Item -Path $UPBRFilePath -Destination $UBPRDestination -Force

Write-Host
Write-Verbose "Completed: Integration of User Profile Backup/Restore for OSDCloud..." -Verbose
Write-Host

# File Explorer

Write-Host
Write-Verbose "Processing: Explorer ++ for OSDCloud..." -Verbose 

$ExplorerPPPath = "C:\OSDCloud\downloads\GitHub\FileExplorer\Explorer++.exe"
$ExplorerPPDestination = "$mountdir\Windows\System32"

Copy-Item -Path $ExplorerPPPath -Destination $ExplorerPPDestination  -Force

Write-Host
Write-Verbose "Completed: Integration of Explorer++ for OSDCloud..." -Verbose
Write-Host

# Text Editor

Write-Host
Write-Verbose "Processing: Notepad ++ for OSDCloud..." -Verbose 

$NotepadPPPath = "C:\OSDCloud\downloads\GitHub\TextEditor\notepad++.exe"
$NotepadPPDestination = "$mountdir\Windows\System32"

Copy-Item -Path $NotepadPPPath -Destination $NotepadPPDestination  -Force

Write-Host
Write-Verbose "Completed: Integration of Notepad++ for OSDCloud..." -Verbose
Write-Host

# HW Info

Write-Host
Write-Verbose "Processing: HWiNFO Portable for OSDCloud..." -Verbose 

$HWiNFOZIPPath = "C:\OSDCloud\downloads\GitHub\HWInfo"
$HWInfoDestination = "$mountdir\Windows\System32\HWiNFO"

Expand-Archive -Path "$HWiNFOZIPPath\HWiNFO.zip" -DestinationPath "$HWInfoDestination" -Force

# Dismount the image
Write-Host
Write-Verbose "Processing: Dismounting OSDCloud boot.wim" -Verbose

Dismount-WindowsImage -Path $mountdir -Save
