set nocompatible			              "不兼容vi
filetype off
set rtp+=~/.vim/bundle/vundle             " 将vundle路径添加到插件vim路径

" pass a path where Vundle should install plugins
let path = '~/.vim/bundle/Plugin'
call vundle#rc(path)

" 将Vundle加入到bundle
Plugin 'gmarik/vundle'

filetype indent plugin on                 " 安装完后打开文件类型

"-------------------------------------------------------------------------------------------
"DongH's Plugins here:

"plugin:
"Programming for public:
"提供单个源代码文件的函数列表之类
Plugin 'vim-scripts/taglist.vim'

"提供快速注释/反注释代码块的功能
Plugin 'vim-scripts/The-NERD-Commenter'

"添加doxygen注释
Plugin 'vim-scripts/DoxygenToolkit.vim'

"提供超强的快速生成代码段的功能
Plugin 'vim-scripts/UltiSnips'

"给不同的单词高亮，表明不同的变量时很有用
Plugin 'vim-scripts/VirMark.vim'

"自动生成/更新文件的作者信息
Plugin 'vim-scripts/authorinfo'

"一个通用的语法检查插件，支持c,js,等等
Plugin 'vim-scripts/checksyntax'

"用来帮助缩进对齐的插件，需要的时候会很好用
"Plugin 'vim-scripts/Indent Guides'

"C/C++
"提供C++代码的自动补全功能
Plugin 'vim-scripts/OmniCppComplete'

"Script that will search for and load cscope.out databases automatically
Plugin 'vim-scripts/autoload_cscope.vim'

"提供快速切换.h和.cpp文件的功能
Plugin 'vim-scripts/a.vim'


"Python
"提供实时检查python代码语法的功能
Plugin 'vim-scripts/pyflakes'


"TOOLS
"提供列出配色列表的功能，就不用一个个手工去敲配色名字了
Plugin 'vim-scripts/Color-Scheme-Explorer'

"自动检测文件编码，也可以手动选择文件编码
Plugin 'vim-scripts/FencView.vim'

"提供命令模式下的补全，可以补全缓冲区中出现过的单词
Plugin 'vim-scripts/CmdlineComplete'

"#用全新的方式在文档中高效的移动光标，革命性的突破
Plugin 'EasyMotion'

"自动识别文件编码；
Plugin 'FencView.vim'

"让代码更加易于纵向排版，以=或,符号对齐
Plugin 'Tabular'

"项目中所有文件的查找
Plugin 'lookupfile'

Plugin 'genutils'

"Indet
"提供python的语法缩进，比默认的要好很多
Plugin 'vim-scripts/indentpython.vim'


"Syntax
Plugin 'vim-scripts/python.vim'

"indentLine 更加美观的显示缩进对齐线
Bundle "Yggdroot/indentLine"

"color scheme
Plugin 'vim-scripts/Solarized'






"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins


"-------------------------------------------------------------------------------
"set nu       "打开行号显示
set guifont=MonoSpace\ 16

"设置颜色、背景等
syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
set background=dark
colorscheme solarized

" file encoding 编码
set encoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,chinese
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" disable sound on errors
" 关闭错误提示声音
set visualbell
set noerrorbells
set t_vb=
set tm=500

"设置TAB键
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set tabstop=4                         " 设置tabstop，即tab键占用的空格数，:help tabstop
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab


" ignores
" 忽略文件类型
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" CTRL+N 打开一个新TAB
imap <C-N> <esc>:tabnew<CR>
nmap <C-N> :tabnew<CR>

"行号显示
set number
set numberwidth=4
set history=1000                      " keep 1000 lines of command line history
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set cursorline                        " 突出当前行
set noswapfile
set nobackup                          " no *~ backup files
set nowb
set copyindent                        " copy the previous indentation on autoindenting
set smartcase
set cindent                           " C语言智能缩进
set textwidth=80                      " 设置一行字符宽度
set comments=sl:/*,mb:**,elx:*        "自动补全注释符号
set completeopt=longest,menu          "设置单词自动补全选项
set autoindent                        "设置自动缩进
set hlsearch                          "设置搜索时高亮显示搜索字，:help hlsearch

"=====================================================================
"taglist option，设置taglist插件的选项，进行定制
"=====================================================================
let Tlist_Show_One_File=1      "只显示一个文件的tags
let Tlist_Exit_OnlyWindow=1    "当taglist窗口是最后一个窗口时，退出vim
let Tlist_Use_Right_Window=1   "taglist窗口显示在右侧
let mapleader = ","            "修改引导符为",",默认为"\"，后面都使用修改后的值
noremap <silent> <F6> :TlistToggle<CR>      "相当于定义快捷键
noremap <silent> <Leader>tt :TlistToggle<CR>  "定义第二个快捷键
"==========================================================================
"BufExplore setting，设置bufexplorer插件的选项，进行定制
"==========================================================================
let g:BufExplorerShowRelativePath=1
let g:BufExplorerSplitRight=0
let g:BufExplorerSplitVertical=1
let g:BufExplorerSplitBelow=0
noremap <silent> <Leader>be :BufExplorer<CR>
noremap <silent> <Leader>bs :BufExplorerHorizontalSplit<CR>
noremap <silent> <Leader>bv :BufExplorerVerticalSplit<CR>

"==============================================================================
"csope settings，设置cscope的参数内容，实现启动自动添加数据库
"==============================================================================
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"=========================================
"NERDTree settings
"=========================================
noremap  <Leader>nt :NERDTree


"===================================================================
" lookupfile setting
"===================================================================
 let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
 let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
 let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
 let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
 let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
 if filereadable("./lookup.files")                "设置tag文件的名字
    let g:LookupFile_TagExpr = '"./lookup.files"'
 endif

 nmap <silent> <Leader>lf <Plug>LookupFile<CR>
 nnoremap <silent> <Leader>lb :LUBufs<CR>
 nnoremap <silent> <Leader>lw :LUWalk<CR>
 nnoremap <silent> <Leader>lt :LUTags<CR>

"======================================
"quickfix setting
"======================================
noremap <silent> <Leader>cn :cn<CR>
noremap <silent> <Leader>cp :cp<CR>
noremap <silent> <Leader>cw :cw<CR>
noremap <silent> <Leader>cc :cc<CR>
noremap <silent> <Leader>co :copen<CR>
noremap <silent> <Leader>ce :cclose<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" omni setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocp
filetype plugin on
"filetype indent on
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_NamespaceSearch = 1
let OmniCpp_DisplayMode = 0
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_DefaultNamespaces = []
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 0
let OmniCpp_SelectFirstItem = 0

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="JiuZhou"
let g:DoxygenToolkit_licenseTag="JiuZhou own license"


