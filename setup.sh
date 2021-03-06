#!/bin/bash
echo "Coping dot files"

if [[ !  -d ~/.logs ]]; then
   echo "Making ~/.logs folder"
   mkdir ~/.logs
fi

FILES=(".bashrc" ".aliases" ".vimrc" ".functions" ".jshintrc" ".gitconfig")
for FILE in ${FILES[@]}
do
    # Make a backup if needed
    if [[ -f ~/$FILE ]]; then
       cp ~/$FILE ~/$FILE.`date +%s`
    fi
    cp $FILE ~/$FILE
done

echo "Appling new .bashrc"
source ~/.bashrc
