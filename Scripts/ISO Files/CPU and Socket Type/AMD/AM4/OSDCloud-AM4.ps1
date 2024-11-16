Function Get-ASUSAM4Storage(){

$AM4Storage1 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcbottom.cat" -IsValid)
$AM4Storage2 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcbottom.inf" -IsValid)
$AM4Storage3 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcbottom.sys" -IsValid)
$AM4Storage4 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rccfg.cat" -IsValid)
$AM4Storage5 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rccfg.inf" -IsValid)
$AM4Storage6 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rccfg.sys" -IsValid)
$AM4Storage7 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcraid.sys" -IsValid)
$AM4Storage8 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcraid.cat" -IsValid)
$AM4Storage9 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\NVMe\rcraid.inf" -IsValid)
$AM4Storage10 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcbottom.cat" -IsValid)
$AM4Storage11 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcbottom.inf" -IsValid)
$AM4Storage12 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcbottom.sys" -IsValid)
$AM4Storage13 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rccfg.cat" -IsValid)
$AM4Storage14 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rccfg.inf" -IsValid)
$AM4Storage15 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rccfg.sys" -IsValid)
$AM4Storage16 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcraid.sys" -IsValid)
$AM4Storage17 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcraid.cat" -IsValid)
$AM4Storage18 = (Test-Path -Path "C:\OSDCloud\Drivers\Motherboards\ASUS\AM4\Storage\SATA\rcraid.inf" -IsValid)

If(($AM4Storage1 -eq $true) -and ($AM4Storage2 -eq $true) -and ($AM4Storage3 -eq $true) -and ($AM4Storage4 -eq $true) -and ($AM4Storage5 -eq $true) -and ($AM4Storage6 -eq $true) -and ($AM4Storage7 -eq $true) -and ($AM4Storage8 -eq $true) -and ($AM4Storage9 -eq $true) -and ($AM4Storage10 -eq $true) -and ($AM4Storage11 -eq $true) -and ($AM4Storage12 -eq $true) -and ($AM4Storage13 -eq $true) -and ($AM4Storage14 -eq $true) -and ($AM4Storage15 -eq $true) -and ($AM4Storage16 -eq $true) -and ($AM4Storage17 -eq $true) -and ($AM4Storage18 -eq $true)){
Write-Verbose "ASUS Socket AM4 Storage drivers have been downloaded and expanded" -Verbose
}
ElseIf (($AM4Storage1 -eq $false) -and ($AM4Storage2 -eq $false) -and ($AM4Storage3 -eq $false) -and ($AM4Storage4 -eq $false) -and ($AM4Storage5 -eq $false) -and ($AM4Storage6 -eq $false) -and ($AM4Storage7 -eq $false) -and ($AM4Storage8 -eq $false) -and ($AM4Storage9 -eq $false) -and ($AM4Storage10 -eq $false) -and ($AM4Storage11 -eq $false) -and ($AM4Storage12 -eq $false) -and ($AM4Storage13 -eq $false) -and ($AM4Storage14 -eq $false) -and ($AM4Storage15 -eq $false) -and ($AM4Storage16 -eq $false) -and ($AM4Storage17 -eq $false) -and ($AM4Storage18 -eq $false)){
$AM4Storage = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/ASUS/Desktops/AMD/AM%204/Storage/AM4StorageDrivers.ps1")
Invoke-Expression $($AM4Storage.Content)
}
}

Function Get-ESXILANDrivers(){

$ESXILANDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.cat" -IsValid)
$ESXILANDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.inf" -IsValid)
$ESXILANDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3.sys" -IsValid)
$ESXILANDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Network\vmxnet3ver.dll" -IsValid)

If(($ESXILANDrivers1 -eq $true) -and($ESXILANDrivers2 -eq $true) -and($ESXILANDrivers3 -eq $true) -and ($ESXILANDrivers4 -eq $true)){
Write-Verbose "VMWare ESXI LAN Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ESXILANDrivers1 -eq $false) -and($ESXILANDrivers2 -eq $false) -and($ESXILANDrivers3 -eq $false) -and($ESXILANDrivers4 -eq $false)){
$ESXILANDrivers = Invoke-WebRequest("https://github.com/osdcloudcline/OSDCloudDrivers/raw/refs/heads/main/Network%20and%20Storage%20/VMWare%20ESXI/ESXILANDrivers.ps1")
Invoke-Expression $(ESXILANDrivers.Content)
}
}

