#/bin/bash
#Clone repository

cd
git clone https://github.com/jmquinn/prefs.git

#Install ZSH and OhMyZSH

sudo apt-get install zsh

curl -L http://install.ohmyz.sh | sh


#Change to zsh as default shell
chsh -s $(which zsh)

#vim vundle
##from https://github.com/gmarik/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -r prefs/.* ~
rm -rf ~/.git*

vim +PluginInstall +qall

git config --global user.email "jeff.quinn@gmail.com"
git config --global user.name "Jeff Quinn"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

