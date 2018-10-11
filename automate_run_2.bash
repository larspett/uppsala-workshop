#################################
# Adjust your path on your machine
#output directory where we will save results
RESULT_DIR=/Users/lars/Desktop/sw-carpentry/results   #$PWD/results
#input directory for molecules data
INPUT_DIR=/Users/lars/Desktop/sw-carpentry/molecules


#Do not change below except you know what you are doing!

rm -rf $RESULT_DIR
mkdir $RESULT_DIR
touch $RESULT_DIR/length.txt
for filename in $INPUT_DIR/*.pdb

    do

   wc -l $filename | sort -n | head -n 1 >> $RESULT_DIR/lengths.txt

done

cat $RESULT_DIR/lengths.txt


####################################
