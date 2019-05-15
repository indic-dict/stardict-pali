STARDICT_TOOLS_DIR=~/stardict/tools/src/
TABFILE=$(STARDICT_TOOLS_DIR)/tabfile
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash

ifndef dicts
	dicts="*"
endif

.PHONY: all tars decompile dunzip

all:stardict tars

stardict:
	bash $(DICT_TOOLS_BIN_BASH)/tsv_to_stardict.sh $(DICTS)

tars:
	bash $(DICT_TOOLS_BIN_BASH)/make_tarballs.sh https://github.com/indic-dict/stardict-pali/raw/master/en-head

decompile:
	bash ./decompile_all.sh
