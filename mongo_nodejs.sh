# Custom Script for Linu#commands for installing mongo db:

#Step 1 - Import the public key used by the package management system:
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

#Step 2 - Create a list file for MongoDB:
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
#echo "deb http://repo.mongodb.org/apt/ubuntu "xenial"/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#Step 3 - Reload local package database:
sudo apt-get update

#Step 4 - Install the MongoDB packages:
sudo apt-get install -y mongodb-org

#Start mongodb and add it as service to be started at boot time:
sudo systemctl start mongod
sudo systemctl enable mongod

#Step 5 - Install Nodejs
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs

#Step 6 - Install Nginx
#sudo apt-get update && sudo apt-get install nginx
#sudo systemctl is-active nginx

#Step 7 - Firewall Setup
#sudo ufw status
#sudo ufw enable
#sudo ufw allow 80/tcp
#sudo ufw allow 443/tcp

#Clone todo app
#mkdir /app
#git clone $1 /app

#Install Nodejs app
#cd /app
#npm install

#App to be started manually by user post declaing MONGODB_URL var
#export MONGODB_URL="mongodb://localhost/tododb"
#nom start
exit 0
