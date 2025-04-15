$PS7DLZIP = "C:\OSDCloud\downloads\PowerShell\7\PowerShell-7.5.0-win-x64.zip"

$VBS_Extract = "C:\OSDCloud\GitHub\downloads\VBSScript"

$VBSZIP = "C:\OSDCloud\GitHub\downloads\VBScriptCABFiles.zip"


Write-Verbose "Processing: Deleteing VBS Scripting ZIP File..." -Verbose
Remove-Item -Path $VBSZIP -Force

Write-Host
Write-Verbose "Processing: VBS Script Extraction Directory..." -Verbose
Remove-Item -Path $VBS_Extract -Recurse -Force

Write-Host
Write-Verbose "Processing: PowerShell 7.5.0 ZIP file..." -Verbose
Remove-Item -Path $PS7ZIP  -Force

Write-Host
Write-Verbose "Completed: Cleanup of files" -Verbose
