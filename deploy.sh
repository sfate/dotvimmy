# Maintainer: https://github.com/sfate
# Source: https://github.com/sfate/dotvimmy
#        __      __        _
#   ____/ /___  / /__   __(_)___ ___  ____ ___  __  __
#  / __  / __ \/ __/ | / / / __ `__ \/ __ `__ \/ / / /
# / /_/ / /_/ / /_ | |/ / / / / / / / / / / / / /_/ /
# \__,_/\____/\__/ |___/_/_/ /_/ /_/_/ /_/ /_/\__, /
#                                            /____/
# How_to_Install_or_Update:
#    !NOTE: This will override your existing vim setup
#    $ curl -Lo- https://git.io/dotvimmy-deploy.sh | bash
set -e

start_time=$(date +%s)
release_name=$(date +"%Y%m%d%H%M%S")
vimmy_dir=$HOME/.vimmy
releases_dir=$vimmy_dir/releases
backup_dir=$vimmy_dir/backup
current_release_dir=$releases_dir/$release_name
current_backup_dir=$backup_dir/$release_name

echo "[*] Downloaded deploy script for: https://github.com/sfate/dotvimmy"
echo "[*] Start deploy of vim configuration"

echo "[*] Old configuration backup"
(mkdir -p $vimmy_dir/{backup,releases}/$release_name)
(mkdir -p $current_release_dir/vim/bundle)
if [ -e "$HOME/.vimrc" ]; then
  mv $HOME/.vimrc $current_backup_dir
else
  echo '  > No ".vimrc" file found. Skipping...' 
fi
if [ -e "$HOME/.vim" ]; then
  mv $HOME/.vim $current_backup_dir
else
  echo '  > No ".vim" folder found. Skipping...' 
fi

echo "[*] Fetch vimrc"
(curl -sLo $current_release_dir/vimrc https://raw.github.com/sfate/dotvimmy/master/vimrc) &> /dev/null

echo "[*] Link folders"
(ln -s $current_release_dir/vimrc $HOME/.vimrc)
(ln -s $current_release_dir/vim   $HOME/.vim)

echo "[*] Installing plugins"
(vim +'PlugInstall --sync' +qall) &> /dev/null

echo "[*] Clean up"
old_releases=$(ls -td $releases_dir/* | tail -n +6)
old_backups=$(ls -td $backup_dir/* | tail -n +6)
[ -n "$old_releases" ] && rm -rf $old_releases
[ -n "$old_backups" ]  && rm -rf $old_backups

echo "[*] Deployed successfully. Time spent: $(($(date +%s)-$start_time))s"

exit 0
