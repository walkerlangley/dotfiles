" =========================================================================================
" Plugin Management using vim-plug
" ========================================================================================

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'crusoexia/vim-javascript-lib'

" Any valid git URL is allowed
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/tomasr/molokai'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/jelera/vim-javascript-syntax'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/reedes/vim-colors-pencil'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/ntpeters/vim-better-whitespace'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/Shougo/neocomplete.vim'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/darthmall/vim-vue'
Plug 'https://github.com/fatih/vim-go'
Plug 'https://github.com/nsf/gocode'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/sonph/onehalf'
"Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/suan/vim-instant-markdown'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'https://github.com/ElmCast/elm-vim'
"Plug 'https://github.com/w0rp/ale'
"
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'hzchirs/vim-material'
Plug 'https://github.com/NewProggie/NewProggie-Color-Scheme'
Plug 'https://github.com/roosta/vim-srcery'
Plug 'https://github.com/Marfisc/vorange'
Plug 'https://github.com/jacoborus/tender.vim'
Plug 'https://github.com/chriskempson/base16-vim'
"Plug 'bagrat/vim-workspace'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  " This is basically neocomplete for nvim since nvim doesn't support lua

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { dark'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()



" ============================= VIM Basic Settings ===============================



" ========================================================================================
" TAB settings.
" ========================================================================================
" 1 tab = 2 spaces
set tabstop=2
set shiftwidth=2

" The number of spaces a tab counts for WHEN EDITING (ie in insert mode)
set softtabstop=2


" User spaces instead of tabs
set expandtab
set showtabline=2
"set termguicolor

" ========================================================================================
" Some general settings.
" ========================================================================================
syntax enable
let base16colorspace=256  " Access colors present in 256 colorspace

"colorscheme molokai
" colorscheme onehalfdark
"colorscheme gruvbox
"colorscheme vim-material
"colorscheme newproggie
"colorscheme srcery
"colorscheme vorange
"colorscheme tender
colorscheme base16-default-dark

"let g:molokai_original = 1
let g:rehash256 = 1

" Make backspace / delete work
set backspace=indent,eol,start

" Set line numbers
set number

" Set ligatures with Fira Code (ie fancy triple equal instead of ===)
" the silent! is to ignore errors
"silent! set macligatures

"set guifont=Fira\ Code:h14
set encoding=utf-8
highlight htmlArg gui=italic
highlight Comment gui=italic
highlight Type    gui=italic
" set htmlArgs in jsx to italic and reset their color to gruvbox aqua
hi xmlAttrib cterm=italic ctermfg=14
"hi xmlAttrib cterm=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
"hi jsArrowFunction font='Fira\ Code'
" Proper syntax highlighting for javascript
let g:jsx_ext_required = 0

" Highlight words that match search
set hlsearch

" Allow the use of the mouse
set mouse=a

" Always show current position
set ruler

" redraw only when needed (makes macros faster)
set lazyredraw

" Show the match of a paren, bracket, brace
set showmatch

" Keeps 7 lines above and below the cursor to prevent cursor from being the
" top or bottom line
set so=7

" Ignore case when searching
set ignorecase

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set the statusline of vim-airline to alwasy show
set laststatus=2
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
"let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" ===============================================================
" Prettier configuration
" ===============================================================
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql Prettier
"let g:prettier#config#bracket_spacing = 'true'
"let g:prettier#config#esproposal_decorators = 'true'


" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" ===============================================================
" Change the leader key
" ===============================================================
 let mapleader = "\<Space>"

" ===============================================================
" Autocomplete with Neocomplete
" ===============================================================
 let g:neocomplete#enable_at_startup = 1
" ===============================================================
" Some custom keybindings
" ===============================================================

" Fast Saving
nmap <leader>w :w!<CR>

" Map `jk` to esc and add in :FixWhitespace
imap jk <esc>l:StripWhitespace<CR>

" Move a line up or down with `ctrl+j(k)`
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
inoremap <C-j> <Esc>:m +1<CR>
inoremap <C-k> <Esc>:m -2<CR>
vnoremap <C-j> :m '>+1<CR>
vnoremap <C-k> :m '<-2<CR>

" Surround word under cursor with " or '
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Remove highlights
nmap <leader>q :nohl<CR>

" Make moving to beginning and end of line easier
nnoremap H ^
nnoremap L $

"center after searching
noremap n nzz
noremap N Nzz

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Switch tabs
nmap dj :tabprevious<CR>
nmap dk :tabnext<CR>

" Toggle NERDTree bar with space v
nnoremap <leader>v :NERDTreeToggle<CR>

" Reload vimrc with space r
nnoremap <leader>r :source $MYVIMRC<CR>

" Select All with space a
nnoremap <leader>a ggVG<CR>

" Copy text in visual mode to clipboard
noremap <leader>y "*y

" Paste text in from clipboard
noremap <leader>p "*p



" Show special characters in vim
set listchars=tab:▸\ ,eol:¬
set list


let g:go_fmt_command = "goimports"

" set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
"let g:ale_linters = {'javascript': ['eslint']}
" ======================================
" Ack Searching and cope displaying
" ======================================

" User the the_silver_searcher if possible (much faster than Ack)
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" When you press `space f`, you'll run :Ack on the word under the cursor
map <leader>f :Ack<CR>

filetype plugin on


" ========================================================================================
" Vim Workspace Settings
" ========================================================================================
"
" let g:workspace_powerline_separators = 1
" let g:workspace_tab_icon = "\uf00a"
" let g:workspace_left_trunc_icon = "\uf0a8"
" let g:workspace_right_trunc_icon = "\uf0a9""
" let g:workspace_buffer_current = "#565656"

" ========================================================================================
" Some custom functions.
" ========================================================================================

" Change color scheme when entering and exiting Goyo
function! s:goyo_enter()
	colorscheme pencil
endfunction

function! s:goyo_leave()
        colorscheme molokai
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Map ctrl + m to launch markdown preview
let vim_markdown_preview_hotkey='<S-p>'

" NERDTree stuff, to keep the NERDTree window open when a file is selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if the only window left open is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:sol = {
  \"gui": {
    \"base03": "#002b36",
    \"base02": "#073642",
    \"base01": "#586e75",
    \"base00": "#657b83",
    \"base0": "#839496",
    \"base1": "#93a1a1",
    \"base2": "#eee8d5",
    \"base3": "#fdf6e3",
    \"yellow": "#b58900",
    \"orange": "#cb4b16",
    \"red": "#dc322f",
    \"magenta": "#d33682",
    \"violet": "#6c71c4",
    \"blue": "#268bd2",
    \"cyan": "#2aa198",
    \"green": "#719e07"
  \},
  \"cterm": {
    \"base03": 8,
    \"base02": 0,
    \"base01": 10,
    \"base00": 11,
    \"base0": 12,
    \"base1": 14,
    \"base2": 7,
    \"base3": 15,
    \"yellow": 3,
    \"orange": 9,
    \"red": 1,
    \"magenta": 5,
    \"violet": 13,
    \"blue": 4,
    \"cyan": 6,
    \"green": 2
  \}
\}
function! DeviconsColors(config)
  let colors = keys(a:config)
  augroup devicons_colors
    autocmd!
    for color in colors
      if color == 'normal'
        exec 'autocmd FileType nerdtree,startify if &background == ''dark'' | '.
          \ 'highlight devicons_'.color.' guifg='.g:sol.gui.base01.' ctermfg='.g:sol.cterm.base01.' | '.
          \ 'else | '.
          \ 'highlight devicons_'.color.' guifg='.g:sol.gui.base1.' ctermfg='.g:sol.cterm.base1.' | '.
          \ 'endif'
      elseif color == 'emphasize'
        exec 'autocmd FileType nerdtree,startify if &background == ''dark'' | '.
          \ 'highlight devicons_'.color.' guifg='.g:sol.gui.base1.' ctermfg='.g:sol.cterm.base1.' | '.
          \ 'else | '.
          \ 'highlight devicons_'.color.' guifg='.g:sol.gui.base01.' ctermfg='.g:sol.cterm.base01.' | '.
          \ 'endif'
      else
        exec 'autocmd FileType nerdtree,startify highlight devicons_'.color.' guifg='.g:sol.gui[color].' ctermfg='.g:sol.cterm[color]
      endif
      exec 'autocmd FileType nerdtree,startify syntax match devicons_'.color.' /\v'.join(a:config[color], '|').'/ containedin=ALL'
    endfor
  augroup END
endfunction
let g:devicons_colors = {
  \'normal': ['', '', '', '', ''],
  \'emphasize': ['', '', '', '', '', '', '', '', '', '', ''],
  \'yellow': ['', '', ''],
  \'orange': ['', '', '', 'λ', '', ''],
  \'red': ['', '', '', '', '', '', '', '', ''],
  \'magenta': [''],
  \'violet': ['', '', '', ''],
  \'blue': ['', '', '', '', '', '', '', '', '', '', '', '', ''],
  \'cyan': ['', '', '', ''],
  \'green': ['', '', '', '']
\}
call DeviconsColors(g:devicons_colors)

function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Set this if you want the awesome base16 colorscheme, but no italic with
" operator mono
"if filereadable(expand("~/.vimrc_background"))
  "let base16colorspace=256
  "source ~/.vimrc_background
"endif
