#!/bin/bash

# Check if the script is run with sudo privileges
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with sudo privileges."
    exit 1
fi

# Create directory
sudo mkdir -p /home/ec2-user/devops/jenkins/demo

# Check if directory creation was successful
if [ $? -eq 0 ]; then
    echo "Directory created successfully: /home/ec2-user/devops/jenkins/demo"
else
    echo "Failed to create directory."
    exit 1
fi

# Optionally, you can add more commands below if needed.


