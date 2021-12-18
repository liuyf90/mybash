"liuyf writed by 2021-11-18
" ===
" === set show style
" ===
"不兼容vi
"set nocompatible
set history=200
set scrolloff=5
"自动与上一行的缩进保持一致
set autoindent
"不创建备份文件
set nobackup
"保留撤销历史
set undofile
"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full
"指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2
"设置编码
set encoding=utf-8
"语法高亮
syntax on
"打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autoread
"启用256色
set t_Co=256
" 设置行号
set number
" 将所有数字都作为十进制
set nrformats=
set relativenumber
" 高亮搜索
set hlsearch
set incsearch
"搜索忽略大小写
set ignorecase
" 设置折叠方式
"set foldmethod=indent
" 自动高亮成对的括号
set showmatch
" 显示按钮
set showcmd
" 设置缩进
set softtabstop=4
set shiftwidth=4
set expandtab
"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
"set listchars=tab:»■,trail:■
"set list
" ===
" === Common set
" ===
" 设置中英文切换
let g:smartim_default = 'com.apple.keylayout.ABC'
" Set <LEADER> as <,>
let mapleader=","
" 设置语言编码"
set langmenu=zh_CN.UTF-8
set helplang=cn
" 显示中文帮助"
if version >= 603
        set helplang=cn
        set encoding=utf-8
endif
" 设置字体"
" set guifont=dejaVu\ Sans\ MONO\ 10
set guifont=Courier_New:h10:cANSI
" TextEdit might fail if hidden is not set.
set hidden
" 用于解决切换普通模式慢半拍的问题
set timeoutlen=1000 ttimeoutlen=0
"mac os tmux style
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" ===
" === Set some useful key
" ===

" 缓冲区导航映射
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
"大写Q退出
map Q :q<CR>
" 使用前缀对应缓冲区
nnoremap <leader>1 :1b<CR>
nnoremap <leader>2 :2b<CR>
nnoremap <leader>3 :3b<CR>
"<c-p><c-n>代替updown
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" Spelling Check with <leader>sc
map <leader>sc :set spell!<CR>
" 设置tab导航、多标签页导航
nnoremap <leader><Tab> :tabnext<CR>
nnoremap <leader><S-Tab> :tabprevious<CR>

" YcmCompleter设置
let g:ycm_global_ycm_extra_conf ='~/.vim/pack/my/start/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
nnoremap <Leader>fi :YcmCompleter FixIt<CR>
nnoremap <Leader>gt :YcmCompleter GoTo<CR>
nnoremap <Leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gh :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>gr :YcmCompleter GoToReferences<CR>