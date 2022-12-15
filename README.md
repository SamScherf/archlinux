# Arch Linux Install Script

This is my install script for Arch Linux

## Instructions

```
# Clone the repo
git clone https://github.com/SamScherf/archlinux.git

# Make the script executable
chmod +x /archlinux/install.sh

# Run the script
./archlinux/install.sh
```

After running the script, we need to configure the system to follow the XDG Base Directory standard. To do this, add the following to the bottom of '/etc/bash.bashrc':

```
source "$HOME/.config/bash/bashrc"
```

Next, open a new terminal and run the following command:


```
mkdir -p "$XDG_STATE_HOME"/bash 
```

## What it does

- Create folders I often use
- Download, compile, and install suckless programs
- Install paru
