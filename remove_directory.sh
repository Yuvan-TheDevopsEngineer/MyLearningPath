#!/bin/bash

# Check if the script is run with sudo privileges
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with sudo privileges."
    exit 1
fi

# Check if the directory exists before attempting to remove it
if [ -d "/home/ec2-user/devops/jenkins/demo" ]; then
    # Remove the directory and its contents recursively
    sudo rm -r /home/ec2-user/devops/jenkins/demo

    # Check if directory removal was successful
    if [ $? -eq 0 ]; then
        echo "Directory removed successfully: /home/ec2-user/devops/jenkins/demo"
    else
        echo "Failed to remove directory."
        exit 1
    fi
else
    echo "Directory not found: /home/ec2-user/devops/jenkins/demo"
    exit 1
fi

# Optionally, you can add more commands below if needed.


