.DEFAULT_GOAL = update
MAKEFILE_PATH = $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIR = $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

help:
	@echo "  instal      - install vim configuration and plugins"
	@echo "  update      - update  vim configuration and plugins"

clear:
	rm -rf ~/.vim
	rm -f ~/.vimrc

install: clear
	git submodule update --init
	ln -sf ${CURRENT_DIR}/themes/lucius/colors ${CURRENT_DIR}/.vim/colors
	ln -sf ${CURRENT_DIR}/.vimrc ~/.vimrc
	ln -sf ${CURRENT_DIR}/.vim ~/.vim

update:
	git submodule foreach "(git checkout master; git pull; cd ..; git add '$path'; git commit -m 'Submodule Sync')"
