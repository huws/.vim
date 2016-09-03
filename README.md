# Install
## Automatic install
These vim settings can be installed automatically by running:

    curl -L http://goo.gl/VE7XuH | bash -s

## Manual install
These vim settings can be installed by running:

    sudo apt-get install -y git
    cd ~
    git clone https://github.com/huws/.vim
    .vim/go.sh

To install the plugins, launch `vim` and execute the `:BundleInstall` command.
You will need to exit and restart `vim` before all plugins are available.

## Set up ctags
Set up (or refresh) ctags by running:

    cd <project directory>
    ctags --recurse --exclude=.git
