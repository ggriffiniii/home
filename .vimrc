:syntax enable
:map <F5> :r$HOME/mutt/signature<ESC>
:map <F4> :let &bg = ( &bg == "dark"? "light" : "dark" )<CR><ESC>
:map <F7> :if exists("syntax_on") <Bar>
        \   syntax off <Bar>
        \ else <Bar>
        \   syntax enable <Bar>
        \ endif <CR><ESC>
if (&term == "putty")
  set bg=dark
endif

set pastetoggle=<F11>
iab perlbase <ESC>:set paste<C-M>i#!/usr/bin/perl<C-M>use warnings;<C-M>use strict;<C-M><ESC>:filetype detect<C-M>:set nopaste<C-M>i
iab rttake X-RT-Owner: griffin
iab rtresolve X-RT-Status: resolved
set showcmd             " Show (partial) command in status line.
set showmatch          " Show matching brackets.
set ignorecase         " Do case insensitive matching
set incsearch          " Incremental search
set autowrite          " Automatically save before commands like :next and :make

"let perl_fold=1
highlight RedundantSpaces ctermbg=cyan guibg=cyan
match RedundantSpaces /\s\+$\| \+\ze\t/
