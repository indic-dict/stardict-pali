STARDICT_TOOLS_DIR=~/stardict/tools/src/
DECOMPILE=$STARDICT_TOOLS_DIR/stardict2txt

for ifo_file in `ls */*.ifo`
do
	tsv_file=`ls $ifo_file|sed s/.ifo/.tsv/`
	$DECOMPILE $ifo_file $tsv_file
	# mv $txt_file $tsv_file
done
