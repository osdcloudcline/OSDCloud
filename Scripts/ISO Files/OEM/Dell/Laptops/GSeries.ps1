$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog

$GSeriesWorkspace = "C:\OSDCloud\Laptops\Dell\G-Series"
Write-Verbose "Creating new OSD Cloud Workspace for Dell G-Series laptops..."
New-OSDCloudWorkspace -WorkspacePath $GSeriesWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell G-Series Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell G-Series Laptops' -WinRE
Write-Verbose "Finished creating Dell G-Series Laptop Template..." -Verbose

Stop-Transcript
