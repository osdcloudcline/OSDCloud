$GhostLog = ""

Start-Transcript -Path $GhostLog

Import-Module -Name OSD -Force

#################################################
## Ghost EXE download URL
################################################

$Ghost64URL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/Imaging/Ghost/Ghost64.exe"

$GhostExplorerURL = ""

$GhostServURL = ""
