let mapleader = "\<Space>"
let maplocalleader = "\\"

" Normalization
nnoremap Y yg_
nnoremap v$ vg_

" Zoom on search results
nnoremap n nzz
nnoremap N Nzz

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :
nnoremap q; q:
vnoremap q; q:

" New line while not at the end of the current one
inoremap <C-J> <ESC>o

" Move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Strip trailing spaces
nnoremap <leader>sp :StripWhitespace<CR>

" Windows
nnoremap <tab> <C-w>w
nnoremap <leader>- <C-w>_
nnoremap <leader>= <C-w>=
nnoremap <leader>x :bd<CR>
nnoremap <leader>x! :bufdo bd<CR>
" close/open quickfix window (tests)
nnoremap <leader>wq :cclose<CR>
nnoremap <leader>wo :Copen<CR>

" Remove highlight
nnoremap <leader>h :noh<CR>

" Quick save
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>

" Prev/next in command mode with filtering
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Rake
nnoremap <leader>rdm :Rake db:migrate<CR>
nnoremap <leader>rdtp :Rake db:test:prepare<CR>

" Tests
nnoremap <leader>t :TestFile<CR>
nnoremap <leader>s :TestNearest<CR>
nnoremap <leader>l :TestLast<CR>

" Powder
nnoremap <leader>pr :!powder restart<CR><CR>

" Plugins
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-y> :NERDTreeFind<CR>

" Generate Ctags
nnoremap <leader>ct :!ctags -R --languages=ruby --exclude=.git --exclude=log .<CR>

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>ga :Git a<CR>
nnoremap <leader>gc :w \| Gwrite \| Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gca :Gcommit --amend<CR>

inoremap <silent> <C-h> <C-R>=delimitMate#BS()<CR>
inoremap <silent> <C-l> <C-R>=delimitMate#JumpAny()<CR>

nnoremap <leader>/ :call NERDComment(0, 'invert')<cr>
vnoremap <leader>/ :call NERDComment(0, 'invert')<cr>
nnoremap <D-/> :call NERDComment(0, 'invert')<cr>
vnoremap <D-/> :call NERDComment(0, 'invert')<cr>
inoremap <D-/> <esc>:call NERDComment(0, 'invert')<cr>i

nnoremap <Leader>g :Grepper -tool git<CR>
nmap gs  <plug>(GrepperOperator)
xmap gs  <plug>(GrepperOperator)

nnoremap - :Switch<cr>
