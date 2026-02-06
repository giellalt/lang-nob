# Norwegian Bokmål language model documentation

All doc-comment documentation in one large file.

---

## src-cg3-disambiguator.cg3.md 


## The OBT-Giellatekno Bokmål Norwegian disambiguator 

This disambiguator is based upon the disambiguator from OBT
(Oslo-Bergen-taggeren), hereafter OBT-cg. It is adjusted to the GiellaLT FST and
extended with several rules. It contains
the morphological rules only.

The original OBT disambiguator was written in CG-1 by Kristin Hagen and
Anders Nøklestad at UiO. It was translated to CG-2 by Lars Nygård.
The conversion to CG-3 and the Tromsø format was done by Trond Trosterud.

### Delimiters and sets

The tagsets are a superset of the OBT and GiellaLT tags, so that 
the labels are kept from OBT-cg, but GiellaLT content is added when needed.

* Amount sets

### Rule section

#### Giellatekno early rules

**NotAbbr** removes abbreviations whenever alternatives

**AbbrBeforePara** removes CLB before CLB

**Nynorsk** removes all *+Nynorsk* forms (they are in use only for the dictionary interface, and that does not use disambiguation).

**aa**

**aaIM** selects +IM for *å*

##### Numerals

* Rule for adding <vdic> to verbs denoting verbal actions like: ... dadjá Aili Kestkitalo.

##### Compounds

### Mostly OBT Rules

The bulk of the file contains rules from the original OBT file.

### Giellatekno late rules

#### Neuter sg pl

#### Numerals

#### Pronouns

####  Det rules

####  V and not N

####  Prepositions

####  Late rules, Gt

####  Rules with weights
**minweight** selects reading with lowest weight.

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-nob/blob/main/src/cg3/disambiguator.cg3)</small>

---

## src-cg3-functions.cg3.md 



The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

### Syntactic tags

* @+FAUXV : finite auxiliary verb 
- ferte: Son ferte oaidnit ollislaš gova. - She must see the whole picture.
* @+FMAINV : finite main verb
- oaidná: Son oaidná ollislaš gova. - She sees the whole picture	
* @-FAUXV : infinite auxiliary verb
- sáhte: In sáhte gáhku borrat. - I cannot eat cake.	
* @-FMAINV : infinite main verb
- oaidnit: Son ferte oaidnit ollislaš gova. - She must see the whole picture.
* @-FSUBJ> : Subject of infinite verb outside the verbal.
- mu: Diet dáhpáhuvai mu dieđikeahttá. - It happened without me knowing about it.
* @-F<OBJ : Subject of infinite verb outside the verbal.
- nuppi: Ulbmil lea oažžut nuppi boagustit. - The goal is to get the other one to laugh.
* @-FOBJ> : Object of infinite verb outside the verbal.
- váldovuoittuid: Sii vurde váldovuoittuid fasket. - They waited to grab the main prizes.
* @SPRED<OBJ : Object of an subsject predicative. (some adjectives are transitive)
- guliid: Mánát leat oažžulat guliid.
* @-FADVL : Adverbial complement of infinite verb outside the verbal.
- várrogasat: Dihkkadeaddji rávve skohtervuddjiid várrogasat mátkkoštit. - The roadman warns snowscooter drivers to drive carefully.
* @>ADVL : Modifier of an adverbial to the right.
- vaikko: doppe leat vaikko man ollu studeanttat.
* @ADVL< : Komplement for adverbial.
- vahkus: Son málesta guktii vahkus.
* @<ADVL : Adverbial after the main verb.
- dás: Eanet dieđuid gávnnat dás.
* @ADVL> : Adverbial to the left of the main verb
- viimmat: Dál de viimmat asttan lohkat reivve.
* @ADVL>CS : Adverbial modifying subjunction.
- 'beare' pointing at 'danin go': Muhto dus ii leat riekti dearpat su beare danin go sáhtát.
* <hab> : Habitive, specifying an adverbial, e.g. @ADVL> <hab>
- Máhtes: Máhtes lea beana.
* <ext> : Extencial, specifying an subject, e.g. @<SUBJ <ext>
- beana: Máhtes lea beana.
* <logo> : logoforic pronouns, e.g. @>N <logo> (for MT)
* <cs> : 
* @>N : Modifier of a noun to the right.
- geavatlaš: Ráđđehussii lea geavatlaš politihkka deaŧalaš. - For the government, practical politics is important.
* @N< : Complement of noun to the left.
- vihtta: Mun boađán diibmu vihtta.
* @>A : Modifier of an adjective to the right.
- juohke: Seminára lágiduvvo juohke nuppi jagi.
* @P< : Complement of preposition.
- soađi: Dat dáhpáhuvai maŋŋel soađi.
* @>P : Complement of postposition.
- riegádeami: Seta riegádeami maŋŋel Áttán elii vel 800 jagi.
* @HNOUN : Stray noun in sentence fragment.
- muittut: Fidnokurssa muittut.
* @INTERJ : Interjection.
- Hei: Hei, boađe!
* @>Num : Attribute of numeral to the right.
- dušše: Mun ledjen dušše guokte mánu doppe.
* @Pron< : Complement of pronoun to the left.
- Birehiin: Moai Birehiin leimme doppe.
* @>Pron : Modifyer of pronoun to the right.
- vaikko: Olmmoš sáhttá bargat vaikko maid.
* @Num< : Complement of numeral to the left.
- girjjiin: Dat lea okta min buoremus girjjiin.
* @OBJ : Object, the verb is not in the sentence (ellipse)
* @<OBJ : Object, the verb is to the left.
- gávtti: Son goarru gávtti.
* @OBJ> : Object, the verb is to the right.
- filmma: Dán filmma leat Kárášjoga nuorat oaidnán.
* @OPRED : Object predicative, the verb is not in the sentence (ellipse).
* @<OPRED : Object predicative, the verb is to the left.
- buriid: Son ráhkada gáhkuid hui buriid.
* @OPRED> : Object predicative, the verb is to the right.
- dohkkemeahttumin: Son oinnii dohkkemeahttumin bargat ášši nu.
* @PCLE : Particle.
- Amma: Amma mii eat leat máksán? - We have not paid, have we?
* @COMP-CS< : Complement of subjunction.
- vejolaš: Dat šaddá nu buorre go vejolaš.
* @SPRED : Subject predicative, the verb is not in the sentence (ellipse).
* @<SPRED : Subject predicative, the verb is to the left.
- árgabivttas: Ovdal lei gákti árgabivttas.
* @SPRED> : Subject predicative, the verb is to the left.
- álbmogin: Sápmelaččaid historjá álbmogin lea duháhiid jagiid boaris.
* @SUBJ : Subject, the finite verb is not in the sentence (ellipse).
* @<SUBJ : Subject, the finite verb is to the left.
- gákti: Ovdal lei gákti árgabivttas.
* @SUBJ> : Subject, the finite verb is to the right.
- Son: Son lea mu oabbá. - Sheis my sister.
* @PPRED : Predicative for predicative.
* @APP : Apposition
* @APP-N< : Apposition to noun to the left.
- oahpaheaddji: Oidnen Ánne, min oahpaheaddji.
* @APP-Pron< : Apposition to pronoun to the left.
- boazodoalloáirasat: Ja moai boazodoalloáirasat áigguime vaikko guovttá joatkit barggu.
* @APP>Pron : Apposition to noun to the right.
* @APP-Num< : Apposition to numeral to the left.
* @APP-ADVL< : Apposition to adverbial to the left.
- bearjadaga: Mun vuolggán ihttin, bearjadaga.
* @VOC : Vocative
- Miss Turner : Bures boahtin deike, Miss Turner! - Welcome her, Miss Turner!
* @CVP : Conjunction or subjunction that conjoins finite verb phrases.
- go : Leago guhkes áigi dassá go Máreha oidnet? - Is it a long time since you saw Máret?
* @CNP : Local conjunction or subjunction.
- vai : Leago nieida vai bárdni? - Is it a girl or a boy?
* @CMPND
* @X : The function is unknown, e.g. because of that the word is unknown

* Syntactic sets

These were the set types.

* Border sets and their complements

* Syntactic sets

These were the set types.

### Numeral outside the sentence

Finite verbs

### Numeral outside the sentence

* **n<titel1** (@N<) for ("jr") or ("sr"); if first one to the left is Prop

* **n<titel2** (@N<) for INITIAL; if first one to the left is a noun, or if to the left of you is a single letter which is part of a noun conjunction *bustávas e ja f gáibiduvvo*

* **<advlPoPr** (@<ADVL) for Po or Pr; if mainverb to the left.
* **advlPoPr>** (@<ADVL) for Po or Pr; if mainverb to the right.

* **BOSPo>** (@ADVL>) for Po; if trapped between BOS to the right and S-BOUNDARY OR COMMA to the left, because the main verb will then automatically be on your right side.

* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) for Adv if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.

### HNOUN MAPPING

### Complex sentences

####  **missingX** adds @X to all missings

####  **therestX** adds @X to all what is left, often errouneus disambiguated forms

### For Apertium:
The analysis give double analysis because of optional semtags. We go for the one with semtag.

* * *

<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-nob/blob/main/src/cg3/functions.cg3)</small>

---

## src-cg3-nob-functions.cg3.md 



* Sets for POS sub-categories

* Sets for Semantic tags

* Sets for Morphosyntactic properties

* Sets for verbs

- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.

* The set COPULAS is for predicative constructions

* NP sets defined according to their morphosyntactic features

* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

* Miscellaneous sets

* Border sets and their complements

* Syntactic sets

These were the set types.

### Some particular subjunctions

### Adverb rules

## MAPPING OF COMP-CS< , COMPLEMENTS OF PARTICLES IN COMPARISON
First map all COMP-CS<, then remove the other readings

* **killAllnotComp** Removes analysis which are not @COMP-CS<

- *This was the kill all not Comp rule!!*

## MAPPING OF CC AND CS

Mostly we map both @CNP and @CVP, then we select @CNP, after that we remove them so @CVP remains

* **cnpCompSC** Map @CNP if @COMP-CS< or COMPAR ahte

* **cnpCompSpec** special rule because of PrfPrc = VFIN

* **CSasCVP** Map @CVP to CS

* **CCasCNPCVP** Map (@CNP @CVP) to CC

* **killAllCNP** removes all remaining @CNP

