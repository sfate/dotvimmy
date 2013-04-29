cd $HOME && git clone git://github.com/Sfate/Vim-environment.git Vim-environment
[ -d .vim ] && mv .vim{,.old}
mv Vim-environment/.vim* .
mkdir -p .vim/bundle
git clone git://github.com/gmarik/vundle.git .vim/bundle/vundle
rm -rf Vim-environment .vim.old
echo
echo "  Post install note: Please run 'vim +BundleInstall +qall'."
echo
exit 0
