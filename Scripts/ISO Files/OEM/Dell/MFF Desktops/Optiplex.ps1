$DellMFFDesktopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\MFFOptiplex.log"

Start-Transcript -Path $DellMFFDesktopTemplateLog


$OptiplexMFFWorkspace = "C:\OSDCloud\Desktop\Dell\Micro Form Factor\Optiplex"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Micro Form Factor Optiplex Desktops..."
New-OSDCloudWorkspace -WorkspacePath $OptiplexMFFWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Micro Form Factor Optiplex Desktops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Micro Form Factor Optiplex Desktops' -WinRE
Write-Verbose "Finished creating Dell Micro Form Factor Optiplex Desktops Template..." -Verbose

Stop-Transcript
