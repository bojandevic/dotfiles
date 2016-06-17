#!/bin/bash
echo "Coping dot files"

if [[ !  -d ~/.logs ]]; then
   echo "Making ~/.logs folder"
   mkdir ~/.logs
fi

SCRIPTS=(".bashrc" ".aliases" ".vimrc" ".functions" ".jshintrc", ".gitconfig")
for SCRIPT in ${SCRIPTS[@]} 
do
    # Make a backup if needed
    if [[ -f ~/$SCRIPT ]]; then
       cp ~/$SCRIPT ~/$SCRIPT.`date +%s`
    fi
    cp $SCRIPT ~/$SCRIPT
done

if [[ ! -d ~/.config/sublime-text-3 ]]; then
   echo "Making ~/.config/sublime-text-3 folder"
   mkdir -p ~/.config/sublime-text-3/
fi
echo "Coping Sublime 3 files"
cp -r Sublime\ 3/* ~/.config/sublime-text-3/

echo "Appling new .bashrc"
source ~/.bashrc
