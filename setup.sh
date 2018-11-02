#!/bin/bash -xv

# create the place for the commands
if [ ! -d ~/bin ]; then
	mkdir ~/bin
fi
# put the bash stuff in place.
cp ~/frcopengrok/bashrc ~/.bash_frcopengrok
cp ~/frcopengrok/bash_aliases ~/.bash_aliases
. ~/.bash_frcopengrok
. ~/.bash_aliases
# if it isn't already there, add the source.
grep bash_frcopengrok ~/.bashrc
if [ $? -ne 0 ]; then
	echo '. ~/.bash_frcopengrok' >> ~/.bashrc
fi
sudo apt-get update
sudo apt-get --yes install autotools-dev automake pkg-config mercurial subversion cvs cssc python3-pip
# set the git editor
git config --global core.editor vi
# set up /var/opengrok
if [ ! -d /var/opengrok ]; then
	sudo mkdir /var/opengrok
	sudo chown bitnami /var/opengrok
fi
# set up Bitnami Java as default
sudo update-alternatives --install /usr/bin/java java /opt/bitnami/java/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/bitnami/java/bin/javac 100
# Get AWS CLI
python3 -m pip install awscli --upgrade --user


cp cloneall ~/bin

./getctags
./getopengrok
