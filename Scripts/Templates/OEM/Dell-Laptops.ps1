$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog


$AlienwareWorkspace = "C:\OSDCloud\Laptops\Dell\Alienware"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Alienware laptops..."
New-OSDCloudWorkspace -WorkspacePath $AlienwareWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Alienware Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Alienware Laptops' -WinRE
Write-Verbose "Finished creating Dell Alienware Laptop Template..." -Verbose



$GSeriesWorkspace = "C:\OSDCloud\Laptops\Dell\G-Series"
Write-Verbose "Creating new OSD Cloud Workspace for Dell G-Series laptops..."
New-OSDCloudWorkspace -WorkspacePath $GSeriesWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell G-Series Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell G-Series Laptops' -WinRE
Write-Verbose "Finished creating Dell G-Series Laptop Template..." -Verbose



$XPSWorkspace = "C:\OSDCloud\Laptops\Dell\XPS"
Write-Verbose "Creating new OSD Cloud Workspace for Dell XPS laptops..."
New-OSDCloudWorkspace -WorkspacePath $XPSWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell XPS Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell XPS Laptops' -WinRE
Write-Verbose "Finished creating Dell XPS Laptop Template..." -Verbose



$InspironWorkspace = "C:\OSDCloud\Laptops\Dell\Inspiron"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Inspiron laptops..."
New-OSDCloudWorkspace -WorkspacePath $InspironWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Inspiron Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Inspiron Laptops' -WinRE
Write-Verbose "Finished creating Dell Inspiron Laptop Template..." -Verbose



$LatitudeWorkspace = "C:\OSDCloud\Laptops\Dell\Latitude"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Latitude laptops..."
New-OSDCloudWorkspace -WorkspacePath $LatitudeWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Latitude Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Latitude Laptops' -WinRE
Write-Verbose "Finished creating Dell Latitude Laptop Template..." -Verbose


Stop-Transcript
