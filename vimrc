syntax on 		"언어에 따른 자동 문법, 구문의 색을 다르게 표시
"colorscheme koehler

set bg=dark
set ru 			"화면 우측 하단에 현재 커서의 위치(줄, 칸)를 표시. (ruler)
set nu 			"라인 번호를 표시
set ci 			"C 형태의 들여쓰기. (cindent)
set ai 			"자동 들여쓰기. (autoindent)
set sc 			"완성중인 명령을 표시
set si 			"좀더 똑똑한 들여쓰기. (smartindent)
set sw=4 		"자동들여쓰기를 4칸으로 설정. (shift width)
set ts=4 		"tab 간격을 4칸으로 설정. (tab stop)
set hls
set lines=60
set ignorecase 	"검색 시 대소문자 무시
set wildmenu
set wildmode=list:longest,full
set laststatus=2
set t_Co=256

"keep fold
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter silent loadview

"pig syntax highlight
augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END 

"for vundle
set nocompatible "오리지널 VI와의 호환성을 없애고, VIM 만의 기능들을 쓸 수 있게 함. (compatible)
filetype off
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()

" 필수 Bundle
Bundle 'gmarik/vundle'

" Bundle Here
Bundle 'The-NERD-tree'
Bundle 'AutoComplPop'
Bundle 'The-NERD-Commenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on

" key map
map <Leader>nt <ESC>:NERDTree<CR>

