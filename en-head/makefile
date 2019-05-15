STARDICT_TOOLS_DIR=~/stardict/tools/src/
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash


# make all DICTS=xyz
DICTS=.*


.PHONY: all tars decompile dunzip

all:stardict tars

stardict:
	bash $(DICT_TOOLS_BIN_BASH)/tsv_to_stardict.sh DICTS=$(DICTS)

tars:
	bash $(DICT_TOOLS_BIN_BASH)/make_tarballs.sh https://github.com/indic-dict/stardict-pali/raw/gh-pages/en-head DICTS=$(DICTS)

decompile:
	bash ./decompile_all.sh
