set nocompatible

syntax enable
syntax on

" 显示模式
set showmode
" 显示当前输入的指令
set showcmd

" 使用鼠标
set mouse=a

" 设置编码为utf-8
set encoding=utf-8

filetype plugin on
filetype indent on

" 自动缩进
set autoindent
" 每级缩进等于4个空格
set tabstop=4
" 使用<<或>> 时每次增或减的空格数为4
set shiftwidth=4
" 将tab转换为空格
set expandtab
set softtabstop=4

" 打开行号
set number
" 设置相对行号, 当前行为行号, 其他行为相对于当前行的行数
set relativenumber

" 每行最大字符数
set textwidth=80
" 单行字符过多时折行
set wrap
" 折行时不会在单词内断开
set linebreak
set wrapmargin=10

" 光标移动时与底部和顶部的最小距离
set scrolloff=10

let $LANG='en'

set magic

" 显示状态栏, 为1仅在多窗口时显示, 0则不显示
set laststatus=2
" 命令栏的高度
set cmdheight=2
" 状态栏中显示当前光标位置
set ruler

set confirm                          " prompt when existing from an unsaved file
set backspace=indent,eol,start       " More powerful backspacing
set report=0                         " always report number of lines changed                "
set title                            " show file in titlebar
set matchtime=2                      " show matching bracket for 0.2 seconds

" 高亮匹配的另一半括号
set showmatch
" 高亮搜索结果
set hlsearch
" 搜索时跳转到第一个匹配结果
set incsearch
" 搜索时智能匹配字母大小写
set smartcase

" 不创建swap文件
set noswapfile
" 不创建backup文件
set nobackup

" 自动切换工作目录到当前文件所在的目录
" set autochdir
" 错误时没有提示音
set noerrorbells
" 错误时没有窗口闪烁
set novisualbell
" 修改历史最大保存数
set history=1000

set autoread

set wildmenu
set wildmode=longest:list,full

" 标签页最大数量
set tabpagemax=10
" 显示标签栏
set showtabline=2

set timeoutlen=300