* **XCC-CS** removes CC and CS with no synttag

## VERB MAPPINGS

### Verbs as predicatives (@SPRED>) and (@<OPRED) 

#### The tags (@SPRED>) and (@<OPRED) target  PrfPrc
The rules are no documented yet

### Passive verbs often have 

### Verbs as prenominal participles (@>N):

#### (@<SUBJ)  target Inf

#### (@+FMAINV) and (@+FAUXV) and (@-FAUXV)

* **-FAUXVaux** AUX verbs     

* **+FMAINVCop**  copulas even if PrfPrc coming after

* **+FAUXVCop**  copulas coming before the mainverb

* **+FMAINVAux1**  

* **+FAUXVCop**  copulas coming after the mainverb

* **+FMAINVCop**  copulas 	

* **+FMAINV**  to the remaining finite verbs which are not AUX    

* **+FMAINV**  to finite verb after mainverb

#### (@-FMAINV) and (@-FAUXV)

* **-FAUXVPrfPrcAux**  to PrfPrc AUX  before Inf or Actio Ess

* **-FMAINVPrfPrc**  to PrfPrc 

* **-FMAINVPrfPrccoord**  to PrfPrc coordination	

* **-FMAINVPrfPrccoord**  to PrfPrc coordination	

* **-FMAINVPrfbeforeAux**  to PrfPrc before the Aux	

* **-FMAINVPrfafterMan**  to PrfPrc before the Aux	

* **-FMAINVInf**  to Inf

* **+FAUXV** to  Aux

* **PrfPrcEllipsis** being verbal head when finite verb is missing

#### And then we remove the verbs which didn't get any syntactic tag, in favour of verbs with syntactic tags.

* **realverbX**

#### **killifVinCohort** This rule removes all other readings, if there is a mapped V reading in the same cohort. Every case which this goes wrong, should be fixed in mapping rules or previous disrules.

* **X**

## NOUNS

## CASE DISAMBIGUATION

* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).

### HNOUN MAPPING

* * *

<small>This (part of) documentation was generated from [src/cg3/nob-functions.cg3](https://github.com/giellalt/lang-nob/blob/main/src/cg3/nob-functions.cg3)</small>

---

## src-fst-morphology-affixes-abbreviations.lexc.md 


## Continuation lexicons for abbreviations

### Lexica for adding tags and periods

### The sublexica

#### Continuation lexicons for abbrs both with and witout final period

* **LEXICON ab-noun   **

* **LEXICON ab-adj   **

* **LEXICON ab-adv   **

* **LEXICON ab-num   **

#### Lexicons without final period

* **LEXICON ab-nodot-noun   **  The bulk

* **LEXICON ab-nodot-adj   **

* **LEXICON ab-nodot-adv   **

* **LEXICON ab-nodot-num   **

#### Lexicons with final period

* **LEXICON ab-dot-noun   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-adj   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-adv   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-num   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-cc   **

* **LEXICON ab-dot-verb   **

* **LEXICON ab-dot-IVprfprc   **

* **LEXICON DOT   ** - Adds the dot to dotted abbreviations.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/abbreviations.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/affixes/abbreviations.lexc)</small>

---

## src-fst-morphology-affixes-adjectives.lexc.md 

## Sublexica for adjective roots

* a1  god         god         godt        gode
* a1b stum        stum        stumt       stumme
* a2  norsk       norsk       norsk       norske
* a3  ekte        ekte        ekte        ekte
* a4  oppskjørtet oppskjørtet oppskjørtet oppskjørtede/oppskjørtete
* a5  makaber     makaber     makabert    makabre
*     lunken      lunken      lunkent     lunkne
* aV  blå         blå         blått       blå

### Basic paradigms

a23

#### Sublexica

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adjectives.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/affixes/adjectives.lexc)</small>

---

## src-fst-morphology-affixes-nouns.lexc.md 

## Bokmål noun morphology 

---------------------------------------------------
Declension classes
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
n1  slott       slottet     slott           slotta/slottene
n2  eple        eplet       epler           epla/eplene
salt        saltet      salter          salta/saltene
n3  kontor      kontoret    kontor/kontorer kontora/kontorene
høve        høvet       HØVE/høver      høva/høvene
middel      midlet      MIDDEL/midler   midla/midlene
n4  salt        saltet      salter          salta/saltene ??
n5  middel      midlet      midler          midla/midlene ??
n6  kammer      kammeret    kamre/kammer    kamra/kamrene

Subtypes, mainly from Finsk-norsk ordbok, also system-specific

x  unclassified, to m1 by default
mX indecl
m1sg sg only
m1pl pl only
m1b dam
m1b fe, komite
m1V sko pl. sko, skoa/skoene
m1Vb byte, pl. byte/byter, bytene
m1Vc glipp, pl. glipp, glippene
m3V meter pl. meter
m3b finger pl. fingrer/fingre
m3c forelder pl. foreldre
ma alliert, alierte, allierte, allierte
KOLLEGA kollegaer, kolleger
KONTO kontoer, konti
RADIUS radiuser, radii
BROR brødre
FAR fedre
MANN menn
mD gårde, garde, dage  (av gårde)
fD tide (i tide)
nD live (i live)
DATTER døtre
f1b skam
f1X bok, pl. bøker
f1V mus, pl. mus
fGLO glo, pl. glør
f3b lever. def. levra
n1b rom, def. rommet
n1n1b publikum, def. publikumet/publikummet
n1s sg only
n2b program, pl. programmer
n2c kontor, pl. kontor, kontorer
n2s mørke, not pl.
n3b lager, def. lageret
n3c fe, feet
n3d søppel, søppelet/søplet, søppel/søpler, søpla/søplene
n4b faktum, pl. fakta
FORUM forum, forumet, fora/forumer, foraene/forumene
LEKSIKON leksikon, pl. leksika
nMUSEUM museum, museet, museer
nØYE

### Basic paradigms

##### Irregulars

+N+Fem+Sg+Def+Radical:datra    K ;
+N:         R ;

`NO CODE` for nynorsk only.

`NO CODE` for nynorsk only.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/nouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/affixes/nouns.lexc)</small>

---

## src-fst-morphology-affixes-numerals.lexc.md 

## Tags for numerals (number words)

### Basic tags
numtag for all numerals

numtagsg for *en*

### Tags for special use

* **LEXICON ARABICCASEORD**  adds +Arab

* **LEXICON ARABICCASE**  adds +Arab

* **LEXICON ARABICCASES**  adds +Arab

* **LEXICON ARABICCOMPOUNDS**  ! arabic as first part,

* **LEXICON ARABICCASECOLL**  adds +Arab

* **LEXICON ARABICCASE0**  adds +Arab

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/numerals.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/affixes/numerals.lexc)</small>

---

## src-fst-morphology-affixes-propernouns.lexc.md 

## Propernoun morphology

FirstTag 

PROP 

PROP-surmal 

PROP-malfem 

... one lexicon for each combined tag,to split them.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

## src-fst-morphology-affixes-symbols.lexc.md 


## Symbol affixes

Noun_symbols_possibly_inflected 

Noun_symbols_never_inflected 

SYMBOL_connector 

SYMBOL_NO_suff 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

## src-fst-morphology-affixes-verbs.lexc.md 

## Sublexica for verb roots

-----------------------------
Main types, from Bokmålsordboka
v1  kaste       kaster      kasta       kasta
kastet      kastet
v2  lyse        lyser       lyste       lyst
reparere    reparerer   reparerte   reparert
v3  leve        lever       levde       levd
v4  nå          når         nådde       nådd
v4  bie         bier        bidde       bidd

Subtypes
v12 v1 or v2
v13 v1 or v3
v14 v1 or v4
v1-s passive v1 verbs
v2-s passive v2 verbs
v3-s passive v3 verbs

### Sublexica for regular verbs 

#### Preliminary lexica

**LEXICON vx** points to v1.

**LEXICON v12** for both v1 and v2 past forms, or: score -> scoret, scorte (NG  = do not generate)

**LEXICON v12et** for verbs with v2 and the -et forms of v1, like "skynde" (but not "tilskynde", "framskynde" etc.)

**LEXICON v13** also here: v1, v3: sveve -> svevet (NG), svevde.

**LEXICON v13et** for verbs with v3 and the -et forms of v1, like "tygge"

**LEXICON v23** 

**LEXICON v14** where v4 is NG

**LEXICON v1** =  kaste

**LEXICON v2** = blåse, studere

**LEXICON v3** =  leve

**LEXICON v4** =  ro, bie

**LEXICON v1-s** =  undres

**LEXICON v2-s** =  føles, synes

**LEXICON v3-s** =  trives

### Conjugation sublexica

**LEXICON inf-prsptc** = 

**LEXICON regpres** = 

**LEXICON r-pres** = 

**LEXICON a-et-pret** = 

**LEXICON et-pret** = 

**LEXICON te-pret** = 

**LEXICON de-pret** = 

**LEXICON dde-pret** = 

**LEXICON prsptcsuff** = 

#### Sublexica for irregular verbs 

