#!/bin/bash 

apt install ffmpeg -y
add-apt-repository ppa:obsproject/obs-studio -y
apt update
apt install obs-studio -y
