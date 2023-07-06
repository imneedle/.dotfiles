" Better commenting system
augroup BetterFormatOptions
    autocmd!
    "Disable auto comment wrapping when line exceeds 80 chars
    autocmd FileType * set formatoptions-=c  
    "Disable auto inserting comment leader when pressing <CR> (enter) on
    "comment
    autocmd FileType * set formatoptions-=r
    "Disable auto inserting comment leader when pressing "o" or "O" on comment
    autocmd FileType * set formatoptions-=o
    "Remove comment leader when joining commented lines with "J"
    autocmd FileType * set formatoptions+=j
augroup END
