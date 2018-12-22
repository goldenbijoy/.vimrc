"##### MY DOT FILE FOR WINDOWS gVim/vim (ssohan3736@gmail.com)



set backspace=2
inoremap <CR> <CR>x<BS>
set encoding=utf-8 
set showmatch

set mouse=a

set autoindent

"###############Vundle START ################
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
let vundlepath='~/vimfiles/bundle'
call vundle#begin(vundlepath)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'Valloric/YouCompleteMe' "NEED VISUAL STUDIO 
"Plugin 'bfrg/vim-cpp-modern'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'aperezdc/vim-template'
" snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
"Plugin 'Rip-Rip/clang_complete' "Has problem Identifying Liblang.dll
Plugin 'justmao945/vim-clang'
"Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
"Plugin 'gabrielsimoes/cfparser.vim'
"Plugin 'Igorjan94/codeforces.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'Shougo/unite.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"#################VUNDLE END ##################

"let g:clang_library_path='C:\Program Files\LLVM\bin\libclang.dll' "reqired for clang_complete Plugin

" WINDOWS friendly mappings
" CTRL-T opens a new tab, CTRL-W closes tab, CTRL-Left/Right switches tabs
noremap   <C-T> :tabnew<return>
noremap   <C-W> :tabclose<return>
noremap   <C-Left> :tabprevious<return>
noremap   <C-Right> :tabNext<return>
" CTRL-A is Select all
noremap   <C-A> gggH<C-O>G
inoremap  <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap  <C-A> <C-C>gggH<C-O>G
" CTRL-v is Paste in insert mode, otherwise it is Visual-Block mode by default
inoremap  <C-v> <esc>"*pa
"noremap   <C-v> "*p<return>
" CTRL-x is cut (in visual mode only)
vnoremap <C-x> "*d
" CTRL-c is copy (in visual mode only)
vnoremap <C-c> "*y
"CTRL-s is save
nmap <c-s> :w<CR>

"Replace Tab with 4 space
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"for syntext HighLight
filetype plugin on
syntax on
colorscheme gruvbox

"font
if has("gui_running")
 if has("gui_gtk2")
   set guifont=Inconsolata\ 12
 elseif has("gui_macvim")
   set guifont=Menlo\ Regular:h14
 elseif has("gui_win32")
   set guifont=Consolas:h14:cANSI
 endif
endif

"Window Size for Gvim

"set lines=50 columns=1000 " This is for how many lines and column 

au GUIEnter * simalt ~x " this for Full Screen

"omonicomplete
"set nocp

"Line number
set number

"##########SETTING FOR C++ IDE

"c++ skeleton run it with create file with :new file_name.type
autocmd BufNewFile *.cpp 0r ~/vimfiles/skeleton/skeleton.cpp
"autocmd BufNewFile * :on "This is for removing the spliting windows for any file extension

"Defulat Saving Path
cd C:\Users\SS\Google Drive\practical(Needed)\vim_saving
"save to c++/uva
nmap<F1> :cd C:\Users\SS\Google Drive\practical(Needed)\C C++\C++\uva <CR>
"save to c++/codeforces
nmap<F2> :cd C:\Users\SS\Google Drive\practical(Needed)\C C++\C++\codeforces<CR><CR>
"save to c++/loj
nmap<F3> :cd C:\Users\SS\Google Drive\practical(Needed)\C C++\C++\loj <CR>
"save to c++/others
nmap<F4> :cd C:\Users\SS\Google Drive\practical(Needed)\C C++\C++\others <CR>

"To build compile and run file
"% for current name... %< for only name without extension
au filetype cpp nmap<F9> :w <CR> :!g++ -o "%<" "%" && "%<" <CR>  

"to run
au filetype cpp nmap<F8> :! "%<" <CR>

"testing

"set autochdir
"autocmd BufEnter * lcd %:p:h


" alt + j line down and alt + k line up
nnoremap ê :m .+1<CR>==
nnoremap ë :m .-2<CR>==

inoremap ê <Esc>:m .+1<CR>==gi
inoremap ë <Esc>:m .-2<CR>==gi

vnoremap ê :m '>+1<CR>gv=gv
vnoremap ë :m '<-2<CR>gv=gv

"to see autocomplete longest
set completeopt=longest,menuone

nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

"Files
"to see file list of current directory and open
nmap <F5> :Unite file <CR>
"to open recently open file
nmap<F6> :bro ol <CR>

au filetype cpp inoremap {      {}<Left>
au filetype cpp inoremap {<CR>  {<CR>}<Esc>O
au filetype cpp inoremap {{     {
au filetype cpp inoremap {}     {}