Function Get-ESXIStorageDrivers(){

$ESXIStorageDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsi.cat" -IsValid)
$ESXIStorageDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsi.inf" -IsValid)
$ESXIStorageDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsi.sys" -IsValid)
$ESXIStorageDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\pvscsiver.dll" -IsValid)
$ESXIStorageDrivers5 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdisk.cat" -IsValid)
$ESXIStorageDrivers6 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdisk.inf" -IsValid)
$ESXIStorageDrivers7 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdisk.sys" -IsValid)
$ESXIStorageDrivers8 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\ESXI\Storage\vmrawdiskver.dll" -IsValid)

If(($ESXIStorageDrivers1 -eq $true) -and ($ESXIStorageDrivers2 -eq $true) -and ($ESXIStorageDrivers3 -eq $true) -and ($ESXIStorageDrivers4 -eq $true) -and ($ESXIStorageDrivers5 -eq $true) -and ($ESXIStorageDrivers6 -eq $true) -and ($ESXIStorageDrivers7 -eq $true) -and ($ESXIStorageDrivers8 -eq $true)){
Write-Verbose "VMWare ESXI Storage Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ESXIStorageDrivers1 -eq $false) -and ($ESXIStorageDrivers2 -eq $false) -and ($ESXIStorageDrivers3 -eq $false) -and ($ESXIStorageDrivers4 -eq $false) -and ($ESXIStorageDrivers5 -eq $false) -and ($ESXIStorageDrivers6 -eq $false) -and ($ESXIStorageDrivers7 -eq $false) -and ($ESXIStorageDrivers8 -eq $false)){
$ESXIStorageDrivers = Invoke-WebRequest("")
Invoke-Expression $($ESXIStorageDrivers.Content)
}
}

