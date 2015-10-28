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

export CUDA_ROOT=/Developer/NVIDIA/CUDA-6.5
export PYLEARN2_DATA_PATH=~/dev/pylearn2/data
export PATH=~/dev/pylearn2/pylearn2/scripts:$PATH:~/dev/TeXcount_3_0_0_24
export PYTHONPATH=$PYTHONPATH:/Users/Rashid/dev/deeplearn/wine
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/Cellar/libxml2/2.9.2/include/libxml2

alias latexmk='latexmk -pdf -pvc'
alias vim="/usr/local/Cellar/macvim/7.4-77/MacVim.app/Contents/MacOS/Vim"
alias vi="vim"
