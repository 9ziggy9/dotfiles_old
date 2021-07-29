#!/bin/bash

fzf_in=$(find ~ -print | fzf);
fzf_in_truncate=$(echo $fzf_in | sed 's/.*\///')

echo -n "Rename file: "
read NEW_FILE;

[[ ! -z "$NEW_FILE" ]] && cp -r $fzf_in ./$NEW_FILE || cp -r $fzf_in ./$fzf_in_truncate;
