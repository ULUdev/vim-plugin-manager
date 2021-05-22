" Title: plugin-manager.vim
" Author: Moritz Sokoll
" Description: A simple plugin manager for vim

" check wether the function has been defined
if exists('LoadPlugins')
	finish
endif

function! LoadPlugins()
	if exists('g:plugins')
		for plugin in g:plugins
			if filereadable(expand('~/.vim/plugins/' . plugin . '.vim'))
				execute('source ~/.vim/plugins/' . plugin . '.vim')
			else
				echo 'plugin ' . plugin . ' could not be loaded, skipping...'
			endif
		endfor
	else
		echo 'no plugins defined (use g:plugins for defining plugins)'
	endif
	return 0
endfunction

command Loadplugins call LoadPlugins()
