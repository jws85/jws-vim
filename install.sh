#!/bin/bash
# Install script for my vim setup
# This is a very rough script... planning on making it much better soon.

VIMDIR=$HOME/.vim

# FIXME: Back up any existing ~/.(g)vimrc to ~/.(g)vimrc.bak
# FIXME: Back up any existing ~/.vim/ to ~/.vim.bak

# Get the vundle installation in place
git submodule init
git submodule update

# Now that vundle is installed, pull in all bundles
vim -u $VIMDIR/vundle.vim +BundleInstall +q

# Copy fresh site-configuration files
cp $VIMDIR/site/vimrc.sample ~/.vimrc
cp $VIMDIR/site/gvimrc.sample ~/.gvimrc
