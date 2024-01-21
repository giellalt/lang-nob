# Bokmål noun lexicon 

This file documents the Bokmål noun stem file [stems/nouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/nouns.lexc).

## Overview of the declension classes

----------------------------------------------------
Main types, from Bokmålsordboka

f1  bru         brua        bruer           bruene
f2  pumpe       pumpa       pumper          pumpene
f3  søster      søstera     søstre/søstrer  søstrene
m1  stol        stolen      stoler          stolene
bakke       bakken      bakker          bakkene
pumpe       pumpen      pumper          pumpene
m2  lærer       læreren     lærere          lærerne
m3  bever       beveren     bevere          beverne
bevrer          bevrene
bevre           bevrene
m4  longs       longsen     longs/longser   longsene
m5  handelsreisende ...
n1  slott       slottet     slott           slotta/slottene
n2  eple        eplet       epler           epla/eplene
salt        saltet      salter          salta/saltene
n3  kontor      kontoret    kontor/kontorer kontora/kontorene
høve        høvet       HØVE/høver      høva/høvene
n4  salt        saltet      salter          salta/saltene ??
n5  middel      midlet      MIDDEL/midler   midla/midlene ??
n6  kammer      kammeret    kamre/kammer    kamra/kamrene

Subtypes

mx unclassified, to m1 by default
mX indecl
m1sg sg only
m1pl pl only
m1b dam
m1b fe, komité
m1V  sko pl. sko, skoa/skoene
m1Vb byte, pl. byte/byter, bytene
m1Vc glipp, pl. glipp, glippene
m3V meter pl. meter
m3r sykkel, vinkel vinkelen, vinkler, vinklene
ma alliert, alierte, allierte, allierte
KOLLEGA kollegaer, kolleger
mKONTO kontoer, konti
mRADIUS radiuser, radii
mBROR brødre
mFAR fedre
mMANN menn
mD gårde, garde, dage (av gårde)
fD tide (i tide)
nD live (i live)

fDATTER døtre
f1b skam
f1X bok pl. bøker
f1V mus, pl. mus

nX styrbord, zoo. indecl.
n1b rom pl. rom
n1sg sg only
n2b program pl. programmer
n2c kontor pl. kontor, kontorer
n2s mørke, not pl.
n3b lager def. lageret
n3c fe, feet
n4b faktum, faktumet, fakta, faktaene
FORUM forum, forumet, fora/forumer, foraene/forumene
nLEKSIKON leksikon, pl. leksika
nMUSEUM museum, museet, museer
n1pl odds, oddsene

## The lexica themselves

LEXICON FinalNoun is a separate lexicon to point to. For now it contains only *-skap*.

LEXICON NounRoot is the lexicon pointed to from `root.lexc` It points to
Noun ;
HyphNouns ;

LEXICON HyphNouns  contains forms only in used in first part of compounds, like *barne*.  TODO: Kanskje desse ikkje bör bli lista.

LEXICON ShortNounRoot 
The lexicon points to two lexica which are kept separate in order not to
allow them in compounding (rusle = rus + le)
2_letter ;
3_letter ;

LEXICON 2_letter is stems with two lettes.

LEXICON 3_letter  is stems with 3 letters

LEXICON Noun  here come the long list of stems (tens of thousands)

TODO: Gå gjennom mx.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/nouns.lexc)</small>

---

