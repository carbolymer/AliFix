#!/bin/bash
echo "Searching for '-Wl ' alone pattern..."
for file in `find . -type f -name "*.txt"`
do
	if [ `cat $file | grep '\-Wl ' | wc -l` -gt 0 -a $0 != $file ]
	then
		echo "Changing file: $file"
		echo "`cat $file | sed -e 's/\-Wl //'`" > $file
	fi
	
done
echo "Done."
