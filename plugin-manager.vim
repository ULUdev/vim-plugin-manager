" Name: plugin-manager.vim
" Author: Moritz Sokoll
" Description: A simple plugin manager for vim

" check wether the function has been defined
if exists('g:pluginmanagerloaded')
	finish
endif

if exists('g:pluginmanagerlistloaded') == 0
	let g:pluginmanagerlistloaded = 0
endif

function! LoadPlugins()
	if exists('g:plugins')
		let plugincounter = 0
		for plugin in g:plugins
			if filereadable(expand('~/.vim/plugins/' . plugin . '.vim'))
				execute('source ~/.vim/plugins/' . plugin . '.vim')
				let plugincounter += 1
			else
				echo 'plugin ' . plugin . ' could not be loaded, skipping...'
			endif
		endfor
		if g:pluginmanagerlistloaded == 1
			echo 'loaded ' . plugincounter . ' plugins!'
		endif
	else
		echo 'no plugins defined (use g:plugins for defining plugins)'
	endif
	return 0
endfunction

command Loadplugins call LoadPlugins()
let g:pluginmanagerloaded = 1
" vim: ts=4 sts=4 sw=4 noexpandtab
