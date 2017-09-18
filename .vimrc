""""" vundle vim plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                           " main vundle plugin
Plugin 'airblade/vim-gitgutter'                         " git diff inside vim
Plugin 'gregsexton/MatchTag'                            " html match tag
Plugin 'kien/ctrlp.vim'                                 " fuzzy-finder file
    set wildignore+=*/tmp/*,*.pyc,*.so,*.swp,*.zip
    let g:ctrlp_custom_ignore = {
        \ 'dir': '\v[\/](venv|\.(git|hg|svn))$'
        \ }
Plugin 'kylef/apiblueprint.vim'                         " api blueprint syntax highlighting
Plugin 'Raimondi/delimitMate'                           " insert mode auto-completion
Plugin 'scrooloose/nerdtree'                            " file navigation
    map <C-n> :NERDTreeToggle<CR>
    autocmd bufenter *
        \ if (winnr("$") == 1 &&
            \ exists("b:NERDTree") &&
            \ b:NERDTree.isTabTree()) |
                \ q |
        \ endif
Plugin 'tpope/vim-fugitive'                             " git wrapper
Plugin 'vim-airline/vim-airline'                        " vim status line
Plugin 'vim-airline/vim-airline-themes'                 " vim airline themes
    set laststatus=2
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_theme = 'molokai'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '◀'
    let g:airline_left_alt_sep = '»'
    let g:airline_right_alt_sep = '«'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.readonly = '🔒'
    let g:airline#extensions#tabline#enabled = 1
    function! AirlineInit()
        let g:airline_section_a = airline#section#create(['mode',' ','branch'])
        let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
        let g:airline_section_c = airline#section#create(['filetype'])
        let g:airline_section_x = airline#section#create(['%P'])
        let g:airline_section_y = airline#section#create(['%B'])
        let g:airline_section_z = airline#section#create_right(['%l','%c'])
    endfunction
    autocmd VimEnter * call AirlineInit()
Plugin 'vim-syntastic/syntastic'                        " syntax checking plugin
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_check_on_wq = 0
    let g:syntastic_check_on_open = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_always_populate_loc_list = 1

"Plugin 'majutsushi/tagbar'                             class outline viewer
"Plugin 'terryma/vim-multiple-cursors'                  vim multiple cursors
"Plugin 'Valloric/YouCompleteMe'                        code-completion engine

call vundle#end()
filetype plugin indent on


""""" general settings
" :q or :q!         quit
" :w or :w!         save
" :wq               save and quit
" i                 insert text
" dd                delete line
" y                 copy
" p                 paste
" u                 undo
" e                 forward per word
" b                 backward per word
" z=                spelling alternatives
" :e {filename}     new file in insert mode
" /{pattern}        search

set backspace=indent,eol,start      " enable backspace
set cc=80                           " 80 chars limit indicator
set clipboard=unnamed               " copying from terminal buffer
set cursorcolumn                    " highlight cursor column
set cursorline                      " highlight cursor line
set history=500                     " 500 past commands
set number                          " display line numbers
set relativenumber                  " relative line number
set ruler                           " display cursor position
set showmatch                       " display matching tag cursor
set tw=80                           " automatic word wrapping
set undolevels=1000                 " undo max number
set wildmode=longest,list           " display tab completion

" extra settings
syntax on                           " colored programming syntax
colorscheme jellybeans              " vim color scheme
highlight ColorColumn ctermbg=124
highlight CursorColumn ctermbg=236

" eliminate trailing whitespaces
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" folds
"set foldenable                     " enable folding
"set foldlevelstart=0               " start out with everything folded
"set foldmethod=indent              " fold by indentation
set nofoldenable                    " disable folding

" indentation
set autoindent                      " auto indentation
set copyindent                      " copy indentation

" search
set hlsearch                        " highlight search occurrences
set incsearch                       " display all search occurrences
set smartcase

" spelling
set spell                           " enable spelling
setlocal spell spelllang=en_us      " set spelling to US English

" tabs
set expandtab                       " expand tabs into spaces
set softtabstop=4                   " backspace -> delete 4 spaces
set ts=4                            " set tab spacing to be 4


""""" shortcuts
" set leader to ,
let mapleader=","
let g:mapleader=","

" open and save file with sudo permission
cmap w!! w !sudo tee % > /dev/null

" find all todo
noremap <Leader>t :noautocmd vimgrep /TODO/j **/*\.py **/*\.php <CR>:cw<CR>

" folds
nnoremap <Space> zA
vnoremap <Space> zA
nnoremap <c-x> za
vnoremap <c-x> za

" tabs
noremap <silent> <S-n> :tabnext<CR>
noremap <silent> <S-p> :tabprevious<CR>
noremap <silent> <S-t> :tabnew<CR>
noremap <silent> <S-x> :tabclose<CR>

" window split
noremap <silent> <S-v> :vsplit<CR>
noremap <silent> <S-h> :split<CR>

" auto-create non-existing directory when opening a file
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' &&
        \ !isdirectory(expand("%:h")) | execute
        \ "silent! !mkdir -p ".shellescape(expand('%:h'), 1) | redraw! | endif
augroup END
