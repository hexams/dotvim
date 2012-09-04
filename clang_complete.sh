#!/usr/bin/env bash

set -e

~/.vim/bundle/clang_complete/bin/cc_args.py /usr/bin/clang $@
