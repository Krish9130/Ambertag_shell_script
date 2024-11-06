#! bin/bash
sudo apt update
echo "###########################################111111111111111############################################"
#sudo apt install nodejs npm git nginx -y
sudo apt install nodejs -y
echo "#############################################22  install nodejs  22#####################################################"
sudo apt install npm -y
echo "############################################33  install npm  333##################################################"
sudo apt install git -y
echo "############################################44  install git  44#################################################"
sudo apt install nginx -y
echo "###########################################55  install nginx  55##################################################"

sudo systemctl start nginx
sudo systemctl enable nginx
cd /opt
echo "---------------------------------------------pwd -----------------------------------------------------"
echo "$(pwd)"
echo "##########################################   git clonning  ###########################################"
sudo git clone https://github.com/Krish9130/React-To-do-app.git /opt/React-To-do-app

cd /opt/React-To-do-app/
echo "-----------------------------------------------pwd------------------------------------------------------"
echo "$(pwd)"
echo "$(ls -a)"
echo "------------------------------------------- instaling the project --------------------------------------"
sudo npm install
echo "-------------------------------------building the project-------------------------------------------------"
sudo npm run build


sudo chown -R ubuntu:ubuntu /var/www/html
echo "-------------------------- Moving file to /var/www/html -------------------------------------------------"
sudo mv build/* /var/www/html/
echo "--------------------------------------------  list file /var/www/html/  ------------------------------------------------------"
echo "$(ls /var/www/html/)"
sudo nginx -t
sudo systemctl restart nginx
echo "-------------------------------------------   nginx restarted successfully   --------------------------------"
sudo systemctl status nginx
exit
