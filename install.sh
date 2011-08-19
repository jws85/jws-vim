#!/bin/bash
# Install script for my vim setup

VIMDIR=$HOME/.vim

# Make backups of your old vim files if they exist
if [ -e $HOME/.vimrc ];  then cp $HOME/.vimrc  $HOME/.vimrc.bak  fi
if [ -e $HOME/.gvimrc ]; then cp $HOME/.gvimrc $HOME/.gvimrc.bak fi
if [ -e $HOME/.vim ];    then cp -r $HOME/.vim $HOME/.vim.bak    fi

# Get the vundle installation in place
git submodule init
git submodule update

# Now that vundle is installed, pull in all bundles
vim -u $VIMDIR/vundle.vim +BundleInstall +q

# Copy fresh site-configuration files
cp $VIMDIR/site/vimrc.sample  $HOME/.vimrc
cp $VIMDIR/site/gvimrc.sample $HOME/.gvimrc
