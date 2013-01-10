cd $HOME && git clone git://github.com/Sfate/Vim-environment.git Vim-environment
[ -d .vim ] && mv .vim{,.old}
mv Vim-environment/.vim* .
rm -rf Vim-environment .vim.old
exit 0
