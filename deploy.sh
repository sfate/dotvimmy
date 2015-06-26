set -e
cd $HOME

start_time=$(date +%s)
echo "[*] Start deploy of vim configuration"

echo "[*] Fetch vimrc"
(wget -N -O .vimrc https://raw.github.com/Sfate/Vim-environment/master/vimrc) &> /dev/null

echo "[*] Clone vundle plugin"
[ -d .vim ] && rm -rf .vim
mkdir -p .vim/bundle
(git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle --quiet) &> /dev/null

echo "[*] Installing plugins"
(vim -u NONE -S ~/.vimrc +PluginInstall +qall) < /dev/tty &> /dev/null

end_time=$(date +%s)
echo "[*] Deployed successfully. Time spent: $(($end_time-$start_time))s"

exit 0
