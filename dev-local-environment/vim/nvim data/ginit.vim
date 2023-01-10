set mouse=a
set number
imap jj <Esc>
GuiLinespace 1


if exists(':GuiFont')
    GuiFont! Consolas:h14:cANSI
endif

if exists(':GuiScrollBar')
    GuiScrollBar 1
endif



call plug#begin()

Plug 'navarasu/onedark.nvim'

call plug#end()
    
colorscheme onedark