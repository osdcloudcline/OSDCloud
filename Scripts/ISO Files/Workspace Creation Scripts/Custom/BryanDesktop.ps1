################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support for Intel Socket LGA 1851 systems..." -Verbose
New-OSDCloudTemplate -Name OSDCloud-BryanDesktop-LGA1851 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\BryanDesktop-LGA1851"
New-OSDCloudWorkspace -WorkspacePath $WorkspacePath
Set-OSDCloudWorkspace -WorkspacePath $WorkspacePath

Write-Host
Write-Verbose "Confirming new OSDCloud Workspace Path..." -Verbose
Get-OSDCloudWorkspace
