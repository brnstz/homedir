set t_ti= t_te= 
set vb t_vb=
set tabstop=4
set shiftwidth=4
set softtabstop=4

" By default, use soft tabs
set expandtab

" But if the file seems to use hard tabs, use them instead
"function Kees_settabs()
"    if len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^\\t"')) > len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^ "'))
"        set noexpandtab
"    endif
"endfunction
"autocmd BufReadPost * call Kees_settabs()

set showmatch
set autoindent
set smartindent
set ignorecase
set smartcase
set backspace=indent,eol,start
set ruler
set t_Co=256
syntax on
filetype plugin indent on

set background=dark
"set background=light
set encoding=utf8
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let g:SuperTabDefaultCompletionType = "context"
set encoding=utf8

"set rtp+=$GOROOT/misc/vim
"filetype plugin on
"autocmd BufRead,BufNewFile *.go set filetype=go | setlocal noexpandtab 

" Go stuff
" filetype off
" filetype plugin indent off
" set runtimepath+=$GOROOT/misc/vim
" filetype plugin indent on
" syntax on
" autocmd BufWritePre *.go Fmt

au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
au BufNewFile,BufRead *.pp set filetype=ruby syntax=ruby
" au BufWritePre *.{js} :call JsBeautify()
au BufNewFile,BufRead *.yaml,*.yml set filetype=ansible
" colorscheme autumn2
" colorscheme elflord
" colorscheme solarized
set hlsearch

execute pathogen#infect()
let g:go_fmt_command = "goimports"
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" you complete me
nnoremap gd :YcmCompleter GoTo<CR>
let g:ycm_filetype_blacklist = { "go": 1, "text": 1, "sh": 1 }

" weird mac cron thing
autocmd filetype crontab setlocal nobackup nowritebackup

" flake8
autocmd BufWritePost *.py call Flake8()
" let g:flake8_cmd=$HOME."/bin/flake82" " python2
let g:flake8_cmd=$HOME."/bin/flake83" " python3
