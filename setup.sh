#!/usr/bin/env sh

declare file=""
declare i=""
declare -r -a FILES_TO_SOURCE=(
  "bash_aliases"
  "bash_exports"
  "bash_logout"
  "bash_options"
  "bashrc"
  "curlrc"
  "inputrc"
  "screenrc"
)

for i in ${!FILES_TO_SOURCE[*]}; do
  file="$HOME/.${FILES_TO_SOURCE[$i]}"
  cp -r ${FILES_TO_SOURCE[$i]} $file
done
