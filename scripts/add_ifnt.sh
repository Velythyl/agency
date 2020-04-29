#!/bin/bash 

grep -qxF $@ /home/charlie/.bashrc || echo $@ >> /home/charlie/.bashrc
