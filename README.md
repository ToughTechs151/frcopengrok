# frcopengrok
<pre>
Configurations for FRC OpenGrok Server

Instructions for setting up FRC OpenGrok server.
Sign in to Bitnami.com
Create AWS instance running Apache/Tomcat Debian 9
	Use T2.small, SSD, 2GB memory, 10GB disk, region us-east-1
Download *both* ppk and pem keys for the instance. PPK is for putty.
	pem is used to access through the java console on AWS 
Copy down the Tomcat manager password. 
Go to AWS console. Start the instance if it is not running. 
	Note the public IP address of the instance.
Use putty to login to the instance as user bitnami. 
Run commands:
	sudo apt-get install git
	git clone https://github.com/ToughTechs151/frcopengrok
	cd frcopengrok
	./setup.sh
</pre>
