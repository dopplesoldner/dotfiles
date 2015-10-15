#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

bindkey -e
bindkey '^R' history-incremental-search-backward

export WORKON_HOME=~/dev/envs
source /usr/local/bin/virtualenvwrapper.sh

# Customize to your needs...

export PYTHONPATH=$PYTHONPATH:~/dev

