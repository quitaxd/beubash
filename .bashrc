neofetch

if [ -f /etc/bashrc ]; then
  source /etc/bashrc
fi

EDITOR=nvim
PATH="$PATH:$HOME/.local/bin"

source ~/.beubash/aliases.conf
source ~/.beubash/ps1.conf
