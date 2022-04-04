function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

" Begin plugin search
call plug#begin()

" Declare the list of plugins.
" Plug 'itspriddle/vim-marked'
" Plug 'SidOfc/mkdx'
Plug 'junegunn/goyo.vim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'reedes/vim-pencil'
Plug 'morhetz/gruvbox'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'vimwiki/vimwiki'
Plug 'fcpg/vim-waikiki'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
" Plug 'blindFS/vim-taskwarrior'
" Plug 'junegunn/limelight.vim'
Plug 'dracula/vim',{'as':'dracula'}
" Plug 'sickill/vim-monokai'
" Plug 'sts10/vim-pink-moon'
" Plug 'Yavor-Ivanov/airline-monokai-subtle.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'ntpeters/vim-better-whitespace'
Plug 'unblevable/quick-scope'
" Plug 'lifepillar/vim-solarized8'
" Plug 'ayu-theme/ayu-vim'
" Plug 'sainnhe/forest-night'
" Plug 'parkr/vim-jekyll'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'bwhelm/vim-listmode'
Plug 'dkarter/bullets.vim'
Plug 'lervag/vimtex'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-commentary'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'

" use normal easymotion when in vim mode
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
" use vscode easymotion when in vscode mode
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })

" List ends here.
call plug#end()

" General Preferences
set nocompatible
filetype plugin on
set hlsearch
set number
set ignorecase
let mapleader = ","
let maplocalleader = "\\"
set spell spelllang=en_us
set autowriteall
set history=999
set undolevels=999
set autoread
set termguicolors
syntax on
set list
set listchars=tab:•\ ,trail:•,extends:»,precedes:«
set nofoldenable
set conceallevel=0
set noshowmode
set mouse=a

" Python
" let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.8'

" Spell Check
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Background Color - Dark or Light
set background=dark
"   Nord colorscheme
" let g:nord_italic = 1
" colorscheme nord
" Tokyo Night
" let g:tokyonight_style = 'storm'
" colorscheme tokyonight
"   Forest Night
" let g:forest_night_enable_italic = 1
" let g:forest_night_disable_italic_comment = 1
" colorscheme forest-night
"   Gruvbox colorscheme
" let g:gruvbox_italic = '1'
" colorscheme gruvbox
"   Dracula colorscheme
colorscheme dracula
let g:airline_theme = 'dracula'
"   Monokai colorscheme
" colorscheme monokai
" let g:airline_theme = 'monokai_subtle'
"   Solarized8 Colorscheme
" colorscheme solarized8_flat
" let g:solarized_statusline = 'flat'
" let g:solarized_termtrans = 1
" Ayu Theme - Options are light, mirage, or dark
" let ayucolor="mirage"
" colorscheme ayu
" set termguicolors
" Pink Moon
"colorscheme pink-moon

" Format Options
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Vim Wiki
" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Vim Waikiki
let g:waikiki_roots = ['~/vimwiki']
let g:waikiki_default_maps = 1

" Vim Pandoc
let g:pandoc#filetypes#pandoc_markdown = 1
let g:pandoc#folding#mode = 'syntax'
let g:pandoc#completion#bib#mode = 'citeproc'
let g:pandoc#toc#position = 'left'
let g:pandoc#biblio#use_bibtool = 1
let g:pandoc#completion#bib#use_preview = 1
let g:pandoc#folding#fold_yaml = 0
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#syntax#conceal#use = 0

" Bullet.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'pandoc'
    \]
let g:bullets_delete_last_bullet_if_empty = 0

" MKDX
" let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
"                        \ 'enter': { 'shift': 1 },
"                        \ 'links': { 'external': { 'enable': 1 } },
"                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
"                        \ 'fold': { 'enable': 1 } }

" Vim Airline
" let g:airline#extension#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" Vim Lightline
let g:lightline = {
	\ 'colorscheme': 'darcula',
	\ }

" Vim Pencil
let g:pencil#wrapModeDefault = 'soft'
augroup pencil
 autocmd!
 " autocmd FileType markdown,mkd call pencil#init()
 autocmd FileType tex call pencil#init()
augroup END

" Markdown Preview
nmap <C-s> <Plug>MarkdownPreview
nmap <C-P> :w<CR>:!make<CR>:!open build/paper.pdf<CR><CR>

" Goyo
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!

" ALE
" let g:ale_fixers = ['trim_whitespace']
" let g:ale_fix_on_save = 1

" Quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Latex
" \ll to compile
let g:tex_flavor = 'latex'
let g:tex_conceal = ""
let g:vimtex_view_method = 'skim'
let g:vimtex_view_skim_activate = 0
let g:vimtex_view_skim_reading_bar = 0

" COC and Ultisnips
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
nmap <C-n> :vsp ~/.config/nvim/UltiSnips <CR>

" Colors
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight SpecialKey ctermbg=none
highlight texMathMatcher ctermbg=none
highlight texMathZoneX ctermbg=none
highlight texRefLabel ctermbg=none
highlight texStatement ctermbg=none
hi Normal guibg=NONE ctermbg=NONE

" EasyMotion
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1

" Telescope
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
