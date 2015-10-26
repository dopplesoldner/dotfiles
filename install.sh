#!/bin/sh

#install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#download rc files
wget -O ~/.vimrc --backups https://raw.githubusercontent.com/dopplesoldner/dotfiles/master/vimrc
wget -O ~/.zshrc --backups https://raw.githubusercontent.com/dopplesoldner/dotfiles/master/zshrc
wget -O ~/.screenrc --backups https://raw.githubusercontent.com/dopplesoldner/dotfiles/master/screenrc
wget -O ~/.zpretzorc --backups https://raw.githubusercontent.com/dopplesoldner/dotfiles/master/zpretzorc

#install plugins
vim +PluginInstall +qall

#ultisnips
mkdir -p ~/.vim/after/plugin
ln -s ~/.vim/bundle/ultisnips/after/plugin/* ~/.vim/after/plugin
mkdir ~/.vim/ftdetect
ln -s ~/.vim/bundle/ultisnips/ftdetect/* ~/.vim/ftdetect
