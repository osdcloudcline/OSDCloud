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

Write-Verbose "Processing: Acquiring HWiNFO Portable for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $HWInfoFile1URL -DestinationDirectory $HWInfoDestination

Write-Host
Write-Verbose "Completed: Download of HWiNFO Portable for integration to OSDCloud..." -Verbose

Write-Verbose "Confirming successful download of HWiNFO Portable..." -Verbose
$HWInfo = Test-Path -Path "$HWInfoDestination\HWiNFOPortable.exe"


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
