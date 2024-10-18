#Installation of Maven In ubuntu
#!/bin/bash

mvn_version="3.9.8"
mvn_url="https://dlcdn.apache.org/maven/maven-3/3.9.8/binaries/apache-maven-3.9.8-bin.tar.gz"
M2_HOME="/opt/maven"

check_mvn_install() {
	if command -v mvn &>/dev/null; then
		echo "Maven is Already install"
		return 0
	else
		echo "Maven is not install"
		mvn_install
		return 1 
	fi
}

check_mvn_install



mvn_install() {
echo "installing maven......"
#Downloading maven using url in /tmp dir
wget $mvn_url -P /tmp

#Extracting mvn 
tar -xvzf /tmp/apache-maven-$mvn_version-bin.tar.gz -C /opt

mv /opt/apache-maven-$mvn_version $M2_HOME

echo "export M2_HOME=$M2_HOME" >> ~/.bashrc
echo "export PATH=$PATH:$M2_HOME/bin" >> ~/.bashrc
source ~/.bashrc

}


echo "maven installtion is completed"
