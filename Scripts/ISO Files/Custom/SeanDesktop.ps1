#############################################
# Alienware M18 R2 - Sean Laptop
#############################################

Write-Host
Write-Verbose "Processing: Alienware M18 R2 drivers" -Verbose
Write-Host

Write-Verbose "Processing: Alienware M18 R2 Ethernet Driver..." -Verbose
$EthernetDriver = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\Ethernet"

Edit-OSDCloudWinPE -DriverPath $EthernetDriver

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Bluetooth Driver..." -Verbose
$BluetoothDriver = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\Bluetooth"

Edit-OSDCloudWinPE -DriverPath $BluetoothDriver

Write-Host
Write-Verbose "Processing: Alienware M18 R2 WiFi Driver..." -Verbose
$WiFiDriver = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\WiFi"

Edit-OSDCloudWinPE -DriverPath $WiFiDriver 

Write-Host
Write-Verbose "Processing: Alienware M18 R2 Storage Driver..." -Verbose
$StorageDriver = "C:\OSDCloud\Drivers\Custom\Sean Laptops\Alienware M18 R2\Storage"

Edit-OSDCloudWinPE -DriverPath $StorageDriver 

Write-Host
Write-Verbose "Completed: Integration of Alienware M18 R2 drivers into OSDCloud" -Verbose
Write-Host

