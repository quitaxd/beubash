neofetch

if [ -f /etc/bashrc ]; then
  source /etc/bashrc
fi

if [ -f /etc/profile ]; then
  source /etc/profile
fi

if [ -f /etc/environment ]; then
  source /etc/environment
fi

if [ -f ~/.config/aliasrc ]; then
  source ~/.config/aliasrc
fi

EDITOR=nvim

if [ -d $HOME/.local/bin ]; then
  PATH="$PATH:$HOME/.local/bin"
fi

if [ -f $HOME/.cargo/env ]; then
  . ~/.cargo/env
fi

source ~/.beubash/aliases.conf
source ~/.beubash/ps1.conf
