#/bin/bash

# Create Directories I like
# -------------------------

FOLDERS="Projects Documents"
for FOLDER in $(echo $FOLDERS)
do
	# If directory doesn't exists, create folder
	[ -d $FOLDER ] || (mkdir $FOLDER)
done

# Clone suckless programs
# -----------------------

SUCKLESSFOLDER="Projects/suckless"
[ -d $SUCKLESSFOLDER ] || (mkdir $SUCKLESSFOLDER)

# Terminal
[ -d  $SUCKLESSFOLDER/st ] || (git clone https://github.com/SamScherf/st $SUCKLESSFOLDER/st)

# Window manager
[ -d  $SUCKLESSFOLDER/dwm ] || (git clone https://github.com/SamScherf/dwm $SUCKLESSFOLDER/dwm)

# Status Bar
[ -d  $SUCKLESSFOLDER/slstatus ] || (git clone https://github.com/SamScherf/slstatus $SUCKLESSFOLDER/slstatus)

# Lock screen
[ -d  $SUCKLESSFOLDER/slock ] || (git clone https://git.suckless.org/slock $SUCKLESSFOLDER/slock)

# Dynamic Menu
[ -d  $SUCKLESSFOLDER/dmenu ] || (git clone https://git.suckless.org/dmenu $SUCKLESSFOLDER/dmenu)

# Compile and install suckless programs
# -------------------------------------

echo "Enter your root password."
su root -c "make install -C $SUCKLESSFOLDER/st; \
	    make install -C $SUCKLESSFOLDER/dwm; \
	    make install -C $SUCKLESSFOLDER/slstatus; \
	    make install -C $SUCKLESSFOLDER/slock; \
	    make install -C $SUCKLESSFOLDER/dmenu;"
