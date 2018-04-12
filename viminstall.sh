#!/bin/bash


mkdir ~/.vim

#############################
#   basic vim config        #
#############################


echo "set nocompatible" > ~/.vimrc
echo "set backspace=indent,eol,start" >> ~/.vimrc
echo "set shiftwidth=4" >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc
echo "set enc=utf-8" >> ~/.vimrc
echo "set encoding=utf-8" >> ~/.vimrc
echo "set fileencoding=utf-8" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
echo "set autoindent" >> ~/.vimrc
echo "set selectmode=mouse" >> ~/.vimrc
echo "set cmdheight=2" >> ~/.vimrc
echo "set mouse=a" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "set noeb vb t_vb=" >> ~/.vimrc
echo "set t_Co=256" >> ~/.vimrc
echo "set laststatus=2" >> ~/.vimrc
echo "filetype plugin on" >> ~/.vimrc


#############################
#         plugin install    #
#############################

echo "install vim plugins"
mkdir ~/.vim/bundle
cd ~/.vim/bundle

#fugitive

git clone https://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
echo "set runtimepath+=~/.vim/bundle/vim-fugitive/plugin/fugitive.vim" >> ~/.vimrc


#nerdtree

git clone https://github.com/scrooloose/nerdtree.git 
vim -u NONE -c "helptags nerdtree/doc" -c q
echo "set runtimepath+=~/.vim/bundle/nerdtree" >> ~/.vimrc
echo "set runtimepath+=~/.vim/bundle/nerdtree/plugin/NERD_tree.vim" >> ~/.vimrc
#echo "autocmd StdinReadPre * let s:std_in=1" >> ~/.vimrc
#echo "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif" >> ~/.vimrc
echo "map <C-\> :NERDTreeToggle<CR>" >> ~/.vimrc
echo "let g:neocomplete#enable_at_startup = 1" >> ~/.vimrc
echo "let NERDTreeMapOpenInTab='\r'" >> ~/.vimrc


#Airline

git clone https://github.com/vim-airline/vim-airline.git
vim -u NONE -c "helptags vim-airline/doc" -c q
echo "set runtimepath+=~/.vim/bundle/vim-airline" >> ~/.vimrc
echo "set runtimepath+=~/.vim/bundle/vim-airline/plugin/airline.vim" >> ~/.vimrc
echo "let g:airline#extensions#tabline#enabled = 1" >> ~/.vimrc
echo "let g:airline#extensions#tabline#formatter = 'default'" >> ~/.vimrc
echo "let g:airline_detect_iminsert=0" >> ~/.vimrc
echo "let g:airline_left_sep = '▶'" >> ~/.vimrc
echo "let g:airline_right_sep = ''" >> ~/.vimrc


#Airline-themes

git clone https://github.com/vim-airline/vim-airline-themes.git
vim -u NONE -c "helptags vim-airline-themes/doc" -c q
echo "set runtimepath+=~/.vim/bundle/vim-airline-themes" >> ~/.vimrc
echo "set runtimepath+=~/.vim/bundle/vim-airline-themes/plugin/airline-themes.vim" >> ~/.vimrc
echo "let g:airline_theme='murmur'" >> ~/.vimrc

#syntastic

git clone https://github.com/vim-syntastic/syntastic.git
vim -u NONE -c "helptags syntastic/doc" -c q
echo "set runtimepath+=~/.vim/bundle/syntastic" >> ~/.vimrc
echo "set runtimepath+=~/.vim/bundle/syntastic/plugin/syntastic.vim" >> ~/.vimrc


#neocomplete

git clone https://github.com/Shougo/neocomplete.vim.git
vim -u NONE -c "helptags neocomplete.vim/doc" -c q
echo "set runtimepath+=~/.vim/bundle/neocomplete.vim" >> ~/.vimrc
echo "set runtimepath+=~/.vim/bundle/neocomplete.vim/plugin/neocomplete.vim" >> ~/.vimrc
echo "au FileType php setl ofu=phpcomplete#CompletePHP" >> ~/.vimrc
echo "au FileType ruby,eruby setl ofu=rubycomplete#Complete" >> ~/.vimrc
echo "au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags" >> ~/.vimrc
echo "au FileType c setl ofu=ccomplete#CompleteCpp" >> ~/.vimrc
echo "au FileType css setl ofu=csscomplete#CompleteCSS" >> ~/.vimrc


###################
# theme install   #
###################

echo "install vim themes"
mkdir ~/.vim/colors
cd ~/.vim/colors


# jellybeans

wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
echo "color jellybeans" >> ~/.vimrc






