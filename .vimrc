set number "显示行号
set t_Co=256 "启用256色
set nocompatible "不兼容vi
syntax on "语法高亮
set showmode "显示当前模式
set showcmd "显示输入的指令
set mouse-=a "支持鼠标
set fileencodings=utf8,gbk "检测文件编码，并设置fileencoding
set fileencoding=utf8 "当前文件使用的编码
set encoding=utf8 "vim内部使用的编码
filetype indent on "开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
filetype plugin on
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
"set undofile "保留撤销历史，即使重新打开一个文件，可以撤销上一次编辑时的操作
"set autochdir "自动切换到当前编辑文件所在的目录
set noerrorbells "出错不要发出响声
"set visualbell "出错时闪烁屏幕
set history=1000 "需要记住多少次历史操作
set autoread  "打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
set listchars=tab:>--,trail:■
set list
set wildmenu
"set wildmode=longest:list,full "底部操作指令按下 Tab 键自动补全
set autowrite  "档案有有更新就自动存档。
set background=dark
"colorscheme molokai "设置主题
"colorscheme solarized "设置主题
"set fillchars=vert:\ ,stl:\ ,stlnc:\
"set clipboard=unnamed "共享剪贴板
"set clipboard=unnamedplus


nmap <F5> <ESC>:!lpc_compile %<CR>
nmap <F6> <ESC>:!lpc_update %<CR>
nmap <F10> <ESC>:!lpc_test % 
nmap <F3> :TlistToggle<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <leader>1 :b 1<CR>
nmap <leader>2 :b 2<CR>
nmap <leader>3 :b 3<CR>
nmap <leader>4 :b 4<CR>
nmap <leader>5 :b 5<CR>
nmap <leader>6 :b 6<CR>
nmap <leader>7 :b 7<CR>
nmap <leader>8 :b 8<CR>
nmap <leader>9 :b 9<CR>
nmap <leader>d :bdelete<CR>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
"Plug 'dgryski/vim-godef'
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
"Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
"Plug 'lilydjwg/fcitx.vim'
Plug 'WolfgangMehner/bash-support'
"Plug 'kien/ctrlp.vim'
"Plug 'FelikZ/ctrlp-py-matcher'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
"Plug 'Yggdroot/LeaderF'
call plug#end()
" youcompleme配置
"set completeopt-=preview
"let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全"
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口"
"let g:ycm_seed_identifiers_with_syntax = 1 ""语法关键字补全"

"taglist配置
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidt=15

"vim-airline配置
let g:airline#extensions#tabline#enabled = 1 "开启tabline
let g:airline#extensions#tabline#buffer_nr_show = 1 "tabline中buffer显示编号

"fzf
nmap <C-p> :Files<CR>
nmap <C-f> :Rg<CR>

"leaaderf
"nmap <C-f> <Plug>LeaderfRgPrompt
"map <C-f> :Leaderf rg<CR>
"noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", expand("<cword>"))<CR>

