Write-Verbose "Processing: Adding OSD-related PowerShell 5.1 modules to OSDCloud ISO..." -Verbose
Write-Host

Edit-OSDCloudWinPE -PSModuleInstall PackageManagement
Edit-OSDCloudWinPE -PSModuleInstall PackageProvider
Edit-OSDCloudWinPE -PSModuleInstall Pester
Edit-OSDCloudWinPE -PSModuleInstall PowerShellGet
Edit-OSDCloudWinPE -PSModuleInstall OSDCloudGUI
Edit-OSDCloudWinPE -PSModuleInstall OSDCloudAzure
Edit-OSDCloudWinPE -PSModuleInstall AutopilotOOBE
Edit-OSDCloudWinPE -PSModuleInstall OSDSoftware
Edit-OSDCloudWinPE -PSModuleInstall OSDProgress
Edit-OSDCloudWinPE -PSModuleInstall PSWindowsUpdate

Write-Host
Write-Verbose "Completed: Adding OSD-related PowerShell 5.1 modules to OSDCloud ISO..." -Verbose
Write-Host

Write-Verbose "Processing: Adding Azure/Cloud-related PowerShell 5.1 modules to OSDCloud ISO..." -Verbose
Write-Host

Edit-OSDCloudWinPE -PSModuleInstall Azure
Edit-OSDCloudWinPE -PSModuleInstall AzureAD
Edit-OSDCloudWinPE -PSModuleInstall Az.Accounts
Edit-OSDCloudWinPE -PSModuleInstall Az.Storage
Edit-OSDCloudWinPE -PSModuleInstall Az.Resources
Edit-OSDCloudWinPE -PSModuleInstall Az.KeyVault
Edit-OSDCloudWinPE -PSModuleInstall Microsoft.Graph

Write-Host
Write-Verbose "Completed: Adding Azure/Cloud-related PowerShell 5.1 modules to OSDCloud ISO..." -Verbose
Write-Host

Write-Verbose "Processing: Adding Wireless profile management-related PowerShell 5.1 modules to OSDCloud ISO..." -Verbose
Write-Host

Edit-OSDCloudWinPE -PSModuleInstall wifiprofilemanagement
Edit-OSDCloudWinPE -PSModuleInstall WiFiProfileManagementDsc
Edit-OSDCloudWinPE -PSModuleInstall WifiTools

Write-Host
Write-Verbose "Completed: Adding Wireless profile management-related PowerShell 5.1 modules to OSDCloud ISO..." -Verbose
Write-Host
