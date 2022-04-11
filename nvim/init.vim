if $TERM == "xterm-kitty"
	silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0
	set termguicolors
	colorscheme monokai
	let g:lightline = {
				\ 'colorscheme': 'monokai_lightline',
				\}
	autocmd VimLeavePre * :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding-h=16 padding-v=8 
endif

" Show line numbers
set number
" Disable mode display under lightline
set noshowmode
" Enable cursor line highlight
set cursorline
set cursorcolumn

" Set editor settings
set shiftwidth=4
set tabstop=4
set expandtab
set scrolloff=10
set nowrap
set history=1000
