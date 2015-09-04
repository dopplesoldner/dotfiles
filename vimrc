set nocompatible              " be iMproved, required
syntax on
:set number
:set relativenumber
colorscheme jellybeans
set pastetoggle=<F2>
let mapleader=","
" allow quit via single keypress (Q)
map Q :wq<CR>
map W :w<CR>
nnoremap <leader><leader> :xa<cr>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'Raimondi/delimitMate'
Plugin 'klen/python-mode'
Plugin 'pangloss/vim-javascript'
Plugin 'wookiehangover/jshint.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

map <C-\> :NERDTreeToggle<CR>
" close nerdtree with q 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 1
" tab to spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

""" make YCM compatible with UltiSnips (using supertab)
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"let g:UltiSnipsListSnippets = "<c-tab>"

"##############################################################################                                                                         
"" Easier split navigation                                                                                                                               
"##############################################################################                                                                         
"
"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
map <C-f> :PymodeLintAuto<CR>

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"let g:pymode_lint_on_fly = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" close scratch automatically
" " If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
 autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
 autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" vim airline always
set laststatus=2

"ctrlp faster indexing
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_working_path_mode = 'ra'

"latex spell check etc
let g:tex_conceal = ""
augroup latexsettings
    autocmd FileType tex 
    set spell spelllang=en_gb
    "set textwidth=100
augroup END

"latexbox
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_quickfix = 1 

" Do not display "Pattern not found" messages during YouCompleteMe completion
" " Patch: https://groups.google.com/forum/#!topic/vim_dev/WeBBjkXE8H8
 try
   set shortmess+=c
catch /E539: Illegal character/
endtry
