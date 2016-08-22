#!/bin/bash

echo -n DB root password: 
read -s password
echo
echo

curTime=$(date +%s)

for name in foo bar baz
do
	# Create directory if not exist
	mkdir -p storage/$name
	if mysqldump --user='root' --password=$password --complete-insert --add-drop-table --result-file=storage/$name/$curTime.backup.sql $name
		then 
		echo $name" - Saved" 
		echo "************************************"
	fi
done

# echo "Success"
echo 
