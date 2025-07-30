Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"

Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host '                  Welcome to OSDCloud!                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White  
Write-Host '   This OSDCloud script will allow you to perform the following:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '     - Capture a system image using DISM via a cloud based script             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

pause

Get-PSDrive

$Drive = Read-Host -Prompt 'Please enter the letter of your system or data drive (or drive letter that you want to SAVE or CAPTURE)' 
$Destination = Read-Host -Prompt 'Please enter the mandated Drive letter and optional path or folder to save the image TO'
$ImageName = Read-Host -Prompt 'Please enter a filename, including .wim, for your image (EG: custom.wim)' 
$ImagePath = Join-Path -Path $Destination -ChildPath $ImageName


Write-Host "Beginning capture of internal $Drive drive..." -ForegroundColor Cyan 
New-WindowsImage -ImagePath "$ImagePath" -CapturePath "$Drive" -Name "$ImageName" -CompressionType Max
Write-Host 
Write-Host "Completed: Image Capture of $Drive to $Destination" -ForegroundColor Green 
