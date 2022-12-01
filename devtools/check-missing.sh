#!/usr/bin/env bash

##
## Script that returns the stems/$TYPE.lexc entries for the missing
## lemmas together with a count of the continuation lexica used for
## these lemmas.
##

possible_values=`ls test/src/morphology/missing_*_lemmas.hfst.txt | cut -f2 -d'_' `
call="Call:\n   "$0" [ ${possible_values} ]";

if [ $# = 0 ]; then
    echo ""
    echo "Exiting: Missing type argument, c.f. below:";
    echo $call
    exit 1
fi

TYPE=$1;

MISSING=test/src/morphology/missing_${TYPE}_lemmas.hfst.txt
FILTER=/tmp/missing-${TYPE}-filter_${USER}

cat $MISSING | awk '{print ("^" $1 ":")}' > $FILTER

echo ""
echo '#### STEMS:'
egrep --color -f $FILTER src/fst/stems/${TYPE}.lexc 

echo ""
echo '#### CONTINUATION LEXICA:'
egrep -f $FILTER src/fst/stems/${TYPE}.lexc | awk '{print $2}' | sort | uniq -c | sort -nr --key=1,1