Function Get-HyperVLANDrivers(){
$HyperVLANDriver1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\ndiscap.inf")
$HyperVLANDriver2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\ndisimplatform.inf")
$HyperVLANDriver3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\ndisimplatformmp.inf")
$HyperVLANDriver4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\ndisuio.inf")
$HyperVLANDriver5 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\ndisvirtualbus.inf")
$HyperVLANDriver6 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net1ic64.inf")
$HyperVLANDriver7 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net1yx64.inf")
$HyperVLANDriver8 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net44amd.inf")
$HyperVLANDriver9 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net819xp.inf")
$HyperVLANDriver10 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net8185.inf")
$HyperVLANDriver11 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net8187bv64.inf")
$HyperVLANDriver12 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net8187se64.inf")
$HyperVLANDriver13 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net8192se64.inf")
$HyperVLANDriver14 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net8192su64.inf")
$HyperVLANDriver15 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netathrx.inf")
$HyperVLANDriver16 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netavpna.inf")
$HyperVLANDriver17 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netavpnt.inf")
$HyperVLANDriver18 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netax8179_178a.inf")
$HyperVLANDriver19 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netax88772.inf")
$HyperVLANDriver20 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netb57va.inf")
$HyperVLANDriver21 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netbc63a.inf")
$HyperVLANDriver22 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netbc64.inf")
$HyperVLANDriver23 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netbrdg.inf")
$HyperVLANDriver24 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netbvbda.inf")
$HyperVLANDriver25 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netbxnda.inf")
$HyperVLANDriver26 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\nete1e3e.inf")
$HyperVLANDriver27 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\nete1g3e.inf")
$HyperVLANDriver28 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\neteFE3e.inf")
$HyperVLANDriver29 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netelx.inf")
$HyperVLANDriver30 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netevbda.inf")
$HyperVLANDriver31 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netg664.inf")
$HyperVLANDriver32 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netimrn.inf")
$HyperVLANDriver33 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netip6.inf")
$HyperVLANDriver34 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netirda.inf")
$HyperVLANDriver35 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netjme.inf")
$HyperVLANDriver36 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netk57a.inf")
$HyperVLANDriver37 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net1c63x64.inf")
$HyperVLANDriver38 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net1e64.inf")
$HyperVLANDriver39 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net160a.inf")
$HyperVLANDriver40 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\net260a.inf")
$HyperVLANDriver41 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netldp.inf")
$HyperVLANDriver42 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netloop.inf")
$HyperVLANDriver43 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netmscli.inf")
$HyperVLANDriver44 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netmyk64.inf")
$HyperVLANDriver45 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netnb.inf")
$HyperVLANDriver46 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netnvm64.inf")
$HyperVLANDriver47 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netnvma.inf")
$HyperVLANDriver48 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netnwifi.inf")
$HyperVLANDriver49 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netpacer.inf")
$HyperVLANDriver50 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netpgm.inf")
$HyperVLANDriver51 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netr28ux.inf")
$HyperVLANDriver52 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netr28x.inf")
$HyperVLANDriver53 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netr7364.inf")
$HyperVLANDriver54 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrasa.inf")
$HyperVLANDriver55 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrass.inf")
$HyperVLANDriver56 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrast.inf")
$HyperVLANDriver57 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrndis.inf")
$HyperVLANDriver58 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrt630x64.inf")
$HyperVLANDriver59 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrtl64.inf")
$HyperVLANDriver60 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrtwlane.inf")
$HyperVLANDriver61 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netrtwlanu.inf")
$HyperVLANDriver62 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netserv.inf")
$HyperVLANDriver63 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netsstpa.inf")
$HyperVLANDriver64 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netsstpt.inf")
$HyperVLANDriver65 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\nettcpip.inf")
$HyperVLANDriver66 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\nettun.inf")
$HyperVLANDriver67 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netv1x64.inf")
$HyperVLANDriver68 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvchannel.inf")
$HyperVLANDriver69 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvf63a.inf")
$HyperVLANDriver70 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvfx64.inf")
$HyperVLANDriver71 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netg664.inf")
$HyperVLANDriver72 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvg63a.inf")
$HyperVLANDriver73 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvwifibus.inf")
$HyperVLANDriver74 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvwififlt.inf")
$HyperVLANDriver75 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvwifimp.inf")
$HyperVLANDriver76 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvwwanmp.inf")
$HyperVLANDriver77 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netvxx64.inf")
$HyperVLANDriver78 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netwew00.inf")
$HyperVLANDriver79 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netwew02.inf")
$HyperVLANDriver80 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netwlan92de.inf")
$HyperVLANDriver81 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netwlv64.inf")
$HyperVLANDriver82 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netwmbclass.inf")
$HyperVLANDriver83 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netwns64.inf")
$HyperVLANDriver84 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netwsw00.inf")
$HyperVLANDriver85 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\HyperV\Network\netxex64.inf")

If(($HyperVLANDriver1 -eq $true) -and ($HyperVLANDriver2 -eq $true) -and ($HyperVLANDriver3 -eq $true) -and ($HyperVLANDriver4 -eq $true) -and ($HyperVLANDriver5 -eq $true) -and ($HyperVLANDriver6 -eq $true) -and ($HyperVLANDriver7 -eq $true) -and ($HyperVLANDriver8 -eq $true) -and ($HyperVLANDriver9 -eq $true) -and ($HyperVLANDriver10 -eq $true) -and ($HyperVLANDriver11 -eq $true) -and ($HyperVLANDriver12 -eq $true) -and ($HyperVLANDriver13 -eq $true) -and ($HyperVLANDriver14 -eq $true) -and ($HyperVLANDriver15 -eq $true) -and ($HyperVLANDriver16 -eq $true) -and ($HyperVLANDriver17 -eq $true) -and ($HyperVLANDriver18 -eq $true) -and ($HyperVLANDriver19 -eq $true) -and ($HyperVLANDriver20 -eq $true) -and ($HyperVLANDriver21 -eq $true) -and ($HyperVLANDriver22 -eq $true) -and ($HyperVLANDriver23 -eq $true) -and ($HyperVLANDriver24 -eq $true) -and ($HyperVLANDriver25 -eq $true) -and ($HyperVLANDriver26 -eq $true) -and ($HyperVLANDriver27 -eq $true) -and ($HyperVLANDriver28 -eq $true) -and ($HyperVLANDriver29 -eq $true) -and ($HyperVLANDriver30 -eq $true) -and ($HyperVLANDriver31 -eq $true) -and ($HyperVLANDriver32 -eq $true) -and ($HyperVLANDriver33 -eq $true) -and ($HyperVLANDriver34 -eq $true) -and ($HyperVLANDriver35 -eq $true) -and ($HyperVLANDriver36 -eq $true) -and ($HyperVLANDriver37 -eq $true) -and ($HyperVLANDriver38 -eq $true) -and ($HyperVLANDriver39 -eq $true) -and ($HyperVLANDriver40 -eq $true) -and ($HyperVLANDriver41 -eq $true) -and ($HyperVLANDriver42 -eq $true) -and ($HyperVLANDriver43 -eq $true) -and ($HyperVLANDriver44 -eq $true) -and ($HyperVLANDriver45 -eq $true) -and ($HyperVLANDriver46 -eq $true) -and ($HyperVLANDriver47 -eq $true) -and ($HyperVLANDriver48 -eq $true) -and ($HyperVLANDriver49 -eq $true) -and ($HyperVLANDriver50 -eq $true) -and ($HyperVLANDriver51 -eq $true) -and ($HyperVLANDriver52 -eq $true) -and ($HyperVLANDriver53 -eq $true) -and ($HyperVLANDriver54 -eq $true) -and ($HyperVLANDriver55 -eq $true) -and ($HyperVLANDriver56 -eq $true) -and ($HyperVLANDriver57 -eq $true) -and ($HyperVLANDriver58 -eq $true) -and ($HyperVLANDriver59 -eq $true) -and ($HyperVLANDriver60 -eq $true) -and ($HyperVLANDriver61 -eq $true) -and ($HyperVLANDriver62 -eq $true) -and ($HyperVLANDriver63 -eq $true) -and ($HyperVLANDriver64 -eq $true) -and ($HyperVLANDriver65 -eq $true) -and ($HyperVLANDriver66 -eq $true) -and ($HyperVLANDriver67 -eq $true) -and ($HyperVLANDriver68 -eq $true) -and ($HyperVLANDriver69 -eq $true) -and ($HyperVLANDriver70 -eq $true) -and ($HyperVLANDriver71 -eq $true) -and ($HyperVLANDriver72 -eq $true) -and ($HyperVLANDriver73 -eq $true) -and ($HyperVLANDriver74 -eq $true) -and ($HyperVLANDriver75 -eq $true) -and ($HyperVLANDriver76 -eq $true) -and ($HyperVLANDriver77 -eq $true) -and ($HyperVLANDriver78 -eq $true) -and ($HyperVLANDriver79 -eq $true) -and ($HyperVLANDriver80 -eq $true) -and ($HyperVLANDriver81 -eq $true) -and ($HyperVLANDriver82 -eq $true) -and ($HyperVLANDriver83 -eq $true) -and ($HyperVLANDriver84 -eq $true) -and ($HyperVLANDriver85 -eq $true)){
Write-Verbose "Hyper-V Network drivers have been downloaded and extracted" -Verbose
}
ElseIf(($HyperVLANDriver1 -eq $false) -and ($HyperVLANDriver2 -eq $false) -and ($HyperVLANDriver3 -eq $false) -and ($HyperVLANDriver4 -eq $false) -and ($HyperVLANDriver5 -eq $false) -and ($HyperVLANDriver6 -eq $false) -and ($HyperVLANDriver7 -eq $false) -and ($HyperVLANDriver8 -eq $false) -and ($HyperVLANDriver9 -eq $false) -and ($HyperVLANDriver10 -eq $false) -and ($HyperVLANDriver11 -eq $false) -and ($HyperVLANDriver12 -eq $false) -and ($HyperVLANDriver13 -eq $false) -and ($HyperVLANDriver14 -eq $false) -and ($HyperVLANDriver15 -eq $false) -and ($HyperVLANDriver16 -eq $false) -and ($HyperVLANDriver17 -eq $false) -and ($HyperVLANDriver18 -eq $false) -and ($HyperVLANDriver19 -eq $false) -and ($HyperVLANDriver20 -eq $false) -and ($HyperVLANDriver21 -eq $false) -and ($HyperVLANDriver22 -eq $false) -and ($HyperVLANDriver23 -eq $false) -and ($HyperVLANDriver24 -eq $false) -and ($HyperVLANDriver25 -eq $false) -and ($HyperVLANDriver26 -eq $false) -and ($HyperVLANDriver27 -eq $false) -and ($HyperVLANDriver28 -eq $false) -and ($HyperVLANDriver29 -eq $false) -and ($HyperVLANDriver30 -eq $false) -and ($HyperVLANDriver31 -eq $false) -and ($HyperVLANDriver32 -eq $false) -and ($HyperVLANDriver33 -eq $false) -and ($HyperVLANDriver34 -eq $false) -and ($HyperVLANDriver35 -eq $false) -and ($HyperVLANDriver36 -eq $false) -and ($HyperVLANDriver37 -eq $false) -and ($HyperVLANDriver38 -eq $false) -and ($HyperVLANDriver39 -eq $false) -and ($HyperVLANDriver40 -eq $false) -and ($HyperVLANDriver41 -eq $false) -and ($HyperVLANDriver42 -eq $false) -and ($HyperVLANDriver43 -eq $false) -and ($HyperVLANDriver44 -eq $false) -and ($HyperVLANDriver45 -eq $false) -and ($HyperVLANDriver46 -eq $false) -and ($HyperVLANDriver47 -eq $false) -and ($HyperVLANDriver48 -eq $false) -and ($HyperVLANDriver49 -eq $false) -and ($HyperVLANDriver50 -eq $false) -and ($HyperVLANDriver51 -eq $false) -and ($HyperVLANDriver52 -eq $false) -and ($HyperVLANDriver53 -eq $false) -and ($HyperVLANDriver54 -eq $false) -and ($HyperVLANDriver55 -eq $false) -and ($HyperVLANDriver56 -eq $false) -and ($HyperVLANDriver57 -eq $false) -and ($HyperVLANDriver58 -eq $false) -and ($HyperVLANDriver59 -eq $false) -and ($HyperVLANDriver60 -eq $false) -and ($HyperVLANDriver61 -eq $false) -and ($HyperVLANDriver62 -eq $false) -and ($HyperVLANDriver63 -eq $false) -and ($HyperVLANDriver64 -eq $false) -and ($HyperVLANDriver65 -eq $false) -and ($HyperVLANDriver66 -eq $false) -and ($HyperVLANDriver67 -eq $false) -and ($HyperVLANDriver68 -eq $false) -and ($HyperVLANDriver69 -eq $false) -and ($HyperVLANDriver70 -eq $false) -and ($HyperVLANDriver71 -eq $false) -and ($HyperVLANDriver72 -eq $false) -and ($HyperVLANDriver73 -eq $false) -and ($HyperVLANDriver74 -eq $false) -and ($HyperVLANDriver75 -eq $false) -and ($HyperVLANDriver76 -eq $false) -and ($HyperVLANDriver77 -eq $false) -and ($HyperVLANDriver78 -eq $false) -and ($HyperVLANDriver79 -eq $false) -and ($HyperVLANDriver80 -eq $false) -and ($HyperVLANDriver81 -eq $false) -and ($HyperVLANDriver82 -eq $false) -and ($HyperVLANDriver83 -eq $false) -and ($HyperVLANDriver84 -eq $false) -and ($HyperVLANDriver85 -eq $false)){
$HyperVLANDrivers = Invoke-WebRequest("")
Invoke-Expression $($HyperVLANDrivers.Content)
}
}

