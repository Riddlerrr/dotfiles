set guioptions=aei
" guioptions guioptions guioptions=ei
set vb t_vb= "no bells

if has('gui_macvim')
  set guifont=Menlo:h14
  " set clipboard+=unnamed
else
  set guifont=Menlo 14
  set clipboard+=unnamedplus
endif
