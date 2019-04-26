#!/bin/bash
echo "Coping dot files"

FILES=(".bashrc" ".aliases" ".vimrc" ".functions" ".jshintrc" ".gitconfig")
for FILE in ${FILES[@]}
do
    cp ~/$FILE $FILE
done

SUBLIMEDIR=~/.config/sublime-text-3
if [ -d "$SUBLIMEDIR" ]; then
    echo "Coping Sublime 3 files"
    cp -r $SUBLIMEDIR/Installed\ Packages Sublime\ 3/
    cp -r $SUBLIMEDIR/Packages Sublime\ 3/
fi

VSCODEDIR=~/.config/Code/User
if [[ ! -d "$VSCODEDIR" ]]; then
    VSCODEDIR=~/.config/Code\ -\ OSS/User
fi

if [[ -d "$VSCODEDIR" ]]; then
    echo "Coping VS Code files"
    mkdir -p vscode
    cp -r vscode/settings.json "$VSCODEDIR"
fi
