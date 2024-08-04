$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog

$LatitudeWorkspace = "C:\OSDCloud\Laptops\Dell\Latitude"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Latitude laptops..."
New-OSDCloudWorkspace -WorkspacePath $LatitudeWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Latitude Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Latitude Laptops' -WinRE
Write-Verbose "Finished creating Dell Latitude Laptop Template..." -Verbose


Stop-Transcript
