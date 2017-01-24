
The Oslo-Bergen-Tagger (obt)

The obt is available from 
http://tekstlab.uio.no/obt-ny/

The files here were taken from an older site: 
https://github.com/noklesta/The-Oslo-Bergen-Tagger

They are available under GPL. 

Please keep the files here in synch with the github files, 
and check in eventual changes to github.com/noklesta/

Before use: 

Make the files executable:
chmod a+x bin/*

The morphology is in the mtag-* file, and the cg disambiguation
ruleset is in the nob_morf file.

Basic usage
===========
Usage on a mac:

cat text | preprocess --abbr=$GTHOME/st/nob/bin/abbr.txt | \
$GTHOME/st/nob/obt/bin/mtag-osx64 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf.cg3

Usage on victorio is same as above, but with mtag-linux32 instead, thus:

cat text | preprocess --abbr=$GTHOME/st/nob/bin/abbr.txt | \
$GTHOME/st/nob/obt/bin/mtag-linux32 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf.cg3 

Advanced usage
==============

In order to combine cg and statistics, you may use nob_morf-prestat.cg3 
instead of nob_morf.cg3, thus the last line is:

vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf-prestat.cg3


A final note
============

In order to fetch new versions, check in, etc, see

https://github.com/noklesta/The-Oslo-Bergen-Tagger/blob/master/README.md

