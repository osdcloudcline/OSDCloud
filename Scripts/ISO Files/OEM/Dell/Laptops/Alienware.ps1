ll$DellLaptopTemplateLog = "C:\Logs\OSDCloud\Templates\OEM\Dell\Laptops.log"

Function Get-OSDCloudMount(){
$OSDCloudMountQues = Read-Host -Prompt 'Is the OSD Cloud boot.wim already mounted?'
If(($OSDCloudMountQues -eq "Y") -or ($OSDCloudMountQues -eq "y") -or ($OSDCloudMountQues -eq "Yes") -or ($OSDCloudMountQues -eq "yes")){
$OSDCloudMountDir = Read-Host -Prompt 'Please provide current mount directory'
}
ElseIf(($OSDCloudMountQues -eq "N") -or ($OSDCloudMountQues -eq "n") -or ($OSDCloudMountQues -eq "No") -or ($OSDCloudMountQues -eq "no")){
$OSDCloudWIM = Read-Host 'Please Specify the location of your OSDCloud boot.wim file'
$mountdir = Read-Host 'Please specify the mount point'
Write-Host "Mounting OSDCloud boot.wim..." 
Mount-WindowsImage -ImagePath "$OSDCloudWIM\boot.wim" -Index 1 -Path $mountdir
Write-Host "Mounting completed..."
}
}


Function Get-OSDCloudDismount(){
$mountdir = Read-Host -Prompt 'Please provide mount directory'
Dismount-WindowsImage -Path $mountdir -Save

}

#######################################################################################
#### DELL ALIENWARE NETWORK DRIVER EXTRACTION LOCATIONS ###############################
#######################################################################################

$AWOSDCloudAPM_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Dell Airplane Mode"

$AWOSDCloudIntelDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Intel\NIC1"
$AWOSDCloudIntelDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Intel\NIC2"
$AWOSDCloudIntelDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Intel\NIC3"

$AWOSDCloudKillerNICDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC1"
$AWOSDCloudKillerNICDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC2"
$AWOSDCloudKillerNICDrivers3A_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC3A"
$AWOSDCloudKillerNICDrivers3B_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC3B"
$AWOSDCloudKillerNICDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\NIC4"

$AWOSDCloudKillerWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi1"
$AWOSDCloudKillerWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi2"
$AWOSDCloudKillerWiFiDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi3"
$AWOSDCloudKillerWiFiDrivers4_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi4"
$AWOSDCloudKillerWiFiDrivers5_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Killer\WiFi5"

$AWOSDCloudMediaTekNICDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\MediaTek\NIC1"
$AWOSDCloudMediaTekNICDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\MediaTek\NIC2"

$AWOSDCloudQualcommWiFiDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Qualcomm\WiFi1"
$AWOSDCloudQualcommWiFiDrivers2_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Qualcomm\WiFi2"
$AWOSDCloudQualcommWiFiDrivers3_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Qualcomm\WiFi3"

$AWOSDCloudRealtekDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Network\Realtek\NIC1"


#######################################################################################
#### DELL ALIENWARE STORAGE DRIVER EXTRACTION LOCATIONS ###############################
#######################################################################################

$AWOSDCloudIRSTDrivers1_Extract = "C:\Drivers\OSDCloud\Dell\Laptops\Alienware\Storage\IRST"

#######################################################################################
####               DELL ALIENWARE NETWORK DRIVER URLS                 #################
#######################################################################################

$OSDCloudAWDELLAPM_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-AirplaneMode.zip"

$OSDCloudAWDELLIntel1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-IntelDrivers1.zip"
$OSDCloudAWDELLIntel2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-IntelDrivers2.zip"
$OSDCloudAWDELLIntel3_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-IntelDrivers3.zip"

$OSDCloudAWDELLKiller1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers1.zip"
$OSDCloudAWDELLKiller2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers2.zip"
$OSDCloudAWDELLKiller3A_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers3A.zip"
$OSDCloudAWDELLKiller3B_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers3B.zip"
$OSDCloudAWDELLKiller4_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerNICDrivers4.zip"

$OSDCloudAWDELLKillerWiFi1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi1.zip"
$OSDCloudAWDELLKillerWiFi2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi2.zip"
$OSDCloudAWDELLKillerWiFi3_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi3.zip"
$OSDCloudAWDELLKillerWiFi4_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi4.zip"
$OSDCloudAWDELLKillerWiFi5_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-KillerWiFi5.zip"

$OSDCloudAWDELLMediaTek1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-MediaTek-NIC1Drivers.zip"
$OSDCloudAWDELLMediaTek2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-MediaTek-NIC2Drivers.zip"

$OSDCloudAWDELLQualcommWiFi1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-QualcommBTWiFi1.zip"
$OSDCloudAWDELLQualcommWiFi2_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-QualcommBTWiFi2.zip"
$OSDCloudAWDELLQualcommWiFi3_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-QualcommWiFi1.zip"

$OSDCloudAWDELLRealtek1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-RealtekUSB-GB-NICDrivers.zip"

#######################################################################################
####               VMWare ESXI DRIVER URL                            #################
#######################################################################################

$OSDCloudVMWareESXI = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/VMWare/ESXIDrivers.zip"

#######################################################################################
####               DELL ALIENWARE STORAGE DRIVER URLS                 #################
#######################################################################################

