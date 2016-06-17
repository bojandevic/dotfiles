#!/bin/bash
echo "Coping dot files"

SCRIPTS=(".bashrc" ".aliases" ".vimrc" ".functions" ".jshintrc", ".gitconfig")
for SCRIPT in ${SCRIPTS[@]} 
do
    cp ~/$SCRIPT $SCRIPT
done

echo "Coping Sublime 3 files"
cp -r ~/.config/sublime-text-3/Installed\ Packages Sublime\ 3/
cp -r ~/.config/sublime-text-3/Packages Sublime\ 3/
