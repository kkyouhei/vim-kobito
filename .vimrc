if 1
	set nocompatible
	if has('vim_starting')
		set runtimepath+=~/.vim/bundle/neobundle.vim/
	endif
	call neobundle#rc(expand('~/.vim/bundle/'))
	" originalrepos on github
	NeoBundleFetch 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/vimproc', {
	  \ 'build' : {
	    \ 'windows' : 'make -f make_mingw32.mak',
	    \ 'cygwin' : 'make -f make_cygwin.mak',
	    \ 'mac' : 'make -f make_mac.mak',
	    \ 'unix' : 'make -f make_unix.mak',
	  \ },
	  \ }
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'Shougo/neomru.vim'
	NeoBundle 'Shougo/neocomplcache'
	NeoBundle 'Shougo/vimshell'
	NeoBundle 'fholgado/minibufexpl.vim'
	NeoBundle 'Railscasts-Theme-GUIand256color'
	NeoBundle 'osyo-manga/vim-sound'
	NeoBundle 'Lokaltog/vim-powerline'
	NeoBundle 'nathanaelkane/vim-indent-guides'
	NeoBundle 'lim-template/vim-slim'
	NeoBundle 'tpope/vim-endwise'
	NeoBundle 'Shougo/vimfiler'
	NeoBundle 'tpope/vim-ragtag'
	NeoBundle 'kchmck/vim-coffee-script'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'tpope/vim-fugitive'

	filetype plugin indent on 
	syntax on
	set number
	command -nargs=0 Make execute ':source ~/vim/superProgram.vim'
endif
