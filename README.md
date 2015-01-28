My config for Vim
=================

These my VIM configuration files.


These are the used Vim plugins:

* **bufexplorer**: Easily show the list of buffers and switch between them.
* **jedi-vim**: Autocomplete for Python.
* **nerdtree**: The file explorer.
* **tagbar**: To show the structure of the files and easily jump to variables, methods, etc.
* **tcomment**: Useful to comment/uncomment code.
* **vim-airline**: A fantastic status bar.
* **vim-autoclose**: Automatically close code blocks, etc.
* **vim-fugitive**: Git integration.
* **vim-pathogen**: The plugin loader.
* **vim-sensible**: Common defaults for the .vimrc.
* **vim-signify**: Show the git stats when editing files.
* **xmledit**: Automatically close tags in xml files.
* **vim-session**: For storing session.

Prerequisites
-------------

In order to use the Vim plugins the following pieces have to be installed manually:

* Exuberant ctags >= 5.5 (on ubuntu sudo apt-get install exuberant-ctags)

Installation
------------

    $ make install

Usage cheat sheet
-----------------

The following keys have been mapped by default:

* **F2**: Toggle NERDTree.
* **F3**: Toggle Tagbar (it is opened by default in certain source ccode files).
* **F4**: Open a vertical split and show the list of existing buffers.
* **Shift-Left/Right**: Change to the previous/next buffer.
* **Ctrl-Space**: Open autocomplete popup (only in Python).
