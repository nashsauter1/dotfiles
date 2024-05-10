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
Plug 'arcticicestudio/nord-vim'
" Plkg 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'reedes/vim-pencil'
" Plug 'morhetz/gruvbox'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'vimwiki/vimwiki'
" Plug 'fcpg/vim-waikiki'
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
Plug 'preservim/vim-markdown'
" Plug 'plasticboy/vim-markdown'
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'unblevable/quick-scope'
" Plug 'lifepillar/vim-solarized8'
" Plug 'ayu-theme/ayu-vim'
" Plug 'sainnhe/forest-night'
" Plug 'parkr/vim-jekyll'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'bwhelm/vim-listmode'
Plug 'dkarter/bullets.vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'tpope/vim-commentary'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'akinsho/bufferline.nvim'
Plug 'neomutt/neomutt.vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'lambdalisue/fern.vim'
" Plug 'karb94/neoscroll.nvim'
Plug 'ggandor/leap.nvim'

" use normal easymotion when in vim mode
Plug 'easymotion/vim-easymotion'

" Zen Mode
Plug 'folke/zen-mode.nvim'


" List ends here.
call plug#end()

" General Preferences
set nocompatible
filetype plugin on
set hlsearch
set number
set ignorecase
let mapleader = " "
let maplocalleader = "\\"
set spell spelllang=en_us
set nospell
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
set clipboard=unnamed
set signcolumn=no

" Python
" let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.8'

" Spell Check
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Background Color - Dark or Light
" set background=dark
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
" colorscheme dracula
" let g:airline_theme = 'dracula'
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
" Catpuccin
" colorscheme catppuccin-latte
" colorscheme catppuccin-frappe
colorscheme catppuccin-macchiato
" colorscheme catppuccin-mocha

" Format Options
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Vim Wiki
" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Vim Waikiki
let g:waikiki_roots = ['~/vimwiki']
let g:waikiki_default_maps = 1

" Vim Pandoc
" let g:pandoc#filetypes#pandoc_markdown = 0
" let g:pandoc#folding#mode = 'syntax'
" let g:pandoc#completion#bib#mode = 'citeproc'
" let g:pandoc#toc#position = 'left'
" let g:pandoc#biblio#use_bibtool = 1
" let g:pandoc#completion#bib#use_preview = 1
" let g:pandoc#folding#fold_yaml = 0
" let g:pandoc#modules#disabled = ["folding"]
" let g:pandoc#modules#enabled = []
" let g:pandoc#syntax#conceal#use = 0

" Bullet.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'pandoc'
    \]
let g:bullets_delete_last_bullet_if_empty = 0

" Vim Markdown
let g:vim_markdown_folding_style_pythonic = 0
let g:vim_markdown_toc_autofit = 1


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
			\ 'colorscheme': 'catppuccin',
	\ }

" Vim Pencil
let g:pencil#wrapModeDefault = 'soft'
augroup pencil
 autocmd!
 autocmd FileType markdown,mkd call pencil#init()
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

" Zen Mode
lua << EOF
  require("zen-mode").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    window = {
    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    -- height and width can be:
    -- * an absolute number of cells when > 1
    -- * a percentage of the width / height of the editor when <= 1
    -- * a function that returns the width or the height
    width = 110, -- width of the Zen window
    height = 0.9, -- height of the Zen window
    -- by default, no options are changed for the Zen window
    -- uncomment any of the options below, or add other vim.wo options you want to apply
    options = {
      signcolumn = "no", -- disable signcolumn
      number = false, -- disable number column
      -- relativenumber = false, -- disable relative numbers
      -- cursorline = false, -- disable cursorline
      -- cursorcolumn = false, -- disable cursor column
      -- foldcolumn = "0", -- disable fold column
      -- list = false, -- disable whitespace characters
    }
    },
    plugins = {
    -- disable some global vim options (vim.o...)
    -- comment the lines to not apply the options
    options = {
      enabled = true,
      ruler = false, -- disables the ruler text in the cmd line area
      showcmd = false, -- disables the command in the last line of the screen
    },
    alacritty = {
      enabled = true,
      font = "+2", -- font size
    }
  }
  }
EOF

" Vim Neo Scroll
lua require('neoscroll').setup()

" Quickscope
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Leap.nvim
lua require('leap').add_default_mappings()

" Latex
" \ll to compile
let g:tex_flavor = 'latex'
let g:tex_conceal = ""
let g:vimtex_view_method = 'skim'
let g:vimtex_view_skim_activate = 0
let g:vimtex_view_skim_reading_bar = 0

" COC and Ultisnips
" inoremap <silent><expr> <TAB>
      " \ pumvisible() ? "\<C-n>" :
      " \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      " \ <SID>check_back_space() ? "\<TAB>" :
      " \ coc#refresh()
" 
" function! s:check_back_space() abort
  " let col = col('.') - 1
  " return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" let g:coc_snippet_next = '<tab>'
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
" nmap <C-n> :vsp ~/.config/nvim/UltiSnips <CR>

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
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" Vim Line Diagnostics
lua <<EOF
vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]
EOF


" Mason
lua <<EOF
require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = { "ltex" },
}

require("lspconfig").ltex.setup {}

EOF

set termguicolors
" lua << EOF
" require("bufferline").setup{}
" EOF
