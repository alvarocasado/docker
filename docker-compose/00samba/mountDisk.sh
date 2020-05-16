#!/bin/sh
# A Shell script for installing Docker
# Alvaro Casado - 10/May/2020

disk=/dev/sda1
mediaMount=/media/samba

sudo mkdir $mediaMount
sudo mount $disk $mediaMount