colorscheme jellybeans

set t_Co=256
syntax on
set encoding=utf-8
set fileencoding=utf-8
set path+=**
set wildmenu
set tabpagemax=15               " only show 15 tabs
set showmode                    " display the current mode
set cursorline                  " highlight current line
set backspace=indent,eol,start  " backspace for dummys
set linespace=0                 " No extra spaces between rows
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high 
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set foldenable                  " auto fold code
set gdefault                    " the /g flag on :s substitutions by default
set list
set listchars=tab:>.,trail:.,extends:\#,nbsp:. " Highlight problematic whitespace
set timeoutlen=1000 ttimeoutlen=0
set wrap                      " wrap long lines
set autoindent                  " indent at the same level of the previous line
set shiftwidth=4                " use indents of 4 spaces
set expandtab                   " tabs are spaces, not tabs
set tabstop=4                   " an indentation every four columns
set softtabstop=4               " let backspace delete indent
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set synmaxcol=128
set lazyredraw                  " speed up source processing
set bdir-=.
set bdir+=~/.vim/tmp/bdir/
set dir-=.
set dir+=~/.vim/tmp/dir/


set number relativenumber       " hybrid relative line number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
   autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END
if has('cmdline_info')
    set ruler                   " show the ruler
    set showcmd                 " show partial commands in status line and
endif

set laststatus=2
set statusline=
set statusline+=%#function#\ %l,
set statusline+=\ %c
set statusline+=\ %*
set statusline+=\ ‹‹
set statusline+=\ %f\ %*
set statusline+=\ ››
set statusline+=\ %m
set statusline+=\ %y
set statusline+=\ %h
set statusline+=%#keyword#\ %F
set statusline+=%=
set statusline+=\ %1*
set statusline+=\ ‹‹
set statusline+=\ %{strftime('%R',getftime(expand('%')))}
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ ››\ %*

hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#0000ac guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222


filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

syntax sync minlines=256

"  exclude node modules
set wildignore+=**/node_modules/** 
" ctags with exclude node modules
command Cts !ctags -R --exclude=node_modules .

" search script 

"set grepprg=ag\ --vimgrep\ $*
"set grepformat=%f:%l:%c:%m


" The Silver Searcher
if executable('ag')
"   " Use ag over grep
    set grepprg=ag\ --vimgrep\ --nogroup\ --color
    " Use ag in CtrlP for listing files. Lightning fast and respects  .gitignore
    let g:ctrlp_user_command = 'ag %s -l --vimgrep --nocolor -g ""'
    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" search script end

command W :w
set <PageUp>=^[[5~
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\\\s\\\\+$","","")'))
