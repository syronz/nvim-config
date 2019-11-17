call plug#begin()


" -----------------------------------------------------------------------------
" Fuzzy finder
" -----------------------------------------------------------------------------

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!**/node_modules/*" --glob "!*.png" --glob "!/tmp/*" --glob "!/plugged/*"'
command! -bang -nargs=* Rg
			\ call fzf#vim#grep(
			\   'rg --column --line-number --no-heading --color=always --smart-case --ignore dist '.shellescape(<q-args>), 1,
			\   <bang>0 ? fzf#vim#with_preview('up:60%')
			\           : fzf#vim#with_preview('right:50%:hidden', '?'),
			\   <bang>0)

let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '~40%' }

" -----------------------------------------------------------------------------
" Go
" -----------------------------------------------------------------------------
" Plug 'fatih/vim-go'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment'] 
"let g:go_fmt_experimental = 1




" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
" Syntax and Indent
Plug 'sheerun/vim-polyglot'

" Grammar Checker
Plug 'rhysd/vim-grammarous'

" Linters
Plug 'w0rp/ale'
" TODO: activate ale_fixer and autofixer
"let g:ale_typescript_tslint_config_path = '/home/diako/projects/junior/client/tslint.json'
"let g:ale_typescript_tslint_executable = '/home/diako/sandbox/junior/client/node_modules/tslint/bin/tslint'
""let g:ale_typescript_tslint_executable = 'tslint'
"let g:ale_typescript_tslint_ignore_empty_files = 0
"let g:ale_typescript_tslint_rules_dir = ''
"let g:ale_typescript_tslint_use_global = 1
"let g:ale_linters = {'typescript': ['tslint']} 


" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Comments
Plug 'tpope/vim-commentary'

" Better motion
Plug 'easymotion/vim-easymotion'

" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" Navigate and highlight matching words
Plug 'andymass/vim-matchup'

" NerdTree in sidebar
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
let NERDTreeIgnore = [
	\ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.svn$',
	\ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$'
	\ ]
function! s:SID()
    if ! exists('s:sid')
        let s:sid = matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
    endif
    return s:sid
endfunction
let s:SNR = '<SNR>'.s:SID().'_'
let NERDTreeQuitOnOpen=1
call NERDTreeAddKeyMap({
            \ 'key': 'w',
            \ 'callback': s:SNR.'toggle_width',
            \ 'quickhelpText': 'Toggle window width' })

function! s:toggle_width()
    let l:max = 0
    for l:z in range(1, line('$'))
        let l:len = len(getline(l:z))
        if l:len > l:max
            let l:max = l:len
        endif
    endfor
    exe 'vertical resize '.(l:max == winwidth('.') ? g:NERDTreeWinSize : l:max)
endfunction

" Fonts for nerd tree as icon
"Plug 'ryanoasis/vim-devicons',{ 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
"autocmd! User nerdtree exe 'source' '$HOME/.config/nvim/config/plugins/nerdtree.vim'
" adding the flags to NERDTree
"let g:webdevicons_enable_nerdtree = 1

" Snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Surround management
Plug 'tpope/vim-surround'

" Allow repeat to work with plugins
Plug 'tpope/vim-repeat'

" Tagbar for vim
Plug 'majutsushi/tagbar'

" Zen mode
Plug 'junegunn/goyo.vim'
let g:goyo_height='95%'
let g:goyo_width='100'

" Fugitive for git management
Plug 'tpope/vim-fugitive'


" -----------------------------------------------------------------------------
" Javascript
" -----------------------------------------------------------------------------
Plug 'Galooshi/vim-import-js'

" ES2015 code snippets 
Plug 'epilande/vim-es2015-snippets'


" -----------------------------------------------------------------------------
" HTML
" -----------------------------------------------------------------------------
  Plug 'mattn/emmet-vim'


  " Find and Replace
  Plug 'brooth/far.vim',{  'on': ['Far',  'Farp',  'F'] }
  Plug 'jremmen/vim-ripgrep'





  call plug#end()


