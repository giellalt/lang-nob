#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in nob:
# sh devtools/der_noun_minip.sh LAAVU | less
# sh devtools/der_noun_minip.sh smiergâs 
# Only get the lemma you ask for:
# sh devtools/der_noun_minip.sh '^smiergâs[:+]' 


HLOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/morphology/stems/nouns.lexc | egrep $PATTERN | cut -d ':' -f1>$L_FILE

P_FILE="src/fst/morphology/test/der_nouns.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $HLOOKUP $GTLANGS/lang-nob/src/fst/generator-gt-norm.hfstol
 done
 rm -f $L_FILE
done

