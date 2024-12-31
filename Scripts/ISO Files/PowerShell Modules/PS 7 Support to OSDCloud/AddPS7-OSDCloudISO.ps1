$PS7ToOSDCloudISOLog = "C:\Logs\OSDCloud\PowerShell 7 Support\AddToISO.log"

Start-Transcript -Path $PS7ToOSDCloudISOLog


Import-Module -Name OSD -Force


# Settings and File Paths
$PS7Source = "https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/PowerShell-7.4.6-win-x64.zip"
$PS7Destination = "C:\downloads\OSDCloud"
$PS7Extract = "C:\downloads\OSDCloud\PS7"
$mountdir = "C:\Mount"

$sourceWIMDir = "$WorkspacePath\Media\sources"

# Create Mount Directory
New-Item -Path $mountdir -ItemType Directory -Force

# Mount the image
$OSDCloudWorkspacePath = $sourceWIMDir
Mount-WindowsImage -ImagePath "$OSDCloudWorkspacePath\boot.wim" -Path $mountdir -Index 1

Write-Verbose "Processing: Expanding Windows PowerShell 7 ZIP File" -Verbose
Expand-Archive -Path "$PS7Destination\PowerShell-7.4.6-win-x64.zip" -DestinationPath "$mountdir\Program Files\PowerShell\7" -Force

# Update the offline environment PATH for PowerShell 7
$HivePath = "$WinPE_MountFolder\Windows\System32\config\SYSTEM"
reg load "HKLM\OfflineWinPE" $HivePath 
Start-Sleep -Seconds 5

# Add PowerShell 7 Paths to Path and PSModulePath
$RegistryKey = "HKLM:\OfflineWinPE\ControlSet001\Control\Session Manager\Environment"
$CurrentPath = (Get-Item -path $RegistryKey ).GetValue('Path', '', 'DoNotExpandEnvironmentNames')
$NewPath = $CurrentPath + ";%ProgramFiles%\PowerShell\7\"
$Result = New-ItemProperty -Path $RegistryKey -Name "Path" -PropertyType ExpandString -Value $NewPath -Force 

$CurrentPSModulePath = (Get-Item -path $RegistryKey ).GetValue('PSModulePath', '', 'DoNotExpandEnvironmentNames')
$NewPSModulePath = $CurrentPSModulePath + ";%ProgramFiles%\PowerShell\;%ProgramFiles%\PowerShell\7\;%SystemRoot%\system32\config\systemprofile\Documents\PowerShell\Modules\"
$Result = New-ItemProperty -Path $RegistryKey -Name "PSModulePath" -PropertyType ExpandString -Value $NewPSModulePath -Force 

# Add additional environment variables for PowerShell Gallery Support
$APPDATA = "%SystemRoot%\System32\Config\SystemProfile\AppData\Roaming"
$Result = New-ItemProperty -Path $RegistryKey -Name "APPDATA" -PropertyType String -Value $APPDATA -Force 

$HOMEDRIVE = "%SystemDrive%"
$Result = New-ItemProperty -Path $RegistryKey -Name "HOMEDRIVE" -PropertyType String -Value $HOMEDRIVE -Force 

$HOMEPATH = "%SystemRoot%\System32\Config\SystemProfile"
$Result = New-ItemProperty -Path $RegistryKey -Name "HOMEPATH" -PropertyType String -Value $HOMEPATH -Force 

$LOCALAPPDATA = "%SystemRoot%\System32\Config\SystemProfile\AppData\Local"
$Result = New-ItemProperty -Path $RegistryKey -Name "LOCALAPPDATA" -PropertyType String -Value $LOCALAPPDATA -Force 

# Cleanup (to prevent access denied issue unloading the registry hive)
Get-Variable Result | Remove-Variable
Get-Variable RegistryKey | Remove-Variable
[gc]::collect()
Start-Sleep -Seconds 5

# Unload the registry hive
reg unload "HKLM\OfflineWinPE"
