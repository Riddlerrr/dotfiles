call plug#begin('~/.vim/plugged')

" Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'JazzCore/ctrlp-cmatcher', {'do': './install.sh'}
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'

" UI
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'

" Color theme
Plug 'morhetz/gruvbox'

" General
Plug 'Rename2'
Plug 'benizi/vim-automkdir'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'

Plug 'mhinz/vim-grepper'

" Text manipulation
Plug 'matchit.zip'
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'AndrewRadev/switch.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'ntpeters/vim-better-whitespace'

" Linters
Plug 'neomake/neomake'

" Language Additions
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'

Plug 'othree/html5.vim'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'

Plug 'hail2u/vim-css3-syntax'

Plug 'gabrielelana/vim-markdown'

Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'leshill/vim-json'

Plug 'bhurlow/vim-parinfer'

call plug#end()
