# Install
## Automatic install
These vim settings can be installed automatically by running:

    curl -L http://goo.gl/VE7XuH | bash -s

## Manual install
These vim settings can be installed by running:

    sudo apt-get install -y git
    cd ~
    git clone git@github.com:huws/.vim.git
    .vim/go.sh

To install the plugins, launch `vim` and execute the `:BundleInstall` command.
You will need to exit and restart `vim` before all plugins are available.

## Automatic install from tinyurl.com
There is a much more memorable URL for accessing the go.sh script via
tinyurl.com.  Sadly, tinyurl.com returns 403 Forbidden responses to any client
that identifies itself as "curl".  A tedious extra option is required to make
curl pass a user agent that satisfies tinyurl.com:

    curl -A Mozilla/5.0 -L http://tinyurl.com/huwvim | bash -s

# Other setup
## Set up ctags
Set up (or refresh) ctags by running:

    cd <project directory>
    ctags --recurse=yes --exclude=.git

