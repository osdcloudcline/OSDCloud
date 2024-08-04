$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Vostro\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog

$VostroWorkspace = "C:\OSDCloud\Laptops\Dell\Vostro"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Vostro laptops..."
New-OSDCloudWorkspace -WorkspacePath $VostroWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Vostro Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Vostro Laptops' -WinRE
Write-Verbose "Finished creating Dell Vostro Laptop Template..." -Verbose

Stop-Transcript