* **LEXICON BE** 
* **LEXICON BINDE** 
* **LEXICON XITE** 
* **LEXICON BLI** 
* **LEXICON BLIVE** 
* **LEXICON BRENNE** 
* **LEXICON BRESTE** 
* **LEXICON BRINGE** 
* **LEXICON BRISTE** 
* **LEXICON XYTE** = yte, flyte, tryte
* **LEXICON BURDE** 
* **LEXICON BY** 
* **LEXICON XYDE** = lyde, tyde, syde, ... 
* **LEXICON BÆRE** 
* **LEXICON XETTE** 
* **LEXICON DRA** 
* **LEXICON XIKKE** = drikke
* **LEXICON DRIVE** 
* **LEXICON DRITE** 
* **LEXICON DØLGE** 
* **LEXICON DØ** 
* **LEXICON EIE** 
* **LEXICON ETE** 
* **LEXICON FALLE** 
* **LEXICON FARE** 
* **LEXICON FINNE** 
* **LEXICON FINNES** 
* **LEXICON FISE** 
* **LEXICON FLY** 
* **LEXICON LYGE**
* **LEXICON LYVE**
* **LEXICON LJUGE**
* **LEXICON FLYGE**
* **LEXICON FLYTE**
* **LEXICON LATE**
* **LEXICON FRYSE**
* **LEXICON FYKE**
* **LEXICON FÅ**
* **LEXICON FØLGE**
* **LEXICON GALE**
* **LEXICON GIDDE**
* **LEXICON GI**
* **LEXICON GJELDE**
* **LEXICON GJØRE**
* **LEXICON GLEPPE**
* **LEXICON GLI**
* **LEXICON XIPPE** = glippe, slippe
* **LEXICON GNAGE**
* **LEXICON GNI**
* **LEXICON GRAVE**
* **LEXICON GRINE**
* **LEXICON GRIPE**
* **LEXICON GRÅTE**
* **LEXICON GYSE**
* **LEXICON GYTE**
* **LEXICON GYVE**
* **LEXICON GÅ**
* **LEXICON HA**
* **LEXICON HENGE**
* **LEXICON HETE**
* **LEXICON HIVE**
* **LEXICON HJELPE**
* **LEXICON HOGGE**
* **LEXICON HOLDE**
* **LEXICON HUGGE**
* **LEXICON KLINGE**
* **LEXICON KLIPE**
* **LEXICON KLIVE**
* **LEXICON XYPE** = klype:kl
* **LEXICON KLYVE**
* **LEXICON XEKKE** = knekke, kvekke
* **LEXICON KNESTE**
* **LEXICON KNETTE**
* **LEXICON KNIPE**
* **LEXICON KOMME**
* **LEXICON KUNNE**
* **LEXICON LA**
* **LEXICON LE**
* **LEXICON LEGGE**
* **LEXICON LIGGE**
* **LEXICON LYDE**
* **LEXICON MÅTTE**
* **LEXICON MØTE**
* **LEXICON PIPE**
* **LEXICON RIVE**
* **LEXICON RYKE**
* **LEXICON SETTE**
* **LEXICON SELGE**
* **LEXICON SE**
* **LEXICON SIGE**
* **LEXICON SITTE**
* **LEXICON SI**
* **LEXICON SKJELVE**
* **LEXICON SKJÆRE**
* **LEXICON SKLI**
* **LEXICON SKRIDE**
* **LEXICON RIDE**
* **LEXICON LIDE**
* **LEXICON KVEDE**
* **LEXICON SKRIKE**
* **LEXICON SKRIVE**
* **LEXICON SKRYTE**
* **LEXICON SKULLE**
* **LEXICON SKVETTE**
* **LEXICON SKYTE**
* **LEXICON SKYVE**
* **LEXICON SLEPPE**
* **LEXICON SLÅSS**
* **LEXICON SLÅ**
* **LEXICON SMELLE**
* **LEXICON SMETTE**
* **LEXICON SMYGE**
* **LEXICON SMØRE**
* **LEXICON SNIKE**
* **LEXICON SNYTE**
* **LEXICON SOVE**
* **LEXICON SPINNE**
* **LEXICON SPREKKE**
* **LEXICON SPRETTE**
* **LEXICON SPRINGE**
* **LEXICON SPØRRE**
* **LEXICON STELE**
* **LEXICON STIGE**
* **LEXICON STIKKE**
* **LEXICON STJELE**
* **LEXICON STREKKE**
* **LEXICON STRIDE**
* **LEXICON STRYKE**
* **LEXICON STÅ**
* **LEXICON STØKKE**
* **LEXICON SVELTE**
* **LEXICON SVERGE**
* **LEXICON SVI**
* **LEXICON SVIKE**
* **LEXICON SVINGE**
* **LEXICON SVINNE**
* **LEXICON SVIVE**
* **LEXICON SYNGE**
* **LEXICON SYNKE**
* **LEXICON SØKKE**
* **LEXICON TA**
* **LEXICON TELLE**
* **LEXICON TIE**
* **LEXICON TRE_V**
* **LEXICON TORE**
* **LEXICON TREFFE**
* **LEXICON TREKKE**
* **LEXICON TRIVE**
* **LEXICON TRYTE**
* **LEXICON TRÅ**
* **LEXICON TVINGE**
* **LEXICON TYTE**
* **LEXICON TØRRE**
* **LEXICON VEIE**
* **LEXICON VELGE**
* **LEXICON VEVE**
* **LEXICON VIKE**
* **LEXICON VILLE**
* **LEXICON VINDE**
* **LEXICON VINNE**
* **LEXICON VITE**
* **LEXICON VRI**
* **LEXICON VÆRE**
* **LEXICON UNNVÆRE**
* **LEXICON XREKKE** = brekke, overrekke, radbrekk, rekke

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>

---

## src-fst-morphology-compounding.lexc.md 


## Norwegian Bokmål compounding

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/compounding.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/compounding.lexc)</small>

---

## src-fst-morphology-phonology.twolc.md 

## Morphophonological rules for Bokmål

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-nob/blob/main/src/fst/phonology.twolc) 

### Sets and definitions

#### Alphabet

We declare both the a-å letters and all other possible letters.
* **a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å** 
* **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý þ ñ ð ß ç**
* **A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Æ Ø Å**
* **Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã Ý þ Ñ Ð**
* **'** This is the apostrophe
* **l7:l** This **l** not deleted by **t**
* **e7:e** This **e** not deleted by vowel-initial suffixes (ide - ideen)

#### Boundary symbols

Morpheme boundaries and escaped quotes - do not delete in twolc,
they will be converted to zero/the real thing at a later stage.

* **%#**
* **%>**
* **%<**
* **%\|»**
* **%\|«**
* **%[%<%]**
* **%[%>%]**

#### Morphophonological triggers

These symbols cause the twolc rules to work.

##### Triggers for nominal rules
* **X1:0** = Epenthetic vowel moden:modne
* **X2:0** = ...
* **X3:0** = Plural r deletion -er, -ene
* **X4:0** = dumm:dum Delete m
* **X5:0** = um deletion, faktum:fakta
* **X6:0** = t:d weakening, oppskjørtet:oppskjørtede

##### Trigers for verbal rules
* **Q1:0** = Passive
* **Q2:0** = ...
* **Q3:0** = Verb vowel and geminate deltion kalte, fylte

##### Triggers for common rules (both for N and V)
* **Z1:0** = o:ø, a:e Umlaut
* **Z2:0** = protects vowel

##### Nynorsk trigger
* **%^NYNAG:0 ;** Trigger for Nynorsk dictionary forms.

#### Sets

* **Vow = a e i o u y æ ø å e7 ;**
* **Cns = b c d f g h j k l m n p q r s t v w x z l7 ;**
* **LNR = l n r ;**
* **Dummy = X1 X2 X3 X4 X5 X6 Q1 Q2 Q3 Z1 Z2 %^NYNAG ;**

### Rule section

This section shows the twolc rules and the tests used to check whether they work

#### Umlaut

**Umlaut Rule**  for *bok : bøker* etc. It shifts the vowels *u, o, a, å* to *y, ø, e, e*, respectively when **Z1** is found after the stem.

#### Vowel deletions rules

**Epenthetic Deletion Rule**  is actually 3 rules in one: 1) it deletes -e- in *moden : modne* etc, 2) it deletes the stem -e in *hare + -er* and 3) it delets suffix -e in *ærlig + est > ærligst*

*Tests:* (star denotes negativ test, test that is supposed to fail)

**Delete foreign vowel Rule**  for deleting final a or o in words like *kollega : kolleger*. Trigger symbol to the right is **X2**.

*Tests:*

#### Consonant deletion

**Consonant shortening before deletion Rule**  

*Tests:*

**Geminate deletion in front of -t and -d Rule** deletes: 1) before **Q3 and d or t** (*kaller:kalte*) 2) before passive **Q1 t** (*lykkes:lyktes*) and 3) before epenthetic **-e-** and **l, n** or **r** (*sikker:sikre*)

*Tests:*

**Delete r Rule** deletes **r** in plural *-er* to get *-er + -ne* = plural *-ene* 

**Delete m Rule** for *kam:kammen*, here we delete the second m when word-final.  

**um Deletion 1 Rule** (um Deletion 2 is now part of the *Delete m Rule*)

*Tests:*

**t weakening Rule**  

*Tests:*

**Double t deletion Rule**  

*Tests:*

#### Insertion rules

#### Compound rule

*Tests:*
* *grammatikk##kontroll*
* *grammatik000kontroll*

#### Clitics

**Clitic after s-final Rule**  for changing the so-called *genitive -s* to **'** for s-final stems: *huss -> hus'*

#### Nynorsk dictionary rules

**Change -er stem to -ar in Nynorsk**  

This rule is for dictionary use only. The idea is to be able to click on words in a Nynorsk text and get translation to North Sámi. Therefore, the Bokmål analyser is able to give an analysis to Nynorsk words as well. The Nynorsk-only forms are removed from all other transducers than the `-dict` transducer.

* *a*
* *b*

Test to have an error
* ★*a* (is not standard language)
* ★*b* (is not standard language)

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/phonology.twolc)</small>

---

## src-fst-morphology-root.lexc.md 


## Norwegian Bokmål morphological analyser                      
this documents the symbols and intro lexicon of **Norwegian Bokmål**.

**Multichar_Symbols** 

Here we declare the **tags** and all other multicharacter symbols.

### Grammatical tags

#### Part of speech

- **+N +A +Adv +V** = Open parts of speech
- **+CS +CC +Interj +Pcle +Pr +IM** = Closed POS (IM = **å**)
- **+Pers +Dem +Interr +Refl +Recipr +Rel +Qnt** 

#### Subtags

* **+ING** = ing-derivation
* **+Indef +Def +Poss +Indcl** = 
* **+Sg +Pl** = 
* **+Sg1 +Sg2 +Sg3 +Pl1 +Pl2 +Pl3** = 
* **+Pron +Nom +Acc +Dat +Det** = 
* **+Msc +Fem +Neu +MF** = Gender. MF = Masc or Fem (used for adjs, not nouns)
* **+Pos +Comp +Superl** = For adjectives
* **+Clt** = the so-called "genitive s"
* **+Dat** = for fixed expressions *i live*
* **+Pass +Ind +Prs +Prt +Imp** = for verb voice, mood, tense
* **+Inf +PrsPrc +PrfPrc** = for infinite verbs
* **+Prop** = Propernouns are tagged +N+Prop
* **+Qnt** = quantifier noen, begge
* **+Intens** = **hmm, what is this...**

#### Other tags

