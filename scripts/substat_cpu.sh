#! /bin/bash

vmstat -n 1 | gawk '{ print 100-int($(NF-2)); fflush(); }' | ttyplot
