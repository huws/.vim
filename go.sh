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
sudo apt-get install -y git vim ctags gdb > /dev/null

if [ $? -ne 0 ]
then
  echo "ERROR: Failed to install required packages"
  exit 2
fi

# Clone the repository if it hasn't already been done
cd ~
if [ ! -d ".vim" ]
then
  echo "Cloning .vim directory"
  git clone http://github.com/huws/.vim
else
  echo ".vim directory already exists"
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

# Install vundle
if [ ! -d ~/.vim/bundle/vundle ]
then
  echo "Installing vundle..."
  git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
else
  echo "vundle already installed"
fi

echo "DONE!"

