#!/bin/bash 
 
version=$(curl -s https://github.com/khanhas/spicetify-cli/releases | grep -m1 "/khanhas/spicetify-cli/releases/tag/" | grep -m1 -Po ">\K[^<]+(?=</a>)")

echo $version

wget "https://github.com/khanhas/spicetify-cli/releases/download/${version}/spicetify-${version/v/}-linux-amd64.tar.gz"

mkdir /home/$USER/spicetify
tar xzf spicetify-${version/v/}-linux-amd64.tar.gz -C /home/$USER/spicetify

chmod 777 /usr/share/spotify -R
chmod 777 /usr/bin/spotify -R

ln -s /home/$USER/spicetify/spicetify /usr/bin/spicetify

rm -r -f spicetify-${version/v/}-linux-amd64.tar.gz

spicetify

spicetify backup apply enable-devtool

spicetify update

cp -r /home/$USER/spicetify/Themes/SpicetifyDefault /home/$USER/spicetify/Themes/PywalBinding
