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

if [ -d $HOME/.local/bin ]; then
  PATH="$PATH:$HOME/.local/bin"
fi

if [ -d $HOME/.cargo/bin ]; then
  PATH="$PATH:$HOME/.cargo/bin"
fi

if [ -d $HOME/.bin ]; then
  PATH="$PATH:$HOME/.bin"
fi

if [ -d $HOME/bin ]; then
  PATH="$PATH:$HOME/bin"
fi

EDITOR=nvim
source ~/.beubash/aliases.conf
source ~/.beubash/ps1.conf
