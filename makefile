.PHONY: all

all:
	make -C en-head all
	make -C pali-head all
	make -C pali-en-head all

tars:
	make -C en-head tars
	make -C pali-head tars
	make -C pali-en-head tars

