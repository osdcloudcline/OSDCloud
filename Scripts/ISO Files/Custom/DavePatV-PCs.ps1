Write-Host
Write-Verbose "Processing: Dave Desktop Drivers..." -Verbose
Write-Host

$DaveDesktopEthernet1 = "C:\Drivers\Custom\Dave Desktop\Ethernet1"
$DaveDesktopEthernet2 = "C:\Drivers\Custom\Dave Desktop\Ethernet2"
$DaveDesktopEthernet3 = "C:\Drivers\Custom\Dave Desktop\Ethernet3"
$DaveDesktopEthernet4 = "C:\Drivers\Custom\Dave Desktop\Ethernet4"
$DaveDesktopEthernet5 = "C:\Drivers\Custom\Dave Desktop\Ethernet5"
$DaveDesktopEthernet6 = "C:\Drivers\Custom\Dave Desktop\Ethernet6"
$DaveDesktopEthernet7 = "C:\Drivers\Custom\Dave Desktop\Ethernet7"

$DaveWLAN = "C:\Drivers\Custom\Dave Desktop\WLAN1"

$DaveStorage = "C:\Drivers\Custom\Dave Desktop\Storage1"

$DaveSystemDrivers = "C:\Drivers\Custom\Dave Desktop\System Drivers"


Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet1
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet2
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet3
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet4
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet5
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet6
Edit-OSDCloudWinPe -DriverPath $DaveDesktopEthernet7

Edit-OSDCloudWinPe -DriverPath $DaveWLAN
Edit-OSDCloudWinPe -DriverPath $DaveStorage
Edit-OSDCloudWinPe -DriverPath $DaveSystemDrivers

Write-Host
Write-Verbose "Completed: Dave Desktop Drivers..." -Verbose
Write-Host


Write-Host
Write-Verbose "Processing: Pat Laptop Drivers..." -Verbose
Write-Host

$PatPCWLAN1 = "C:\Drivers\Custom\Pat Laptop\WLAN1"
$PatPCWLAN2 = "C:\Drivers\Custom\Pat Laptop\WLAN2"
$PatPCStorage1 = "C:\Drivers\Custom\Pat Laptop\Storage1"
$PatPCStorage2 = "C:\Drivers\Custom\Pat Laptop\Storage2"

Edit-OSDCloudWinPe -DriverPath $PatPCWLAN1
Edit-OSDCloudWinPe -DriverPath $PatPCWLAN2
Edit-OSDCloudWinPe -DriverPath $PatPCStorage1
Edit-OSDCloudWinPe -DriverPath $PatPCStorage2

Write-Host
Write-Verbose "Completed: Pat Laptop Drivers..." -Verbose
Write-Host
