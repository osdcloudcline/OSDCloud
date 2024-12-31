$PS7ToOSDCloudISOLog = "C:\Logs\OSDCloud\PowerShell 7 Support\AddToISO.log"

Start-Transcript -Path $PS7ToOSDCloudISOLog


Import-Module -Name OSD -Force


# Settings and File Paths
$PS7Source = "https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/PowerShell-7.4.6-win-x64.zip"
$PS7Destination = "C:\downloads\OSDCloud"
$PS7Extract = "$PS7Destination\PS7"


Write-Verbose "Processing: Windows PowerShell 7 Download" -Verbose
Save-WebFile -SourceUrl $PS7Source -DestinationDirectory $PS7Destination $PS7Extract


Expand-Archive -Path "$PS7DesTination\PowerShell-7.4.6-win-x64.zip" -DestinationPath 