Function Get-VMWareWorkstationLANDrivers(){
$VMWareWorkstationLANDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3.cat" -IsValid)
$VMWareWorkstationLANDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3.inf" -IsValid)
$VMWareWorkstationLANDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3.sys" -IsValid)
$VMWareWorkstationLANDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vmnet3ver.dll" -IsValid)
$VMWareWorkstationLANDrivers5 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFP.cat" -IsValid)
$VMWareWorkstationLANDrivers6 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFP.inf" -IsValid)
$VMWareWorkstationLANDrivers7 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFP.sys" -IsValid)
$VMWareWorkstationLANDrivers8 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Network\vnetWFPver.dll" -IsValid)

If(($VMWareWorkstationLANDrivers1 -eq $true) -and ($VMWareWorkstationLANDrivers2 -eq $true) -and ($VMWareWorkstationLANDrivers3 -eq $true) -and ($VMWareWorkstationLANDrivers4 -eq $true) -and ($VMWareWorkstationLANDrivers5 -eq $true) -and ($VMWareWorkstationLANDrivers6 -eq $true) -and ($VMWareWorkstationLANDrivers7 -eq $true) -and ($VMWareWorkstationLANDrivers8 -eq $true)){
Write-Verbose "VMWare Workstation Network Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($VMWareWorkstationLANDrivers1 -eq $false) -and ($VMWareWorkstationLANDrivers2 -eq $false) -and ($VMWareWorkstationLANDrivers3 -eq $false) -and ($VMWareWorkstationLANDrivers4 -eq $false) -and ($VMWareWorkstationLANDrivers5 -eq $false) -and ($VMWareWorkstationLANDrivers6 -eq $false) -and ($VMWareWorkstationLANDrivers7 -eq $false) -and ($VMWareWorkstationLANDrivers8 -eq $false)){
$VMWareWorkstationLANDrivers = Invoke-WebRequest("")
Invoke-Expression $($VMWareWorkstationLANDrivers.Content)
}
}

