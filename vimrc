set nocompatible
set number
set mouse=a
set cindent
set tabstop=4
set shiftwidth=4
set hlsearch
set textwidth=0
"set nowrap
set ignorecase
set smartcase
set showcmd
set encoding=utf-8

set clipboard+=unnamed

"Lovely things
set incsearch " highlight as you type
set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set linespace=0 " dont insert extra pixel lines between rows
"set list " show tabs
"set listchars=tab:>-,trail:- " show tabs and trailing
set listchars=trail:-,
set matchtime=5 " how many tenths of second to blink matching brackets for

highlight ColorColumn ctermbg=cyan
call matchadd('ColorColumn', '\%81v', 100)

syntax on
colorscheme darkblue

filetype plugin on
filetype plugin indent on

autocmd FileType tf setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"For mutt max 72 chars
au BufRead /tmp/mutt-* set tw=72

au BufNewFile,BufRead *.py set cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufNewFile,BufRead *.py set sts=4
au BufNewFile,BufRead *.py set et

au FileChangedShell * echo "Warning: File changed on disk"

" Aspell BS
map ^T :w!<CR>:!aspell check %<CR>:e! %<CR>

if &diff
	colorscheme industry
endif

" Highlight shite at the end of lines
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/
