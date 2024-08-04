$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog

$XPSWorkspace = "C:\OSDCloud\Laptops\Dell\XPS"
Write-Verbose "Creating new OSD Cloud Workspace for Dell XPS laptops..."
New-OSDCloudWorkspace -WorkspacePath $XPSWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell XPS Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell XPS Laptops' -WinRE
Write-Verbose "Finished creating Dell XPS Laptop Template..." -Verbose

Stop-Transcript
