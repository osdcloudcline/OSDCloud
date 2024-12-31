$PS7ToOSDCloudISOLog = "C:\Logs\OSDCloud\PowerShell 7 Support\PS7-Download.log"

Start-Transcript -Path $PS7ToOSDCloudISOLog


Import-Module -Name OSD -Force


# File Paths
$PS7Source = "https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/PowerShell-7.4.6-win-x64.zip"
$PS7Destination = "C:\downloads\OSDCloud"

Write-Verbose "Processing: Windows PowerShell 7 Download" -Verbose
Write-Host

Save-WebFile -SourceUrl $PS7Source -DestinationDirectory $PS7Destination 

Write-Host
Write-Verbose "Completed: PowerShell 7, Version 7.4.6 64-bit has downloaded" -Verbose
Write-Host

Stop-Transcript
