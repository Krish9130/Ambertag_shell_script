#!/bin/bash
#Check git is install or not if not then install it.

check_git_installed() {
    if command -v git &>/dev/null; then
        echo "git is already installed. Skipping installation."
        return 0
else
        echo "git is not installed"
        sudo apt update                              #update the system
	apt-get install git -y                       #install git using apt
	return 1
    fi
}

check_git_installed

echo "**Git Version**"
git --version
echo "######################################################"
echo
echo "Git is installed successfully!"
echo "######################################################"
