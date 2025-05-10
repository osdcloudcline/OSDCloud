#################################
# OSDCloud - Hyper-V VT Drivers
#################################

Write-Host
Write-Verbose "Processing: Microsoft Hyper-V Virtualization Drivers..." -Verbose 

$HyperVEthernet = "C:\Drivers\Virtualization\HyperV\Network"

Edit-OSDCloudWinPE -DriverPath $HyperVEthernet
