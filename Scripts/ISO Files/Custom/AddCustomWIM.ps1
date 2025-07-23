##########################################
# Add Custom WIM Image
##########################################
Function Show-CustomImage{
$CustomImageLog = "C:\Logs\OSDCloud\Images\AddCustom.log"
Start-Transcript -Path $CustomImageLog
$Question = Read-Host -Prompt 'Do you want or need to add an additional Windows Installation WIM file?'
$ExtractWIM = Read-Host 'Do you need to extract a WIM Image before copying to OSDCloud?'
If(($Question -and $ExtractWIM -eq "yes") -or ($Question -and $ExtractWIM -eq "Yes") -or ($Question -and $ExtractWIM -eq "y") -or ($Question -and $ExtractWIM -eq "Y")){
$WindowsImage = Read-Host -Prompt 'Please specify path to the Windows image you want to add to OSDCloud (EG: D:\OS\Windows11)'
$sourceWIM = "\sources\install.wim"
$WIMFile = Join-Path -Path $WindowsImage '\Sources\install.wim'
$Destination = "$(Get-OSDCloudWorkspace)\Media\OSDCloud\OS"
Write-Verbose "Creating Custom WIM OS folder..." -Verbose
New-Item -Path $Destination -ItemType Directory -Force
Write-Verbose "Exporting Client WIM File and copying Windows Image to OSDCloud..." -Verbose
Get-WindowsImage -ImagePath $WIMFile | Format-Table ImageIndex, ImageName
$Index = Read-Host -Prompt ' Select edition'
$ExportWIMFileName = Read-Host -Prompt 'Please specify a file name for the exported WIM file, including the file extension (EG: Windows11ProWorkstations.wim)'
$DescriptionName = Read-Host -Prompt 'Please enter a descriptive name for the image'
Export-WindowsImage -SourceImagePath "$WIMFile" -SourceIndex $Index -DestinationImagePath "$Destination\$ExportWIMFileName" -DescriptionName "$DescriptionName" 
Stop-Transcript
}
ElseIf (($Question -eq "yes" -and $ExtractWIM -eq "no") -or ($Question -eq "Yes"-and $ExtractWIM -eq "No") -or ($Question -eq "y" -and $ExtractWIM -eq "n") -or ($Question -eq "Y"-and $ExtractWIM -eq "N")){
$CustomImageLog = "C:\Logs\OSDCloud\Images\AddCustom.log"
Start-Transcript -Path $CustomImageLog
$WindowsImage = Read-Host -Prompt 'Please specify path to the Windows image you want to add to OSDCloud (EG: D:\OS\Windows11)'
$sourceWIM = "\sources\install.wim"
$WIMFile = Join-Path -Path $WindowsImage -ChildPath $sourceWIM
$Destination = "$(Get-OSDCloudWorkspace)\Media\OSDCloud\OS"
Write-Verbose "Creating Custom WIM OS folder..." -Verbose
New-Item -Path $Destination -ItemType Directory -Force
Write-Verbose "Copying Windows Image to OSDCloud..." -Verbose
Copy-Item -Path "$WIMFile" -Destination "$Destination" -Force
Stop-Transcript
}
}

##################################
# Add Provisioning Packages
##################################
Function Show-PPKGFiles{
$PPKGLog = "C:\Logs\OSDCloud\Images\AddPPKG.log"
Start-Transcript -Path $PPKGLog
$PPKGQuestion = Read-Host -Prompt 'Do you want or need to add a Windows Provisioning Package PPKG file to the custion WIM?'
If(($PPKGQuestion -eq "yes") -or ($PPKGQuestion -eq "Yes") -or ($PPKGQuestion -eq "YES") -or ($PPKGQuestion -eq "Y") -or ($PPKGQuestion -eq "y")){
$PPKGLocation = Read-Host -Prompt 'Please enter path for Windows Provisioning PPKG and CAT Files'
$WindowsImage = Read-Host -Prompt 'Please specify path to the Windows image you want to add to OSDCloud (EG: D:\OS\Windows11)'
$sourceWIM = "\sources\install.wim"
$WIMFile = Join-Path -Path $WindowsImage '\Sources\install.wim'
$mountdir = "C:\Mount"
$PPKGDestination = "$mountdir\Provisiong"
New-Item -Path $mountdir -ItemType Directory -Force
New-Item -Path $PPKGDestination -ItemType Directory -Force
Get-WindowsImage -ImagePath $WIMFile | Format-Table ImageIndex, ImageName
$Index = Read-Host -Prompt ' Select edition'
Mount-WindowsImage -ImagePath "$WIMFile\install.wim" -Path $mountdir -Index $Index
Copy-Item -Path "$PPKGLocation\*.ppkg" -Destination "$PPKGDestination" -Recurse -Force
Copy-Item -Path "$PPKGLocation\*.cat" -Destination "$PPKGDestination" -Recurse -Force
Dismount-WindowsImage -Path $mountdir -Save
Stop-Transcript
Show-SMBINFiles
Show-CustomImage
}
ElseIf(($PPKGQuestion -eq "no") -or ($PPKGQuestion -eq "No") -or ($PPKGQuestion -eq "NO") -or ($PPKGQuestion -eq "N") -or ($PPKGQuestion -eq "n")){
Show-SMBINFiles
}
}

##################################
# Add Start Menu BIN File
##################################
Function Show-SMBINFiles{
$SMBINLog = "C:\Logs\OSDCloud\Images\AddSMBIN.log"
Start-Transcript -Path $SMBINLog
$SMBINQuestion = Read-Host -Prompt 'Do you want or need to add a customized start2.bin file to the custion WIM?'
If(($SMBINQuestion -eq "yes") -or ($SMBINQuestion -eq "Yes") -or ($SMBINQuestion -eq "YES") -or ($SMBINQuestion -eq "Y") -or ($SMBINQuestion -eq "y")){
$SMBINLocation = Read-Host -Prompt 'Please enter path for Windows start2.bin File'
$WindowsImage = Read-Host -Prompt 'Please specify path to the Windows image you want to add to OSDCloud (EG: D:\OS\Windows11)'
$sourceWIM = "\sources\install.wim"
$WIMFile = Join-Path -Path $WindowsImage '\Sources\install.wim'
$mountdir = "C:\Mount"
$SMBINDestination = "$mountdir\downloads\Configurations\StartMenu"
New-Item -Path $SMBINDestination -ItemType Directory -Force
Get-WindowsImage -ImagePath $WIMFile | Format-Table ImageIndex, ImageName
$Index = Read-Host -Prompt ' Select edition'
Mount-WindowsImage -ImagePath "$WIMFile\install.wim" -Path $mountdir -Index $Index
Copy-Item -Path "$SMBINLocation\*.bin" -Destination "$SMBINDestination" -Recurse -Force
Dismount-WindowsImage -Path $mountdir -Save
Stop-Transcript
Show-CustomImage
}
ElseIf(($SMBINQuestion -eq "no") -or ($SMBINQuestion -eq "No") -or ($SMBINQuestion -eq "NO") -or ($SMBINQuestion -eq "N") -or ($SMBINQuestion -eq "n")){
Show-CustomImage
}
}



Show-PPKGFiles

