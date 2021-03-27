"Plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'roxma/vim-hug-neovim-rpc'
Plug 'leafgarland/typescript-vim'
Plug 'yuezk/vim-js'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'qpkorr/vim-bufkill'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'junegunn/fzf.vim', 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
"Plug 'garbas/vim-snipmate'
Plug 'mattn/emmet-vim'
Plug 'zchee/deoplete-jedi'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug '~/.fzf'
Plug 'chrisbra/Colorizer'
"Plug 'fatih/vim-go'
Plug 'unblevable/quick-scope'
" Colorschemes
" Initialize plugins
call plug#end()
autocmd filetype cpp inoremap <F4> <ESC>:w <bar> exec '!make '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp inoremap <F5> <ESC>:w <bar> exec '!./'.shellescape('%:r')<CR>
autocmd BufRead,BufNewFile *.ts,*.htm,*.html,*.php,*.pug,*.ejs,*.yml,*.yaml,*.js,*.snippets setlocal tabstop=2 shiftwidth=2 softtabstop=2
"autocmd Filetype php inoremap <c-e> <?=  ?><ESC>2hi
"set omnifunc=syntaxcomplete#Complete
"set laststatus=10
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"let g:neomake_javascript_enabled_makers = ['eslint']
set encoding=UTF-8

set colorcolumn=130

au BufEnter,BufNew *.ejs :set filetype=html


 "Autocomplete
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#sources#ternjs#docs = 1
set completeopt-=preview
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-6.0/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-6.0/lib/clang'
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]
" Config
syntax enable
set termguicolors
"set splitright
set autoread
colorscheme gruvbox
au ColorScheme * hi Normal ctermbg=none guibg=none
set autoindent
"set background=light
"set background=dark
filetype on
filetype plugin on
filetype indent on
syntax on 
set relativenumber
"set incsearch
"set number
set ignorecase
set smartcase
set tabstop=4
set smartindent
set shiftwidth=4
set nobackup
set noswapfile
hi vertsplit guifg=bg guibg=bg
"Mappings
"nnoremap q<SPACE> :buffers<CR>:buffer<Space>
map <c-n> :bn<CR>
"map <c-e> :e 
map <c-m> :bp<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
inoremap qw <ESC>
"nnoremap <C-s> :CocRestart <CR><CR> :w <CR>
nnoremap <C-e> <ESC>:CocRestart <CR><CR>
nnoremap <C-s> <ESC>:w<CR>
inoremap <C-s> <ESC>:w<CR>

inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("k"))

"nmap <F5> :!lh <CR>
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
map <C-t> :NERDTreeToggle<CR>

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep          = '▶'
let g:airline#extensions#tabline#left_alt_sep      = '▶'
let g:airline_left_sep          = '▶'
let g:airline_left_alt_sep      = '▶'
let g:airline_right_sep         = '◀'
let g:airline_right_alt_sep     = '◀'
let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
let g:airline#extensions#readonly#symbol   = '⊘'
let g:airline#extensions#linecolumn#prefix = '¶'
let g:airline#extensions#paste#symbol      = 'ρ'
"let g:airline_symbols.linenr    = '␊'
"let g:airline_symbols.branch    = '⎇'
"let g:airline_symbols.paste     = 'ρ'
"let g:airline_symbols.paste     = 'Þ'
"let g:airline_symbols.paste     = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline_theme='dark'

let g:nvim_ipy_perform_mappings = 0
map <silent> <c-SPACE> <Plug>(IPy-Run)


"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

"let g:airline_left_sep = '|'
"let g:airline_left_sep = ''
"let g:airline_right_sep = '|'
"let g:airline_right_sep = ''



inoremap <F4> <ESC>:!make a && ./a<CR>
nnoremap <S-q> :BD<CR>

let NERDTreeShowHidden=1
"let g:ctrlp_show_hidden = 1

let g:gruvbox_contrast_dark=0

" Disable Arrow keys in Escape mode
inoremap <up> <ESC>:echo "Don't use your fucking arrow keys" <CR>i
inoremap <down> <ESC>:echo "Don't use your fucking arrow keys" <CR>i
inoremap <left> <ESC>:echo "Don't use your fucking arrow keys" <CR>i
inoremap <right> <ESC>:echo "Don't use your fucking arrow keys" <CR>i
nnoremap <up> :echo "Don't use your fucking arrow keys" <CR>
nnoremap <down> :echo "Don't use your fucking arrow keys" <CR>
nnoremap <left> :echo "Don't use your fucking arrow keys" <CR>
nnoremap <right> :echo "Don't use your fucking arrow keys" <CR>
"map <down> :res +4<CR>
"map <left> :vertical res-7<CR>
"map <right> :vertical res+7<CR>

map <c-p> :FZF <CR>

set nohlsearch

let g:user_emmet_leader_key=','

let mapleader = ","
nmap // <leader>c<space>
vmap // <leader>c<space>
"nnoremap <c-c> :call NERDComment(0,"toggle")<CR>
"vnoremap <c-c> :call NERDComment(0,"toggle")<CR>
vnoremap <c-c> "+y
let g:go_doc_keywordprg_enabled = 0
let g:go_highlight_trailing_whitespace_error=0
let g:go_def_mapping_enabled = 0
"let g:indent_guides_enable_on_vim_startup = 1
let g:vim_jsx_pretty_template_tags = ['html', 'jsx']
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:NERDTreeIgnore = ['^node_modules$']

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-go', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c


" always show signcolumns
set signcolumn=yes
"set signcolumn=number

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
	  "\ pumvisible() ? "\<C-n>" :
	  "\ <SID>check_back_space() ? "\<TAB>" :
	  "\ coc#refresh()

highlight SignColumn guibg=none

"let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
"let $FZF_DEFAULT_OPTS='--color=fg:14,bg:-1,hl:1,fg+:#ffff7c,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
"let g:fzf_layout = { 'window': 'call FloatingFZF()' }

"function! FloatingFZF()
  "let buf = nvim_create_buf(v:false, v:true)
  "call setbufvar(buf, '&signcolumn', 'no')

  "let height = float2nr(10)
  "let width = float2nr(80)
  "let horizontal = float2nr((&columns - width) / 2)
  "let vertical = 1

  "let opts = {
		"\ 'relative': 'editor',
		"\ 'row': vertical,
		"\ 'col': horizontal,
		"\ 'width': width,
		"\ 'height': height,
		"\ 'style': 'minimal'
		"\ }

  "call nvim_open_win(buf, v:true, opts)
"endfunction

"au BufRead,BufNewFile *.ts set syntax=javascript
"


" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
	execute 'h '.expand('<cword>')
  else
	call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"nnoremap <c-p>:FZF<CR>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

let g:gitgutter_async=0

" git
nnoremap <leader>gg :G <CR>
nnoremap <leader>gs :G status<CR>
nnoremap <leader>gc :G commit<CR>
nnoremap <leader>gl :G log<CR>
nnoremap <leader>gp :G push<CR>
nnoremap <leader>gpu :G push -u origin 

" quick scope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150
