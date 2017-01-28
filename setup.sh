#!/bin/bash

# get Anacond package and install it
sudo  yum update -y
sudo yum install wget unzip bzip2 tar -y
cd /tmp
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3-4.2.0-Linux-x86_64.sh
conda upgrade --all

# Get yum packages
sudo yum install -y git vim-enhanced mlocate tmux

# create directory for work
sudo mkdir -p /Code/ML/deeplearning
sudo chown -R ec2-user:ec2-user /Code/
