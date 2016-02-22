STARDICT_TOOLS_DIR=~/stardict/tools/src/
TABFILE=$(STARDICT_TOOLS_DIR)/tabfile
STARDICT_SANSKRIT_BIN=~/stardict-sanskrit/bin

ifndef dicts
	dicts="*"
endif

.PHONY: all tars decompile dunzip

all:add_dev stardict tars

stardict:
	bash $(STARDICT_SANSKRIT_BIN)/tsv_to_stardict.sh 

add_dev:
	bash $(STARDICT_SANSKRIT_BIN)/babylon_add_devanAgarI.sh 

tars:
	bash $(STARDICT_SANSKRIT_BIN)/make_tarballs.sh https://github.com/sanskrit-coders/stardict-pali/raw/master/pali-head
	
decompile:
	bash ./decompile_all.sh
