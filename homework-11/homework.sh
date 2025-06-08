#!/bin/bash

function k-pop() {
	sudo useradd jenny 
	sudo useradd rose 
	sudo useradd lisa 
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny 
	sudo usermod -aG blackpink rose
	sudo usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo 
}

function wordpress () {
	sudo yum update -y
	sudo yum install -y httpd php php-mysgind wget unzip 
	sudo systemctl enable httpd 
	sudo systemctl start httpd
	cd /tmp
	wget https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	sudo rm -rf /var/www/html/*
	sudo mv wordpress/* /var/www/html/
	sudo chown -R apache:apache /var/www/html/ 
	sudo chmod -R 755 /var/www/html/
}

function binary() {
	sudo yum install -y tree yum-utils
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum -y install terraform
} 