* **+CLB +PUNCT +HYPH +LEFT +RIGHT +MIDDLE**
* **+CLBfinal**  Sentence final abbreviated expression ending in full stop, so that the full stop is ambiguous
* **+Cmp** 
* **+Cmp/e** declaring both awaiting cleanup
* **+Cmp/s** 
* **+Cmp/null** declaring both awaiting cleanup
* **+Symbol** = independent symbols in the text stream, like £, €, ©
* **+Ex/V** for derivation
* **+Ord** 
* **+Prdt** 
* **+Qst** 

NDS analyser tags

* **+Nynorsk**  For dictionary use., Nynorsk only
* **+Radical**  For dictionary testing, Radical Bokmål

* **+X**  denoting not-checked.
* **+1 +2 +3**  not in use??

### Morphophonology

#### Triggers

* **X1 X2 X3 X4 X5 X6** = Nominal stems
* **Q1 Q2 Q3** = Verbal stems
* **Z1 Z2** = Both verbal and nominal stems
* **%^NYNAG** =  Nynorsk agens lærar / lærer

#### Special symbols

* **e7** =  always e (ide - ideen)
* **l7** =  always l
* **+Use/Circ** = circular string

#### Derivation

* **+Der/AAdv** = Adjectives are also adverbs
* **+Der/NomAct** = verb +ing
* **+Der1** = derivation position
* **+Der** = mark derivation

#### Normativity and other usage tags

* **+Err/Orth**    For speller use
* **+Err/Hyph** 
* **+Err/Lex** 
* **+Err/SpaceCmp** 
* **+Err/MissingSpace** 
* **+Use/NG** 
* **+Use/-Spell**
* **+Use/-TTS–**
* **+Use/-TTS-**
* **+Use/-PLX** 
* **+Use/SpellNoSugg** 
* **+Use/NG** not-generate, for ped generation isme-ped.fst and MT
* **+Use/PMatch** means that the following is only used in the analyser feeding the disambiguator
* **+Use/-PMatch** Do not include in fst's made for hfst-pmatch
* **+Use/GC** only retained in the HFST Grammar Checker disambiguation analyser
* **+Use/-GC** never retained in the HFST Grammar Checker disambiguation analyser
* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+MWESplit** Split point for MWE
* **+Span** - used for numerical expressions denoting spans or intervals, like 5-10, 2012-2015, etc  

### Other tags
* **+ABBR** 
* **+ACR** 
* **+Arab** 
* **+Attr** 
* **+Coll** 
* **+Dyn** 
* **+MWE** 
* **+Num** 
* **+Rom** 

### Paradigm generation

* **+v1** 
* **+v2** 
* **+v3** 

####  Tags for abbreviation handling

* **+Gram/IAbbr** 
* **+Gram/TAbbr** 
* **+Gram/TNumAbbr** 
* **+Gram/NumNoAbbr** 

####  Semantic tags

#### Semtags

* **+Sem/Amount** 
* **+Sem/Ani** 
* **+Sem/Atr** 
* **+Sem/Build** 
* **+Sem/Build-room** 
* **+Sem/Cat** 
* **+Sem/Curr** 
* **+Sem/Date** 
* **+Sem/Domain** 
* **+Sem/Domain_Hum** 
* **+Sem/Dummytag** 
* **+Sem/Edu** 
* **+Sem/Edu_Hum** 
* **+Sem/Event** 
* **+Sem/Fem** 
* **+Sem/Food-med** 
* **+Sem/Group_Hum** 
* **+Sem/Hum** 
* **+Sem/ID** 
* **+Sem/Lang** 
* **+Sem/Mal** 
* **+Sem/Mat** 
* **+Sem/Measr** 
* **+Sem/Money** 
* **+Sem/Obj** 
* **+Sem/Obj-el** 
* **+Sem/Obj-ling** 
* **+Sem/Org** 
* **+Sem/Org_Prod-audio** 
* **+Sem/Org_Prod-vis** 
* **+Sem/Part** 
* **+Sem/Plc** 
* **+Sem/Prod-vis** 
* **+Sem/Route** 
* **+Sem/Rule** 
* **+Sem/Sign** 
* **+Sem/State** 
* **+Sem/State-sick** 
* **+Sem/Substnc** 
* **+Sem/Sur** 
* **+Sem/Time** 
* **+Sem/Time-clock** 
* **+Sem/Tool-it** 
* **+Sem/Txt** 
* **+Sem/Veh** 
* **+Sem/Year** 

### Preprocessing

* **+Use/PMatch** 
* **+Use/-PMatch** 

### Symbols that need to be escaped on the lower side (towards twolc):
* **»7**:  Literal »
* **«7**:  Literal «
```
%[%>%] - Literal >
%[%<%] - Literal <
```

### Compounding

* +Cmp/Hyph - 

### Language codes

* +OLang/SME - North Sámi
* +OLang/SMJ - Lule Sámi
* +OLang/SMA - South Sámi
* +OLang/FIN - Finnish
* +OLang/HUN - Finnish
* +OLang/SWE - Swedish
* +OLang/NOB - Norw. bokmål
* +OLang/NNO - Norw. nynorsk
* +OLang/ENG - English
* +OLang/RUS - Russian
* +OLang/UND - Undefined

### Flag diacritics

#### Flags for ErrOrth

* @C.ErrOrth@ - 
* @D.ErrOrth.ON@ - 
* @P.ErrOrth.ON@ - 
* @R.ErrOrth.ON@ - 

#### Flags for compounding

We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

|   Flag | Comment
| --- | --- 
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

|   Flag | Comment
| --- | --- 
|  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@ | Block these words from making further compounds
|  @D.CmpLast.TRUE@ | Block such words from entering R
|  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

The tags are of the following form:
* **+CmpNP/xxx** - Normative (N), Position (P), ie the tag describes what
position the tagged word can be in in a compound
* **+CmpN/xxx**  - Normative (N) **form** ie the tag describes what
form the tagged word should use when making compounds
* **+Cmp/xxx**   - Descriptive compounding tags, ie tags that *describes*
what form a word actually is using in a compound

This entry / word should be in the following position(s):

* **+CmpNP/All** - ... in all positions, **default**, this tag does not have to be written
* **+CmpNP/First** - ... only be first part in a compound or alone
* **+CmpNP/Pref** - ... only **first** part in a compound, NEVER alone
* **+CmpNP/Last** - ... only be last part in a compound or alone
* **+CmpNP/Suff** - ... only **last** part in a compound, NEVER alone
* **+CmpNP/None** - ... does not take part in compounds
* **+CmpNP/Only** - ... only be part of a compound, i.e. can never
be used alone, but can appear in any position

####  Flags for governing initial capital

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

|   Flag | Comment
| --- | --- 
|  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.

| Flag diacritic | Explanation
| :------------- |:-----------
| @U.number.one@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.two@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.three@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.four@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.five@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.six@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.seven@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.eight@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.nine@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.zero@ | Flag used to give arabic numerals in smj different cases ;

#### Flags for preprocessing

* @P.Pmatch.Loc@ - 
* @P.Pmatch.Backtrack@ - 
* @PMATCH_BACKTRACK@ - 

### Basic lexica, pointing to the other lexicon files

#### LEXICON Root
* FinalNoun ; for -skap etc. that is affix rather than compound
* ShortNounRoot ; 2- and 3-letter words
* NounRoot ; The rest
* ProperNoun ;
* AdjectivePrefix ; = kjempeinteressant leksikon, sjå nedanfor.
* VerbRoot ;
* Adverb ;
* Subjunction ;
* Conjunction ;
* Preposition ;
* Interjection ;
* Pronoun ;
* Numeral ;
* Punctuation ;
* Symbols ;
* Abbreviation ;
* Acronym-smi ;
* Nynorsk ; Accepts nno forms, does not generate, changed from Use/NG to have speller work.

### Other lexica

#### LEXICON AdjectivePrefix pointing to:
* kjempe AdjectiveRoot ; - 
* super AdjectiveRoot ; - 
* AdjectiveRoot ; - 

#### LEXICON Abbreviation pointing to:
* Abbreviation-nob ; - 
* Abbreviation-smi ; - 

#### LEXICON ProperNoun pointing to: 
* @U.CmpHyph.TRUE@ ProperNoun-smi-nocomp ; =  Lexicon for short names - always require hyphen
* ProperNoun-smi ; =  SMI proper nouns
* ProperNoun-nob ; =  contains the full nob name list

### Sublexica for NounRoot

This table shows the codes for nominal and verbal inflection. Irregular inflection has separate codes:

|   kode | sg.ind. | sg.def | pl.ind. | pl.def.
| --- | --- | --- | --- | --- 
|  f1  | bru         | brua        | bruer       | bruene
|  f2  | pumpe       | pumpa       | pumper      | pumpene
|  m1  | stol        | stolen      | stoler      | stolene
|      | bakke       | bakken      | bakker      | bakkene
|      | pumpe       | pumpen      | pumper      | pumpene
|  m2  | lærer       | læreren     | lærere      | lærerne
|  m3  | bever       | beveren     | bevere      | beverne
|      |             |             | bevre(r)    | bevrene
|  n1  | slott       | slottet     | slott       | slotta/slottene
|  n2  | eple        | eplet       | epler       | epla/eplene
|      | salt        | saltet      | salter      | salta/saltene
|  n3  | kontor      | kontoret    | kontor      | kontora
|      |             |             | kontorer    | kontorene
|      | høve        | høvet       | høve/høver  | høva/høvene
|      |             |           |             | 
|  a1  | god         | god         | godt        | gode
|  a2  | norsk       | norsk       | norsk       | norske
|  a3  | ekte        | ekte        | ekte        | ekte
|  a4  | oppskjørtet | oppskjørtet | oppskjørtet | oppskjørtede/oppskjørtete
|  a5  | makaber     | makaber     | makabert    | makabre
|      | lunken      | lunken      | lunkent     | lunkne
|      |             |           |             | 
|  v1  | kaste       | kaster      | kasta       | kasta
|      |             |             | kastet      | kastet
|  v2  | lyse        | lyser       | lyste       | lyst
|  v3  | leve        | lever       | levde       | levd
|  v4  | nå          | når         | nådde       | nådd
|  v4  | bie         | bier        | bidde       | bidd

### Clitics

#### K pointing nouns here to get "genitive" -s
* **+Clt:%>s ENDLEX ;** 
* **ENDLEX ;** 

