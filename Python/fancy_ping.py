#!/usr/bin/env python
# -*- coding:UTF-8 -*-

import subprocess,os
import getpass #To get the username if needed for later getpass.getuser()

print "Hi",getpass.getuser().upper(),"those are the systems."
for i in xrange (1,255):

	ip="192.168.0.%d"%i

	response = os.system("ping -c1 -W2000 -w1 " +ip+ ">/dev/null")
	
	if response == 0:
		print ip, 'Host up!'
	else:
		print ip, 'Host down!'
