" Colouring
syntax enable
set t_Co=256
colorscheme tir_black
" Indentation handling
filetype plugin indent on
filetype indent on
set cindent
set smartindent
set autoindent
set tabstop=4
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=4
" Generic Layout Restraints
set number
set ai
set guioptions-=m
set guioptions-=T
set guioptions-=r
set ruler
set hidden
" Because lots of temporary files annoy me - Remember to set buffer manipulation
set nobackup
set nowritebackup
set noswapfile
" Needs moar search
set hlsearch
set incsearch
" 'Acking about in Vim
let g:ackprg="ack -H --nocolor --nogroup --column"
" Because Tom can't let go of shift when he's on my MBP...
command! W w
" Haskell stuff
au Bufenter *.hs compiler ghc
" configure browser for haskell_doc.vim
let g:haddock_browser = "/Applications/Google Chrome.app"
" Tab now behaves as I'd expect
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<c-p>"
	endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" Keeping things clean.
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction
" Note - Never WRITE on Memory
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" Set up rspec-vim
let g:RspecBin = 'rspec'
" Because I have big hands and my left thumb never seems to leave spacebar
let mapleader=" "
map <leader><leader> <c-^>
map <leader>e :edit <C-R>=expand("%:h")<cr>/
map <leader>v :view <C-R>=expand("%:h")<cr>/
" Project specific binds - revise on update
map <leader>tg :!cucumber /Library/Webserver/Documents/features<cr>
map <leader>tk :!ruby path_to_enlightenment.rb<cr>
" Because I'm crazy and use VIM as my Editor for EVERYTHING
au BufNewFile,BufRead *.less set filetype=less
" Perl is not my priority.
au BufNewFile,BufRead *.pl set filetype=prolog
