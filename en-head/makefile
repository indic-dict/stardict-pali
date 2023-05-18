STARDICT_TOOLS_DIR=~/stardict/tools/src/
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash


# make all DICTS=xyz
DICTS=.*
OVERWRITE=false


.PHONY: all tars decompile dunzip

all:stardict tars

stardict:
	bash $(DICT_TOOLS_BIN_BASH)/tsv_to_stardict.sh DICTS=$(DICTS)

tars:
	bash $(DICT_TOOLS_BIN_BASH)/make_tarballs.sh https://github.com/indic-dict/stardict-pali/raw/gh-pages/en-head/tars DICTS=$(DICTS)

full:
	bash $(DICT_TOOLS_BIN_BASH)/full_build.sh https://github.com/indic-dict/stardict-pali/raw/gh-pages/en-head/tars DICTS=$(DICTS) GITHUB_TOKEN=$(GITHUB_TOKEN) overwrite=$(OVERWRITE)
decompile:
	bash ./decompile_all.sh
