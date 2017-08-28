"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
let s:cache_home = '~/.cache'
let s:dein_dir = expand(s:cache_home . '/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
" Required:
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = s:dein_dir . '/dein.toml'
" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" }}}

"End dein Scripts-------------------------

set number
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set list
set listchars=tab:»_,trail:~ ",extends:»,precedes:«

set wildmenu
set history=5000

autocmd ColorScheme * highlight Comment ctermfg=102
autocmd ColorScheme * highlight Delimiter ctermfg=138
colorscheme molokai
let g:airline_theme='molokai'
