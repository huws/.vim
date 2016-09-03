# Install
## Automatic install
These vim settings can be installed automatically by running:

    curl -L http://goo.gl/VE7XuH | bash -s

## Manual install
These vim settings can be installed by running:

    sudo apt-get install -y git
    cd ~
    git clone https://github.com/huws/.vim
    .vim/install.sh

    vim <then> :BundleInstall
    <exit> vim

## Set up ctags
Set up ctags by running:

    cd <project directory>
    ctags --recurse --exclude=.git
