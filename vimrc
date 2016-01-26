execute pathogen#infect()

syntax on
filetype plugin indent on

let mapleader=","
let maplocalleader=","

set number
set tags+=/usr/local/share/ctags/qt4
set mouse=a

filetype indent on
set shiftwidth=4
set ts=4
set expandtab
set splitright

set hlsearch
set relativenumber

" spelling errors
iabbrev qutoe quote
iabbrev reposne response

" fast escape
inoremap jk <esc>

" uppercase word
inoremap <c-u> <esc>vbU

" switch between .h/.cpp
nnoremap <leader>a :A<CR>

" tab complete
inoremap <tab> <c-n>

" vimrc controls
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
nnoremap <leader>sv :source $MYVIMRC<cr> 

" fast make
nnoremap <leader>m :wa<cr> :Make<cr>
nnoremap <leader>mm :wa<cr> :make -j12<cr>
nnoremap <leader>mc :wa<cr> :make check -j12<cr>

" toggle ninja
nnoremap <leader>N :set makeprg=make<cr>

" swap lines
nnoremap _ ddkP
nnoremap - ddp

" swap words
nnoremap <leader>s- dwwP

" fast semicolon
nnoremap <leader>; mqA;<esc>`q

" fast split screen navigation
nnoremap <c-w><c-w> iNOPENOPENOPENOPE<esc>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" highlight tabs
nnoremap <leader>t :match Error #\t#<cr>
nnoremap <leader>T :match<cr>

" fast folding
nnoremap <leader>z za

" ack last searched string @todo
"nnoremap <leader>A y:Ack "@/"<cr>

augroup filetype_comments
    autocmd BufNewFile,BufRead *.cpp,*.h,*.xml set foldmethod=syntax
    autocmd BufNewFile,BufRead *.* normal zR
augroup END

nnoremap <leader>R :!./run_tests.sh 

" operator parens, brackets, quotes
onoremap p i(
onoremap b i{
onoremap ' i'
onoremap " i"

onoremap np :<c-u>normal! f(vi(<cr>

" replace selected text
vnoremap <leader>r y:%s/<c-r>"/

highlight Pmenu ctermfg=1 ctermbg=white guibg=grey30

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"let g:clang_exec = "~/build/Debug+Asserts/bin/clang"
"let g:clang_diagsopt = "b:rightbelow:6"
"let g:clang_library_path = "/home/libclang.so"

set ls=2

set foldmethod=manual

"set runtimepath^=~/.vim/bundle/ctrlp.vim-master

"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

"let g:ctrlp_working_path_mode = 'ra'

"let g:pep8_map = '<leader>8'

set wildignore+=*.o,*/out/*

let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
augroup END

let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'markdown' : 1,
    \ 'text' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1,
    \ 'cpp' : 1,
    \}

let g:ycm_confirm_extra_conf = 0
let g:ycm_allow_changing_updatetime = 0
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfile = 1
let g:ycm_path_to_python_interpreter = '/opt/python-2.7.3/bin/python'
let g:ycm_server_log_level = 'debug'
let g:ycm_goto_buffer_command = 'vertical-split'
let g:ycm_autoclose_preview_window_after_completion = 1

map <F12> :YcmCompleter GoToImprecise<CR>

"toggle autocomplete
map <leader>o :call ToggleAutoComplete()<CR>

function! ToggleAutoComplete()
    if g:ycm_auto_trigger
        let g:ycm_auto_trigger = 0
    else
        let g:ycm_auto_trigger = 1
    endif
endfunction

let g:ConqueGdb_GdbExe = 'gdb'

nnoremap <leader>C :call ColorToggle()<cr>

let g:desert_on = 0
