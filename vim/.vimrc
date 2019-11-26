
set nu
set hlsearch
set tabstop=4
set shiftwidth=4

filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'acsb'
" Plugin 'vcsbzr.vim'
Plugin 'vcscommand.vim'

call vundle#end()            " required
filetype plugin indent on    " required

nmap <silent> <Leader>=		:Tlist<CR>
let Tlist_Show_One_File=1
let Tlist_WinWidth=45
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen=1


augroup VCSCommand
	au VCSCommand User VCSBufferCreated silent! nmap <unique> <buffer> q :VCSGotoOriginal! <cr> 
augroup END
