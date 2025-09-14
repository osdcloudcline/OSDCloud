Import-Module -Name OSD

$bootmgrfw_exEFIURL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/ISO%20Files/ISO%20Patches/Black%20Lotus/ISO/bootmgfw_EX.efi"

$tempdestination = "C:\OSDCloud\downloads\ISO Patches\Black Lotus"

New-Item -Path $tempdestination -ItemType Directory -Force

Save-WebFile -SourceUrl $bootmgrfw_exEFIURL -DestinationDirectory $tempdestination 


Rename-Item -Path "C:\OSDCloud\downloads\ISO Patches\Black Lotus\bootmgfw_EX.efi"  -NewName "C:\OSDCloud\downloads\ISO Patches\Black Lotus\bootmgfw.efi"

