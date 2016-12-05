#!/usr/bin/perl

$local ="192.168"; 

# Check 192.168.xxx.---
for ($net=1; $net <=254; $net++){
# Check 192.168.---.xxx
  for ($host=1; $host <=254; $host++){
    $output = qx(ping -c1 $local.$net.$host);
# If the output contains from which means that ping have been executed correctly, then print the IP.
    if($output =~ /from/){
       $output =~ /PING\s([0-9+\.]+)\s\(/;
       print $1."\n";
    }
  }
}
