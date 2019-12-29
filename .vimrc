set number "显示行号
set t_Co=256 "启用256色
set nocompatible "不兼容vi
syntax on "语法高亮
set showmode "显示当前模式
set showcmd "显示输入的指令
set mouse=a "支持鼠标
set fileencodings=utf8,gbk "检测文件编码，并设置fileencoding
set fileencoding=utf8 "当前文件使用的编码
set encoding=utf8 "vim内部使用的编码
filetype indent on "开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
set backspace=2            "设置退格键可用,设置为2是因为中文占2个字符
set autoindent "自动缩进
set tabstop=4 "设置tab键的宽度
set shiftwidth=4 "设置当行之间交错时使用4个空格
set expandtab "自动将tab转换为空格
set softtabstop=4 "转为4个空格
set cursorline "高亮当前行
set cursorcolumn "高亮当前列
set textwidth=80 "一行显示多少个字符
"set showbreak=-> "拆行的符号
set wrap "自动拆行
set laststatus=2 "显示状态栏
set ruler "显示当前光标的行号和列号
set showmatch "高亮配对的括号
set hlsearch "高亮搜索结果
set incsearch "输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set ignorecase "搜索忽略大小写
"set spell spelllang=en_us "拼写检查
set undofile "保留撤销历史，即使重新打开一个文件，可以撤销上一次编辑时的操作
"set autochdir "自动切换到当前编辑文件所在的目录
set noerrorbells "出错不要发出响声
"set visualbell "出错时闪烁屏幕
set history=1000 "需要记住多少次历史操作
set autoread  "打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
set listchars=tab:»■,trail:■
set list
set wildmenu
"set wildmode=longest:list,full "底部操作指令按下 Tab 键自动补全
set autowrite  "档案有有更新就自动存档。
"set background=dark
colorscheme molokai "设置主题

nmap <F5> <ESC>:!lpc_compile %<CR>
nmap <F6> <ESC>:!lpc_update %<CR>
nmap <F10> <ESC>:!lpc_test %

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'dgryski/vim-godef'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
call plug#end()
" youcompleme配置
set completeopt-=preview

