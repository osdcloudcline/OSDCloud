#################################
# OSDCloud - unRAID VT Drivers
#################################

Write-Host
Write-Verbose "Processing: unRAID Virtualization Drivers..." -Verbose 

$unRAIDPath1 = "C:\Drivers\Virtualization\unRAID\Network1"
$unRAIDPath2 = "C:\Drivers\Virtualization\unRAID\Network2"
$unRAIDPath3 = "C:\Drivers\Virtualization\unRAID\Storage1"
$unRAIDPath4 = "C:\Drivers\Virtualization\unRAID\FileSystem1"
$unRAIDPath5 = "C:\Drivers\Virtualization\unRAID\Storage2"
$unRAIDPath6 = "C:\Drivers\Virtualization\unRAID\FileSystem2"

Edit-OSDCloudWinPE -DriverPath $unRAIDPath1
Edit-OSDCloudWinPE -DriverPath $unRAIDPath2
Edit-OSDCloudWinPE -DriverPath $unRAIDPath3
Edit-OSDCloudWinPE -DriverPath $unRAIDPath4
Edit-OSDCloudWinPE -DriverPath $unRAIDPath5
Edit-OSDCloudWinPE -DriverPath $unRAIDPath6
