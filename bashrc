#!/bin/bash
PATH="~/bin:~/.local/bin:$PATH"
export PATH
unset LS_COLORS

# Setup the environment
#JAVA_HOME=/opt/bitnami/java
#export JAVA_HOME
OPENGROK_READ_XML_CONFIGURATION=/var/opengrok/etc/read-only.xml
export OPENGROK_READ_XML_CONFIGURATION
OPENGROK_DISTRIBUTION_BASE=/home/bitnami/opengrok/lib
export OPENGROK_DISTRIBUTION_BASE
OPENGROK_INSTANCE_BASE=/var/opengrok
export OPENGROK_INSTANCE_BASE
OPENGROK_TOMCAT_BASE=/opt/bitnami/tomcat
export OPENGROK_TOMCAT_BASE
if [ -d /opt/bitnami/tomcat ]; then
	debian_chroot="BE"
else
	debian_chroot="FE"
fi
