#!/bin/bash

# Check whether we have access to apt-get
sudo which apt-get > /dev/null

if [ $? -eq 0 ]
then
  # Install packages via apt-get
  echo "Installing packages with apt-get..."
  sudo apt-get install -y git vim ctags gdb > /dev/null
  install_rc=$?
else
  # Check whether we have access to yum
  sudo which yum > /dev/null

  if [ $? -eq 0 ]
  then
    # Install packages via yum
    echo "Installing packages with yum..."
    sudo yum -y install git vim ctags gdb > /dev/null
    install_rc=$?
  else
    echo "Can't auto-install on system without apt-get or yum"
    exit 1
  fi
fi

if [ $install_rc -ne 0 ]
then
  echo "ERROR: Failed to install required packages"
  exit 2
fi

# Clone the repository if it hasn't already been done
cd ~
if [ ! -d ".vim" ]
then
  echo "Cloning .vim directory"
  git clone git@github.com:huws/.vim.git
else
  echo ".vim directory already exists"
fi

# Modify the .bashrc file, if it hasn't already been done
grep "source ~/.vim/bashrc" ~/.bashrc > /dev/null

if [ $? -ne 0 ]
then
  echo "Modifying .bashrc..."
  sudo chown $USER:$USER ~/.bashrc
  echo "source ~/.vim/bashrc" >> ~/.bashrc
else
  echo "Already updated .bashrc"
fi

# Move off any old .vimrc file
cd ~
if [ -f ".vimrc" ]
then
  TIMESTAMP=`date +%Y%m%d.%H%M%S`
  VIMRC_BACKUP=.vimrc.$TIMESTAMP
  echo "Back-up old .vimrc to $VIMRC_BACKUP"
  mv .vimrc $VIMRC_BACKUP
  if [ $? -ne 0 ]
  then
    echo "ERROR: Failed to back-up old .vimrc"
    exit 3
  fi
fi

# Install vundle
if [ ! -d ~/.vim/bundle/vundle ]
then
  echo "Installing vundle..."
  git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
else
  echo "vundle already installed"
fi

# Install plugins
echo "Installing plugins..."
vim -c VundleInstall -c quitall

echo "DONE!"