Function Get-VMWareWorkstationStorageDrivers(){
$VMWareWorkstationStorageDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsi.cat" -IsValid)
$VMWareWorkstationStorageDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsi.inf" -IsValid)
$VMWareWorkstationStorageDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsi.sys" -IsValid)
$VMWareWorkstationStorageDrivers4 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\pvscsiver.dll" -IsValid)
$VMWareWorkstationStorageDrivers5 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdisk.cat" -IsValid)
$VMWareWorkstationStorageDrivers6 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdisk.inf" -IsValid)
$VMWareWorkstationStorageDrivers7 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdisk.sys" -IsValid)
$VMWareWorkstationStorageDrivers8 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\VMWare\Workstation\Storage\vmrawdiskver.dll" -IsValid)

If(($VMWareWorkstationStorageDrivers1 -eq $true) -and ($VMWareWorkstationStorageDrivers2 -eq $true) -and ($VMWareWorkstationStorageDrivers3 -eq $true) -and ($VMWareWorkstationStorageDrivers4 -eq $true) -and ($VMWareWorkstationStorageDrivers5 -eq $true) -and ($VMWareWorkstationStorageDrivers6 -eq $true) -and ($VMWareWorkstationStorageDrivers7 -eq $true) -and ($VMWareWorkstationStorageDrivers8 -eq $true)){
Write-Verbose "VMWare Workstation Storage Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($VMWareWorkstationStorageDrivers1 -eq $false) -and ($VMWareWorkstationStorageDrivers2 -eq $false) -and ($VMWareWorkstationStorageDrivers3 -eq $false) -and ($VMWareWorkstationStorageDrivers4 -eq $false) -and ($VMWareWorkstationStorageDrivers5 -eq $false) -and ($VMWareWorkstationStorageDrivers6 -eq $false) -and ($VMWareWorkstationStorageDrivers7 -eq $false) -and ($VMWareWorkstationStorageDrivers8 -eq $false)){
$VMWareWorkstationStorageDrivers = Invoke-WebRequest("")
Invoke-Expression $($VMWareWorkstationStorageDrivers.Content)
}
}

