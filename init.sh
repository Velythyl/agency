#!/bin/bash 

#Installing dependencies

apt-get update -y && apt-get upgrade -y
apt-get install git -y
apt-get install dkms -y
apt-get install build-essential -y
apt install curl -y
apt install python3-pip -y
apt install python2 -y

#Install apps

for file in ./apps/*
do
  if [[ $file = *.py ]] || [[ $file = *.sh ]]
  then
    bash "$file"
  fi
done

#Thanos

for file in ./thanos/*
do
  if [[ $file = *.py ]] || [[ $file = *.sh ]]
  then
    bash "$file"
  fi
done

#Install theming

for file in ./theming/*
do
  if [[ $file = *.py ]] || [[ $file = *.sh ]]
  then
    bash "$file"
  fi
done

#Install scripts

for file in ./scripts/*
do
if [[ $file = *.py ]] || [[ $file = *.sh ]]
  then
    cp "$file" "/usr/local/bin/$(basename "${file%.*}")"
  fi
done
