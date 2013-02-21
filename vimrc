execute pathogen#infect()
set backspace=indent,eol,start

nmap \l :setlocal number!<CR>
nmap ; :CtrlPBuffer<CR>
nmap \e :NERDTreeToggle<CR>
nmap j gj
nmap k gk
nmap \v :vsplit<CR>
nmap \s :split<CR>

syntax on

set number!
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set smartindent
set cindent

au BufNewFile,BufRead *.less set filetype=less

" Color Scheme ----------------------------------------------------------- {{{

" Set the color scheme.
"try
"    set background=dark
"    colorscheme solarized
"catch /E185:/
"    colorscheme default
"endtry

" }}}

" Solarized -------------------------------------------------------------- {{{

" if exists('g:colors_name') && g:colors_name == 'solarized'
    " Text is unreadable with background transparency.
"    if has('gui_macvim')
"        set transparency=0
"    endif

    " Highlighted text is unreadable in Terminal.app because it
    " does not support setting of the cursor foreground color.
"    if !has('gui_running') && $TERM_PROGRAM == 'Apple_Terminal'
"        let g:solarized_termcolors = &t_Co
"        let g:solarized_termtrans = 1
"        colorscheme solarized
"    endif

"    call togglebg#map("<F2>")
"endif

" }}}
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
