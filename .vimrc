" https://github.com/junegunn/vim-plug を使用
"  - vim-plug 自体の install 後に vim を起動して :PlugInstall コマンドを実行して plugin の install が必要
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'tomasr/molokai'

Plug 'editorconfig/editorconfig-vim'

" Initialize plugin system
call plug#end()

" my settings
set number
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set list
set listchars=tab:»_,trail:~ ",extends:»,precedes:«

set wildmenu
set history=2000
set paste

autocmd ColorScheme * highlight Comment ctermfg=102
autocmd ColorScheme * highlight Delimiter ctermfg=138
colorscheme molokai
let g:airline_theme='molokai'
