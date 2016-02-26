set nocompatible                                 "Always use the latest Vim settings."              
so ~/.vim/plugins.vim                            "Source the plugins file for Vundle."
syntax enable                                    "Enable syntax highlighting."
set backspace=indent,eol,start                   "Make backspace behave like other editors."
let mapleader = ','                              "Change default leader to ',' instead of '\'.
set noerrorbells visualbell t_vb=                "No error bells."
set tabstop=4                                    "The width of a TAB is set to 4. Still it is a \t and Vim will interpret it to be having a width of 4."
set shiftwidth=4                                 "Indents will have a width of 4."
set softtabstop=4                                "Sets the number of columns for a TAB."
set expandtab                                    "Expand TABs to spaces."
set autowriteall                                 "Automatically write the file when switching buffers."
set complete=.,w,b,u 		   					 "Set our desired autocompletion matching.

"-----------------------Visuals-----------------------"
colorscheme atom-dark
set linespace=15                                 "Line height for MacVim GUI."
set guifont=Source_Code_Pro_for_Powerline:h13    "Set font and font-height for MacVim GUI."
set t_CO=256                                     "Terminal colors."
set macligatures                                 "Pretty symbols when available."
set guioptions-=e                                "Don't use GUI tabs."
set number                                       "Enable line numbers."
"set laststatus=2                                 "Always show status line."


"Hide scrollbars"
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi vertsplit guifg=bg guibg=bg


"-----------------------Search------------------------"
set hlsearch                                   "Highlight search."
set incsearch                                  "Search highlight as we type."


"------------------Split Management--------------------"
set splitbelow                                 "Default horizontal split goes under"
set splitright                                 "Default vertical split goes to the right"


"Make moving between splits easier"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"----------------------Mappings------------------------"
"Make it easy to edit the vimrc file."
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Simple search highlight clearing."
nmap <Leader><space> :nohlsearch<cr>

"Sort lines by length"
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\ -f2-" }'<cr>

"-------------------Plugin Specific--------------------"
"CtrlP"
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

nmap <C-p> :CtrlP<cr>
"Ctrl-R to search for methods."
nmap <C-R> :CtrlPBufTag<cr>
"Recent files."
nmap <D-e> :CtrlPMRUFiles<cr>


"CTags"
nmap <Leader>f :tag<space>


"NERDTree"
let NERDTreeHijackNetrw = 0
"Make NERDTree easier to toggle."
nmap <D-1> :NERDTreeToggle<cr>


"GReplace"
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'


"PeepOpen"
nmap <Leader><Leader> <Plug>PeepOpen


"PHP namespace"
"Add relevant use statement"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"Expand fuly qualified class name"
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>


"Airline Status Bar"
"Automatically displays all buffers when only 1 tab is open"
let g:airline#extensions#tabline#enabled = 1                                   

"Straight Tab separators"
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Allow use of powerline fonts"
let g:airline_powerline_fonts = 1


"Vim Multiple Cursors"
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-S-d>'
let g:multi_cursor_prev_key='<C-S-p>'
let g:multi_cursor_skip_key='<C-S-x>'
let g:multi_cursor_quit_key='<Esc>'


"--------------------Auto-Commands---------------------"
"Automatically source the vimrc file on save."
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

