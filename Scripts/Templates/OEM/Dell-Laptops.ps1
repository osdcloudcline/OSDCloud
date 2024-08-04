$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Write-Verbose "Creating New OSD Cloud Template for Dell Laptops..." -Verbose

New-OSDCloudTemplate -Name 'Dell Alienware Laptops'
Write-Verbose "Finished creating Dell Alienware Laptop Template..." -Verbose
New-OSDCloudTemplate -Name 'Dell G-Series Laptops'
Write-Verbose "Finished creating Dell G-Series Laptop Template..." -Verbose
New-OSDCloudTemplate -Name 'Dell XPS Laptops'
Write-Verbose "Finished creating Dell XPS Laptop Template..." -Verbose
New-OSDCloudTemplate -Name 'Dell Inspiron Laptops'
Write-Verbose "Finished creating Dell Inspiron Laptop Template..." -Verbose
New-OSDCloudTemplate -Name 'Dell Latitude Laptops'
Write-Verbose "Finished creating Dell Latitude Laptop Template..." -Verbose

