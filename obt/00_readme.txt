
The Oslo-Bergen-Tagger

The files here are taken from 
https://github.com/noklesta/The-Oslo-Bergen-Tagger

They are available under GPL. 

Please keep the files here in synch with the github files, 
and check in eventual changes to github.com/noklesta/

Before use: 

Make the files executable:
chmod a+x bin/*


Usage on a mac:

cat text | preprocess --abbr=$GTHOME/st/nob/bin/abbr.txt | \
$GTHOME/st/nob/obt/bin/mtag-osx64 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf.cg3 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf-prestat.cg3 

Usage on victorio:

The same as above, but with
$GTHOME/st/nob/obt/bin/mtag-linux64

instead, thus:

cat text | preprocess --abbr=$GTHOME/st/nob/bin/abbr.txt | \
$GTHOME/st/nob/obt/bin/mtag-linux64 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf.cg3 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf-prestat.cg3

Remember to make the binary files executable!

(or you may use the binary cg3 files).

In order to fetch new versions, check in, etc, see

https://github.com/noklesta/The-Oslo-Bergen-Tagger/blob/master/README.md

