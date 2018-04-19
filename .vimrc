set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'
Plug 'myusuf3/numbers.vim'
Plug 'tpope/vim-fugitive'
Plug 'mgedmin/coverage-highlight.vim'
Plug 'wannesm/wmgraphviz.vim'
Plug 'shemerey/vim-project'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'keremc/asyncomplete-clang.vim'
Plug 'yami-beta/asyncomplete-omni.vim'
Plug 'prabirshrestha/asyncomplete-gocode.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'python-mode/python-mode'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-plug'
Plug 'airblade/vim-gitgutter'
Plug 'justmao945/vim-clang'
Plug 'Yggdroot/LeaderF'
Plug 'scrooloose/nerdcommenter' 
Plug 'dkprice/vim-easygrep'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/lh-tags'
Plug 'LucHermitte/lh-dev'
Plug 'LucHermitte/lh-brackets'
Plug 'LucHermitte/vim-refactor'
"Plug 'vim-scripts/c.vim'
"Plug 'WolfgangMehner/c-support'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'flazz/vim-colorschemes'
Plug 'alfredodeza/pytest.vim'
Plug 'scrooloose/nerdtree'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'thinca/vim-quickrun'
Plug 'Lokaltog/vim-easymotion'
Plug 'nathanalderson/yang.vim'
Plug 'wannesm/wmgraphviz.vim'
Plug 'Shougo/vimproc.vim'
Plug 'Raimondi/delimitMate'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'w0rp/ale'
Plug 'shawncplus/phpcomplete.vim'
Plug 'rizzatti/dash.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/CmdlineComplete'
Plug 'mattn/emmet-vim'
Plug 'houzy/jeffy-plugins'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/Mark'
Plug 'vim-scripts/OmniCppComplete'
Plug 'vim-scripts/taglist.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/vividchalk.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end() "required
"All of your Plugs must be added before the following line
filetype plugin indent on "required
"Trigger configuration. Do not use <tab> if you use
"https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

autocmd FileType html,css EmmetInstall

let g:user_emmet_install_global=0
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" Global Settings: {{{
if has("syntax")
    syntax on                       " highlight syntax
endif
filetype on
filetype plugin indent on           " auto detect file type

set nocompatible                    " out of Vi compatible mode
set number                          " show line number
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
    autocmd GUIEnter * simalt ~x " window width and height
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


" vim-go
syntax enable
filetype plugin on
let g:tagbar_width=20
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nmap <F6> :TagbarToggle<CR>

"默认开启
"autocmd VimEnter * Tlist
"autocmd VimEnter * NERDTree
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
"设置tags
set tags=tags
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

"map ˜->±
map ± ~
" move between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Don't use Ex mode, use Q for formatting
map Q gq

"make Y consistent with C and D
nnoremap Y y$

" toggle highlight trailing whitespace
nmap <silent> <leader>l :set nolist!<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" Make shift-insert work like in Xterm
"map <S-Insert> <MiddleMouse>
"map! <S-Insert> <MiddleMouse>


" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" center display after searching
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#z

" Grep
nnoremap <silent> <F7> :Grep<CR>
nmap <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>

"}}}

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
" Open Codi python
nmap <F4> :Codi<cr>
" taglist
let g:Tlist_Auto_Open = 0
let g:Tlist_WinWidth = 20
let g:Tlist_Use_Right_Window = 1
let g:Tlist_Auto_Update = 1
let g:Tlist_Process_File_Always = 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Show_One_File = 1
let g:Tlist_Enable_Fold_Column = 0
let g:Tlist_Auto_Highlight_Tag = 1
let g:Tlist_GainFocus_On_ToggleOpen = 1
"let g:Tlist_Use_Horiz_Window=1
set wildmenu

"nmap <F8> :Tlist<CR>
"nmap <Leader>t :TlistToggle<cr>
"普通模式
nmap <F8> :MarkdownPreview<CR>

" pydiction
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"nmap <F4> <Plug>(JavaComplete-Imports-Add)
"imap <F4> <Plug>(JavaComplete-Imports-Add)
"setlocal omnifunc=javacomplete#Complete
"autocmd FileType java set omnifunc=javacomplete#Complete
"autocmd FileType java set completefunc=javacomplete#CompleteParamsInf
au FileType php call PHPFuncList()

function PHPFuncList()

    set dictionary-=/etc/vim/php_funclist.txt dictionary+=~/.vim/syntax/funclist.txt

    set complete-=k complete+=k


endfunction
set nocompatible
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
set re=1
let $LANG = 'en'  "set message language
set clipboard+=unnamed

"dot
autocmd bufnewfile *.dot call Headerdot ()
function Headerdot ()
call append (0 ,"digraph G{")
call append (1 ,"")
call append (2 ,"}")
normal 3G
endf

" graphviz
let g:WMGraphviz_dot = "dot"
let g:WMGraphviz_output = "png"
let g:WMGraphviz_viewer = "open"
let g:WMGraphviz_shelloptions = ""
nmap <Leader>lv :w<CR>:! dot -Tpng -o %<.png % <CR>:! open %<.png <CR>
nmap <Leader>ls :w<CR>:! dot -Tsvg -o %<.svg % <CR>:! open %<.svg <CR>
nmap <Leader>lp :w<CR>:! dot -Tpdf -o %<.pdf % <CR>:! open %<.pdf <CR>
let g:pymode_rope_lookup_project = 0
let g:pyflakes_use_quickfix = 1
let python_highlight_all = 1

let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

" QuickRun
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}
let g:quickrun_no_default_key_mappings = 1
map <F10> :QuickRun<CR>
"Map window switch
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
"change color
hi Pmenu ctermfg=black ctermbg=yellow  guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
let g:Lf_ShortcutF = '<C-P>'
let g:acp_completeoptPreview = 1
""AsynComplete
call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
    \ 'name': 'gocode',
    \ 'whitelist': ['go'],
    \ 'completor': function('asyncomplete#sources#gocode#completor'),
    \ 'config': {
    \    'gocode_path': expand('~/go/bin/gocode')
    \  },
    \ }))
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
\ 'name': 'omni',
\ 'whitelist': ['*'],
\ 'blacklist': ['html'],
\ 'completor': function('asyncomplete#sources#omni#completor')
\  }))
"python mode
let g:pymode_run = 0
let g:pymode_python = 'python3'
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0    

"AutoComplPop
let g:acp_completeoptPreview = 0
let g:jedi#popup_select_first=0
if has('python3')
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
autocmd User asyncomplete_setup call asyncomplete#register_source(
    \ asyncomplete#sources#clang#get_source_options())
"map go-to deinition
nnoremap <C-b> :LspDefinition <CR> 
"codi
let g:codi#interpreters = {
                  \ 'python': {
                      \ 'bin': 'python3',
                      \ 'prompt': '^\(>>>\|\.\.\.\) ',
                      \ },
                  \ }

let g:codi#width = 60








