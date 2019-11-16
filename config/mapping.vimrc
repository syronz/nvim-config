" -----------------------------------------------------------------------------
" Leaders
" -----------------------------------------------------------------------------
let mapleader="\<space>"

nnoremap  [FuzzyFinder]   <Nop>
nmap      ; [FuzzyFinder]

nnoremap  [Files]   <Nop>
nmap      , [Files]

nnoremap  [Windows]   <Nop>
nmap      s [Windows]


nnoremap  [Tabs]   <Nop>
nmap      t [Tabs]


" -----------------------------------------------------------------------------
" FuzzyFinder
" -----------------------------------------------------------------------------
nnoremap <silent> [FuzzyFinder]f :Files<CR>
nnoremap <silent> [FuzzyFinder]co :Files <CR> controllers
nnoremap <silent> [FuzzyFinder]g :Find<CR>
nnoremap <silent> [FuzzyFinder]t :Tags <CR>
nnoremap <silent> [FuzzyFinder]T :BTags <CR>
nnoremap <silent> [FuzzyFinder]gc :BCommits <CR>
nnoremap <silent> [FuzzyFinder]/ :BLines <CR>
nnoremap <silent> [FuzzyFinder]H :History <CR>
nnoremap <silent> [FuzzyFinder]hh :Maps <CR>
nnoremap <silent> [FuzzyFinder]h :History: <CR>
"nnoremap <silent> [FuzzyFinder]me :BLines <CR> def\<space>



" -----------------------------------------------------------------------------
" Files
" -----------------------------------------------------------------------------
nnoremap [Files]L :GoLint <CR>


" -----------------------------------------------------------------------------
" Miscellaneous
" -----------------------------------------------------------------------------
" Reload command
command! Reload :so $MYVIMRC

" go to normal mode and save
inoremap ;w <Esc> 
nnoremap ;W :w<CR> :GoLint <CR>
nnoremap ;w :mkview!<CR> :w<CR> :loadview<CR>

" jump to errors for ale and other apps
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" Open easy motion between panels
nmap <silent> ? <Plug>(easymotion-overwin-w)


" Checkbox
map <silent> <leader>x :call ToggleCheckbox()<cr>


" Indent file
nnoremap <leader>e gg=G

" Remove empty spaces
nnoremap <leader>, :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR><C-o>


" Quite with q
nnoremap <silent> q :<C-u>:quit<CR>


" Toggle Tagbar
nmap <leader>; :TagbarToggle<CR>


" Smart Duplication
nnoremap <Leader>d :t.<cr>
vnoremap <Leader>d :co-1<cr>

" Macro
nnoremap Q q
nnoremap M @q
vnoremap M :norm @q<CR>

" Toggle fold
"nnoremap <return> za

" Focus the current fold by closing all others
nnoremap <leader>z zMza


" -----------------------------------------------------------------------------
" Windows
" -----------------------------------------------------------------------------
" Split horizontaly
nnoremap <silent> [Windows]x :<C-u>split<CR>

" Split verticaly
nnoremap <silent> [Windows]v :<C-u>vsplit<CR>

" Close window
nnoremap <silent> [Windows]c :close<CR>

" Close all but the current
nnoremap <silent> [Windows]o :<C-u>only<CR>

" Back to previoius buffer
nnoremap <silent> [Windows]b :b#<CR>

" Rotate buffers
nnoremap <silent> [Windows]r <C-w>x

" Detache the current pane to a new full window
nnoremap <silent> [Windows]n <C-w>T | :tablast

" Swap panes position
nnoremap <silent> [Windows]s <C-w>R

" Zoom buffer
nnoremap [Windows]z :Goyo<CR>

" Resize
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>


" -----------------------------------------------------------------------------
" Tabs
" -----------------------------------------------------------------------------
" Move to left/right
nnoremap <silent> [Tabs]H :tabmove -1<cr>
nnoremap <silent> [Tabs]L :tabmove +1<cr>

nnoremap <silent> [Tabs]n :tabmove +1<cr>

nnoremap <silent> [Tabs]t :tabnew<CR>
nnoremap <silent> [Tabs]l :tabnext<CR>
nnoremap <silent> [Tabs]h :tabprev<CR>

" -----------------------------------------------------------------------------
" Files
" -----------------------------------------------------------------------------
  " Duplicate current file
  nnoremap [Files]du :saveas <C-r>=expand('%')<cr><left><left><left>

  " Delete current file
  nnoremap [Files]de :!rm %

  " Move/Rename current file
  nnoremap [Files]m :!mv <C-r>=expand('%')<cr> <C-r>=expand('%')<cr>

  " Copy Relative path
  nnoremap <silent> [Files]y :let @+=join([expand("%"), line('.')], ':')<CR>:echo 'Relative path copied to clipboard.'<CR>

  " Copy Absolute path
  nnoremap <silent> [Files]Y :let @+=expand("%:p")<CR>:echo 'Absolute pat copied to clipboard.'<CR>

  " Sidebars
  nnoremap <silent> [Files]a :NERDTreeFind<CR>
  nnoremap <silent> [Files]e :NERDTreeToggle<CR>

  " Find all
  "nnoremap [Files]g :F <c-r>=expand("<cword>")<cr> all --source=rg<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
  nnoremap [Files]g :F <c-r>=expand("<cword>") <cr> *
  " nnoremap [Files]r :Far <c-r>=expand("<cword>")<cr>  all  --source=rg<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
  nnoremap [Files]r :Far <c-r>=expand("<cword>")<cr> 


" -----------------------------------------------------------------------------
" Dictionary and documentations
" -----------------------------------------------------------------------------
  :nmap <silent> <leader>k <Plug>DashSearch

  " Use K for show documentation in preview window
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if &filetype == 'vim'
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction


" -----------------------------------------------------------------------------
" COC and Gotos
" -----------------------------------------------------------------------------
  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  nnoremap <silent> [FuzzyFinder]me :CocList outline<cr>


  " Simple widnow switcher shortcuts
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


