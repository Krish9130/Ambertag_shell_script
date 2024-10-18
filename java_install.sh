#!/bin/bash

check_java_installed() {
    if command -v java &>/dev/null; then
        echo "Java is already installed. Skipping installation."
        update-java-alternatives --list
	return 0
    else
        echo "java is not installed"
        update-java-alternatives --list
	sudo apt update
	sudo apt install default-jre
	sudo apt install default-jdk
	return 1
    fi
}

check_java_installed
#update the system


#sudo update-alternatives --config java


