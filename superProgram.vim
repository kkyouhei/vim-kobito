let s:se_path = '/Users/kanokyouhei/vim/vim-sound/music/'
let s:se_ext = '.wav'

function! Main()
	let source = s:getSourceCode()
	call s:writeSourceCode(source)
endfunction

function! s:PlaySE(name)
	call sound#play_wav(s:change_sound_name(a:name))
endfunction

function! s:change_sound_name(base_name)
	return expand(s:se_path . a:base_name . s:se_ext)
endfunction

function! s:getSourceCode()
	let file = "/Users/kanokyouhei/vim/DemoSourceCode.txt"
	return readfile(file)
endfunction

function! s:writeSourceCode(source)
	for line in a:source
		call s:writeLine(split(line, '.\zs'))
	endfor
endfunction

function! s:writeLine(line)
	for char in a:line
		call s:writeChar(char)
	endfor
	call s:writeChar("\n")
	call s:PlaySE('enter')
endfunction

function! s:writeChar(char)
	echon a:char
	call s:PlaySE('tap')
	sleep 80ms
endfunction

command! -nargs=0 SuperProgram call Main()
