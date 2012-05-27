#!/usr/bin/env bash

set -e

# creates symlinks inside the home directory
for file in *.dotfile; do
  dotfile=`echo $file | sed 's/.dotfile//'`
  dotfile=$HOME/.$dotfile
  ln -fs .dotvim/$file $dotfile
done
cd
ln -fs .dotvim .vim
