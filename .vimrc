"編碼 - Encode
set fileencodings=utf-8,cp950
set termencoding=utf-8
set encoding=utf-8

"基本配置
syntax on
syntax enable
set nocompatible "不與 vi 相容
set showmode
set showcmd
set t_Co=256
filetype plugin indent on
colo torte

"啟用鼠標 - Mouse
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"縮行 - Indent
set ai "autoindent 繼承前一行縮行
set si "smartindent 偵測括號 {}
set cindent "偵測 C 程式語言
set expandtab "輸入 Tab 轉換成 Space
set tabstop=8 "Tab 顯示為 8 個空格
set shiftwidth=4 "縮行寬度
set softtabstop=0 smarttab "Backspace 寬度
set backspace=eol,start,indent

"外觀
set ruler "顯示標尺
set nu "set number 顯示行號
"set relativenumber "顯示相對行號
set cul "cursorline 顯示當前行
"set cuc "cursorcolumn 顯示當前列
"set textwidth=80
set wrap "自動換行
set linebreak "不在單字中斷行
set wrapmargin=2
set laststatus=2 "顯示狀態欄 0=不顯示 1=多視窗才顯示 2=顯示
set scrolloff=3 "保持上方下方三行距離

"用淺色高亮顯示當前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"搜尋 - Search
set hlsearch "高亮顯示匹配結果
set incsearch "每輸入一個字符 就自動跳到第一個匹配的結果
set ic "ignorecase 搜尋字串不分大小寫
set smartcase "部分大寫字母的搜索詞時 搜尋字串區分大小寫
set showmatch "顯示括號匹配 ()[]{}

"編輯 - Edit
"set spell spelllang=en_us "檢查英文拼寫
set nobk "nobackup 不產生備份檔案 filename~
set noswf "noswapfile 不產生交換檔案 .filename.swap
"set undofile "保留 undo 歷史紀錄
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
set autochdir "自動切換目錄
set history=1000 "紀錄歷史紀錄次數
set autoread "偵測檔案被外部修改
set listchars=tab:»■,trail:■ "行尾有多餘的空格和 Tab 顯示其符號
set list
set wildmenu "自動補全(tab) menu 指令
set wildmode=longest:list,full
set noeb "noerrorbells 關閉錯誤訊息鈴聲
set visualbell "顯示可視化提示
set pastetoggle=<F12> "F12 switch paste mode

"Automatically remove trailing spaces when saving a file.
autocmd BufWritePre * :%s/\s\+$//e
