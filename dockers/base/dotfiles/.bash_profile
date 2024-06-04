# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# nvm
if [ -f ~/.nvm/nvm.sh ] ; then
        source ~/.nvm/nvm.sh ;
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
