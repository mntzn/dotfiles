color desert
set nu
syn on
set expandtab
set tabstop=2
set shiftwidth=2
set colorcolumn=80
highlight ColorCOlumn ctermbg=blue
map <F2> :retab <CR>
map <F3> :%s/\s\+$//g <CR>
set backup
set backupdir=/tmp
set writebackup

set laststatus=2
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
