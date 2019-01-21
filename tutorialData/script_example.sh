######################################################################################################
## Tutorial samples were extracted from SRP133424 "Gastric adenoma and carcinoma genomes" from SRA. ##
## It mapped with hg38                                                                              ##
######################################################################################################

#Set the path
BAMixChecker_PATH=/path/to/BAMixChecker
OUT_DIR=/output/dir
REF=/path/of/reference/hg38/genome.fa


#Command to run the tutorial data 
#Normal case
python $BAMixChecker_PATH/BAMixChecker.py \
-d $BAMixChecker_PATH/tutorialData/normal \
-o $OUT_DIR/normal \
-r $REF \
-b $BAMixChecker_PATH/tutorialData/target.bed

#Mismatched sample exist case
#'S1254_N.bam' and 'S1345_T.bam ' are swapped, 'S1983_N.bam' and 'S1983_T.bam are unpaired.
python $BAMixChecker_PATH/BAMixChecker.py \
-d $BAMixChecker_PATH/tutorialData/mismatched \
-o $OUT_DIR/mismatched \
-r $REF \
-b $BAMixChecker_PATH/tutorialData/target.bed
