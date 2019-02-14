#!/bin/bash

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
sudo apt-get --quiet update
sudo apt-get --yes --quiet install autotools-dev automake pkg-config mercurial subversion cvs cssc python3-pip
# set the git editor
git config --global core.editor vi
git config --global diff.renameLimit 1000
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
wget http://s3.amazonaws.com/ec2metadata/ec2-metadata
chmod a+x ec2-metadata
mv ec2-metadata ~/bin



cp cloneall ~/bin

./getctags
./getopengrok
. bashrc
./getnoipduc
./installshutdown
./addgroups
./populate-var
./installfixdataperms
sudo /opt/bitnami/apache-tomcat/bin/shutdown.sh
sudo /opt/bitnami/apache-tomcat/bin/startup.sh
./copylogo
sleep 20
./confpaths
echo 600 > ~/howlong
echo
echo =================================================================================
echo Remember to run ./confnoip and ./awsconf by hand then reboot
echo =================================================================================
echo 
