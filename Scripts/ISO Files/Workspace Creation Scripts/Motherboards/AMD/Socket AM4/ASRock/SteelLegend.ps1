################################################
# OSDCloud Template and Workspace configuration
################################################

Write-Host
Write-Verbose "Confirming OSDCloud Templates......" -Verbose
Get-OSDCloudTemplate

Write-Host
Write-Verbose "Creating New OSDCloud WinRE Template specific for ASRock AM4 Steel Legend motherboards to enable wireless networking support..." -Verbose
New-OSDCloudTemplate -Name ASRock-SteelLegend-AM4 -WinRE

Write-Host
Write-Verbose "Confirming OSDCloudTemplate names......" -Verbose
Get-OSDCloudTemplateNames

Write-Host
Write-Verbose "Retriving OSDCloud Workspaces..." -Verbose
Get-OSDCloudWorkspace

Write-Host
Write-Verbose "Configuring and setting new OSDCloud Workspace Path..." -Verbose
$WorkspacePath = "C:\OSDCloud\ASRock-SteelLegendMotherboards-AM4"
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

$OSDCloudISOPath = "C:\OSDCloud\ASRock-PhantomGamingMotherboards-AM4"

Write-Verbose "Renaming OSDCloud ISO Files..." -Verbose
Rename-Item -Path "$OSDCloudISOPath\OSDCloud.iso" -NewName "$OSDCloudISOPath\OSDCloud-ASRock-SteelLegend-AM4.iso" -Force
Rename-Item -Path "$OSDCloudISOPath\OSDCloud_NoPrompt.iso" -NewName "$OSDCloudISOPath\OSDCloud-ASRock-SteelLegend-AM4_NoPrompt.iso" -Force

###########################################
# Copy OSDCloud ISO Files
#########################################

$ISO1 = "$OSDCloudISOPath\OSDCloud-ASRock-SteelLegend-AM4.iso"
$ISO2 = "$OSDCloudISOPath\OSDCloud-ASRock-SteelLegend-AM4_NoPrompt.iso"

$OSDISODestination = "C:\ISOs\OSDCloud\AMD\Socket AM4\ASRock"

Write-Verbose "Copying OSDCloud ISO Files..." -Verbose
Write-Host

Copy-Item -Path $ISO1 -Destination $OSDISODestination -Force
Copy-Item -Path $ISO2 -Destination $OSDISODestination -Force
