execute pathogen#infect()

nmap \l :setlocal number!<CR>
nmap \e :NERDTreeToggle<CR>
nmap \v :vsplit<CR>
nmap \s :split<CR>
nmap j gj
nmap k gk
nmap ; :CtrlPBuffer<CR>

syntax on

set backspace=indent,eol,start
set number!
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set smartindent
set cindent

au BufNewFile,BufRead *.less set filetype=less

let g:solarized_termcolors=256
set background=dark
colorscheme solarized
