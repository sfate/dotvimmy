set -e
cd $HOME

start_time=$(date +%s)
echo "[*] Starting deploy of vim configuration."

(wget -N -O .vimrc https://raw.github.com/Sfate/Vim-environment/master/vimrc) > /dev/null 2>&1
[ -d .vim ] && rm -rf .vim
mkdir -p .vim/bundle
(git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle --quiet) > /dev/null 2>&1
if [ '7.4' == $(vim --version | egrep "VIM - Vi IMproved" | cut -c19-21) ]; then
  (git clone https://github.com/Valloric/YouCompleteMe.git .vim/bundle/YouCompleteMe --quiet) > /dev/null 2>&1
  cd .vim/bundle/YouCompleteMe
  (git submodule update --init --recursive) > /dev/null 2>&1
  (./install.sh --clang-completer) > /dev/null 2>&1
else
  echo "[*] Update your vim, and rerun this configuration, to use YouCompeteMe plugin"
fi

vim +BundleInstall +qall < /dev/tty > /dev/tty

end_time=$(date +%s)
echo "[*] Deployed successfully. Time spent: $((end_time-start_time))s."

exit 0
