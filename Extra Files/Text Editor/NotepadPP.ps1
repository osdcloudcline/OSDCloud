$NotepadPPLog = "C:\Logs\OSDCloud\Text Editor\NotepadPP.log"

Start-Transcript -Path $NotepadPPLog

Get-Date

############################################
# Notepad + +  File URLs
############################################

$NotepadPPFile1URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Text%20Editor/notepad++.exe"

Import-Module -Name OSD -Force


####################################################################
# Explorer + + DL File Destination ##############
####################################################################

$NotepadPPDestination = "C:\OSDCloud\downloads\GitHub\TextEditor"



Write-Verbose "Processing: Acquiring Notepad + + for integration to OSDCloud..." -Verbose
Write-Host
Save-WebFile -SourceUrl $NotepadPPFile1URL -DestinationDirectory $NotepadPPDestination

Write-Host
Write-Verbose "Completed: Download of Notepad ++for integration to OSDCloud..." -Verbose

Stop-Transcript
