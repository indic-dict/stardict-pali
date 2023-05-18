STARDICT_TOOLS_DIR=~/stardict/tools/src/
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash

# make all DICTS=xyz
DICTS=.*
OVERWRITE=false

# Let the URL not end with /.
URL=https://github.com/indic-dict/stardict-pali/raw/gh-pages/$(shell pwd|sed -e s/.*[/]//)/tars

.PHONY: all tars decompile dunzip

all:add_dev stardict tars

stardict:
	bash $(DICT_TOOLS_BIN_BASH)/tsv_to_stardict.sh DICTS=$(DICTS)

add_dev:
	bash $(DICT_TOOLS_BIN_BASH)/babylon_add_optitrans.sh DICTS=$(DICTS)

tars:
	bash $(DICT_TOOLS_BIN_BASH)/make_tarballs.sh $(URL) DICTS=$(DICTS)

full:
	bash $(DICT_TOOLS_BIN_BASH)/full_build.sh $(URL) DICTS=$(DICTS) GITHUB_TOKEN=$(GITHUB_TOKEN) overwrite=$(OVERWRITE)


decompile:
	bash ./decompile_all.sh

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))
tarlist:
	bash $(DICT_TOOLS_BIN_BASH)/update_tars_md.sh $(current_dir)tars $(URL)
