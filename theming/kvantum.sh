#!/bin/bash

apt install qt5-style-kvantum -y
echo "export QT_STYLE_OVERRIDE=kvantum" >> /home/$USER/.profile 

echo "Kvantum: Install Akava" >> todo.txt
