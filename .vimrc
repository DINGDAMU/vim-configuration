set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')
"Plug 'jceb/vim-orgmode'
"Plug 'tpope/vim-speeddating'
"Plug 'mattn/calendar-vim'
Plug 'rightson/vim-p4-syntax'
"Plug 'liuchengxu/vista.vim'
Plug 'tpope/vim-surround'
Plug 'kannokanno/previm'
Plug 'rhysd/clever-f.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'kassio/neoterm'
Plug 'pechorin/any-jump.vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-plug'
Plug 'rizzatti/dash.vim'
Plug 'justmao945/vim-clang'
Plug 'scrooloose/nerdcommenter' 
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'thinca/vim-quickrun'
Plug 'Lokaltog/vim-easymotion'
Plug 'luochen1990/rainbow'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'houzy/jeffy-plugins'
Plug 'ryanoasis/vim-devicons'
"Plug 'lervag/vimtex'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'voldikss/vim-floaterm'
Plug 'vim-scripts/AutoComplPop'



call plug#end() "required
"All of your Plugs must be added before the following line
filetype plugin indent on "required
"Trigger configuration. Do not use <tab> if you use
"https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


let g:user_emmet_install_global=0
"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

let g:deoplete#enable_at_startup = 1
" Global Settings: {{{
if has("syntax")
    syntax on                       " highlight syntax
endif
filetype on
filetype plugin indent on           " auto detect file type

set nocompatible                    " out of Vi compatible mode
set number                          " show line number
set rnu
set cursorline
set numberwidth=3                   " minimal culumns for line numbers
set textwidth=0                     " do not wrap words (insert)
set nowrap                          " do not wrap words (view)
set wrap                            " wrap words (view)
set showcmd                         " show (partial) command in status line
set ruler                           " line and column number of the cursor position
set wildmenu                        " enhanced command completion
set wildmode=list:longest,full      " command completion mode
set laststatus=2                    " always show the status line
set mouse=a                         " use mouse in all mode
"set foldenable                      " fold lines
"set foldmethod=marker               " fold as marker
set noerrorbells                    " do not use error bell
set novisualbell                    " do not use visual bell
set t_vb=                           " do not use terminal bell
set clipboard=unnamed
set wildignore=.svn,.git,*.swp,*.bak,*~,*.o,*.a
set autowrite                       " auto save before commands like :next and :make
set cursorline
set hidden                          " enable multiple modified buffers
set history=100                     " record recent used command history
set autoread                        " auto read file that has been changed on disk
set backspace=indent,eol,start      " backspace can delete everything
set completeopt=menuone,longest     " complete options (insert)
set pumheight=10                    " complete popup height
set scrolloff=5                     " minimal number of screen lines to keep beyond the cursor
set autoindent                      " automatically indent new line
set cinoptions=:0,l1,g0,t0,(0,(s    " C kind language indent options

set tabstop=4                       " number of spaces in a tab 表示一个tab显示出来是多少个空格
set softtabstop=4                   " insert and delete space of <tab> 在编辑的时候，一个tab是多少个空格
set shiftwidth=4                    " number of spaces for indent 每一级缩进是多少个空格
set expandtab                       " expand tabs into spaces  将tab扩展成空格
"set noexpandtab                     " noexpand tabs into spaces  将tab不扩展成空格
set smarttab                        "根据文件中其他地方的缩进空格个数来确定一个tab是多少个空格
set incsearch                       " incremental search
set hlsearch                        " highlight search match
set ignorecase                      " do case insensitive matching
set smartcase                       " do not ignore if search pattern has CAPS
set nobackup                        " do not create backup file
set noswapfile                      " do not create swap file
set backupcopy=yes                  " overwrite the original file
set showmatch                       "设置匹配模式，显示匹配的括号
set linebreak                       "整词换行
set whichwrap=b,s,<,>,,]           "光标从行首和行末时可以跳到另一行去

set encoding=UTF-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030
set fileformat=unix

set background=dark
let g:rehash256 = 1
"colorscheme mycolor
" gui settings
if has("gui_running")
    set guioptions-=T " no toolbar
    set guioptions-=r " no right-hand scrollbar
    set guioptions-=R " no right-hand vertically scrollbar
    set guioptions-=l " no left-hand scrollbar
    set guioptions-=L " no left-hand vertically scrollbar
    "autocmd GUIEnter * simalt ~x " window width and height
    source $VIMRUNTIME/delmenu.vim " the original menubar has an error on win32, so
    source $VIMRUNTIME/menu.vim    " use this menubar
    language messages zh_CN.utf-8 " use chinese messages if has
endif
"auto add pyhton header --start
"autocmd BufNewFile *.py 0r ~/.vim/vim_template/vim_python_header
"autocmd BufNewFile *.py ks|call FileName()|'s
"autocmd BufNewFile *.py ks|call CreatedTime()|'s

fun FileName()
    if line("$") > 10
        let l = 10  "这里是字母L 不是数字10
    else
        let l = line("$")
    endif
    exe "1," . l . "g/File Name:.*/s/File Name:.*/File Name: " .expand("%")
       "最前面是数字1，这里的File Name: 要和模板中一致
endfun

fun CreatedTime()
    if line("$") > 10
        let l = 10
    else
        let l = line("$")
    endif
    exe "1," . l . "g/Created Time:.*/s/Created Time:.*/Created Time: " .strftime("%Y-%m-%d %T")
        "这里Create Time: 要和模板中一致
endfun
"auto add python header --end



"nmap <F6> :TagbarToggle<CR>

"默认开启
"autocmd VimEnter * NERDTree
"设置tags
"set tags=tags
" Restore the last quit position when open file.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif
"}}}

" Key Bindings: {{{
let mapleader = ","
let maplocalleader = "\\"

" map : -> <space>
map <Space> :

" Don't use Ex mode, use Q for formatting
map Q gq

"make Y consistent with C and D
nnoremap Y y$

" toggle highlight trailing whitespace
nmap <silent> <leader>l :set nolist!<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" Plug Settings: {{{
if has("win32") " win32 system
    let $HOME  = $VIM
    let $VIMFILES = $HOME . "/vimfiles"
else " unix
    let $HOME  = $HOME
    let $VIMFILES = $HOME . "/.vim"
endif


"列出当前目录文件
"" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=20
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
"autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>
set wildmenu


"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType txt let g:airline#extensions#tabline#enabled = 0


let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
"nmap <Left> <Plug>(easymotion-linebackward)
"nmap <Down> <Plug>(easymotion-j)
"nmap <Up> <Plug>(easymotion-k)
"nmap <Right> <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" QuickRun
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}
let g:quickrun_no_default_key_mappings = 1
"change color
hi Pmenu ctermfg=black ctermbg=gray guibg=white
hi PmenuSel ctermfg=6 ctermbg=4 guibg=#444444 guifg=#ffffff

