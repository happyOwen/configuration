" 关闭兼容模式
set nocompatible 

" ================================================================
" 编辑器配置
" ================================================================
" 显示行号
set number
" 显示语法高亮
syntax enable
syntax on
" 突出显示当前行
set cursorline
" 开启自动缩进
set autoindent
" 智能缩进
set smartindent
" 编辑时按一个 Tab 键相当于输入4个空格
set tabstop=4
" 格式化时缩进尺寸为4个空格，即 >>、<<、==（取消全部缩进）时，每一级的字符数。
set shiftwidth=4
" 让 Vim 把连续的空格视为一个 Tab, 删除时可以一次删掉一个 Tab 的空格数量
set softtabstop=4
" 把制表符转换为多个空格, 具体空格数量参考 tabstop 和 shiftwidth
set expandtab
" 在行和段的开始出使用 Tab
set smarttab
" 合并两行中文时, 不在中间加空格
set formatoptions+=B
" 合并行时不添加多余空格
set nojoinspaces

" ================================================================
" 编码
" ================================================================
" 设置vim内部编码
set encoding=utf-8
" 设置编辑文件时的编码
set fileencoding=utf-8
" 设置 Vim 能识别的编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gb2312,big5,cuc-jp,cuc-kr,latin
" 设置终端模式（非 GUI 模式）下的编码
set termencoding=utf-8
" 防止特殊符号无法显示
set ambiwidth=double

" ================================================================
" 文件相关配置
"
" 关于备份文件的说明: 备份文件, 临时文件, undo 文件, 最好的做法是把
" 他们配置到单独的文件夹里, 我这里暂时都不让生成了, 以后可以按需要修改.
" 例如:
" set directory=~/.vim/.swp//
" set backupdir=~/.vim/.backup//
" set undodir=~/.vim/.undo//
" 注意最后要有两道//, 表示文件名使用绝对路径
" ================================================================
" 自动检测文件类型和缩进格式, 并根据文件类型加载插件
filetype plugin indent on
" 文件被外部改动后, 自动加载
set autoread
" 不生成备份文件
set nobackup
" 不生成临时文件
set noswapfile
" 不生成 undo 文件
set noundofile


" ================================================================
" 搜索和匹配
" ================================================================
" 高亮显示匹配的括号
set showmatch
" 高亮显示搜索到的关键字
set hlsearch
" 即时搜索
set incsearch
" 智能大小写敏感, 只要有一个字母大写, 就大小写敏感, 否则不敏感
set ignorecase smartcase

" ================================================================
" vim-plug 插件
" ================================================================
call plug#begin('~/.vim/plugged')
" LaTeX
Plug 'lervag/vimtex'
" Group dependencies, vim-snippets depends on ultisnips
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
call plug#end()

" ================================================================
" 插件相关配置
" ================================================================
" ----------------------------------------------------------------
" configuration for vimtex
" ----------------------------------------------------------------
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" ----------------------------------------------------------------
" configuration for UltiSnips
" ----------------------------------------------------------------
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
