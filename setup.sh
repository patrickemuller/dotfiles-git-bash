#!/usr/bin/env sh

declare file=""
declare i=""
declare -r -a FILES_TO_SOURCE=(
  "bash_aliases"
  "bash_history"
  "bash_exports"
  "bash_options"
  "inputrc"
  "bash_profile"
  "bashrc"
)

for i in ${!FILES_TO_SOURCE[*]}; do
  file="$HOME/.${FILES_TO_SOURCE[$i]}"
  cp -r ${FILES_TO_SOURCE[$i]} $file
done
