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
"搜尋
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
"-------------------------------------------------------------------------
"顯示行號
set number
"自動縮進
set autoindent
"依語言自動縮進
filetype indent on
"tab鍵轉為空格
set expandtab
"縮進長度與tab長度皆為4
set shiftwidth=4
set tabstop=4
set softtabstop=4
"高亮搜尋
set hlsearch
"搜尋時不分大小寫
set ignorecase
"背景為黑
set background=dark
"文件語法自動高亮
filetype on
filetype plugin on
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
"基於縮進代碼折疊
set foldmethod=syntax
"啟動vim預設不折疊
set nofoldenable
"不備份
set nobackup
"顯示正在輸入命令
set showcmd
"關閉該死的Scratch預覽
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
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
" git協作
Plugin 'tpope/vim-fugitive'
" 自動完成
Plugin 'Shougo/neocomplete.vim'
" 支援 grep 搜尋
Plugin 'yegappan/grep'
" 快速註解
Plugin 'scrooloose/nerdcommenter'
" 板型集合
Plugin 'honza/vim-snippets'
" 樹狀目錄
Plugin 'scrooloose/nerdtree'
" 語法檢驗
Plugin 'scrooloose/syntastic'
" 結對符號快速圈起
Plugin 'gcmt/wildfire.vim'
" 光標快速移動
Plugin 'easymotion/vim-easymotion'
" 可視化折疊
Plugin 'nathanaelkane/vim-indent-guides'
" 快速套板
Plugin 'SirVer/ultisnips'
" xml快速完成
Plugin 'mattn/emmet-vim'
" 快速查詢文件
Plugin 'kien/ctrlp.vim'
" 結對符號自動產生器
Plugin 'jiangmiao/auto-pairs'
" airline
Plugin 'bling/vim-airline'
" airline 字型
Plugin 'powerline/fonts'
" plugin from http://vim-scripts.org/vim/scripts.html
" vim的腳本
Plugin 'L9'
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
"Neocompelete setting
"------------------------------------------------------------------------
let g:neocomplete#enable_at_startup = 1
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"自動補全設定
"------------------------------------------------------------------------
set completeopt+=longest
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
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
"nerdtree setting
"------------------------------------------------------------------------
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>n :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=20
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
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
