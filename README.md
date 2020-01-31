# frcopengrok
<pre>
Configurations for FRC OpenGrok Server

Instructions for setting up FRC OpenGrok server.
Sign in to Bitnami.com
For AWS:
Create AWS instance running Apache/Tomcat Debian 9
	Use T2.small, magnetic disk, 2GB memory, 10GB disk, region us-east-1 
Download *both* ppk and pem keys for the instance. PPK is for putty.
	pem is used to access through the java console on AWS 
Copy down the Tomcat manager password. 
Go to AWS console. Start the instance if it is not running. 
	Note the public IP address of the instance.
Select the EC2 instance and use Edit tags to change the name to frcgrok-tomcat-be
Use putty to login to the instance as user bitnami. 

For VM
Download OVA instance for Tomcat
login to the console with username/password bitnami/bitnami
Change user name password to something new. 
Check that ssh is running by executing "sudo systemctl status ssh"
If not run the following:
     sudo rm -f /etc/ssh/sshd_not_to_be_run
     sudo systemctl enable ssh
     sudo systemctl start ssh
Find the IP address with sudo ifconfig -a
Run putty, create new profile with the IP. 
Connect with putty with password. Accept new key.
Create .ssh/authorized_keys file with your public key.



Run commands:
	sudo apt-get -q -y install git
	git clone https://github.com/ToughTechs151/frcopengrok
	cd frcopengrok
	./setup.sh

When running ./confnoip be careful when entering the data.
The email is brian@utterback.org
When it asks about updating all hosts press "n" (no return)
Then select "n" for all except grokfrc.ddns.net. Also without return.

When running ./awsconf, select the same Acess Key ID as displayed. Enter the Secret key. Leave the other
two as None.

Use 
git config credential.helper store
git config --global user.name "your name" 
git config --global user.email "youremail" 
git config --global core.editor vim


Note: preinstalled .bashrc has a bug. Where it sets PS1 for xterms, the part aboue debian_chroot is in double 
 quote instead of single quotes. 

</pre>
