#!/usr/bin/env bash

set -e

# creates symlinks inside the home directory
dir=`echo $(pwd) | sed "s|$HOME/||"`
(
  cd $HOME
  ln -fs $dir .vim
  for file in $dir/dotfiles/*; do
    realfile=`greadlink -f $file | sed "s|$HOME/||"`
    linkname=".`basename $file`"
    ln -fs $realfile $linkname
  done
)

sh toggle_colorscheme.sh
