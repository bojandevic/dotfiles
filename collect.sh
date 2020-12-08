#!/bin/bash
echo "Coping dot files"

FILES=(".bashrc" ".aliases" ".vimrc" ".functions" ".jshintrc" ".gitconfig")
for FILE in ${FILES[@]}
do
    cp ~/$FILE $FILE
done

