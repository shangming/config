set number "显示行号
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors
"set t_Co=256 "启用256色
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
"set noexpandtab "自动将tab转换为空格
"set softtabstop=4 "转为4个空格
set cursorline "高亮当前行
set cursorcolumn "高亮当前列
set textwidth=80 "一行显示多少个字符
"set showbreak=-> "拆行的符号
"set wrap "自动拆行
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
"colorscheme molokai "设置主题
"colorscheme solarized "设置主题
"set fillchars=vert:\ ,stl:\ ,stlnc:\
"set clipboard=unnamed "共享剪贴板
"set clipboard=unnamedplus

nnoremap <F5> <ESC>:!lpc_compile %<CR>
nnoremap <F6> <ESC>:!lpc_update %<CR>
nnoremap <F10> <ESC>:!lpc_test % 
nnoremap <F3> :TlistToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>1 :b 1<CR>
nnoremap <leader>2 :b 2<CR>
nnoremap <leader>3 :b 3<CR>
nnoremap <leader>4 :b 4<CR>
nnoremap <leader>5 :b 5<CR>
nnoremap <leader>6 :b 6<CR>
nnoremap <leader>7 :b 7<CR>
nnoremap <leader>8 :b 8<CR>
nnoremap <leader>9 :b 9<CR>
nnoremap <leader>d :bdelete<CR>
nnoremap <leader>t :terminal<CR>
nnoremap <leader>q <C-w>q

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
"Plug 'dgryski/vim-godef'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
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
Plug 'juneedahamed/svnj.vim'
"Plug 'tomasr/molokai'
"Plug 'sickill/vim-monokai'
"Plug 'Yggdroot/LeaderF'
"Plug 'flazz/vim-colorschemes'
Plug 'overcache/NeoSolarized'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'lasorda/lpc.vim'
Plug 'Yggdroot/indentLine'
call plug#end()

"colorscheme NeoSolarized
"set background=dark
"colorscheme solarized
"color molokai
colorscheme molokai

"nerdtree
let g:NERDTreeWinSize=25


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
nnoremap <C-p> :Files<CR>
nnoremap <leader>f :Rg<CR>

"leaaderf
"nnoremap <C-f> <Plug>LeaderfRgPrompt
"map <C-f> :Leaderf rg<CR>
"noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", expand("<cword>"))<CR>

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>ff  <Plug>(coc-format-selected)
nmap <leader>ff  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
nmap <silent> <C-]> <Plug>(coc-definition)
"nnoremap <silent> <C-]> <Plug>(coc-definition)

