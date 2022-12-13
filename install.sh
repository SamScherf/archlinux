#/bin/bash

# Create Directories I like
FOLDERS="Projects Documents"
for FOLDER in $(echo $FOLDERS)
do
	# If directory doesn't exists, create folder
	[ -d "$FOLDER" ] || (mkdir $FOLDER)
done
