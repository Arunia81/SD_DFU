#!

# Create directories
mkdir /home/deck/Desktop/temp
mkdir /home/deck/games
mkdir /home/deck/.config/unity3d
mkdir "/home/deck/.config/unity3d/Daggerfall Workshop"
mkdir "/home/deck/.config/unity3d/Daggerfall Workshop/Daggerfall Unity"

# Download files
# Download DFU from github
wget -O /home/deck/Desktop/temp/dfu_linux_64bit-v0.13.5-beta.zip https://github.com/Interkarma/daggerfall-unity/releases/download/v0.13.5-beta/dfu_linux_64bit-v0.13.5-beta.zip

# Download game datafiles
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=0B0i8ZocaUWLGWHc1WlF3dHNUNTQ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=0B0i8ZocaUWLGWHc1WlF3dHNUNTQ" -O /home/deck/Desktop/temp/DaggerfallGameFiles.zip && rm -rf /tmp/cookies.txt

# Download settings.ini
xxx

# Exctract files
# Extract DFU
unzip /home/deck/Desktop/temp/dfu_linux_64bit-v0.13.5-beta.zip -d /home/deck/games/Daggerfall/0.13.5

# Extract game datafiles
unzip /home/deck/Desktop/temp/DaggerfallGameFiles.zip -d /home/deck/games/Daggerfall

#Copy settings.ini:
cp "/home/deck/Desktop/temp/settings.ini" "/home/deck/.config/unity3d/Daggerfall Workshop/Daggerfall Unity/settings.ini"
