"function! Cond(Cond, ...)
"    let opts = get(a:000, 0, {})
"    return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
"  endfunction
"
""  https://github.com/junegunn/vim-plug
"call plug#begin()
"" The default plugin directory will be as follows:
""   - Vim (Linux/macOS): '~/.vim/plugged'
""   - Vim (Windows): '~/vimfiles/plugged'
""   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
"" You can specify a custom plugin directory by passing it as the argument
""   - e.g. `call plug#begin('~/.vim/plugged')`
""   - Avoid using standard Vim directory names like 'plugin'
"
"" Make sure you use single quotes
"
"" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
""  Plug 'junegunn/vim-easy-align'
"
"" https://github.com/tpope/vim-surround
"Plug 'tpope/vim-surround'
"
"" https://github.com/justinmk/vim-sneak
"Plug 'justinmk/vim-sneak'
"
"" https://github.com/vim-scripts/ReplaceWithRegister
"Plug 'vim-scripts/ReplaceWithRegister'
"
"" https://github.com/phaazon/hop.nvim
"Plug 'phaazon/hop.nvim'
"
"" https://github.com/matze/vim-move
"Plug 'matze/vim-move'
"
"" https://github.com/tpope/vim-repeat
"Plug 'tpope/vim-repeat'
"
"" https://github.com/tpope/vim-commentary
"Plug 'tpope/vim-commentary'
"
"" https://github.com/vim-airline/vim-airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"
"" https://github.com/github/copilot.vim
"Plug 'github/copilot.vim'
"
"" https://github.com/andymass/vim-matchup
"Plug 'andymass/vim-matchup'
"
"" https://github.com/gelguy/wilder.nvim
"if has('nvim')
"    function! UpdateRemotePlugins(...)
"     " Needed to refresh runtime files
"     let &rtp=&rtp
"     UpdateRemotePlugins
"    endfunction
"
"    Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
"  else
"    Plug 'gelguy/wilder.nvim'
"
"    " To use Python remote plugin features in Vim, can be skipped
"    Plug 'roxma/nvim-yarp'
"    Plug 'roxma/vim-hug-neovim-rpc'
"  endif
"
"" https://github.com/nvim-treesitter/nvim-treesitter
"" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"
"" File manager plugin
"Plug 'preservim/nerdtree'
"
"" https://github.com/sonph/onehalf
""  Plug 'sonph/onehalf', { 'rtp': 'vim' }
""  
"
"" https://github.com/sainnhe/everforest
"Plug 'sainnhe/everforest'
"
"
"" Initialize plugin system
"" - Automatically executes `filetype plugin indent on` and `syntax enable`.
"call plug#end()
"
"set clipboard+=unnamedplus
"
"" Disable commment continue on next line
"autocmd FileType * set formatoptions-=cro
"
"" https://gist.github.com/gleydson404/96d3142c9ce845c9475db7ec52b7e0b2
"set showmatch
"" Highlight matching brace
"set visualbell
"" Use visual bell (no beeping)
"set hlsearch
"" Highlight all search results
"set smartcase
"" Enable smart-case search
"set ignorecase
"" Always case-insensitive
"set incsearch
"" Searches for strings incrementally
"
"" Map <leader> to space
"let mapleader="\<space>"
"
"" Clear search highlighting with <esc>
"" nnoremap <esc> :noh<return><esc>
"
"" Ctrl z and y for undo and redo
"nnoremap <C-Z> u
"nnoremap <C-Y> <C-R>
"
"inoremap <C-Z> <C-O>u
"inoremap <C-Y> <C-O><C-R>
"
"" U for redo
"nnoremap U <C-R>
"
"" Relative numberings https://jeffkreeftmeijer.com/vim-number/ 
":set number
"
":augroup numbertoggle
":  autocmd!
":  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
":  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
":augroup END
"
"" Have j and k navigate visual lines rather than logical ones
"nmap j gj
"nmap k gk
"
"" I like using H and L for beginning/end of line
"nmap H ^
"nmap L $
"
"" matze/vim-move
"let g:move_key_modifier = 'C'
"let g:move_key_modifier_visualmode = 'C'
"
"" justinmk/vim-sneak
"let g:sneak#use_ic_scs = 1
"
"" phaacon/hop.nvim
"lua << EOF
"require('hop').setup()
"vim.cmd("hi HopNextKey guifg=#ff9900")
"vim.cmd("hi HopNextKey1 guifg=#ff9900")
"vim.cmd("hi HopNextKey2 guifg=#ff9900")
"EOF
"
"" https://github.com/justinmk/vim-sneak#how-can-i-replace-f-andor-t-with-one-character-sneak
"map f <Plug>Sneak_f
"map F <Plug>Sneak_F
"map t <Plug>Sneak_t
"map T <Plug>Sneak_T
"
""  map <Leader><Leader> :HopWord <CR>
"map <Leader>w <cmd>HopWord<CR>
"map <Leader>l <cmd>HopLine<CR>
"map <Leader>f <cmd>HopChar1<CR>
"map <Leader>s <cmd>HopChar2<CR>
"
"" vim-airline
"let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
"
"" THEME
"syntax on
"set t_Co=256
"set cursorline
"
"" sainnhe/everforest
"colorscheme everforest
"let g:airline_theme='everforest'
"
"if exists('+termguicolors')
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" set termguicolors
"endif
"
"if exists('g:vscode')
"    " VSCode
"else
"    " Neovim
"
"    " wilder.nvim
"    call wilder#setup({'modes': [':', '/', '?']})
"endif
"
"" Highlight on yank
"autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=200}
"
"" fzf
"set rtp+=/opt/homebrew/opt/fzf
"
"" Add jump to last position for all movements, not just jumps
"function! CustomJump(jump_type)
"  let current_position = getpos(".")
"  let g:last_position = current_position
"  execute 'normal! ' . a:jump_type
"endfunction
"
"nnoremap <leader>o :call CustomJump('<C-O>')<CR>
"nnoremap <leader>i :call CustomJump('<C-I>')<CR>
