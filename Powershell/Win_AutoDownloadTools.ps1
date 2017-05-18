#Powershell Script - Auto-Download-Tools
# Script Created by N37104d3r on [18/05/2017]

$programs = @{
  'HxDSetupEN.zip'    = 'http://mh-nexus.de/downloads/HxDSetupEN.zip';
  'Hyperion-1.2.zip'  = 'https://github.com/nullsecuritynet/tools/raw/master/binary/hyperion/release/Hyperion-1.2.zip'; 
  'nmap-7.40-setup.exe'	= 'https://nmap.org/dist/nmap-7.40-setup.exe';
  # Currently not Working'hashcat-3.5.0.7z'		= 'https://hashcat.net/files/hashcat-3.5.0.7z';
  'ca_setup.exe'  = 'http://www.oxid.it/downloads/ca_setup.exe';
  'BurpSuite.exe' = 'https://portswigger.net/burp/releases/download?productid=100&version=1.7.22&type=windowsx64';
  'Nisgang.zip'   = 'https://github.com/samratashok/nishang/archive/master.zip';
  'PowerSploit.zip'= 'https://github.com/PowerShellMafia/PowerSploit/archive/master.zip';
  'PSTools.zip'		= 'https://download.sysinternals.com/files/PSTools.zip';
  'ShadowBrokerExploits'= 'https://github.com/misterch0c/shadowbroker/archive/master.zip';
  'MobaXterm_v10.2.zip'	= 'http://download.mobatek.net/10220170312132617/MobaXterm_Portable_v10.2.zip';
  'Ida_v5.0.exe'	= 'https://out7.hex-rays.com/files/idafree50.exe';
  'ZAP_v2.6.0.exe'     	= 'https://github.com/zaproxy/zaproxy/releases/download/2.6.0/ZAP_2_6_0_windows.exe';
  'Wireshark_v2.2.6.exe'= 'https://1.eu.dl.wireshark.org/win64/Wireshark-win64-2.2.6.exe';
  'WiresharkPortable_2.2.6.exe' = 'https://1.eu.dl.wireshark.org/win32/WiresharkPortable_2.2.6.paf.exe';
  'Mimikatz.zip'       	= 'https://github.com/gentilkiwi/mimikatz/releases/download/2.1.1-20170508/mimikatz_trunk.zip';
  'WCE_v1.42.zip'       = 'http://www.ampliasecurity.com/research/wce_v1_42beta_x64.zip';
}

foreach ($h in $programs.GetEnumerator()){
	$h.Name
	Invoke-WebRequest $h.Value -OutFile $h.Name
	Start-Sleep -m 100
}
