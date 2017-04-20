.PHONY: install update

SHELL = /bin/bash

install:
	@echo "Installing Bash-my-GCP..."
	@if ! grep -q 'bash-my-gcp' ${HOME}/.bashrc; then echo "source ${CURDIR}/loader.sh # bash-my-gcp" >> ${HOME}/.bashrc; fi

update:
	@echo "Updating via git pull..."
	git pull
