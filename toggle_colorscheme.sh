#!/usr/bin/env bash

set -e

(
  cd $HOME
  if [[ -L "~/.vimrc.colorscheme" ]]; then
    if [[ `greadlink -f ~/.vimrc.colorscheme` == "~/.dotvim/vimrc.solarized-dark" ]]; then
       ln -sf .dotvim/vimrc.solarized-light .vimrc.colorscheme
    else
       ln -sf .dotvim/vimrc.solarized-dark .vimrc.colorscheme
    fi
  else
    ln -sf .dotvim/vimrc.solarized-dark .vimrc.colorscheme
  fi
)
