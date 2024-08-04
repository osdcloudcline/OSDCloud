$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog

$InspironWorkspace = "C:\OSDCloud\Laptops\Dell\Inspiron"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Inspiron laptops..."
New-OSDCloudWorkspace -WorkspacePath $InspironWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Inspiron Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Inspiron Laptops' -WinRE
Write-Verbose "Finished creating Dell Inspiron Laptop Template..." -Verbose

Stop-Transcript
