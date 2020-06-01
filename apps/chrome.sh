#!/bin/bash

wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./chrome.deb -y
rm -r -f ./chrome.deb
