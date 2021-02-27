set nocompatible
set exrc
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number relativenumber
set nu rnu
set colorcolumn=110

" makes vim start where it was closed
" https://askubuntu.com/questions/202075/how-do-i-get-vim-to-remember-the-line-i-was-on-when-i-reopen-a-file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif



highlight ColorColumn ctermbg=darkgray
filetype plugin on
syntax on

" enable spellchecking



"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 1
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

"autostart colorizer
"let g:colorizer_auto_color = 1


call plug#begin('~/.vim/plugged')
" latex support
 Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
 
 " Grammar checking
 Plug 'rhysd/vim-grammarous'

" Plug 'lervag/vimtex'


" Make sure you use single quotes
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-easy-align'
" Highlight current paragraph and dim rest of file
 Plug 'junegunn/limelight.vim'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
" Plug 'edkolev/promptline.vim'

 Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
 Plug 'vimwiki/vimwiki'

" colorize hex representing colors in various files
Plug 'chrisbra/Colorizer'

call plug#end()

