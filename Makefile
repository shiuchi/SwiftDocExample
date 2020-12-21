ROOT := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

SCRIPTS := $(ROOT)/scripts


## ********** Set up **********
.PHONY: bootstrap
bootstrap: brew-formula-install

.PHONY: brew-formula-install
brew-formula-install:
	which brew && brew bundle --no-lock