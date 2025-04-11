$HWInfoLog = "C:\Logs\OSDCloud\System Information\HWInfo.log"

Start-Transcript -Path $HWInfoLog

Get-Date

############################################
# HWInfo  File URLs
############################################

$HWInfoFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/System%20Information/HWiNFO.zip"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

####################################################################
# HWInfo DL File Destination ##############
####################################################################

$HWInfoDestination = "C:\OSDCloud\downloads\GitHub\HWInfo"
$HWInfoZIPDestination = "C:\OSDCloud\downloads\GitHub\HWInfo\Extract"

Write-Verbose "Processing: Acquiring HWiNFO Portable for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $HWInfoFile1URL -DestinationDirectory $HWInfoDestination
Expand-7Zip -ArchiveFileName "$HWInfoDestination\HWiNFO.zip" -TargetPath $HWInfoZIPDestination -ErrorAction SilentlyContinue 

Write-Host
Write-Verbose "Completed: Download of HWiNFO Portable for integration to OSDCloud..." -Verbose

Write-Verbose "Confirming successful download of HWiNFO Portable..." -Verbose
$HWInfo = Test-Path -Path "$HWInfoZIPDestination\HWiNFOPortable.exe" 


If($HWInfo -eq $true ){
Write-Host "HWiNFO Portable successfully downloaded" -ForegroundColor Cyan
}
ElseIf($HWInfo -eq $false){
Write-Verbose "Acquiring HWiNFOPortable from GitHub repository..." -Verbose

Save-WebFile -SourceUrl $HWInfoFile1URL -DestinationDirectory $HWInfoDestination

Write-Host
Write-Verbose "Completed: HWiNFO Portable have been downloaded..." -Verbose
Write-Host
}

Stop-Transcript
