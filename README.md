#Clone repository
git clone https://github.com/jmquinn/prefs.git

#Install ZSH and OhMyZSH
apt-get install zsh
curl -L http://install.ohmyz.sh | sh

#Change to zsh as default shell
chsh -s $(which zsh)

#vim vundle
##from https://github.com/gmarik/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -r prefs/.* ~

vim +PluginInstall +qall
