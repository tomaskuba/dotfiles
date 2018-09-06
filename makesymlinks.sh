#!/bin/bash
##############################################################################
# Creates symlinks from dotfiles to ~/dotfiles
##############################################################################

# Variables
##############################################################################
dir=~/dotfiles         # dotfiles directory
olddir=~/dotfiles_old  # old dotfiles backup directory
# list of files/folders to symlink in homedir
files="aliases functions bash_profile bash_prompt bashrc gitconfig gitignore_global"

##############################################################################

echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done