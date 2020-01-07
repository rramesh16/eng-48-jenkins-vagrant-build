#!/bin/bash
# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

sudo apt install default-jdk-headless -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
# sudo ufw allow 8080
# sudo ufw allow OpenSSH
# sudo ufw enable -y
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo apt-get install nginx -y
