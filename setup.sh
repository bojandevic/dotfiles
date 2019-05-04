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

SUBLIMEDIR=~/.config/sublime-text-3
if [[ -d "$SUBLIMEDIR" ]]; then
    echo "Coping Sublime 3 files"
    cp -r Sublime\ 3/* "$SUBLIMEDIR"
fi


VSCODEDIR=~/.config/Code/User
if [[ ! -d "$VSCODEDIR" ]]; then
    VSCODEDIR=~/.config/Code\ -\ OSS/User
fi

if [[ -d "$VSCODEDIR" ]]; then
    echo "Coping VS Code files"
    cp -r "vscode/settings.json" "$VSCODEDIR"
fi


echo "Appling new .bashrc"
source ~/.bashrc