Function Get-ProxmoxLANDrivers(){
$ProxmoxLANDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\netkvm.cat" -IsValid)
$ProxmoxLANDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\netkvm.inf" -IsValid)
$ProxmoxLANDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Network\netkvm.sys" -IsValid)

If(($ProxmoxLANDrivers1 -eq $true) -and ($ProxmoxLANDrivers2 -eq $true) -and ($ProxmoxLANDrivers3 -eq $true)){
Write-Verbose "Proxmox Virtualization I/O Network Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ProxmoxLANDrivers1 -eq $false) -and ($ProxmoxLANDrivers2 -eq $false) -and ($ProxmoxLANDrivers3 -eq $false)){
$ProxmoxLANDrivers = Invoke-WebRequest("")
Invoke-Expression $($ProxmoxLANDrivers.Content)
}
}

Function Get-ProxmoxStorageDrivers(){
$ProxmoxStorageDrivers1 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\viostor.cat" -IsValid)
$ProxmoxStorageDrivers2 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\viostor.inf" -IsValid)
$ProxmoxStorageDrivers3 = (Test-Path -Path "C:\OSDCloud\Drivers\Virtualization\Proxmox\Storage\viostor.sys" -IsValid)

If(($ProxmoxStorageDrivers1 -eq $true) -and ($ProxmoxStorageDrivers2 -eq $true) -and ($ProxmoxStorageDrivers3 -eq $true)){
Write-Verbose "Proxmox Virtualization I/O Storage Drivers have been downloaded and expanded" -Verbose
}
ElseIf(($ProxmoxStorageDrivers1 -eq $false) -and ($ProxmoxStorageDrivers2 -eq $false) -and ($ProxmoxStorageDrivers3 -eq $false)){
$ProxmoxStorageDrivers = Invoke-WebRequest("")
Invoke-Expression $($ProxmoxStorageDrivers.Content)
}
}



