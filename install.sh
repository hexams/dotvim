#!/usr/bin/env bash

set -e

# creates symlinks inside the home directory
dir=`echo $(pwd) | sed "s|$HOME/||"`
cd $HOME
ln -fs $dir .vim
for file in vimrc gvimrc; do
  ln -fs .vim/$file .$file
done
