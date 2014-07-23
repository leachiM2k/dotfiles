syntax on
colorscheme darkblue
set smartindent
set smarttab
set bs=2
set incsearch
set ruler
set ignorecase
set nu
set gcr=a:blinkon750-blinkoff750-blinkwait500
set tabpagemax=100
"  Highlight tabs
" set listchars=tab:»·       " show a tab as »··· (digraphs: »=^K>>, ·=^K~.)
" set list
set listchars=tab:>-,trail:-
set listchars+=extends:>,precedes:<

:filetype on

:map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
:map <F5> :MiniBufExplorer<CR>
:imap <F5> <ESC>:MiniBufExplorer<CR>

:map <F2> <CTRL>N<CR>
:map <F10> :set paste<CR>
:map <F11> :set nopaste<CR>
:imap <F10> <C-O>:set paste<CR>
:imap <F11> <nop>
:set pastetoggle=<F11>


let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

autocmd BufRead * set smartindent

autocmd FileType c,cpp set cindent
autocmd FileType c,cpp set shiftwidth=8
autocmd FileType c,cpp set noexpandtab

autocmd FileType php,pl,js set cindent
autocmd FileType php,pl,js set shiftwidth=2
autocmd FileType php,pl,js set ts=2
autocmd FileType php,pl,js set sts=2
autocmd FileType php,pl,js set expandtab
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" autocmd FileType js set shiftwidth=2
" autocmd FileType js set ts=2
" autocmd FileType js set sts=2
"
" global
set showmatch
set nocompatible

"vim open files at the same postion as befor
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


if version >= 703
        set colorcolumn=120
else
"        highlight OverLength ctermbg=red
"        autocmd BufWinEnter,BufRead * match OverLength /\%121v.\+/
endif