$OSDCloudAWDELL_IRST_Storage1_URL = "https://github.com/osdcloudcline/OSDCloudDrivers/raw/main/Network%20and%20Storage%20/Dell%20/Laptops%20/Alienware/Alienware-OSDCloud-StorageDrivers.zip"

#######################################################################################
####            OSDCloud Downloads, ESXI and DELL ALIENWARE GITHUB DOWNLOADS      #####
#######################################################################################

$GHdownloads = "C:\Drivers\OSDCloud\Dell\Alienware\GitHub\downloads"
$VMGHdownloads = "C:\Drivers\OSDCloud\VMWare\ESXI\GitHub\downloads"
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"



Start-Transcript -Path $DellLaptopTemplateLog

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck 
Import-Module -Name OSD -Force

Write-Host "Acquiring DELL Alienware Network Card, WiFi and Bluetooth Drivers from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $OSDCloudAWDELLAPM_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLIntel1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLIntel2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLIntel3_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLKiller1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller3A_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller3B_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKiller4_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi3_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi4_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLKillerWiFi5_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLMediaTek1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLMediaTek2_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLQualcommWiFi1_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLQualcommWiFi2_URL -DestinationDirectory $GHdownloads
Save-WebFile -SourceUrl $OSDCloudAWDELLQualcommWiFi3_URL -DestinationDirectory $GHdownloads

Save-WebFile -SourceUrl $OSDCloudAWDELLRealtek1_URL -DestinationDirectory $GHdownloads

Write-Host
Write-Host
Write-Host
Write-Host "Acquiring VMWare ESXI Drivers from GitHub repository..." -ForegroundColor Green
Save-WebFile -SourceUrl $OSDCloudVMWareESXI -DestinationDirectory $VMGHdownloads
Write-Host
Write-Host
Write-Host
Write-Host "Acquiring DELL Alienware Storage Drivers from GitHub repository..." -ForegroundColor Green

Save-WebFile -SourceUrl $OSDCloudAWDELL_IRST_Storage1_URL -DestinationDirectory $GHdownloads

Write-Host "Dell Alienware downloads completed..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "Extracting DELL Alienware Network Card, WiFi and Bluetooth Drivers..." -ForegroundColor Green

Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-AirplaneMode.zip" -DestinationPath "$AWOSDCloudAPM_Extract" 
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-IntelDrivers1.zip" -DestinationPath "$AWOSDCloudIntelDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-IntelDrivers2.zip" -DestinationPath "$AWOSDCloudIntelDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-IntelDrivers3.zip" -DestinationPath "$AWOSDCloudIntelDrivers3_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers1.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers2.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers3A.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers3A_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers3B.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers3B_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerNICDrivers4.zip" -DestinationPath "$AWOSDCloudKillerNICDrivers4_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi1.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi2.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers2_Extract" 
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi3.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers3_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi4.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers4_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-KillerWiFi5.zip" -DestinationPath "$AWOSDCloudKillerWiFiDrivers5_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-MediaTek-NIC1Drivers.zip" -DestinationPath "$AWOSDCloudMediaTekNICDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-MediaTek-NIC2Drivers.zip" -DestinationPath "$AWOSDCloudMediaTekNICDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-QualcommBTWiFi1.zip" -DestinationPath "$AWOSDCloudQualcommWiFiDrivers1_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-QualcommBTWiFi2.zip" -DestinationPath "$AWOSDCloudQualcommWiFiDrivers2_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-QualcommWiFi1.zip" -DestinationPath "$AWOSDCloudQualcommWiFiDrivers3_Extract"
Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-RealtekUSB-GB-NICDrivers.zip" -DestinationPath "$AWOSDCloudRealtekDrivers1_Extract"


Write-Host "Extracting DELL Alienware Storage Drivers..." -ForegroundColor Green

Expand-Archive -Path "$GHdownloads\Alienware-OSDCloud-StorageDrivers.zip" -DestinationPath "$AWOSDCloudIRSTDrivers1_Extract"

$AlienwareWorkspace = "C:\OSDCloud\Laptops\Dell\Alienware"
Write-Verbose "Creating and Setting new OSD Cloud Workspace for Dell Alienware laptops..."
New-OSDCloudWorkspace -WorkspacePath $AlienwareWorkspace
Set-OSDCloudWorkspace -WorkspacePath $AlienwareWorkspace
Get-OSDCloudWorkspace
Write-Verbose "Creating New OSD Cloud Template for Dell Alienware Laptops..." -Verbose
New-OSDCloudTemplate -Name 'Dell Alienware Laptops' -WinRE
Write-Verbose "Finished creating Dell Alienware Laptop Template..." -Verbose

Write-Host "Integrating Dell Cloud Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -CloudDriver Dell

Write-Host "Integrating Dell Alienware Network Card, WiFi and Bluetooth Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\Dell\Alienware\Network"

Write-Host "Integrating Dell Alienware Storage Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\Dell\Alienware\Storage"

Write-Host "Integrating VMWare Cloud Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -CloudDriver VMWare

Write-Host "Integrating VMWare ESXI Drivers into OSDCloud..." -ForegroundColor Green
Edit-OSDCloudWinPE -DriverPath "C:\Drivers\OSDCloud\VMWare\ESXI"

$OSDCloudExtraFiles = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloud/raw/main/Extra%20Files/OSDCloudExtraFiles.ps1")
Invoke-Expression $($OSDCloudExtraFiles.Content)


Stop-Transcript
