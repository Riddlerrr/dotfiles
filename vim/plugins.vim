" ctrl-p
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 35
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard']
let g:ctrlp_prompt_mappings = {
  \ 'PrtCurLeft()': ['<left>', '<c-^>'],
  \ 'PrtBS()': ['<bs>', '<c-]>', '<c-h>'], }
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" vim-rubytest
let g:rubytest_cmd_spec = "bundle exec rspec '%p'"
let g:rubytest_cmd_example = "bundle exec rspec '%p:%c'"

" vim-clojure-static
let g:clojure_align_subforms = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^cond$']

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1

" ultiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=["my-snippets"]

" Ack -> Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" vim-gitgutter
let g:gitgutter_sign_column_always = 1

" NERDcommenter
let g:NERDSpaceDelims = 1

autocmd! BufWritePost * Neomake
let g:neomake_ruby_enabled_makers = ['rubocop', 'mri']
let g:neomake_warning_sign = { 'text': '👀', 'texthl': 'Warning' }
let g:neomake_error_sign = { 'text': '✗', 'texthl': 'Error' }

