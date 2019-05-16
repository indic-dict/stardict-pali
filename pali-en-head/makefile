STARDICT_TOOLS_DIR=~/stardict/tools/src/
TABFILE=$(STARDICT_TOOLS_DIR)/tabfile
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash


# make all DICTS=xyz
DICTS=.*


.PHONY: all tars decompile dunzip

all:add_dev stardict tars

stardict:
	bash $(DICT_TOOLS_BIN_BASH)/tsv_to_stardict.sh DICTS=$(DICTS)

add_dev:
	bash $(DICT_TOOLS_BIN_BASH)/babylon_add_optitrans.sh DICTS=$(DICTS)

tars:
	bash $(DICT_TOOLS_BIN_BASH)/make_tarballs.sh https://github.com/indic-dict/stardict-pali/raw/gh-pages/pali-en-head DICTS=$(DICTS)

full:
  bash $(DICT_TOOLS_BIN_BASH)/full_build.sh https://github.com/indic-dict/stardict-pali/raw/gh-pages/pali-en-head DICTS=$(DICTS)


decompile:
	bash ./decompile_all.sh
