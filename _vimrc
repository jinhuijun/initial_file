syntax on
colorscheme edo_sea4 
set nu
map <F2> :up<CR>
set ruler
set backspace=2
set encoding=utf-8 
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1,big5
set fileencoding=utf-8
set termencoding=utf-8
set fileformats=unix
if has("win32")
set guifont=黑体
else
if has("gui_running")
set guifont=monaco:h14
set lines=39 columns=100
endif
endif


set nocompatible 	" 去除VI一致性,必须要添加
filetype off            " 必须要添加 

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'Valloric/YouCompleteMe'
" 另一种选择, 指定一个vundle安装插件的路径 
"call vundle#begin('~/some/path/here')
" 让vundle管理插件版本,必须 
Plugin 'VundleVim/Vundle.vim' 
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间. 

" Github上的插件。格式为 Plugin '用户名/插件仓库名' <CR>Plugin 'tpope/vim-fugitive' 
"
" 来自http://vim-scripts.org/vim/scripts.html的插件。Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 
" 只是此处的用户名可以省略 <CR>Plugin 'L9' 
"
" 由Git支持但不在github上的插件仓库 Plugin 'git clone 后面的地址' <CR>Plugin 'git://git.wincent.com/command-t.git'
"
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径' 
"Plugin 'file:///Users/laojin/.vim/bundle/YouCompleteMe'
"Plugin 'file:///Users/laojin/.vim/bundle/Vundle.vim'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下 <CR>Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
"
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突 <CR>Plugin 'ascenator/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前 
call vundle#end() " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本 
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
