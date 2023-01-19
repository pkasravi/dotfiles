" Turn on syntax highlighting
syntax on
" Turn on line numbers
set number
" Make line numbers relative to focused line
set relativenumber
" Indent based on filetype
filetype plugin indent on
" Line under cursor but doesn't seem to be working, maybe b/c of nord
set cursorline
" Auto-indent on enter
set autoindent
" Line length highlight
set cc=80
" Makes scrolling faster
set ttyfast
" Enable mouse use
set mouse=a
" Make splits go to right and bottom
set splitbelow
set splitright
" Don't resize remaining buffers when one closes
set noequalalways
" Use system clipboard
set clipboard=unnamed

" Persistent undo
" From: https://sidneyliebrand.medium.com/vim-tip-persistent-undo-2fc78a2973a7
if has('persistent_undo')
  " define a path to store persistent undo files.
  let target_path = expand('~/.config/vim-persisted-undo/')
  " create the directory and any parent directories
  " if the location does not exist.
  if !isdirectory(target_path)
      call system('mkdir -p ' . target_path)
  endif
  " point Vim to the defined undo directory.
  let &undodir = target_path
  " finally, enable undo persistence.
  set undofile
endif

" Always open netrw file explorer in a pane to the left
" autocmd VimEnter * :Vexplore
" autocmd TabNew * call feedkeys(":Vexplore\<CR>", 'n')
" Sets netrw default size to 20% of screen
" let g:netrw_winsize = 20
" If not explicitly opening a file, open netrw
autocmd VimEnter * if expand("%") == "" | edit . | endif
" Changes the directory tree style, in netrw can i to cycle through the styles temporarily
let g:netrw_liststyle = 3
" Removes netrw banner
let g:netrw_banner = 0


" Begin Plugins
call plug#begin()

" A cool status bar
Plug 'vim-airline/vim-airline'
" Airline themes
Plug 'vim-airline/vim-airline-themes'
" Nord
Plug 'arcticicestudio/nord-vim'
" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
" A fuzzy file finder
Plug 'kien/ctrlp.vim'
" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'
" CoC Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git help
Plug 'airblade/vim-gitgutter'

call plug#end()

" Use nord theme for airline
let g:airline_theme='nord'

" Don't let terminal override colorscheme
set termguicolors
" Set theme to nord
colorscheme nord

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
