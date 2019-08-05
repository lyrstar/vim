"设置vundle
set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/nerdtree'
"文件浏览
Bundle 'majutsushi/tagbar'    
"代码符号
Bundle 'wesleyche/SrcExpl'    
"类似sourceInsight的代码预览窗口

Bundle "godlygeek/tabular"
Bundle "walm/jshint.vim"
Bundle "scrooloose/syntastic"
Bundle "pangloss/vim-javascript"
Bundle "digitaltoad/vim-jade"
Bundle "guileen/vim-node"
Bundle "myhere/vim-nodejs-complete"
Bundle "jamescarr/snipmate-nodejs"
Bundle "marijnh/tern_for_vim"
Bundle "vim-scripts/jsbeautify"
filetype plugin indent on     
" required!
"vundle设置完毕

"添加字典文件 
au FileType javascript set dictionary+=$VIM.'\.vim\dict\node.dict'


"设置行号
set number
"不自动换行
set nowrap
"智能对齐
set smartindent
set autoindent
"一个tab 4个字符
set tabstop=4
set softtabstop=4
set shiftwidth=4
"不产生备份 
set nobackup

"总是在窗口右下角显示光标的位置
set ruler	
 
"在Vim窗口右下角显示未完成的命令 
set showcmd			

syntax on
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_left = 1
nnoremap <F3> :TagbarToggle<CR>
let NERDTreeWinPos='left'
nnoremap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 "显示隐藏文件
autocmd BufReadPost * :NERDTree        "启动vim时 自动打开NERDTree
autocmd VimEnter * wincmd w "光标自动显示在编辑区

"set tags=tags;/  "搜索上一级建立的tag

set tags=tags
set tags+=./tags
set tags+=~/Document/omgit/*/tags
"set tags+=/projectpath/*/tags
set autochdir

map <F8> :! ctags -R --languages=javascript<CR>
imap <F8> <ESC>:! ctags -R --languages=javascript<CR>
"inoremap jj <ESC>
inoremap jjs <ESC>:w<CR>
inoremap ,,n <C-X><C-N>
inoremap ,,o <C-X><C-O>
map ,tt :tabn<CR>
nnoremap ,tp :tabp<CR>
nnoremap ,tc :tabc<CR>
nnoremap ,to :tabo<CR>
nnoremap ,hh 0
nnoremap ,ll $
imap ,tt <ESC>:tabn<CR>
"窗口上下左右切换
nmap ,,h <C-W>h
nmap ,,j <C-W>j
nmap ,,k <C-W>k
nmap ,,l <C-W>l
nmap ,cc <ESC>:q<CR>  "关闭窗口

nmap <F4> :SrcExplToggle<CR>
let g:Srcexpl_winHeight = 8
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

let g:SrcExpl_pluginList = [
         \ "__Tag_List__",
                 \ "_NERD_tree_"
                     \ ]
nnoremap <F5> :call g:Jsbeautify()<CR>  
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
