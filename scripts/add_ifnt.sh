#!/bin/bash 

grep -qxF $@ /home/$USER/.bashrc || echo $@ >> /home/$USER/.bashrc
