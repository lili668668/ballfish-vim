"-------------------------------------------------------------------------
"My setting
"-------------------------------------------------------------------------
"操作教學
"-------------------------------------------------------------------------
"za打開或關閉折疊zM關閉所有折疊zA打開所有折疊
":se nonu不顯示行號
"yy複製整行
"dd剪下整行
"p貼上vim剪貼簿裡的東西
"gd搜尋
":tab new新增分頁
":e <file name>編輯<file name>
"gt 切換分頁
"u 回復上一動
"Ctrl+r 執行下一動
"gg 到頁首
"G 到頁尾
"多行編輯（非跳行
"Ctrl+v選取想要的區域
"I開始編輯
"Esc
"
"自動排版
"gg=G
"
"取代
":[range]s/pattern/string/[c,e,g,i]

"range  指的是範圍，1,7 指從第一行至第七行，1,$ 指從第一行
       "至最後一行，也就是整篇文章，也可以 % 代表。

    "還記得嗎？ % 是目前編輯的文章，# 是前一次編輯的文章。 

"pattern  就是要被替換掉的字串，可以用 regexp 來表示。
"string   將 pattern 由 string 所取代。
"c  confirm，每次替換前會詢問。
"e  不顯示 error。
"g  globe，不詢問，整行替換。
"i  ignore 不分大小寫。
"刪除
"刪除節對裡的東西di加對符號
"刪除到某個字前的東西df加那個字
"-------------------------------------------------------------------------
"顯示行號
set number
"自動縮進
set autoindent
"依語言自動縮進
filetype indent on
"tab鍵轉為空格
set expandtab
"縮進長度與tab長度皆為2
set shiftwidth=2
set tabstop=2
set softtabstop=2
"高亮搜尋
set hlsearch
"搜尋時不分大小寫
set ignorecase
"背景為黑
set background=dark
"文件語法自動高亮
filetype on
filetype plugin on
"文件模式
set fileformats=unix,dos
"命令模式自動補全
set wildmenu
"高亮顯示行列
set cursorline
set cursorcolumn
"折行
set linebreak
"語法高亮
syntax enable
syntax on
colorscheme monokai
set t_Co=256
"基於縮進代碼折疊
set foldmethod=syntax
"啟動vim預設不折疊
set nofoldenable
"不備份
set nobackup
set noundofile
"顯示正在輸入命令
set showcmd
"關閉該死的Scratch預覽
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"快速鍵
:command TN tab new
"-------------------------------------------------------------------------
"-------------------------------------------------------------------------
" Encoding setting
"-------------------------------------------------------------------------
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
    set encoding=utf-8                                  
    set termencoding=big5
endfun

fun! UTF8()
    set encoding=utf-8                                  
    set termencoding=big5
    set fileencoding=utf-8
    set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
    set encoding=big5
    set fileencoding=big5
endfun
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"Vundle setting
"------------------------------------------------------------------------
"安裝
"Install Plugins:
"
"Launch vim and run :PluginInstall
"
"To install from command line: vim +PluginInstall +qall
"------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
" Vundle套件管理
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" 支援 grep 搜尋
Plugin 'yegappan/grep'
" 快速註解
Plugin 'scrooloose/nerdcommenter'
" 樹狀目錄
Plugin 'scrooloose/nerdtree'
" 樹狀目錄 git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" git 視覺化
Plugin 'airblade/vim-gitgutter'
" 結對符號快速圈起
Plugin 'gcmt/wildfire.vim'
" 光標快速移動
Plugin 'easymotion/vim-easymotion'
" 可視化折疊
Plugin 'nathanaelkane/vim-indent-guides'
" 快速查詢文件
Plugin 'Yggdroot/LeaderF'
" 結對符號自動產生器
Plugin 'jiangmiao/auto-pairs'
" airline
Plugin 'bling/vim-airline'
" airline 字型
Plugin 'powerline/fonts'
" mutiple cursors
Plugin 'terryma/vim-multiple-cursors'
" plugin from http://vim-scripts.org/vim/scripts.html
" vim的腳本
Plugin 'L9'
" 自動完成
Plugin 'vim-scripts/AutoComplPop'
" Rust Configure
Plugin 'rust-lang/rust.vim'
" 行號小幫手
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" 彩色括弧
Plugin 'luochen1990/rainbow'

Plugin 'crusoexia/vim-monokai'

Plugin 'moll/vim-node'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-syntastic/syntastic'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim. Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
" 
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"可視化折疊
"------------------------------------------------------------------------
"使用說明
"\i可開關可視化
"------------------------------------------------------------------------
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup = 0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level = 2
" 色块宽度
let g:indent_guides_guide_size = 1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
"------------------------------------------------------------------------
"nerdcommenter teach
"------------------------------------------------------------------------
"[count]\cc : //
"[count]\cu : cancel
"[count]\cm : /**/
"[count]\cs :  /*
"               *
"               */
"------------------------------------------------------------------------
"ultisnips setting
"------------------------------------------------------------------------
"可以用tab 鍵形成模板
"在目錄底下的mysnippets可以自己自訂模板
"------------------------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["mysnippets"]
"------------------------------------------------------------------------
" nerdtree setting
" C 往下一層
" u 往上一層
" t tab 開啟
" i 水平分割開啟
" s 垂直分割開啟
" :BM add bookmark
" D delete bookmark
"------------------------------------------------------------------------
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>n :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=40
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" :BM add bookmark
:command BM Bookmark
" 開起時 show bookmark
let g:NERDTreeShowBookmarks=1
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('py',     'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')
"------------------------------------------------------------------------
"wildfire setting
"------------------------------------------------------------------------
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]
"------------------------------------------------------------------------
"easymotion teach
"------------------------------------------------------------------------
"\\ + s + [a-z]跳到想要位址
"------------------------------------------------------------------------
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"emmet setting
"------------------------------------------------------------------------
"操作
"Ctrl + Z + ,
"------------------------------------------------------------------------
let g:user_emmet_mode='n'
let g:user_emmet_leader_key='<C-z>'
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"ctrlp teach
"------------------------------------------------------------------------
"Ctrl+p搜尋文件
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"fugitive learn
"------------------------------------------------------------------------
"http://quickteckiteasy.blogspot.tw/2013/11/vim-plugin-fugative-vim-git.html
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"airline setting
"------------------------------------------------------------------------
" set status line
set laststatus=2
"------------------------------------------------------------------------
"vim-multiple-cursors
"------------------------------------------------------------------------
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"------------------------------------------------------------------------
" vim syntastic set
" How to use => :SC => will do syntastic check
"------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
let g:syntastic_mode_map = {'mode': 'passive'} 
:command SC SyntasticCheck
"------------------------------------------------------------------------
" Rainbow Parentheses Improved
" 彩色括弧
"------------------------------------------------------------------------
let g:rainbow_active = 1
