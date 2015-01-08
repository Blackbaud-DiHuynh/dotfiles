dir=~/workspace/dotfiles # dotfiles directory
files=".bashrc .vimrc .vim .tmux.conf" # list of files/folders to symlink in homedir

##########
  
cd $dir
for file in $files; do
   echo "Creating hard link to $file in home directory."
   sudo ln $dir/$file ~/$file
done
    
source ~/.bashrc
source ~/.vimrc 
