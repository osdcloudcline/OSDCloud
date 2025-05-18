###############################
# ASUS LGA 1851 Motherboards
################################

# ASUS LGA 1851 Motherboards

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Workstation Motherboard Ethernet Drivers..." -Verbose 
$WorkstationEthernet1 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet1"
$WorkstationEthernet2 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet2"
$WorkstationEthernet3 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet3"
$WorkstationEthernet4 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet4"
$WorkstationEthernet5 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet5"
$WorkstationEthernet6 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet6"
$WorkstationEthernet7 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet7"
$WorkstationEthernet8 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet8"
$WorkstationEthernet9 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet9"
$WorkstationEthernet10 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Ethernet10"

Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet1
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet2
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet3
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet4
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet5
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet6
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet7
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet8
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet9
Edit-OSDCloudWinPE -DriverPath $WorkstationEthernet10

Write-Host
Write-Verbose "Processing: ASUS LGA 1851 Workstation Motherboard Storage Drivers..." -Verbose 
$WorkstationStorage1 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Storage1"
$WorkstationStorage2 = "C:\Drivers\Motherboards\ASUS\LGA1851\Workstation\Storage2"

Edit-OSDCloudWinPE -DriverPath $WorkstationStorage1
Edit-OSDCloudWinPE -DriverPath $WorkstationStorage2
