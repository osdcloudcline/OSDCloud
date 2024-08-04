$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Start-Transcript -Path $DellLaptopTemplateLog


$AlienwareWorkspace = "C:\OSDCloud\Laptops\Dell\Alienware"
Write-Verbose "Creating new OSD Cloud Workspace for Dell Alienware laptops..."
New-OSDCloudWorkspace -WorkspacePath $AlienwareWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Alienware Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Alienware Laptops' -WinRE
Write-Verbose "Finished creating Dell Alienware Laptop Template..." -Verbose

$OSDCloudExtraFiles = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/OSDCloudExtraFiles.ps1")
Invoke-Expression $($OSDCloudExtraFiles.Content)

Stop-Transcript
