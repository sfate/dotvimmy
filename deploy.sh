set -e
cd $HOME

(wget -N -O .vimrc https://raw.github.com/Sfate/Vim-environment/master/vimrc) > /dev/null 2>&1
[ -d .vim ] && rm -rf .vim
mkdir -p .vim/bundle
(git clone git://github.com/gmarik/vundle.git .vim/bundle/vundle) > /dev/null 2>&1

vim +BundleInstall +qall < /dev/tty > /dev/tty

exit 0
