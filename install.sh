#!/bin/bash

# Check whether we have access to apt-get
sudo which apt-get > /dev/null

if [ $? -ne 0 ]
then
  echo "Can't auto-install on system without apt-get"
  exit 1
fi

# Install git, vim and ctags
echo "Installing packages..."
sudo apt-get install -y git vim ctags > /dev/null

if [ $? -ne 0 ]
then
  echo "ERROR: Failed to install required packages"
  exit 2
fi

# Modify the .bashrc file, if it hasn't already been done
grep "source ~/.vim/bashrc" ~/.bashrc > /dev/null

if [ $? -ne 0 ]
then
  echo "Modifying .bashrc..."
  echo "source ~/.vim/bashrc" >> ~/.bashrc
else
  echo "Already updated .bashrc"
fi

echo "DONE!"

