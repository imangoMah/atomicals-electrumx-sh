#!/bin/bash

git init

git remote add origin https://github.com/atomicals/atomicals-electrumx.git

git fetch --all

git checkout 1.3.8.1

if ! command -v python3 &> /dev/null
then
    echo "Python3 installing..."
    sudo apt-get update
    sudo apt-get install python3 -y
else
    echo "Python3 installed."
fi

if ! command -v pip3 &> /dev/null
then
    echo "pip3 installing..."
    sudo apt-get install python3-pip -y
else
    echo "pip3 installed."
fi

if [ -f requirements.txt ]; then
    echo "Installing dependency packages in requirements. txt..."
    pip3 install -r requirements.txt
else
    echo "The requirements. txt file was not found in the current directory."
fi
