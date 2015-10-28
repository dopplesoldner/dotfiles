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
map X :xa<CR>
map ,x :lclose<CR>

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
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

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

"powerline fonts
let g:airline_powerline_fonts = 1

"git fugitive mappings
"
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gd :Gdiff HEAD<cr>
nmap <leader>gg :Ggrep<cr>

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

""Linting
let g:pymode_lint = 0
let g:pymode_lint_write = 0
map <C-f> :PymodeLintAuto<CR>

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"let g:pymode_lint_on_fly = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
map <C-f> :PymodeLintAuto<CR>
let g:pymode_rope_rename_bind = '<leader>r'
let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_rope_extract_method_bind = '<leader>rm'

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

" syntastic settings
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_loc_list = 1

"ctrlp faster indexing
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*.zip,*.pyc,*.log
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0 
let g:ctrlp_max_depth=40

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

"vim cursor shape
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"easymotion mappings
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
