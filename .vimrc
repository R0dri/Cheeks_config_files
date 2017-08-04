set nocompatible              " be iMproved, required
filetype off                  " required



"================================ VIM PLUGINS ============================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Thefollowing are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
"Plugin 'joequery/Stupid-EasyMotion'
Plugin 'gioele/vim-autoswap'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required


"================================ VIM SETTINGS ============================
syntax on
autocmd BufNewFile,BufRead *.vb set ft=vbnet
autocmd BufNewFile,BufRead *.vb set syntax=vb
autocmd BufNewFile,BufRead *.cls set syntax=vb
"set rnu
"set number
noremap Q <Nop>
noremap ; l
noremap l k
noremap k j
noremap j h
noremap h ^
"noremap h 0
noremap f $
noremap J <Nop>
"noremap h J

noremap <Tab> >> 
noremap <S-Tab> <<

"noremap K } 
"noremap L {

noremap L <kPAGEUP>
noremap K <kPAGEDOWN>

let mapleader = "\<Space>"
nnoremap <Leader>s :w<CR>
nnoremap <Leader>o o
nnoremap <Leader>i i
nnoremap <Leader>O O
nnoremap <Leader>I I

"nnoremap <Leader>l <C-y>
"nnoremap <Leader>k <C-e>
nnoremap I <Nop>
nnoremap O <Nop>
"nnoremap <SPACE> <Nop>
nnoremap o <C-y>
nnoremap i <C-e>
 

noremap <CR> i<CR><ESC>
"noremap <C-m> <ESC>
"imap <S-Space> <Esc>
"imap <C-;> <ESC>
"imap <Tab> <ESC>
"set autoindent
"set smartindent
"set cindent
set go+=b
set nowrap
filetype plugin indent on

"================================ EasyMotion SETTINGS ====================
 "<Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
"map <Leader>l <Plug>(easymotion-bd-jk)
"nmap <Leader>l <Plug>(easymotion-overwin-line)

"map <Leader>l <Plug>(easymotion-bd-jk)
"nmap <Leader>l <Plug>(easymotion-overwin-line)
" JK motions: Line motions
map <Leader>k <Plug>(easymotion-j)
map <Leader>l <Plug>(easymotion-k)
map <Leader>; <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-linebackward)
" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)

" Stupid Easymotion shortcut
"map <Leader>w <Leader><Leader>w
"map <Leader>W <Leader><Leader>W

"============ easy motion search features =================
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)



"nnoremap <Leader>k <Leader><Leader>j 
"nnoremap <Leader>l <Leader><Leader>k

"show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
"set showcmd

"Toggle relative numbering, and set to absolute on loss of focus or insert
"mode
"set rnu
"function! ToggleNumbersOn()
    "set nu!
		"set rnu
"endfunction
"function! ToggleRelativeOn()
    "set rnu!
"set nu
"endfunction

"autocmd FocusLost * call ToggleRelativeOn()
"autocmd FocusGained * call ToggleRelativeOn()
"autocmd InsertEnter * call ToggleRelativeOn()
"autocmd InsertLeave * call ToggleRelativeOn()

" These lines setup the environment to show graphics and colors correctly.
set nocompatible

" Set syntax highlighting for specific file types
"autocmd BufRead,BufNewFile *.md set filetype=markdown

"=============== SYSTEM CLIPBOARD COPY & PASTE SUPPORT ===============
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

nnoremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
nnoremap <expr> yy (v:register ==# '"' ? '"+' : '') . 'yy'
nnoremap <expr> Y (v:register ==# '"' ? '"+' : '') . 'Y'
noremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
noremap <expr> Y (v:register ==# '"' ? '"+' : '') . 'Y'

nnoremap <expr> p (v:register ==# '"' ? '"+' : '') . 'p'
noremap <expr> p (v:register ==# '"' ? '"+' : '') . 'p'

nnoremap <expr> d (v:register ==# '"' ? '"+' : '') . 'd'
noremap <expr> d (v:register ==# '"' ? '"+' : '') . 'd'


"=============================== POWERLINE ===============================
set  rtp+=/usr/local/lib/python3.5/site-packages/powerline/binings/vim/
set laststatus=2
set t_Co=256
"set background=dark

"let g:solarized_termtrans = 1
"colorscheme solarized


"let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
"python del powerline_setup
 
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
    autocmd!
      au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
        augroup END
endif

"=============== Nerd Commenter =================
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': "'",'right': '' } }
		
"set laststatus=2 " Always display the
"istatusline in all windows
" set guifont=Inconsolata\ for\ Powerline:h14
"set noshowmode " Hide the default mode text

" (e.g. -- INSERT -- below the statusline)
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'

"set encoding=utf-8

"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8
				  


"===================== COLORSCHEME ====================

colorscheme darkblue


"color file - darkblue2_modified
           
"highlight clear

set t_Co=256

    "if exists("syntax_on")
      "syntax reset
  "endif

  "let g:colors_name =
  "lucario"

  "hi Cursor       cterm=NONE guifg=#2b3e50 guibg=#f8f8f2
  "hi Visual       ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#19242f gui=NONE
  "hi CursorLine   ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#405160 gui=NONE
  "hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#405160 gui=NONE
  "hi ColorColumn  ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#405160 gui=NONE
  "hi LineNr       ctermfg=223 ctermbg=NONE cterm=NONE guifg=#929ba1 guibg=#2b3e50 gui=NONE
  "hi VertSplit    ctermfg=60 ctermbg=60 cterm=NONE guifg=#66747f guibg=#66747f gui=NONE
  "hi MatchParen   ctermfg=203 ctermbg=NONE cterm=underline guifg=#ff6541 guibg=NONE gui=underline
  "hi StatusLine   ctermfg=231 ctermbg=60 cterm=bold guifg=#f8f8f2 guibg=#66747f gui=bold
  "hi StatusLineNC ctermfg=231 ctermbg=60 cterm=NONE guifg=#f8f8f2 guibg=#66747f gui=NONE
  "hi Pmenu        ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=#19242f gui=NONE
  "hi PmenuSel     ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#66747f gui=NONE
  "hi IncSearch    ctermfg=23 ctermbg=186 cterm=NONE guifg=#2b3e50 guibg=#e6db74 gui=NONE
  "hi Search       ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
  "hi Directory    ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
  "hi Folded       ctermfg=68 ctermbg=23 cterm=NONE guifg=#5c98cd guibg=#2b3e50 gui=NONE

 "Colors for tabs in cterm
  "hi TabLineFill  ctermfg=12
  "hi TabLine      ctermfg=17 ctermbg=11 cterm=NONE
  "hi TabLineSel   ctermfg=8 ctermbg=14 cterm=NONE

  "hi Normal       ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=#2b3e50 gui=NONE
  "hi Boolean      ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
  "hi Character    ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
  "hi Comment      ctermfg=44 ctermbg=NONE cterm=NONE guifg=#5c98cd guibg=NONE gui=NONE
  "hi Conditional  ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
  "hi Constant     ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
  "hi Define       ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
  "hi DiffAdd      ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#478815 gui=bold
  "hi DiffDelete   ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0c10 guibg=NONE gui=NONE
  "hi DiffChange   ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#26446c gui=NONE
  "hi DiffText     ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
  "hi ErrorMsg     ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
  "hi WarningMsg   ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
  "hi Float        ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
  "hi Function     ctermfg=71 ctermbg=NONE cterm=NONE guifg=#72c05d guibg=NONE gui=NONE
  "hi Identifier   ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
  "hi Keyword      ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
  "hi Label        ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
  "hi NonText      ctermfg=74 ctermbg=NONE cterm=NONE guifg=#61bbc8 guibg=#354758 gui=NONE
  "hi Number       ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
  "hi Operator     ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
  "hi PreProc      ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
  "hi Parameter    ctermfg=214 ctermbg=NONE cterm=NONE guifg=#ffab28 guibg=NONE gui=italic
  "hi Special      ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
  "hi SpecialKey   ctermfg=74 ctermbg=59 cterm=NONE guifg=#61bbc8 guibg=#405160 gui=NONE
  "hi Statement    ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
  "hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
  "hi String       ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
  "hi Tag          ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
  "hi Title        ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
  "hi Todo         ctermfg=68 ctermbg=NONE cterm=inverse,bold guifg=#5c98cd guibg=NONE gui=inverse,bold
  "hi Type         ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
  "hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

 "HTML
  "hi htmlTag          ctermfg=15 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
  "hi htmlEndTag       ctermfg=15 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
  "hi htmlTagName      ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
  "hi htmlArg          ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
  "hi htmlSpecialChar  ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE

 "JavaScript
  "hi javaScriptFunction      ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
  "hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
  "hi javaScriptBraces        ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

 "CSS
  "hi cssURL           ctermfg=214 ctermbg=NONE cterm=NONE guifg=#ffab28 guibg=NONE gui=italic
  "hi cssFunctionName  ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
  "hi cssColor         ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
  "hi cssPseudoClassId ctermfg=71 ctermbg=NONE cterm=NONE guifg=#72c05d guibg=NONE gui=NONE
  "hi cssClassName     ctermfg=71 ctermbg=NONE cterm=NONE guifg=#72c05d guibg=NONE gui=NONE
  "hi cssValueLength   ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
  "hi cssCommonAttr    ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
  "hi cssBraces        ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

