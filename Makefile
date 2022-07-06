SHELL = /usr/bin/bash

init:
	@git config core.hooksPath .githooks

install:
	@command -v poetry &>/dev/null || echo "ERROR: missing software required (pip install poetry)" && poetry install

requirements:
	@poetry export -f requirements.txt --output requirements.txt
	