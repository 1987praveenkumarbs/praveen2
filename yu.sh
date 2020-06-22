#!/bin/bash
df -Ph| awk 'NR >1  {gsub("%","",$(NF-1));print $0}'| awk '{if($(NF-1) >70) {print "Disk space issue on below partition\n",$NF}}'
