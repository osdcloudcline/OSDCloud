Write-Verbose "Processing: Adding Cloud-related PowerShell 7.x modules to OSDCloud ISO..." -Verbose
Write-Host

Edit-OSDCloudWinPE -PSModuleInstall Azure

Write-Host
Write-Verbose "Completed: Adding Cloud-related PowerShell 7.x modules to OSDCloud ISO..." -Verbose
Write-Host
