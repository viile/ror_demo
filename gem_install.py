#!/usr/bin/env python

import os,sys,re,subprocess

file_object = open('gem_list')
try:
	list_of_all_the_lines = file_object.readlines()
finally:
	file_object.close()

re_str = '\(.*\)'
for line in list_of_all_the_lines:
#	print line
	match = re.compile(re_str)
	version = match.findall(line)
	version = version[0].replace('(','').replace(')','')
	package = line.split(' ')[0]
	cmd = 'gem install ' + str(package) + " -v " + str(version)
#	print cmd
	rc = os.popen(cmd)
	print rc
	if(rc):
		continue
	
#print list_of_all_the_lines[0]
