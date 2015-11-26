#!/bin/bash

git submodule update --init --recursive

# YCM
sudo apt-get install build-essential cmake python-dev
pushd .vim/bundle/ycm
./install.py --clang-completer
popd

# VimTex
sudo apt-get install latexmk
