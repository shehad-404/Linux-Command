#!/bin/bash
# This is about User, HostName and Current Home Directory
user=$(whoami)
hostname=$(hostname)
directory=$(pwd)
echo "UserName = $user"
echo "HostName = $hostname"
echo "Current Directory = $directory"
