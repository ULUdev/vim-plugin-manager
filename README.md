# plugin-manager
## a simple plugin manager for vim
plugin-manager is nothing fancy. It doesn't automatically download the needed plugin files. You have to do that yourself.
But it works and is easy to understand.
## Installation
To install it run `$ curl https://gitlab.sokoll.com/moritz/vim-plugin-manager/-/raw/master/install.sh | bash`.
## Usage
example vimrc
```vim
...
source ~/.vim/plugins/plugin-manager.vim
let g:plugins = ['snippets']
call LoadPlugins()
...
```
plugin-manager reads plugins from the variable `g:plugins`.
It then tries loading the plugin file. In the example it would load the file `~/.vim/plugins/snippets.vim`.
`call LoadPlugins()` loads the plugins. If you were to change the plugin list at runtime do `:Loadplugins`.
Don't add plugin-manager itself to the plugins list.
## Variables
- `g:plugins`: The list of plugins to load
- `g:pluginmanagerlistloaded`: set it to 1 if you want to list all loaded plugins at startup
- `g:pluginmanagerloaded`: says if the plugin-manager has been loaded (should not be edited by users)
