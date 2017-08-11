execute pathogen#infect()

" Inspired by: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc

"""""""""""""""""""""""
" Basic configuration "
"""""""""""""""""""""""
set lazyredraw
set ttyfast
set backspace=indent,eol,start
set number!
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set autoindent
set si
set expandtab shiftwidth=2 softtabstop=2
set showmatch
set matchtime=2
set showcmd
set hidden
set history=10000
set background=dark
set foldmethod=manual   
set foldnestmax=5     
set nofoldenable      
set foldlevel=1 
set backupdir=~/.vim/temp,.
set dir=~/.vim/temp
set directory=~/.vim/temp,.
syntax on
filetype indent on
filetype on
" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
colorscheme solarized
set hlsearch
highlight Search ctermbg=black ctermfg=white cterm=underline
"hi Folded ctermfg=233 ctermbg=107
hi Folded ctermfg=245 ctermbg=234

let g:slime_target = "tmux"

" Syntax highlighting for ejs file
au BufNewFile,BufRead *.ejs set filetype=html

""""""""""""""""
" Key mappings "
""""""""""""""""
nmap \l :setlocal number!<CR>
nmap \e :NERDTreeToggle<CR>
nmap \t :TagbarToggle<CR>
nmap \v :vsplit<CR>
nmap \s :split<CR>
nmap \h :split<CR>
nmap j gj
nmap k gk
nmap ; :CtrlPBuffer<CR>
" resize current buffer by +/- 5 
nnoremap <D-left> :vertical resize -5<cr>
nnoremap <D-down> :resize +5<cr>
nnoremap <D-up> :resize -5<cr>
nnoremap <D-right> :vertical resize +5<cr>
" remap split window navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" Press space to turn off search underlining/highlighting
" nnoremap <silent> <Space> :set hlsearch! hlsearch?<CR>
nnoremap <silent> <C-w> :set hlsearch! hlsearch?<CR>
" map <C-L> :tabn<CR>
" map <C-H> :tabp<CR>

"""""""""""""""""""""""""
" R plugin key mappings "
"""""""""""""""""""""""""
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REPURPOSE TAB KEY                                  "
" Tab key now indents or autocompletes intelligently "
""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

"""""""""""""""""""""""
" RENAME CURRENT FILE "
"""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

"""""""""""""""""""""
" MISC AUTOCOMMANDS "
"""""""""""""""""""""
au BufNewFile,BufRead *.less set filetype=less
" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

let NERDTreeIgnore = ['\.pyc$','__init__.py']