## Lexicon ENDLEX
And this is the ENDLEX of everything:
```
@D.CmpOnly.FALSE@@D.CmpPref.TRUE@@D.NeedNoun.ON@ # ;
```
The `@D.CmpOnly.FALSE@` flag diacritic is ued to disallow words tagged
with +CmpNP/Only to end here.
The `@D.NeedNoun.ON@` flag diacritic is used to block illegal compounds.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/root.lexc)</small>

---

## src-fst-morphology-stems-adjectives.lexc.md 

## Norwegian Bokmål Adjectives

This file documents the Bokmål adjective stem file [stems/adjectives.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/adjectives.lexc).

### Overview of the declension classes

----------------------------------------------------
Main types, from Bokmålsordboka

a1 god god godt gode
a2 billig billig billig billige
a3 ekte ekte ekte ekte
a4 oppskjørtet oppskjørtet oppskjørtet oppskjørtede/oppskjørtete
a5 makaber makaber makabert makabre
a5 lunken lunken lunkent lunkne
aV blå blå blått blå
... and some irregular ones

AdjectiveRoot is the list of adjectives (some 5500 stems)
* få: A_FÅ ; 
* små: A_SMÅ ; 
* vond: VOND ; 

* artikkelbasert a2 ; 
* aggressiv a1 ; 
* avbøtende a3 ; 
* bundet a4 ; 

* dritredd a2 ; 
* dritsur+v1:drit#sur a1 ; 
* dritsur+v2:dritt#sur a1 ; 
* ...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adjectives.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/adjectives.lexc)</small>

---

## src-fst-morphology-stems-adverbs.lexc.md 

## Bokmål adverbs

This file documents the Bokmål adverb stem file [stems/adverbs.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/adverbs.lexc).

LEXICON adv  adds the tag +Adv

LEXICON dt  also ads +Adv  perhaps unify, perhaps not.

Adverb lists some 600 Norwegian adverbs, including MWE such as "i live"

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adverbs.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/adverbs.lexc)</small>

---

## src-fst-morphology-stems-conjunctions.lexc.md 

## Bokmål conjunctions

This file documents the Bokmål conjunctions stem file [stems/conjunctions.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/conjunctions.lexc).

conj for the tag +CC

Conjunction  både, og, ..

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/conjunctions.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/conjunctions.lexc)</small>

---

## src-fst-morphology-stems-interjections.lexc.md 

## Bokmål interjections

This file documents the Bokmål interjections stem file [stems/interjections.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/interjections.lexc).

LEXICON ij adds the tag **+Interj**

LEXICON Interjection lists *folkens, heisann, pokker* and some 60 more interjections.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/interjections.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/interjections.lexc)</small>

---

## src-fst-morphology-stems-nob-abbreviations.lexc.md 

## File containing abbreviations for Norwegian Bokmål 

This file documents the Bokmål abbrevioations stem file [stems/nob-abbreviations.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/nob-abbreviations.lexc).

Abbreviation-nob 

###            Intransitive abbreviations           

These give clause boundaries before capital letters
and numbers, but not elsewhere.

---------------------------------------------
Vi bor i Sth. CLB 10 av oss er innflyttere.
Vi bor i Sth. CLB Saara er også innflytter.
Vi vet at Sth. er en fin by.

ITRAB 

Transitive number-related abbreviations      !

These ones are transitive when followed by numbers or
singleton letters, and intransitive elsewhere.

--------------------------------------------------
Gården har Gnr. 10.
Gården har Gnr. 5. a.
Alle gårder har ikke Gnr. CLB Det er et problem.
Alle gårder har ikke Gnr. og det er et problem.
--------------------------------------------------

TRNUMAB 

##              Transitive abbreviations           

TRAB 

dot% noStb.db
Abbreviations that never induce sentence boundaries
The file is too large and should be shrinked

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nob-abbreviations.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/nob-abbreviations.lexc)</small>

---

## src-fst-morphology-stems-nob-propernouns.lexc.md 

## Bokmål propernouns

This file documents the Bokmål proper nouns stem file [stems/nob-propernouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/nob-propernouns.lexc).

LEXICON ProperNoun-nob contains the list of 2200 or so names. The rest come from common files.

Adjectives

Nouns

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nob-propernouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/nob-propernouns.lexc)</small>

---

## src-fst-morphology-stems-nouns.lexc.md 

## Bokmål noun lexicon 

This file documents the Bokmål noun stem file [stems/nouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/nouns.lexc).

### Overview of the declension classes

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
n1pl odds, oddsene

### The lexica themselves

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

## src-fst-morphology-stems-numerals.lexc.md 


## Bokmål numerals (number words)

This file documents the Bokmål numerals stem file [stems/numerals.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/numerals.lexc).

LEXICON Numeral 

LEXICON Textual 

LEXICON TEXTTHOUSANDS 

LEXICON 1000CONT 

LEXICON TEXTHUNDREDS 

LEXICON 100CONT 

LEXICON TEXTTENS 

LEXICON TEXTTENSCONT 

LEXICON TEXTTEENS 

LEXICON TEXTONES 

LEXICON 2-9 

LEXICON ORDTEXT 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/numerals.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/numerals.lexc)</small>

---

## src-fst-morphology-stems-nynorsk-stems.lexc.md 

## Nynorsk stems 
for tolerant dictionary reading

This file documents the nynorsk stem file for the bokmål analyzer [stems/nynorsk-stems.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/nynorsk-stems.lexc).

LEXICON Prnyn 

LEXICON Advnyn 

LEXICON Anyn 

LEXICON Vnyn 

LEXICON Propnyn 

LEXICON Pronnyn 

LEXICON nnnb 

LEXICON Nynorsk  her kjem alle orda

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nynorsk-stems.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/nynorsk-stems.lexc)</small>

---

## src-fst-morphology-stems-prepositions.lexc.md 

## Bokmål prepositions

This file documents the Bokmål prepositions stem file [stems/prepositions.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/prepositions.lexc).

LEXICON p gives tag +Pr

LEXICON Preposition  list (appr 90 prepositions)

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/prepositions.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/prepositions.lexc)</small>

---

## src-fst-morphology-stems-pronouns.lexc.md 

## Bokmål pronoun stems

This file documents the Bokmål pronouns stem file [stems/pronouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/pronouns.lexc).

LEXICON Pronoun 

LEXICON Personal 

LEXICON Reflexive 

LEXICON Reciprocal 

LEXICON Interrogative 

LEXICON Possessive 

LEXICON Other_Pronouns 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/pronouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/pronouns.lexc)</small>

---

## src-fst-morphology-stems-subjunctions.lexc.md 

## Bokmål subjunctions

This file documents the Bokmål subjunctions stem file [stems/subjunctions.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/subjunctions.lexc).

LEXICON Subjunction

LEXICON subj gives tag +CS

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/subjunctions.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/subjunctions.lexc)</small>

---

## src-fst-morphology-stems-verbs.lexc.md 


## Norwegian Bokmål verb stems

This file documents the Bokmål verb stem file [stems/verbs.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/verbs.lexc).

### Overview of the declension classes

----------------------------------------------------
Main types, from Bokmålsordboka

v1 kaste kaster kasta kasta
kastet kastet
v2 lyse lyser lyste lyst
reparere reparerer reparerte reparert
v3 leve lever levde levd
v4 nå når nådde nådd
v4 bie bier bidde bidd

Subtypes
v12 v1 or v2
v13 v1 or v3
v1-s passive v1 verbs
v2-s passive v2 verbs
v3-s passive v3 verbs
Strong verbs have verb-specific lexica

### The entries

LEXICON VerbRoot contains the 5700 or so  verbs

* innbefatte v1 ; 
* tilslutte v1 ; 

* abbreviere v2 ; 
* abdisere v2 ; 
* allmenngjøre:allmenn GJØRE ; 
* anbringe:an BRINGE ; 
* andøve v3 ; 
* anfalle:an FALLE ; 
* angi:an GI ; 
* angripe:an GRIPE ; 
* ankomme:an KOMME ;  
* falle: FALLE ; 
* etc.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/verbs.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/stems/verbs.lexc)</small>

---

## src-fst-phonetics-txt2ipa.xfscript.md 



retroflex plosive, voiceless			t`  ʈ	    0288, 648 (` = ASCII 096)
retroflex plosive, voiced			d`	ɖ		0256, 598
labiodental nasal					F 	ɱ		0271, 625
retroflex nasal						n` 	ɳ		0273, 627
palatal nasal						J 	ɲ		0272, 626
velar nasal							N 	ŋ		014B, 331
uvular nasal							N\	ɴ		0274, 628
	
bilabial trill						B\ 	ʙ		0299, 665
uvular trill							R\ 	ʀ		0280, 640
alveolar tap							4	ɾ		027E, 638
retroflex flap						r` 	ɽ		027D, 637
bilabial fricative, voiceless		p\ 	ɸ		0278, 632
bilabial fricative, voiced			B 	β		03B2, 946
dental fricative, voiceless			T 	θ		03B8, 952
dental fricative, voiced				D 	ð		00F0, 240
postalveolar fricative, voiceless	S	ʃ		0283, 643
postalveolar fricative, voiced		Z 	ʒ		0292, 658
retroflex fricative, voiceless		s` 	ʂ		0282, 642
retroflex fricative, voiced			z` 	ʐ		0290, 656
palatal fricative, voiceless			C 	ç		00E7, 231
palatal fricative, voiced			j\ 	ʝ		029D, 669
velar fricative, voiced	        	G 	ɣ		0263, 611
uvular fricative, voiceless			X	χ		03C7, 967
uvular fricative, voiced				R 	ʁ		0281, 641
pharyngeal fricative, voiceless		X\ 	ħ		0127, 295
pharyngeal fricative, voiced			?\ 	ʕ		0295, 661
glottal fricative, voiced			h\	ɦ		0266, 614

alveolar lateral fricative, vl.		K 
alveolar lateral fricative, vd.		K\

labiodental approximant				P (or v\) 
alveolar approximant					r\ 
retroflex approximant				r\` 
velar approximant					M\

retroflex lateral approximant		l` 
palatal lateral approximant			L 
velar lateral approximant			L\
Clicks

bilabial								O\	(O = capital letter) 
dental								|\
(post)alveolar						!\ 
palatoalveolar						=\ 
alveolar lateral						|\|\
Ejectives, implosives

