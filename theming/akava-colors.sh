#!/bin/bash 

git clone https://github.com/Akava-Design/Akava-Colors.git
mv Akava-Colors/Akava.colors /home/charlie/.local/share/color-schemes/Akava.colors
rm -r -f Akava-Colors

echo "Settings > Colors > Use Akava" >> todo.txt
