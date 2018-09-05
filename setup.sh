#!/usr/bin/env sh

declare file=""
declare i=""
declare -r -a FILES_TO_SOURCE=(
  "gitconfig"
  "bash_aliases"
  "bash_exports"
  "bash_history"
  "bash_logout"
  "bash_options"
  "bash_profile"
  "bash_prompt"
  "bashrc"
  "inputrc"
)

# copy bash_ files
for i in ${!FILES_TO_SOURCE[*]}; do
  file="$HOME/.${FILES_TO_SOURCE[$i]}"
  cp -r ${FILES_TO_SOURCE[$i]} $file
done