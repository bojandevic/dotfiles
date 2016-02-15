#!/bin/bash
echo "Coping dot files"

SCRIPTS=(".bashrc" ".aliases" ".vimrc" ".functions")
for SCRIPT in ${SCRIPTS[@]} 
do
    # Make a backup if needed
    if [[ -f ~/$SCRIPT ]]; then
       cp ~/$SCRIPT ~/$SCRIPT.`date +%s`
    fi
    cp $SCRIPT ~/$SCRIPT
done
