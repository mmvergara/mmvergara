set mouse=a
set number
imap jj <Esc>
if exists(':GuiFont')
    GuiFont! Consolas:h14:cANSI
endif
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

call plug#begin()
Plug 'navarasu/onedark.nvim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
call plug#end()

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
                              

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
nnoremap <C-t> :NERDTreeToggle<CR>
colorscheme onedark
