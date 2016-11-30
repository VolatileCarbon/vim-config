#!/bin/bash
# This script installs pathogen, some plugins and copies the .vimrc
# to the home directory

echo "Removing existing .vim directory and .vimrc"

rm ~/.vimrc && rm -rf ~/.vim

echo "Installing Colors..."

git clone https://github.com/flazz/vim-colorschemes.git ~/.vim

echo "Installing Pathogen..."

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing nerdtree..."

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo "Install vim-airline..."

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

echo "Installing vim-airline themes..."

git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

echo "Installing vim-gitgutter..."

git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

echo "Install vim-fugitive..."

git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

echo "Install syntastic..."

git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

echo "Installing vim-commentary..."

git clone git://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary

echo "Installing vim-javascript..."

git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

echo "Installing vim-pug..."

git clone git://github.com/digitaltoad/vim-pug.git ~/.vim/bundle/vim-pug

echo "Copying .vimrc..."

cp ./.vimrc ~/

echo "All done!"
