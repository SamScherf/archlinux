#/bin/bash

# Create Directories I like
FOLDERS="Projects Documents"
for FOLDER in $(echo $FOLDERS)
do
	# If directory exists
	[ -d "$FOLDER" ] \
	&& (echo "$FOLDER folder already exists") \
	|| (mkdir $FOLDER; echo "Created $FOLDER folder")
done
