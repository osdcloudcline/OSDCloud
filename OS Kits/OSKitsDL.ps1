$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

Write-Host "Accessing OSD Cloud\OS Kits GitHub Repo from OSDCloudCline to download Windows SDK, ADK, PE ADK Add-On, MDT 64-bit and MSDaRT setup files..." -ForegroundColor Cyan

Write-Host "Processing and Downloading File 1 of 5: Windows 11 22H2 SDK Setup File..." -ForegroundColor Cyan
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe' -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading File 2 of 5: Windows 11 22H2 ADK Setup File..." -ForegroundColor Cyan
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe' -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading File 3 of 5: Windows 11 22H2 PE ADK Add-On Setup File..." -ForegroundColor Cyan
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe' -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading File 4 of 5: MSDaRT Setup File..." -ForegroundColor Cyan
$MSDARTURL = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MSDaRT100.msi"
Save-WebFile "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MSDaRT100.msi" -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading File 5 of 5: MDT Setup File..." -ForegroundColor Cyan
$MDTURL = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MicrosoftDeploymentToolkit_x64.msi"
Save-WebFile "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MicrosoftDeploymentToolkit_x64.msi" -DestinationDirectory $OSDCloudGHdownloads


Write-Host "Completed All Downloads..." -ForegroundColor Green
