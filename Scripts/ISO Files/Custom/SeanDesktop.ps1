#############################################
# Alienware M18 R2 - Sean Laptop
#############################################

Write-Host
Write-Verbose "Processing: Alienware M18 R2 drivers" -Verbose
Write-Host

Write-Verbose "Processing: Alienware M18 R2 Ethernet Driver..." -Verbose
$EthernetDriver = "C:\Drivers\Custom\Sean Laptops\Alienware M18 R2\Ethernet"

Edit-OSDCloudWinPE -DriverPath $EthernetDriver

Write-Host
Write-Verbose "Processing: Alienware M18 R2 WiFi Driver..." -Verbose
$WiFiDriver = "C:\Drivers\Custom\Sean Laptops\Alienware M18 R2\WLAN"

Edit-OSDCloudWinPE -DriverPath $WiFiDriver 

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Storage Driver..." -Verbose
$StorageDriver = "C:\Drivers\Custom\Sean Laptops\Alienware M18 R2\Storage"

Edit-OSDCloudWinPE -DriverPath $StorageDriver 

Write-Host
Write-Verbose "Completed: Integration of Alienware M18 R2 drivers into OSDCloud" -Verbose
Write-Host

