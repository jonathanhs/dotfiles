"""Begin Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"List of plugins
Plugin 'gmarik/Vundle.vim'                  "Main vundle plugin
Plugin 'Raimondi/delimitMate'               "Insert matching braces
Plugin 'gregsexton/MatchTag'                "HTML match tag
Plugin 'airblade/vim-gitgutter'             "Git diff inside Vim
Plugin 'tpope/vim-fugitive'                 "Git command
Plugin 'kylef/apiblueprint.vim'             "API blueprint syntax highlighting
Plugin 'scrooloose/nerdtree'                "File navigation
    map <C-n> :NERDTreeToggle<CR>
    autocmd bufenter * 
      \ if (winnr("$") == 1 &&
          \ exists("b:NERDTreeType") && 
          \ b:NERDTreeType == "primary") |
          \ q |
      \ endif
Plugin 'kien/ctrlp.vim'                     "Fuzzy-finder file
    set wildignore+=*/tmp/*,*.swp,*.zip
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ }
Plugin 'terryma/vim-multiple-cursors'       "Multiple cursor
    let g:multi_cursor_start_key='<F2>'
Plugin 'vim-airline/vim-airline-themes'     "Vim airline themes
Plugin 'bling/vim-airline'                  "Better status line
    set laststatus=2
    let g:airline#extensions#tabline#enabled=1
    let g:airline_theme='light'
    let g:airline_left_sep='▶'
    function! AirlineInit()
        let g:airline_section_a = airline#section#create(['mode',' ','branch'])
        let g:airline_section_b = airline#section#create(['%f'])
        let g:airline_section_c = airline#section#create(['filetype'])
        let g:airline_section_x = airline#section#create(['%P'])
        let g:airline_section_y = airline#section#create(['%B'])
        let g:airline_section_z = airline#section#create(['%l'])
    endfunction
    autocmd VimEnter * call AirlineInit()

call vundle#end()
filetype plugin on
"""End Vundle

"Available Commands
""Exit""
" :q or :q!     Quit
" :w or :w!     Save
" :wq           Save and quit
"
""Text""
" i             Insert text
" dd            Delete line
" y             Copy
" p             Paste
" u             Undo
" e             Forward per word
" b             Backward per word
" :e {filename} New file in insert mode
" /{pattern}    Search

"General settings
set cursorline          "Highlight current line
set hls                 "Highlight search
set cc=80               "Set column to 80 characters marked with colored line
set tw=80               "Automatic word wrapping
set relativenumber      "Display line numbers relative to the line with the
                        "cursor
set number              "Display line numbers
colorscheme jellybeans  "Change colorscheme from default to jellybeans
syntax on               "Colored programming syntax
highlight ColorColumn ctermbg=124

"Tabspacing
set ts=4                "Set tabspacing to be 4
set expandtab           "Expand tabs into spaces
set softtabstop=4       "Backspace -> delete 4 spaces

"Folds
set foldenable          "Enable folding
set foldlevelstart=0    "Start out with everything folded
set foldmethod=syntax   "Fold by per-language-syntax
let g:php_folding=1     "PHP folding

"If we forget to open file with sudo
cmap w!! %!sudo tee > /dev/null %

"Set leader to ,
let mapleader=","
let g:mapleader=","

"Find all todo
noremap <Leader>t :noautocmd vimgrep /TODO/j **/*\.php <CR>:cw<CR>

"Folding
nnoremap <Space> zA
vnoremap <Space> zA
nnoremap <c-x> za
vnoremap <c-x> za

"Window split
noremap <silent> <S-v> :vsplit<CR>
noremap <silent> <S-h> :split<CR>

"Tabs
noremap <silent> <S-n> :tabnext<CR>
noremap <silent> <S-p> :tabprevious<CR>
noremap <silent> <S-t> :tabnew<CR>
noremap <silent> <S-x> :tabclose<CR>
