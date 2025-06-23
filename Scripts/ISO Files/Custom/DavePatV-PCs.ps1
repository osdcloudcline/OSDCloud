Write-Host
Write-Verbose "Processing: Dave Desktop Drivers..." -Verbose
Write-Host

$DaveDesktopEthernet1 = ""
$DaveDesktopEthernet2 = ""
$DaveDesktopEthernet3 = ""
$DaveDesktopEthernet4 = ""
$DaveDesktopEthernet5 = ""
$DaveDesktopEthernet6 = ""
$DaveDesktopEthernet7 = ""


Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet1
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet2
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet3
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet4
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet5
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet6
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet7

Write-Host
Write-Verbose "Completed: Dave Desktop Drivers..." -Verbose
Write-Host


Write-Host
Write-Verbose "Processing: Pat Laptop Drivers..." -Verbose
Write-Host

$PatPCWLAN1 = ""
$PatPCWLAN2 = ""
$PatPCStorage = ""


Edit-OSDCloudWinPe -DriverPath $PatPCWLAN1
Edit-OSDCloudWinPe -DriverPath $PatPCWLAN2
Edit-OSDCloudWinPe -DriverPath $PatPCStorage

Write-Host
Write-Verbose "Completed: Pat Laptop Drivers..." -Verbose
Write-Host
