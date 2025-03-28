# How to use the Norwegian grammatical analyser

There is a `00_readme.txt` file in `$GTLANG/nob/obt`
Here come the highlights from that file:

Before use: Make the files executable: `chmod a+x bin/*`

The morphology is in the mtag-* file, and the cg disambiguation
ruleset is in the nob_morf file.

## Basic usage

The path `$GTHOME/st/nob/obt` assumes you use the obt from the Giellatekno
svn tree. Replace it with your own if needed.

Usage on a mac:

```
cat text | \
preprocess --abbr=$GTHOME/st/nob/bin/abbr.txt | $GTHOME/st/nob/obt/bin/mtag-osx64 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf.cg3
```

Usage on linux (say, on our computer victorio) is same as above, but with mtag-linux32 instead, thus:

```
cat text | \
preprocess --abbr=$GTHOME/st/nob/bin/abbr.txt | $GTHOME/st/nob/obt/bin/mtag-linux32 | \
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf.cg3 
```

## Advanced usage

In order to combine cg and statistics, you may use nob_morf-prestat.cg3 
instead of nob_morf.cg3, thus the last line is:
```
vislcg3 -g $GTHOME/st/nob/obt/src/nob_morf-prestat.cg3
```
