
$SurfaceCloudDriverPath = "C:\Drivers\Cloud Drivers\Surface\Extract"

Write-Host
Write-Verbose "Processing: Integrating OSDCloud Microsoft Surface Tablet Cloud Drivers..." -Verbose
Write-Host 

Edit-OSDCloudWinPe -DriverPath $SurfaceCloudDriverPath

Write-Host
Write-Verbose "Completed: Integrating OSDCloud Microsoft Surface Tablet Cloud Drivers..." -Verbose
Write-Host 
