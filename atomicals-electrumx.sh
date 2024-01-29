#!/bin/bash

git init

git remote add origin https://github.com/atomicals/atomicals-electrumx.git

git fetch --all

git checkout 1.3.8.1

os_name=$(uname -s)
if [ "$os_name" = "Linux" ]; then
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        os_name=$ID
    fi
fi

if [ "$os_name" = "ubuntu" ]; then
    pkg_manager="apt-get"
elif [ "$os_name" = "centos" ]; then
    pkg_manager="yum"
else
    echo "Not Supported: $os_name"
    exit 1
fi

if ! command -v python3 &> /dev/null
then
    echo "Python3 installing..."
    sudo $pkg_manager update
    sudo $pkg_manager install python3 -y
else
    echo "Python3 installed."
fi

if ! command -v pip3 &> /dev/null
then
    echo "pip3 installing..."
    sudo $pkg_manager install python3-pip -y
else
    echo "pip3 installed."
fi

if [ -f requirements.txt ]; then
    echo "Installing dependency packages in requirements. txt..."
    pip3 install -r requirements.txt
else
    echo "The requirements. txt file was not found in the current directory."
fi
