#!/bin/sh

#install vundle
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#add soft links
d=`pwd`
ln -s $d/vimrc ~/.vimrc
ln -s $d/screenrc ~/.screenrc

##colors
#mkdir ~/.vim/colors/
#cp jellybeans.vim ~/.vim/colors/

###ultisnips
#mkdir -p ~/.vim/after/plugin
#ln -s ~/.vim/bundle/ultisnips/after/plugin/* ~/.vim/after/plugin
#mkdir ~/.vim/ftdetect
#ln -s ~/.vim/bundle/ultisnips/ftdetect/* ~/.vim/ftdetect

##install plugins
#vim +PluginInstall +qall