"let g:Lf_ShortcutF = '<C-P>'
let g:acp_completeoptPreview = 1




"rainbow
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
let g:rainbow_active = 1
let g:asyncomplete_smart_completion = 1


"ale
let g:ale_lint_on_enter = 1
set cmdheight=2

"termdebug
let g:termdebug_wide = 100
:packadd! termdebug


" file is large from 1MB
let g:LargeFile = 500 * 1024 * 1024 * 1
augroup LargeFile
autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END
function LargeFile()
" no syntax highlighting etc
set eventignore+=FileType
" save memory when other file is viewed
setlocal bufhidden=unload
" no undo possible
setlocal undolevels=-1
syntax off
" display message
autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 ) . " MB, so some options are changed (see .vimrc for details)."
endfunction

filetype plugin on
augroup filetypedetect
	au! BufNewFile,BufRead *.jemdoc setf jemdoc
augroup END

" Last line is for proper wrapping of jemdoc lists, etc.
autocmd Filetype jemdoc setlocal comments=:#,fb:-,fb:.,fb:--,fb:..,fb:\:

map <leader>p :FZF<cr>

" org - vim mode
let g:clap_theme = 'material_design_dark'
let g:org_agenda_files=['~/orgmode/index.org']

" vimtex
augroup vimtex_config
    au!
    au User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END
let g:vimtex_quickfix_latexlog = {'default' : 0}
nnoremap \lc :VimtexStop<cr>:VimtexClean<cr>
let g:vimtex_view_method = 'skim'

"vim orgmode
let maplocalleader = ','


let g:Lf_DefaultExternalTool = "find"
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

if executable('p4ls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'p4ls',
        \ 'cmd': {server_info->['p4ls']},
        \ 'allowlist': ['p4'],
        \ })
endif


let g:floaterm_keymap_new = '<Leader>t'
set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
set undofile 
