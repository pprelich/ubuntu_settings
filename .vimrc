set guioptions+=LIRrbTm
set guioptions-=LIRrbTm
colorscheme atom-dark
syntax on
set number
set cursorline
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%81v.\+/
set ts=2
set expandtab
set autoindent
set smartindent
set scrolloff=2
set backspace=2
set shiftwidth=2
set runtimepath^=~/.vim/bundle/ctrlp.vim
