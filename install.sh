###############################
#
# Author : donemin
# Email  : donemin@gmail.com
#
###############################

#install vundle
echo "Install vundle from git"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#create symbolic link
backup_dir=~/dotfiles_bak
dir=~/dotfiles

files="vimrc"

for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/$backup_dir/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

