#Installation of Maven In ubuntu
#!/bin/bash

mvn_version="3.9.8"
mvn_url="https://dlcdn.apache.org/maven/maven-3/3.9.8/binaries/apache-maven-3.9.8-bin.tar.gz"
M2_HOME="/opt/maven"

mvn_install() {
echo "Installing Maven........"

#Downloading maven using url in /tmp dir
wget $mvn_url -P /tmp

#Extracting mvn 
tar -xvzf /tmp/apache-maven-$mvn_version-bin.tar.gz -C /opt

mv /opt/apache-maven-$mvn_version $M2_HOME

echo "export M2_HOME=$M2_HOME" >> ~/.bashrc
echo "export PATH=$PATH:$M2_HOME/bin" >> ~/.bashrc
source ~/.bashrc

}

mvn_install 

echo "maven installtion is completed"
