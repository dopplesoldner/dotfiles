sudo apt-get -y install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable 
sudo apt-get -y update 
sudo apt-get -y install neovim 
sudo apt-get -y install python-dev python-pip
sudo apt-get -y install exuberant-ctags
sudo pip  install --upgrade neovim

#install vim plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s `pwd`/init.vim ~/.config/nvim/init.vim

echo "alias vi=nvim" >> ~/.bashrc
