cd $HOME && git clone git://github.com/Sfate/Vim-environment.git Vim-environment
[ -d .vim ] && mv .vim{,.old}
mv Vim-environment/.vim* .
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
vim +BundleInstall +qall
rm -rf Vim-environment .vim.old
exit 0
