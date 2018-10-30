#!/bin/bash
PATH="~/bin:$PATH"
export PATH
unset LS_COLORS

# Setup the environment
JAVA_HOME=/opt/bitnami/java
export JAVA_HOME
OPENGROK_READ_XML_CONFIGURATION=/var/opengrok/etc/read-only.xml
export OPENGROK_READ_XML_CONFIGURATION
OPENGROK_DISTRIBUTION_BASE=/home/bitnami/opengrok/lib
export OPENGROK_DISTRIBUTION_BASE
OPENGROK_TOMCAT_BASE=/opt/bitnami/apache-tomcat
export OPENGROK_TOMCAT_BASE
