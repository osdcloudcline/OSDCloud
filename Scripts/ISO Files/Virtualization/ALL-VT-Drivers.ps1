

#################################
# OSDCloud - Cloud Drivers
#################################

Write-Host
Write-Verbose "Integrating OSDCloud - Cloud Drivers..." -Verbose
Write-Host

$DellCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Dell%20Drivers/Dell-CloudDrivers.ps1")
Invoke-Expression $($DellCloudDrivers.Content)

$DellCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows10\1836"
$DellCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows10\22000"
$DellCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Dell\Network\Windows11\Extract"
$DellCloudDriverPath4 = "C:\Drivers\Cloud Drivers\Dell\Windows PE\Extract"
$DellCloudDriverPath5 = "C:\Drivers\Cloud Drivers\Dell\Storage\Other\Extract"
$DellCloudDriverPath6 = "C:\Drivers\Cloud Drivers\Dell\Storage\Windows10\Extract"
$DellCloudDriverPath7 = "C:\Drivers\Cloud Drivers\Dell\Storage\Windows11\Extract"

Write-Verbose "Processing: Integrating OSDCloud Dell Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath4
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath5
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath6
Edit-OSDCloudWinPe -DriverPath $DellCloudDriverPath7

Write-Host

$IntelCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Intel%20Ethernet%20Driver%20Pack/Intel-CloudDrivers.ps1")
Invoke-Expression $($IntelCloudDrivers.Content)

$IntelCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Intel\Network\Client OS"
$IntelCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Intel\Network\Server OS"
$IntelCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Intel\Network\Other\1"
$IntelCloudDriverPath4 = "C:\Drivers\Cloud Drivers\Intel\Network\Other\2"

Write-Verbose "Processing: Integrating OSDCloud Intel Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $IntelCloudDriverPath4

$SurfaceCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Microsoft%20Surface%20Drivers/Surface-CloudDrivers.ps1")
Invoke-Expression $($SurfaceCloudDrivers.Content)

$SurfaceCloudDriverPath = "C:\Drivers\Cloud Drivers\Surface\Extract"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud Microsoft Surface Tablet Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $SurfaceCloudDriverPath


$NutanixCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/Nutanix%20Drivers/Nutanix-CloudDrivers.ps1")
Invoke-Expression $($NutanixCloudDrivers.Content)

$NutanixCloudDriverPath1 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\1"
$NutanixCloudDriverPath2 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\2"
$NutanixCloudDriverPath3 = "C:\Drivers\Cloud Drivers\Nutanix\Extract\3"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud Nutanix Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $NutanixCloudDriverPath3


$USBCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/USB%20Drivers/USB-CloudDrivers.ps1")
Invoke-Expression $($USBCloudDrivers.Content)

$USBCloudDriverPath1 = "C:\Drivers\Cloud Drivers\USB\Extract\1"
$USBCloudDriverPath2 = "C:\Drivers\Cloud Drivers\USB\Extract\2"
$USBCloudDriverPath3 = "C:\Drivers\Cloud Drivers\USB\Extract\3"
$USBCloudDriverPath4 = "C:\Drivers\Cloud Drivers\USB\Extract\4"
$USBCloudDriverPath5 = "C:\Drivers\Cloud Drivers\USB\Extract\5"
$USBCloudDriverPath6 = "C:\Drivers\Cloud Drivers\USB\Extract\6"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud USB Cloud Drivers..." --Verbose

Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath3
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath4
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath5
Edit-OSDCloudWinPe -DriverPath $USBCloudDriverPath6

$WLANCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/WLAN%20Drivers/WLAN-CloudDrivers.ps1")
Invoke-Expression $($WLANCloudDrivers.Content)

$WLANCloudDriverPath = "C:\Drivers\Cloud Drivers\WLAN\Extract"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud WiFi Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $WLANCloudDriverPath

$VMWareCloudDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/OSDCloud%20-%20Cloud%20Drivers/VMWare%20Drivers/VMWare-CloudDrivers.ps1")
Invoke-Expression $($VMWareCloudDrivers.Content)

$VMWareCloudDriverPath1 = "C:\Drivers\Cloud Drivers\VMWare\Extract\1"
$VMWareCloudDriverPath2 = "C:\Drivers\Cloud Drivers\VMWare\Extract\2"
$VMWareCloudDriverPath3 = "C:\Drivers\Cloud Drivers\VMWare\Extract\3"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud VMWare Cloud Drivers..." -Verbose

Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath1
Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath2
Edit-OSDCloudWinPe -DriverPath $VMWareCloudDriverPath3

Write-Host
Write-Verbose "Completed: Integration of OSDCloud - Cloud Drivers..." -Verbose
Write-Host




Copy-Item -Path $ISO1 -Destination $OSDISODestination -Force
Copy-Item -Path $ISO2 -Destination $OSDISODestination -Force