ejective								_>	e.g. ejective p		p_>
implosive							_<	e.g. implosive b	b_<
Vowels

close back unrounded					M
close central unrounded 				1 
close central rounded				} 
lax i								I 
lax y								Y 
lax u								U

close-mid front rounded				2 
close-mid central unrounded			@\ 
close-mid central rounded			8 
close-mid back unrounded				7

schwa	ə							@

open-mid front unrounded				E 
open-mid front rounded				9
open-mid central unrounded			3 
open-mid central rounded				3\ 
open-mid back unrounded				V 
open-mid back rounded				O

ash (ae digraph)						{ 
open schwa (turned a)				6

open front rounded					& 
open back unrounded	        		A 
open back rounded					Q
Other symbols

voiceless labial-velar fricative		W 
voiced labial-palatal approx.		H 
voiceless epiglottal fricative		H\ 
voiced epiglottal fricative			<\ 
epiglottal plosive					>\

alveolo-palatal fricative, vl. 		s\ 
alveolo-palatal fricative, voiced	z\ 
alveolar lateral flap				l\ 
simultaneous S and x					x\ 
tie bar								_
Suprasegmentals

primary stress						" 
secondary stress						% 
long									: 
half-long							:\ 
extra-short							_X 
linking mark							-\
Tones and word accents

level extra high						_T 
level high							_H
level mid							_M 
level low							_L 
level extra low						_B
downstep								! 
upstep								^	(caret, circumflex)

contour, rising						 
contour, falling						_F 
contour, high rising					_H_T 
contour, low rising					_B_L 

contour, rising-falling				_R_F 
(NB Instead of being written as diacritics with _, all prosodic 
marks can alternatively be placed in a separate tier, set off 
by < >, as recommended for the next two symbols.)
global rise						<R> 
global fall						<F>
Diacritics						
									
voiceless						_0	(0 = figure), e.g. n_0
voiced							_v 
aspirated						_h 
more rounded						_O	(O = letter) 
less rounded						_c 
advanced							_+
retracted						_-
centralized						_" 
syllabic							=	(or _=) e.g. n= (or n_=) 
non-syllabic						_^ 
rhoticity						`
									
breathy voiced					_t 
creaky voiced					_k
linguolabial						_N 
labialized						_w 
palatalized						'	(or _j) e.g. t' (or t_j) 
velarized						_G 
pharyngealized					_?\
									
dental							_d 
apical							_a 
laminal							_m
nasalized						~	(or _~) e.g. A~ (or A_~) 
nasal release					_n
lateral release					_l 
no audible release				_}

velarized or pharyngealized		_e 
velarized l, alternatively		5 
raised							_r 
lowered							_o 
advanced tongue root				_A 
retracted tongue root			_q

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/txt2ipa.xfscript](https://github.com/giellalt/lang-nob/blob/main/src/fst/phonetics/txt2ipa.xfscript)</small>

---

## src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



We describe here how abbreviations are in Norwegian Bokmål are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

## src-fst-transcriptions-transcriptor-numbers-digit2text.lexc.md 

## Numbers to digits for Norwegian Bokmål

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-numbers-digit2text.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/transcriptions/transcriptor-numbers-digit2text.lexc)</small>

---

## src-fst-transcriptions-transcriptor-symbols2text.lexc.md 



This file contains mappings from abbreviations and some acronyms to full
forms for text-to-speech purposes. This is a supplement to the analyser;
the analyser must tag the strings as +ABBR or similar for the transcriptions
to work. The resulting full form must be lemmas known to the analyser,
for further processing.

We describe here how abbreviations in Norwegian Bokmål are read out,
for text-to-speech systems.

The file contains:

- miscellaneous symbols

- smileys

- Clause boundary symbols

- Single punctuation marks

- Paired punctuation marks

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-symbols2text.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/transcriptions/transcriptor-symbols2text.lexc)</small>

---

## tools-grammarcheckers-grammarchecker.cg3.md 


##  Bokmål Norwegian Grammar Checker

This file contains two parts: **Definitions** and **rules**

## Definition section

### Delimiters 

 DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

### Grammatical tags

Here we declare all grammatical tags

#### Parts of speech tags

- LIST N = N ;
- LIST A = A ;
- LIST Adv = Adv ;
- LIST V = V ;
- LIST Pron = Pron ;
- LIST CS = CS ;
- LIST CC = CC ;
- LIST Det = Det ;
- LIST Pr = Pr ;
- LIST Pcle = Pcle ;
- LIST Num = Num ;
- LIST Arab = Arab ;
- LIST Qnt = Qnt ;
- LIST Interj = Interj ;
- LIST IM = IM ;

#### Sets for POS sub-categories

- LIST Attr = Attr ;
- LIST AUX = "ha" ; # XXX
- SET NOT-AUX-V = V - AUX ;
- LIST Pos = Pos ;
- LIST Comp = Comp ;
- LIST Superl = Superl ;
- LIST Sg = Sg ;
- LIST Pl = Pl ;
- LIST Def = Def ;
- SET CC-CS = CC OR CS ;
- LIST ABBR = ABBR ;
- LIST ACR = ACR ;
- LIST Msc = Msc ;
- LIST Fem = Fem ;
- LIST Neu = Neu ;
- LIST MF = MF ;
- LIST Pers = Pers ;
- LIST Dem = Dem ;
- LIST Interr = Interr ;
- LIST Indef = Indef ;
- LIST Pass = Pass ;
- LIST Recipr = Recipr ;
- LIST Refl = Refl ;
- LIST Rel = Rel ;
- LIST Prop = Prop ;
- LIST Clt = Clt ;
- LIST Poss = Poss ;
- LIST Err/Orth = Err/Orth ;

#### Boundary tags
- LIST CLB = CLB ;
- LIST LEFT = LEFT ;
- LIST RIGHT = RIGHT ;
- LIST WEB = WEB ;
- LIST PPUNCT = PUNCT ;
- LIST COMMA = "," ;
- LIST ¶ = ¶ ;
- LIST QMARK = """ ;
- SET PUNCT = PPUNCT - QMARK ;
- LIST MWE = MWE ;

#### Sets for Semantic tags

- LIST Sem/Ani = Sem/Ani ;
- LIST Sem/Date = Sem/Date ;
- LIST Sem/Fem = Sem/Fem ;
- LIST Sem/Group = Sem/Group ;
- LIST Sem/Hum = Sem/Hum ;
- LIST Sem/ID = Sem/ID ;
- LIST Sem/Mal = Sem/Mal ;
- LIST Sem/Measr = Sem/Measr ;
- LIST Sem/Money = Sem/Money ;
- LIST Sem/Obj = Sem/Obj ;
- LIST Sem/Org = Sem/Org ;
- LIST Sem/Plc = Sem/Plc ;
- LIST Sem/Sur = Sem/Sur ;
- LIST Sem/Time = Sem/Time ;
- LIST Sem/Year = Sem/Year ;

#### Sets for Morphosyntactic properties

- LIST Nom = Nom ;
- LIST Acc = Acc ;
- LIST RCmpnd = RCmpnd ;
- LIST Ord = Ord ;
- LIST IV = IV ;
- LIST TV = TV ;
- LIST Prt = Prt;
- LIST Prs = Prs ;
- LIST Ind = Ind ;
- LIST Imp = Imp Imprt ;
- LIST Sg3 = Sg3 ;
- LIST Pl3 = Pl3 ;
- LIST Inf = Inf ;
- LIST PrfPrc = PrfPrc ;
- LIST PrsPrc = PrsPrc ;

### Syntactic tags

- LIST @+FAUXV = @+FAUXV ;
- LIST @+FMAINV = @+FMAINV ;
- LIST @-FAUXV = @-FAUXV ;
- LIST @-FMAINV = @-FMAINV ;
- LIST @-FSUBJ> = @-FSUBJ> ;
- LIST @-F<OBJ = @-F<OBJ ;
- LIST @-FOBJ> = @-FOBJ> ;
- LIST @SPRED<OBJ = @SPRED<OBJ ;
- LIST @-FADVL = @-FADVL ;
- SET FOBJ = @-F<OBJ OR @-FOBJ> ;
- SET FAUXV = @-FAUXV OR @+FAUXV ;

- LIST ADVL = Adv Pr ;
- LIST @ADVL = @ADVL @ADVL> @ADVL< @<ADVL @>ADVL @-F<ADVL ;
- LIST @>ADVL = @>ADVL ;
- LIST @ADVL< = @ADVL< ;
- LIST @<ADVL = @<ADVL ;
- LIST @ADVL> = @ADVL> ;
- LIST @ADVL>CS = @ADVL>CS ;
- LIST @>N = @>N ;
- LIST @N< = @N< ;
- LIST @>A = @>A ;
- LIST @P< = @P< ;
- LIST @>P = @>P ;
- LIST @HNOUN = @HNOUN ;
- LIST @INTERJ = @INTERJ ;
- LIST @>Num = @>Num;
- LIST @Pron< = @Pron< ;
- LIST @>Pron = @>Pron ;
- LIST @Num< = @Num< ;
- LIST @OBJ = @OBJ ;
- LIST @<OBJ = @<OBJ ;
- LIST @OBJ> = @OBJ> ;
- LIST @OPRED = @OPRED ;
- LIST @<OPRED = @<OPRED ;
- LIST @OPRED> = @OPRED> ;
- LIST @PCLE = @PCLE ;
- LIST @COMP-CS< = @COMP-CS< ;
- LIST @SPRED = @SPRED ;
- LIST @<SPRED = @<SPRED ;
- LIST @SPRED> = @SPRED> ;
- LIST @SUBJ = @SUBJ ;
- LIST @<SUBJ = @<SUBJ ;
- LIST @SUBJ> = @SUBJ> ;
- SET SUBJ = @<SUBJ OR @SUBJ> OR @SUBJ ;
- SET SPRED = @<SPRED OR @SPRED> OR @SPRED ;
- SET OPRED = @<OPRED OR @OPRED> OR @OPRED ;
- LIST @PPRED = @PPRED ;
- LIST @APP = @APP ;
- LIST @APP-N< = @APP-N< ;
- LIST @APP-Pron< = @APP-Pron< ;
- LIST @APP>Pron = @APP>Pron ;
- LIST @APP-Num< = @APP-Num< ;
- LIST @APP-ADVL< = @APP-ADVL< ;
- LIST @VOC = @VOC ;
- LIST @CVP = @CVP ;
- LIST @CNP = @CNP ;
- SET OBJ = (@<OBJ) OR (@OBJ>) OR (@OBJ) OR (@-F<OBJ) OR (@-FOBJ>) ;
- LIST <OBJ = @-F<OBJ @<OBJ ;
- LIST OBJ> = @OBJ> @-FOBJ> ;
- SET <OBJ-OTHERS = <OBJ ;
- SET OBJ>-OTHERS = OBJ> ;
- SET SYN-V = V + SUBJ OR OBJ + V OR @ADVL + V OR (V @N<) OR (V @A<) OR V + SPRED OR (V @COMP-CS<) ;
- LIST @X = @X ;

#### Initials

**INITIAL** = small letters, *CAP-INITIAL** = capital letters

### Sets

- LIST hj-V = "være" "ville" "skulle" "måtte" "kunne" "ha" "få" "burde" "bli" ;
- LIST hj-hvd-V = "være" "ha" "få" "bli" ;
- LIST hj-tv-V = "ha" "få" ;

- LIST hj-V-iv = ("bli" Inf) ("bli" PrfPrc) ("ha" Inf) ("ha" PrfPrc) ("være" Inf) ("være" PrfPrc) ("få" Inf) ("få" PrfPrc) ("skulle" Inf) ("skulle" PrfPrc) ("kunne" Inf) ("kunne" PrfPrc) ("ville" Inf) ("ville" PrfPrc) ("måtte" Inf) ("måtte" PrfPrc) ("burde" Inf) ("burde" PrfPrc) ;

### Sets of tags

#### Word or not

- LIST WORD = N A Adv V Pron CS CC Po Pr Interj Pcle Num ABBR ACR ? ;

- SET REALWORD = WORD - Num - Ord ;
- SET REALWORD-NOTABBR = WORD - Num - Ord - ABBR ;
- SET WORD-NOTDE = WORD - ("de") ;

#### Noun sets

#### Verb sets

- SET NOT-VERB = WORD - V ;

- SET V-IND-FIN = Prs OR Prt ;
- SET V-MOOD = Ind OR Imp ;
- SET VFIN = V-MOOD ;

- LIST QUASIAUX = "akte" "anbefale" "begynne" "behøve" "bli" "forsøke" "fortsette" "forvente" "gidde" "glemme" "huske" "klare" "like" "lære" "nekte" "orke" "prøve" "risikere" "slippe" "slutte" "synes" "søke" "tenke" "trenge" "tørre" "unngå" "velge" "vurdere" "være" "ønske" ;

- SET VFIN-NOT-IMP = Ind ;
- SET VFIN-NOT-AUX = Ind - AUX ;
- SET NOT-PRFPRC = WORD - PrfPrc ;

- LIST VERBFORM = Inf PrfPrc PrsPrc Prs Prt Imp ;
- LIST INDFORM = Prs Prt Imp ;,  FINFORM kanskje betre namn...

#### Pronoun sets

- LIST DEM-SG = (Pron Dem Sg Nom);
- LIST DEM-PL = (Pron Dem Pl Nom);
- SET NOT-DEM = WORD - Dem ;
- LIST SGPRON = (Pron Sg1) (Pron Sg2) (Pron Sg3) (Pron Sg) ;
- LIST PLPRON = (Pron Pl1) (Pron Pl2) (Pron Pl3) (Pron Pl) ;
- LIST QUANT-PRON = "mange" ;, This set is for choosing between Adv and Pron Indef.

#### Numeral sets 

#### Adjectival sets and their complements

- SET NOT-A = WORD - A ;
- SET NOT-A-COMMA = WORD - A - COMMA ;
- SET NOT-A-PCLE = WORD - A - Pcle ;
- SET NOT-A-ADV = WORD - A - Adv ;
- SET NOT-A-ETC = WORD - A - Adv - Pcle - COMMA - (PUNCT LEFT) - (PUNCT RIGHT) - Sem/Year - Sem/ID ;

#### Adverbial sets and their complements
- SET LEX-ADV = Adv - (A*) ;
- SET NOT-ADV-DE = WORD - Adv ;
- SET NOT-ADV = NOT-ADV-DE OR CLB ;
- SET NOT-ADV-N = NOT-ADV - N;
- SET NOT-ADV-PCLE = NOT-ADV - Pcle ;
- SET NOT-ADV-INDEF = NOT-ADV - Indef ;
- SET NOT-ADV-PCLE-ILL = WORD - Adv - Pcle ;
- SET NOT-ADV-PCLE-Refl = WORD - Adv - Pcle - Refl ;
- SET NOT-ADV-PCLE-INDEF = WORD - Adv - Pcle - Indef ;
- SET NOT-ADVL-PCLE-NEG = WORD - @ADVL - @P< - Pcle ;

#### Introduce finite clauses.

- LIST TIME-ADVL = "da" "før" ;
- LIST TIME-ADV = (Adv Sem/Time) ;

#### Coordinators

- SET CRD = @CNP OR COMMA OR ("/") OR ("-") ; AFTER LCRD vs. GCRD disambiguation
- LIST GRADE-ADV = "helt" "svært" "litt" ;

### Sets of elements with common syntactic behaviour

#### Sets for verbs

- LIST NOT-REAL-V = PrsPrc ;
- SET REAL-V = V - NOT-REAL-V ;
- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.
- SET MAIN-V = V - FAUXV ;

All active verbs with a TV tag, including V:
- LIST V-TRANS = (V TV) ;

#### NP sets defined according to their morphosyntactic features

- LIST N-SG-NOM = (N Sg Nom);
- SET HEAD-N = N - RCmpnd ;
- SET SUBJECTHEAD = N OR A OR Pron - Refl ; These, can be subject heads
- SET NP = N OR A ; anything that can take except numerals
- SET NP-HEAD = Pron OR HEAD-N ;
- SET NP-HEAD-SG = SGPRON OR (N Sg) OR (A Sg) - RCmpnd - Dem ;
- SET NP-HEAD-PL = PLPRON OR (N Pl) OR (A Pl) - RCmpnd - Dem ;
- SET NP-HEAD-SG-NOM = SGPRON + Nom OR (N Sg) OR (A Sg) - RCmpnd ;
- SET NP-HEAD-PL-NOM = PLPRON + Nom OR (N Pl) OR (A Pl) - RCmpnd ;
- SET NP-HEAD-NOM = NP-HEAD-SG-NOM OR NP-HEAD-PL-NOM ;
- SET NP-HEAD-ACC = (Pron Acc) OR N OR A - RCmpnd ;

* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

- SET PRE-NP-HEAD = (Prop Attr) OR A OR ABBR OR Num OR RCmpnd OR CC OR (Pron Dem) OR Det OR (Pron Ref) OR PrsPrc ;

The strict version of items that can only be premodifiers, not parts of the predicate
- SET PRE-NP-V = PrfPrc OR PrsPrc OR (V A) OR (Ind Prs) ;

to be used together with PRE-NP-HEAD before @>N is disambiguated
- SET NP-MEMBER = PRE-NP-HEAD OR N ;
- SET PRE-A-N = (Pron Pers Acc) OR (Pron Indef) OR Num OR (A Ord) OR (Pron Dem) OR (Pron Refl) ; Acc pga av manglende disambiguering tidlig i fila
- SET NOT-PRE-A-N = WORD - PRE-A-N ;
- LIST PUNCT-LEFT = (PUNCT LEFT) ;
- LIST PUNCT-RIGHT = (PUNCT RIGHT) ;
- SET PRE-APP = COMMA OR PUNCT-LEFT OR PRE-NP-HEAD ;
This set ist not only for what can stand in front of appositions but also
postmodifiers.

The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NOT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

- SET NOT-NPMOD = WORD - PRE-NP-HEAD ;                  

- SET NOT-NPMOD-ACC = NOT-NPMOD - Acc OR ABBR ;
- SET NOT-NPMOD-ACC-ADV = NOT-NPMOD - Acc - Adv OR ABBR ;

- SET NOT-NPMODADV = WORD - PRE-NP-HEAD - Adv ;                   
NOT-NPMODADV = "NOT-PRE-NP-HEAD-OR-ADV"
- SET NOT-NPMODADV-INDEF = WORD - PRE-NP-HEAD - Adv - Indef ;             
NOT-NPMODADVI = "     ...-OR-INDEF"
- SET NOT-NPMODCC = WORD - PRE-NP-HEAD - COMMA - @CNP ;
- SET NAPP = WORD - PRE-APP ;

#### Miscellaneous sets

- SET NOT-NUM = WORD - Num ;
- SET CARDINALS = Num - Ord ;
- SET NOT-CC = WORD - CC ;
- SET NOT-PCLE = WORD - Pcle ;
- LIST CONTRA = "men" ; In lean muitalan, muhto dál muitalan.
- LIST PROSEANTA = "prosent" "%" ;
- SET REAL-CLB = CLB - COMMA ;
- SET NOT-INITIAL-CC = WORD - INITIAL - CC ;

#### Border sets and their complements

- SET CP = (Pron Interr) OR (Pron Rel) ;
- LIST BOUNDARYSYMBOLS = ";" ":" "-" "–" ;
- SET S-BOUNDARY = CP OR BOUNDARYSYMBOLS OR @CVP ;

- SET BOC = S-BOUNDARY OR BOS ;
- SET BOC-PUNCT = BOC - ("-") - ("–") ;
- SET EOC = S-BOUNDARY OR EOS ;
- SET NP-BOUNDARY = BOS OR EOS OR REAL-CLB OR VFIN OR Inf OR Recipr OR Pr OR Pcle OR Interj OR CS OR CP OR @CVP ;
- SET APP-BOUNDARY = REAL-CLB OR VFIN OR Inf OR Recipr OR Pr OR Pcle OR Interj OR CS OR CP OR PrfPrc - @>N ;
A special barrier used with mapping of appositions. 

- SET SV-BOUNDARY = S-BOUNDARY OR Inf - FAUXV OR FMAINV ;
- SET SVF-BOUNDARY = S-BOUNDARY OR VFIN ;
This set is ment to use in rules for disambiguating due to verbs or verbsets. 
Here we search for either an S-BOUNDARY or a finite verb, either aux or main.

- SET CCCOMMA = CC OR COMMA ;

#### Syntactic sets

- SET NON-APP = ALLSYNTAG - (@APP);

These were the set types.

#### Grammarchecker sets

- The tag syntax is as follows: 
- **ruletype - object - is_now - should_be
- Example: *&msyn-agr-adjmsc-adjneu* is a morphosyntactic agreement rule where a Msc adjective should be Neu

There are 20 or so different rule tags, see the rule section below.

### For ADDRELATION rules (perhaps not in use)
- TEMPLATE nextWordCrossSent = (-1 (*)); =  Adding mark to word that find the reference word to the left
- TEMPLATE previousWordCrossSent = (1 (*)); =  and vice versa

## Rule section

### Speller rules

Speller suggestions rule – add &SUGGESTWF to any spelling suggestion
that we actually want to suggest to the user.

**Speller rule:** Add *typo* to misspelled words 
The simplest is to just add it to all spelled words:

**Speller rule:** Do not mark misspelled words in quotes
But perhaps you want to only suggest spellings of words that are not inside "quotes":

### NP internal agreement rules

Ensure preceding adjective agrees with noun

**Agreement rule:** masculine adjectives should be neuter (msyn-agr-adjmsc-adjneu). Context: *Et fin/fint hus.*

**Agreement rule:**  Singular adjectives should be plural (msyn-agr-adjsg-adjpl). Context: *mange organisert/organiserte fritidsaktiviteter*.

**Agreement rule:**  Neuter adjectives shoul be masculine (msyn-agr-adjneu-adjmsc). Context: *En fint/fin båt*.

**Agreement rule:**  Masculine definite determiners should be neuter (msyn-agr-detmsc-detneu). Context: *den/det huset*.

**Agreement rule:**  Masculine indefinite determiners should be neuter (msyn-agr-detmsc-detneu). Context: *en/et land*.

**Agreement rule:**  Neuter definite determiners should be feminine (msyn-agr-detneu-detfem). Context: *det/den boka*.

**Agreement rule:**  Neuter indefinite determiners should be feminine (msyn-agr-detneu-detfem). Context: *et/ei bok*.

**Agreement rule:**  Neuter indefinite determiners should be feminine (msyn-agr-detneu-detfem). Context: *et/ei realitetens kvinne*.

**Agreement rule:**  Neuter indefinite determiners should be feminine (msyn-agr-detneu-detfem). Context: *et/ei realitetens kvinne*.

**Agreement rule:**  Neuter indefinite determiners should be masculine (msyn-agr-detneu-detmsc). Context: *et/en studie*.

**Agreement rule:**  Neuter indefinite determiners should be masculine (msyn-agr-detneu-detmsc). Context: *et/en studie*.

**Agreement rule:**  Neuter adjectives should be masculine (msyn-agr-detneu-detmsc). Context: *et/en ... båt*.

**Agreement rule:** same rule but for Pron

**Definiteness rule:** Double definiteness. Context: *disse grunner/grunnene*

**Definiteness rule:** Double definiteness. Context: *de sosiale aspekter/aspektene*
The rule gave too many false alarms, we skip it.

#### Definite adjectives

### Quantifier phrases

**Agreement rule:** Indef after quantifier. (msyn-qucompl-def-indef). Context: *Vi har mange bøkene/bøker.*

**Agreement rule:** Pl instead of Sg after quantifier. (msyn-qucompl-sg-pl). Context: *Vi har mange ulike utfordring*

**Comparative rule:** Quantor in superlative: *de flere/fleste ulike kulturene*

### Predicative gender agreement

Predicative: neuter adjective should be masculine (msyn-pred-adjneu-adjmsc). Context: *Båten var fint/fin.*

Predicative: msculine adjective should be neuter (msyn-pred-adjmsc-adjneu). Context: *Eplet var god/godt.*

**Agreement rule:**. Context: *Eplet var god/godt.*

**Agreement rule:**  Context: *Eplet var god/godt.*

**Agreement rule:**  Context: *Eplene var god/gode.*

**Agreement rule:**  Context: *Jeg spiste et eple som var god/godt.*

**Agreement rule:**  Context: *Jeg har en bil som er rødt/rød.*

**Agreement rule:**  Context: *Jeg har ei hytte som er rødt/rød.*

**Agreement rule:**  Context: *Jeg har biler som er fin*

**Agreement rule:**  Context: *Eplet som jeg spiste var grønn/grønt*

**Agreement rule:**  Context: *Bilen som jeg kjørte var grønt.*

**Agreement rule:**  Context: *Hytta som jeg eier er fint.*

**Agreement rule: with relative clause**  Context: *Bilene som jeg kjørte var grønt/grønn*

### Case errors

Case rules so far: Nominative pronouns should be accusative 

**Agreement rule:** The context is P-complement.  (msyn-pron-nom-acc). Context: *Vi snakker om du.*

### Finite verb errors

**Verb rule:** Infinitive and no finite form in the sentence (msyn-v-inf-pres). Context: *Jeg like/liker peanøtter.*

### Infinitive

**Verb rule:** Verb error: Present tense should be infinitive (msyn-v-pres-inf). Context: *Jeg vil skriver et brev.*

### Adverb errors

### Word order errors

#### V3 -> V2 in main clause

#### V2 to V3 in embedded clauses

### og/å errors

#### og/også

#### The *og* -> *å* rules 

**Realword rule:** og should be å real-og-aa. Context: *Det er ikke til og holde ut.*

**Realword rule:** og should be aa between Ind and Inf (real-og-aa). Context: *Vi prøver og gå.*

#### The *å* -> *og* rules 

**Realword rule:** å should be og between nouns (real-aa-og). Context: *Det var Trond å Kari.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Context: *Vi må lese å skrive lyrikk.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Not: *Det er ikke så lett som man skulle tro å skrive lyrikk.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Context: *Vi vil hoppe å/og sprette.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Context: *Vi hopper å/og spretter.*

### Punctuation rules
Simple punctuation rules showing how to change the lemma in the suggestions:

**Quotation mark rule:** Use correct quotation mark. 

**Ellipsis rule:** Ellipsis … for ... (use-ellipsis)

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-nob/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

## tools-grammarcheckers-grc-disambiguator.cg3.md 


## The grammarchecker disambiguator for Norwegian Bokmål

This disambiguator is based upon the disambiguator from OBT
(Oslo-Bergen-taggeren), hereafter OBT-cg. It is adjusted to the GiellaLT FST and
extended with several rules. It contains
the morphological rules only.

The original OBT disambiguator was written in CG-1 by Kristin Hagen and
Anders Nøklestad at UiO. It was translated to CG-2 by Lars Nygård.
The conversion to CG-3 and the Tromsø format was done by Trond Trosterud.

This particular file (grc-disambiguator.cg3) is a version of the above
adjusted to grammar checker needs. Mainly, disambiguation rules are relaxed
or even commented out.

**NOTE!** For reference, removed rules should be marked with the searchable tag
grcremoval

### Delimiters and sets

The tagsets are a superset of the OBT and GiellaLT tags, so that 
the labels are kept from OBT-cg, but GiellaLT content is added when needed.

* Amount sets

* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

- LIST RCmpnd = RCmpnd ;

- SET PRE-NP-HEAD = (Prop Attr) OR A OR ABBR OR Num OR RCmpnd OR CC OR (Pron Dem) OR (Pron Ref) OR Indef OR <PrsPtc> OR (A Ord) OR (CC @CNP) OR (@>CC) OR (@Pron<) OR Clt OR Det ;

The strict version of items that can only be premodifiers, not parts of the predicate
- SET PRE-NP-V = PrfPrc OR <PrsPtc> OR (V A) OR (Ind Prs) ;

to be used together with PRE-NP-HEAD before @>N is disambiguated
- SET NP-MEMBER = PRE-NP-HEAD OR N ;
- SET PRE-A-N = (Pron Pers Acc) OR (Pron Indef) OR Num OR (A Ord) OR (Pron Dem) OR (Pron Refl) ; Acc pga av manglende disambiguering tidlig i fila
- SET NOT-PRE-A-N = WORD - PRE-A-N ;
- LIST PUNCT-LEFT = (PUNCT LEFT) ;
- LIST PUNCT-RIGHT = (PUNCT RIGHT) ;
- SET PRE-APP = COMMA OR PUNCT-LEFT OR PRE-NP-HEAD ;
This set ist not only for what can
stand in front of appositions but also
postmodifiers.

The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NOT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

- SET NOT-NPMOD = WORD - PRE-NP-HEAD OR ABBR ;                  

- SET NOT-NPMOD-ACC = NOT-NPMOD - Acc OR ABBR ;
- SET NOT-NPMOD-ACC-ADV = NOT-NPMOD - Acc - Adv OR ABBR ;

- SET NOT-NPMODADV = WORD - PRE-NP-HEAD - Adv ;                   
NOT-NPMODADV = "NOT-PRE-NP-HEAD-OR-ADV"
- SET NOT-NPMODADV-INDEF = WORD - PRE-NP-HEAD - Adv - Indef ;             
NOT-NPMODADVI = "     ...-OR-INDEF"
- SET NOT-NPMODCC = WORD - PRE-NP-HEAD - COMMA ; #- @CNP ;
- SET NAPP = WORD - PRE-APP ;

GRADE-ADV

### Rule section

#### Giellatekno early rules

**NotAbbr** removes abbreviations whenever alternatives

**AbbrBeforePara** removes CLB before CLB

**Nynorsk** removes all *+Nynorsk* forms (they are in use only for the dictionary interface, and that does not use disambiguation).

**aa**

**aaIM** selects +IM for *å*

##### Numerals

* Rule for adding <vdic> to verbs denoting verbal actions like: ... dadjá Aili Kestkitalo.

##### Compounds

### Mostly OBT Rules

The bulk of the file contains rules from the original OBT file.

### Giellatekno late rules

#### Neuter sg pl

#### Numerals

#### Pronouns

####  Det rules

####  V and not N

####  Prepositions

####  Late rules, Gt

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grc-disambiguator.cg3](https://github.com/giellalt/lang-nob/blob/main/tools/grammarcheckers/grc-disambiguator.cg3)</small>

---

## tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

## Tokeniser for nob

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

### Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-nob/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

## tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

## Grammar checker tokenisation for nob

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-nob/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

## tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

## TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-nob/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>
