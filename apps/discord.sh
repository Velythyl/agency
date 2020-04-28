#!/bin/bash
 
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
apt install ./discord.deb -y
rm -r -f discord.deb
