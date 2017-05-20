#Powershell Script - Auto-Download-Tools
# Script Created by N37104d3r on [18/05/2017]

$programs = @{
	'HxDSetupEN.zip'		= 'http://mh-nexus.de/downloads/HxDSetupEN.zip';
	'Hyperion-1.2.zip'		= 'https://github.com/nullsecuritynet/tools/raw/master/binary/hyperion/release/Hyperion-1.2.zip'; 
	'Nmap-7.40-setup.exe'	= 'https://nmap.org/dist/nmap-7.40-setup.exe';
	# Currently not Working'hashcat-3.5.0.7z'		= 'https://hashcat.net/files/hashcat-3.5.0.7z';
	'CainAndAbel.exe'			= 'http://www.oxid.it/downloads/ca_setup.exe';
	'BurpSuite.exe'			= 'https://portswigger.net/burp/releases/download?productid=100&version=1.7.22&type=windowsx64';
	'Nisgang.zip'			= 'https://github.com/samratashok/nishang/archive/master.zip';
	'PowerSploit.zip'		= 'https://github.com/PowerShellMafia/PowerSploit/archive/master.zip';
	'PSTools.zip'			= 'https://download.sysinternals.com/files/PSTools.zip';
	'ShadowBrokerExploits'	= 'https://github.com/misterch0c/shadowbroker/archive/master.zip';
	'MobaXterm_v10.2.zip'	= 'http://download.mobatek.net/10220170312132617/MobaXterm_Portable_v10.2.zip';
	'Ida_v5.0.exe'			= 'https://out7.hex-rays.com/files/idafree50.exe';
	'ZAP_v2.6.0.exe'      	= 'https://github.com/zaproxy/zaproxy/releases/download/2.6.0/ZAP_2_6_0_windows.exe';
	'Wireshark_v2.2.6.exe' 	= 'https://1.eu.dl.wireshark.org/win64/Wireshark-win64-2.2.6.exe';
	'WiresharkPortable_2.2.6.exe' 	= 'https://1.eu.dl.wireshark.org/win32/WiresharkPortable_2.2.6.paf.exe';
	'Mimikatz.zip'          = 'https://github.com/gentilkiwi/mimikatz/releases/download/2.1.1-20170508/mimikatz_trunk.zip';
	'WCE_v1.42.zip'        	= 'http://www.ampliasecurity.com/research/wce_v1_42beta_x64.zip';
	'Ipscan_v3.5.1.exe'     = 'https://github.com/angryziber/ipscan/releases/download/3.5.1/ipscan-3.5.1-setup.exe';
        'SuperScan_v4.1.zip'    = 'http://b2b-download.mcafee.com/products/tools/foundstone/superscan-4.1.zip';
        'Hash_Suite_Free_v3.4.zip' = 'http://hashsuite.openwall.net/downloads/Hash_Suite_Free_3_4.zip';
        #Not Tested 
        'Scapy_v2.3.2.zip'      = 'https://github.com/secdev/scapy/archive/v2.3.2.zip';
        'Webscarab_20070504_1631.jar' = 'https://sourceforge.net/projects/owasp/files/WebScarab/20070504-1631/webscarab-installer-20070504-1631.jar/download';
        #Not Tested 
        'Ophcrack_v3.7.0.zip'   = 'https://sourceforge.net/projects/ophcrack/files/ophcrack/3.7.0/ophcrack-3.7.0-bin.zip/download';
        'MaltegoCESetup.JRE64.v4.0.11.9358.exe' = 'https://www.paterva.com/malv4/community/MaltegoCESetup.JRE64.v4.0.11.9358.exe';
        'NtopWin_x64_v7.5.170507.zip' = 'http://packages.ntop.org/Windows/nProbeWin-x64-7.5.170507.zip';
        'Tor_v6.5.2.exe' = 'https://www.torproject.org/dist/torbrowser/6.5.2/torbrowser-install-6.5.2_en-US.exe';
        'NagiosNetworkAnalyzer_v2.2.3-64.ova' = 'https://assets.nagios.com/downloads/nagios-network-analyzer/2/ovf/nagiosna-2.2.3-64.ova';
        'NagiosXI_v5.4.4-64.ova' = 'https://assets.nagios.com/downloads/nagiosxi/5/ovf/nagiosxi-5.4.4-64.ova';
        'NagiosLogServer_v1.4.4-64.ova' = 'https://assets.nagios.com/downloads/nagios-log-server/1/ovf/nagioslogserver-1.4.4-64.ova';
        'Nemesis_v1.4.zip' = 'https://netcologne.dl.sourceforge.net/project/nemesis/nemesis/1.4/nemesis-1.4.zip';
	'Libnet_v1.0.2g.zip' = 'https://kent.dl.sourceforge.net/project/nemesis/nemesis/1.4/libnet-1.0.2g.zip'; #Required for Nemesis
	'Curl_v7.54.0.cab' = 'https://skanthak.homepage.t-online.de/download/curl-7.54.0.cab';
	'Aircrack-ng_v1.2-rc4-win.zip' = 'http://download.aircrack-ng.org/aircrack-ng-1.2-rc4-win.zip';
	'ReportFabricator.msi' = 'http://www.lizard-labs.com/Downloads/ReportFabricatorSetup.msi';
}

$dir = Split-Path($MyInvocation.MyCommand.Path) #To download in the same folder as the script.

foreach ($h in $programs.GetEnumerator()){
	$h.Name
	Invoke-WebRequest $h.Value -OutFile $h.Name
   	#IF THE ONE FROM ABOVE DOESN'T WORK REPLACE -> (new-object System.Net.WebClient).DownloadFile($h.Value,$dir+"\"+$h.Name)
	Start-Sleep -m 100
}
