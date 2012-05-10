#!/bin/zsh
workspace=/usr/workspace/
fullpath=$workspace$2

alias ls='ls --color auto'

[[ -e $workspace ]] && echo "Path:" $workspace || mkdir $workspace

if [ "$1" = --list ] || [ "$1" = -l ]; then
  ls $workspace
elif [ "$1" = --save ] || [ "$1" = -s ]; then
  ln -sf "$2" $fullpath
elif [ "$1" = "" ] && [ "$2" = "" ]; then
  echo "Parameter is Null"
  echo "--list/-l - list outproject inside workspace folder."
  echo "--save/-s - save project into workspace folder."
  echo "<projectname> change current dir to the project folder."
  echo "pm -<TAB> are work!"
else
  cd $1
  echo "Current folder:" $(pwd)
fi

