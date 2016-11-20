#!/usr/bin/env python

import os, sys, datetime, fileinput

if __name__ == '__main__':

	if len(sys.argv) > 3:
		print "You did not provide an argument to the script"
		exit()

	if sys.argv[1] == "release":
		release = sys.argv[2].split('.')
		version = [None, None, None]
		now = datetime.datetime.now()

		if release[0] != now.year:
			version[0] = now.year
		else:
			version[0] = release[0]

		if release[1] != now.month:
			version[1] = now.month
		else:
			version[1] = release[1]

		version[2] = int(release[2]) + 1
		version = '.'.join([str(x) for x in version])
		
		for line in fileinput.FileInput("Makefile", inplace=1):
			line = line.replace(sys.argv[2],version)
			print line,