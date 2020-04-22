
echo "making ob transducer from Norsk ordbank"
echo
echo "Multichar_Symbols"
echo Multichar_Symbols > ob.lexc
echo
echo "Oh, yes, and the symbols"
cat fullform_bm.txt | tail +2194 | cut -f4 | tr ' ' '\n' | tr -d '[><]' | cut -d"@" -f1 | sort | uniq | sed 's/^/+/g;' >> ob.lexc
echo 
echo "Making lexicon Root"
echo LEXICON Root >> ob.lexc
echo
echo "Mmaking upper.remove file (the upper part of the lexc file)"
cat fullform_bm.txt | tail +2194 | cut -f2,4 | tr ' ' '+' | tr '\t' '+' | \
tr -d '[><]' | cut -d"@" -f1 > upper.remove
echo 
echo "Making lower.remove file (the lower part of the lexc file)"
cat fullform_bm.txt | tail +2194 |cut -f3 |sed 's/ /% /g;' | sed 's/^End$/XXX/g;' > lower.remove
echo
echo "Pasting things together"
echo "Command: paste -d":" upper.remove lower.remove | sed 's/$/ # ;/g;' >> ob.lexc"
paste -d":" upper.remove lower.remove | sed 's/$/ # ;/g;' >> ob.lexc
echo 
echo "Done, hopefully."
echo "Compile the result with the command:"
echo 'xfst -e "read lexc < ob.lexc"'
echo "save ob.save"
echo 'xfst -e "read regex  [@\"ob.save\" .o. @\"../../bin/inituppercase.fst\" ] ; " '
