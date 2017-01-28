#!/bin/bash +x

### get Anacond package and install it
# packages needed to download/extract conda 
sudo  yum update -y
sudo yum install wget unzip bzip2 tar -y

# extracting and doing a silent install
cd /tmp
rm -f Anaconda3-4.2.0-Linux-x86_64.sh*
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3-4.2.0-Linux-x86_64.sh  -b -p  $HOME/anaconda3

# manually copying files that are not installed.
sudo cp $HOME/anaconda3/bin/activate /usr/local/sbin/
sudo cp $HOME/anaconda3/bin/deactivate /usr/local/sbin/
sudo cp $HOME/anaconda3/bin/conda /usr/local/sbin/

# upgrading conda and adding python 2 in case we need it 
conda upgrade --all
conda install python=2.7.9

### Get general yum packages
sudo yum install -y git vim-enhanced mlocate tmux

#### create directory for work
sudo mkdir -p /Code/ML/deeplearning
sudo chown -R ec2-user:ec2-user /Code/
