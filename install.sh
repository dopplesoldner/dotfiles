#!/bin/sh

#install vundle
echo "Cloning Vundle"
mv -f ~/.vim ~/.vim.bak
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#add soft links
echo "Creating RC files"
d=`pwd`
mv -f ~/.vimrc ~/.vimrc.bak
mv -f ~/.screenrc ~/.screenrc.bak
ln -f -s $d/vimrc ~/.vimrc
ln -f -s $d/screenrc ~/.screenrc

##colors
echo "Setting vim colours"
mkdir ~/.vim/colors/
cp jellybeans.vim ~/.vim/colors/

###ultisnips
echo "Set ultisnips folders"
mkdir -p ~/.vim/after/plugin
ln -f -s ~/.vim/bundle/ultisnips/after/plugin/* ~/.vim/after/plugin
mkdir ~/.vim/ftdetect
ln -f -s ~/.vim/bundle/ultisnips/ftdetect/* ~/.vim/ftdetect

##install plugins#
echo "Installing plugins"
vim +PluginInstall +qall
