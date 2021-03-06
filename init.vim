call plug#begin()
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/vim-auto-save'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'szw/vim-tags'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-fugitive'

call plug#end()

set number
set relativenumber
set background=dark
set pastetoggle=<F2>
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2

colorscheme base16-tomorrow-night

let mapleader=","
let g:airline_powerline_fonts = 1

"Fast quit
map Q :wq<CR>
map X :xa<CR>

" close scratch automatically
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"" Use ctrl-[hjkl] to select the active split!
map <c-k> :wincmd k<CR>
map <c-j> :wincmd j<CR>
map <c-h> :wincmd h<CR>
map <c-l> :wincmd l<CR>

"" NerdTree
map <C-\> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
" close nerdtree with q
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

"" Ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*.zip,*.pyc,*.log
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=7
map <C-b> :CtrlPBuffer<CR>
map <C-f> :CtrlPTag<CR>

 "Auto save
 let g:auto_save = 1
 let g:auto_save_in_insert_mode = 0
 let g:auto_save_silent = 1

 "YCM
let g:ycm_collect_identifiers_from_tags_files = 0
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"easytags
:set tags=./tags;
:let g:easytags_dynamic_files = 1

"git fugitive mappings
"
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gd :Gdiff HEAD<cr>
nmap <leader>gg :Ggrep<cr>
nmap <leader>gb :Gblame<cr>

" syntastic settings
" "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=4
