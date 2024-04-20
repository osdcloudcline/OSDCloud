$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

Write-Host "Accessing OSD Cloud\OS Kits GitHub Repo from OSDCloudCline to download Windows SDK, ADK and PE ADK Add-On files..." -ForegroundColor Cyan

Write-Host "Processing and Downloading: Windows 11 22H2 SDK Setup File..." -ForegroundColor Cyan
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe' -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading: Windows 11 22H2 ADK Setup File..." -ForegroundColor Cyan
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe' -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading: Windows 11 22H2 PE ADK Add-On Setup File..." -ForegroundColor Cyan
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe' -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading: MSDaRT Setup File..." -ForegroundColor Cyan
$MSDARTURL = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MSDaRT100.msi"
Save-WebFile "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MSDaRT100.msi" -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Processing and Downloading: MDT Setup File..." -ForegroundColor Cyan
$MDTURL = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MicrosoftDeploymentToolkit_x64.msi"
Save-WebFile "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/MicrosoftDeploymentToolkit_x64.msi" -DestinationDirectory $OSDCloudGHdownloads


Write-Host "Completed All Downloads..." -ForegroundColor Green
