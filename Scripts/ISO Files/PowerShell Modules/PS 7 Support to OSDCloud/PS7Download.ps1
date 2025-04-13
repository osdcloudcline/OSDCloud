$PS7ToOSDCloudISOLog = "C:\Logs\OSDCloud\PowerShell 7 Support\PS7-Download.log"

Start-Transcript -Path $PS7ToOSDCloudISOLog

Install-Module -Name OSD -Force
Import-Module -Name OSD -Force


# File Paths
$PS7Source = "https://github.com/PowerShell/PowerShell/releases/download/v7.5.0/PowerShell-7.5.0-win-x64.zip"
$PS7Destination = "C:\OSDCloud\GitHub\downloads\PowerShell\7"

Write-Verbose "Processing: Windows PowerShell 7 Download" -Verbose
Write-Host

Save-WebFile -SourceUrl $PS7Source -DestinationDirectory $PS7Destination 

Write-Host
Write-Verbose "Completed: PowerShell 7, Version 7.5.0 64-bit has downloaded" -Verbose
Write-Host

Stop-Transcript
