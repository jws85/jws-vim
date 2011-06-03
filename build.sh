#!/bin/bash
# Install script for my vim setup
# This is a very rough script... planning on making it much better soon.
# Author:  Justin Smith (jsmith@inttekmail.inttek.net)
# Date:    2011-06-03

VIMDIR=$HOME/.vim

# FIXME: Copy entire folder from where it is, to ~/.vim/

# Get the vundle installation in place
git submodule init
git submodule update

# Now that vundle is installed, pull in all bundles
vim -u $VIMDIR/vundle.vim +BundleInstall +q

# FIXME: There should be a site-install script that is run by this
# that gets special install instructions (e.g. Command-T needs to be
# compiled; DBGp-client NEEDS to be in the plugin/ dir...)

# Special instructions for DBGp-client
mkdir $VIMDIR/plugin
ln -s $VIMDIR/plugin/DBGp-client/plugin/debugger.vim plugin
ln -s $VIMDIR/plugin/DBGp-client/plugin/debugger.py plugin

# Copy fresh site-configuration files
cp $VIMDIR/site/all.vim.sample $VIMDIR/site/all.vim
cp $VIMDIR/site/gui.vim.sample $VIMDIR/site/gui.vim

# Make symlinks to the install files
ln -s $VIMDIR/vimrc.vim $HOME/.vimrc
ln -s $VIMDIR/gvimrc.vim $HOME/.gvimrc

