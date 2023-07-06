let mapleader = " "

" Open file tree
nnoremap <silent><nowait> <leader>pv :Ex<CR>

" Get rid of this
nnoremap <silent><nowait> Q <Nop>

" Better searching
nnoremap <silent><nowait> n nzz
nnoremap <silent><nowait> N Nzz

" Moving lines up and down
vnoremap <silent><nowait> J :m '>+1<CR>gv=gv
vnoremap <silent><nowait> K :m '<-2<CR>gv=gv

" Tabs
nnoremap <silent><nowait> <leader>tn :tabnew<CR>
nnoremap <silent><nowait> <leader>to :tabonly<CR>
nnoremap <silent><nowait> <leader>tc :tabclose<CR>
nnoremap <silent><nowait> <leader>tb :-tabmove<CR>
nnoremap <silent><nowait> <leader>tm :+tabmove<CR>

" Registers
nnoremap <silent><nowait> Y yg_
nnoremap <silent><nowait> <leader>d "_d
vnoremap <silent><nowait> <leader>d "_d
nnoremap <silent><nowait> <leader>y "+y
vnoremap <silent><nowait> <leader>y "+y
nnoremap <silent><nowait> <leader>Y "+yg_
xnoremap <silent><nowait> <leader>p "_dP

" tmux-sessionizer
nnoremap <silent><nowait> <C-f> :silent ! tmux neww tmux-sessionizer<CR>
