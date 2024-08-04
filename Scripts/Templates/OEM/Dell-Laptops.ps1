$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog

Function Show-DellAlienware(){
$AlienwareWorkspace = "C:\OSDCloud\Laptops\Dell\Alienware"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Alienware laptops..."
New-OSDCloudWorkspace -WorkspacePath $AlienwareWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Alienware Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Alienware Laptops'
Write-Verbose "Finished creating Dell Alienware Laptop Template..." -Verbose
}

Function Show-DellGSeries(){
$GSeriesWorkspace = "C:\OSDCloud\Laptops\Dell\G-Series"
Write-Verbose "Creating new OSD Cloud Workspace for Dell G-Series laptops..."
New-OSDCloudWorkspace -WorkspacePath $GSeriesWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell G-Series Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell G-Series Laptops'
Write-Verbose "Finished creating Dell G-Series Laptop Template..." -Verbose
}

Function Show-DellXPS(){
$XPSWorkspace = "C:\OSDCloud\Laptops\Dell\XPS"
Write-Verbose "Creating new OSD Cloud Workspace for Dell XPS laptops..."
New-OSDCloudWorkspace -WorkspacePath $XPSWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell XPS Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell XPS Laptops'
Write-Verbose "Finished creating Dell XPS Laptop Template..." -Verbose
}

Function Show-DellInspiron(){
$InspironWorkspace = "C:\OSDCloud\Laptops\Dell\Inspiron"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Inspiron laptops..."
New-OSDCloudWorkspace -WorkspacePath $InspironWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Inspiron Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Inspiron Laptops'
Write-Verbose "Finished creating Dell Inspiron Laptop Template..." -Verbose
}

Function Show-DellLatitude(){
$LatitudeWorkspace = "C:\OSDCloud\Laptops\Dell\Latitude"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Latitude laptops..."
New-OSDCloudWorkspace -WorkspacePath $LatitudeWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Latitude Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Latitude Laptops'
Write-Verbose "Finished creating Dell Latitude Laptop Template..." -Verbose
}

Show-DellAlienware

Show-DellGSeries

Show-DellXPS

Show-DellInspiron

Show-DellLatitude




Stop-Transcript
