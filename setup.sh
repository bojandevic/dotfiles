#!/bin/bash
echo "Coping dot files"

SCRIPTS=(".bashrc" ".aliases" ".vimrc" ".functions" ".jshintrc")
for SCRIPT in ${SCRIPTS[@]} 
do
    # Make a backup if needed
    if [[ -f ~/$SCRIPT ]]; then
       cp ~/$SCRIPT ~/$SCRIPT.`date +%s`
    fi
    cp $SCRIPT ~/$SCRIPT
done

echo "Coping Sublime 3 files"
cp -r Sublime\ 3/* ~/.config/sublime-text-3/
