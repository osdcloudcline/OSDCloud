Write-Host
Write-Verbose "Processing: Bryan Desktop - Intel Core Ultra 9 285K ASUS Z890-A ROG STRIX LGA1851 Drivers..." -Verbose
Write-Host

$BryanDesktopEthernet = "C:\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851\Ethernet"
$BryanDesktopStorage = "C:\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851\Storage"
$BryanDesktopWLANPath = "C:\Drivers\Custom\Bryan Desktop\ASUS Z890-A STRIX\LGA1851\WLAN"

Edit-OSDCloudWinPe -DriverPath $BryanDesktopEthernetPath
Edit-OSDCloudWinPe -DriverPath $BryanDesktopStorage
Edit-OSDCloudWinPe -DriverPath $BryanDesktopWLAN

Write-Host
Write-Verbose "Completed: Bryan Desktop - Intel Core Ultra 9 285K ASUS Z890-A ROG STRIX LGA1851 Drivers..." -Verbose
Write-Host


