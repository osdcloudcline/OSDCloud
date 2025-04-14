################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ALL-Virtual -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\All-VT"
New-OSDCloudWorkspace -WorkspacePath $WorkspacePath
Set-OSDCloudWorkspace -WorkspacePath $WorkspacePath

Write-Host
Write-Verbose "Confirming new OSDCloud Workspace Path..." -Verbose
Get-OSDCloudWorkspace

##########################################
# OSDCloud WebScript for Startnet.cmd
##########################################

Write-Verbose "Adding a customized PowerShell based Startnet script and configuring OSDCloud to execute it on startup..." -Verbose
Edit-OSDCloudWinPE -WebPSScript https://raw.githubusercontent.com/osdcloudcline/OSDCloud/refs/heads/main/Scripts/ISO%20Files/OSDCloud%20Startup%20Scripts/OSDCloudStartnet.ps1
Write-Host

###########################################
# Rename OSDCloud ISO
#########################################

$OSDCloudISOPath = "C:\OSDCloud\ALL-VT"

Write-Verbose "Renaming OSDCloud ISO Files..." -Verbose
Write-Host
Rename-Item -Path "$OSDCloudISOPath\OSDCloud.iso" -NewName "C:\OSDCloud\ALL-VT\OSDCloud-ALL-VT.iso" -Force
Rename-Item -Path "$OSDCloudISOPath\OSDCloud_NoPrompt.iso" -NewName "C:\OSDCloud\ALL-VT\OSDCloud-ALL-VT_NoPrompt.iso" -Force

###########################################
# Copy OSDCloud ISO Files
#########################################

$ISO1 = "C:\OSDCloud\ALL-VT\OSDCloud-ALL-VT.iso"
$ISO2 = "C:\OSDCloud\ALL-VT\OSDCloud-ALL-VT_NoPrompt.iso"

$OSDISODestination = "C:\ISOs\OSDCloud\Vitualization"

Write-Verbose "Copying OSDCloud ISO Files..." -Verbose
Write-Host

Copy-Item -Path $ISO1 -Destination $OSDISODestination -Force
Copy-Item -Path $ISO2 -Destination $OSDISODestination -Force
