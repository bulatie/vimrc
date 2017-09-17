""""""""""""""""""""""""""""""
" => plug section
""""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-repeat' " not figure out
Plug 'svermeulen/vim-easyclip'
Plug 'tpope/vim-surround'
Plug 'rking/ag.vim' " not figure out
Plug 'terryma/vim-expand-region'
Plug 'posva/vim-vue'
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips'
" Plug 'Valloric/YouCompleteMe'
call plug#end()

""""""""""""""""""""""""""""""
" => terryma/vim-multiple-cursors
""""""""""""""""""""""""""""""
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-o>'

""""""""""""""""""""""""""""""
" => vim-easyclip
""""""""""""""""""""""""""""""
let g:EasyClipShareYanks = 2
imap <c-v> <plug>EasyClipInsertModePaste
cmap <c-v> <plug>EasyClipCommandModePaste

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\'

map <leader>j :CtrlP<cr>
map <leader>l :CtrlPMRU<cr>
map <leader>k :CtrlPBuffer<cr>

""""""""""""""""""""""""""""""
" => nerdcommenter
""""""""""""""""""""""""""""""
let g:NERDSpaceDelims = 1

""""""""""""""""""""""""""""""
" => Emmet-vim
""""""""""""""""""""""""""""""
let g:user_emmet_complate_tag=1
let g:user_emmet_expandabbr_key='<c-e>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=40
let NERDTreeShowBookmarks=1
let g:nerdtree_tabs_open_on_console_startup=1
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
set updatetime=250

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gruvbox
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