$AM4VirtualDrivers = "C:\Logs\OSDCloud\ASUS\AM4Virtual.log"

Start-Transcript -Path $AM4VirtualDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Network Drivers" -Verbose
Write-Host

Get-ESXILANDrivers

Write-Verbose "Processing: VMWare ESXI Virtualization Storage Drivers" -Verbose
Write-Host

Get-ESXIStorageDrivers

Write-Verbose "Processing: Hyper-V Virtualization Network Drivers" -Verbose
Write-Host

Get-HyperVLANDrivers

Write-Verbose "Processing: VMWare Workstation Professional Virtualization Network Drivers" -Verbose
Write-Host

Get-VMWareWorkstationLANDrivers

Write-Verbose "Processing: VMWare Workstation Professional Virtualization Storage Drivers" -Verbose
Write-Host

Get-VMWareWorkstationStorageDrivers

Write-Verbose "Processing: Proxmox Virtual I/O Network Virtualization Drivers" -Verbose
Write-Host

Get-ProxmoxLANDrivers

Write-Verbose "Processing: Proxmox Virtual I/O Storage Virtualization Drivers" -Verbose
Write-Host

Get-ProxmoxStorageDrivers


Stop-Transcript

Stop-Transcript

$ASUSAM4Storage = "C:\Logs\OSDCloud\ASUS\AM4Storage.log"

Start-Transcript -Path $ASUSAM4Storage

Get-Date

Write-Verbose "Processing: ASUS AMD Socket AM4 Motherboard Storage Drivers" -Verbose
Write-Host

Get-ASUSAM4Storage

Stop-Transcript
