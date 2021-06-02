
# The OBT-Giellatekno Bokmål Norwegian disambiguator 

This disambiguator is based upon the disambiguator from OBT
(Oslo-Bergen-taggeren), hereafter OBT-cg. It is adjusted to the GiellaLT FST and
extended with several rules. It contains
the morphological rules only.

The original OBT disambiguator was written in CG-1 by Kristin Hagen and
Anders Nøklestad at UiO. It was translated to CG-2 by Lars Nygård.
The conversion to CG-3 and the Tromsø format was done by Trond Trosterud.


## Delimiters and sets

The tagsets are a superset of the OBT and GiellaLT tags, so that 
the labels are kept from OBT-cg, but GiellaLT content is added when needed.







































* Amount sets

















## Rule section


### Giellatekno early rules

**NotAbbr** removes abbreviations whenever alternatives

**AbbrBeforePara** removes CLB before CLB

**Nynorsk** removes all *+Nynorsk* forms (they are in use only for the dictionary interface, and that does not use disambiguation).

**aaIM** selects +IM for *å*

#### Numerals








* Rule for adding <vdic> to verbs denoting verbal actions like: ... dadjá Aili Kestkitalo.










































## Mostly OBT Rules


The bulk of the file contains rules from the original OBT file.

































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































## Giellatekno late rules

### Neuter sg pl




### Pronouns



###  Det rules






###  V and not N


###  Prepositions



###  Late rules, Gt





###  Rules with weights
**minweight** selects reading with lowest weight.
























































The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")















## Syntactic tags

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









## Numeral outside the sentence



























Finite verbs



## Numeral outside the sentence




* **n<titel1** (@N<) for ("jr") or ("sr"); if first one to the left is Prop




* **n<titel2** (@N<) for INITIAL; if first one to the left is a noun, or if to the left of you is a single letter which is part of a noun conjunction *bustávas e ja f gáibiduvvo*














































* **<advlPoPr** (@<ADVL) for Po or Pr; if mainverb to the left.
* **advlPoPr>** (@<ADVL) for Po or Pr; if mainverb to the right.

* **BOSPo>** (@ADVL>) for Po; if trapped between BOS to the right and S-BOUNDARY OR COMMA to the left, because the main verb will then automatically be on your right side.






* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) for Adv if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.






## HNOUN MAPPING











###  **missingX** adds @X to all missings





###  **therestX** adds @X to all what is left, often errouneus disambiguated forms





## For Apertium:
The analysis give double analysis because of optional semtags. We go for the one with semtag.






















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






## Some particular subjunctions

## Adverb rules

# MAPPING OF COMP-CS< , COMPLEMENTS OF PARTICLES IN COMPARISON
First map all COMP-CS<, then remove the other readings



* **killAllnotComp** Removes analysis which are not @COMP-CS<

    - *This was the kill all not Comp rule!!*



# MAPPING OF CC AND CS

Mostly we map both @CNP and @CVP, then we select @CNP, after that we remove them so @CVP remains

* **cnpCompSC** Map @CNP if @COMP-CS< or COMPAR ahte

* **cnpCompSpec** special rule because of PrfPrc = VFIN

* **CSasCVP** Map @CVP to CS

* **CCasCNPCVP** Map (@CNP @CVP) to CC









* **killAllCNP** removes all remaining @CNP

* **XCC-CS** removes CC and CS with no synttag




# VERB MAPPINGS


## Verbs as predicatives (@SPRED>) and (@<OPRED) 

### The tags (@SPRED>) and (@<OPRED) target  PrfPrc
The rules are no documented yet



## Passive verbs often have 




## Verbs as prenominal participles (@>N):






### (@<SUBJ)  target Inf




























### (@+FMAINV) and (@+FAUXV) and (@-FAUXV)





* **-FAUXVaux** AUX verbs     


* **+FMAINVCop**  copulas even if PrfPrc coming after


* **+FAUXVCop**  copulas coming before the mainverb


* **+FMAINVAux1**  


* **+FAUXVCop**  copulas coming after the mainverb

* **+FMAINVCop**  copulas 	


* **+FMAINV**  to the remaining finite verbs which are not AUX    




* **+FMAINV**  to finite verb after mainverb



















### (@-FMAINV) and (@-FAUXV)


* **-FAUXVPrfPrcAux**  to PrfPrc AUX  before Inf or Actio Ess

* **-FMAINVPrfPrc**  to PrfPrc 

* **-FMAINVPrfPrccoord**  to PrfPrc coordination	

* **-FMAINVPrfPrccoord**  to PrfPrc coordination	

* **-FMAINVPrfbeforeAux**  to PrfPrc before the Aux	

* **-FMAINVPrfafterMan**  to PrfPrc before the Aux	



* **-FMAINVInf**  to Inf






* **+FAUXV** to  Aux




* **PrfPrcEllipsis** being verbal head when finite verb is missing


### And then we remove the verbs which didn't get any syntactic tag, in favour of verbs with syntactic tags.



* **realverbX**



### **killifVinCohort** This rule removes all other readings, if there is a mapped V reading in the same cohort. Every case which this goes wrong, should be fixed in mapping rules or previous disrules.

* **X**




# NOUNS



# CASE DISAMBIGUATION



































* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).







## HNOUN MAPPING

















# Norwegian Bokmål compounding







# Sublexica for verb roots

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


## Sublexica for regular verbs 

### Preliminary lexica

**LEXICON vx** points to v1.

**LEXICON v12** for both v1 and v2 past forms, or: score -> scoret, scorte (NG  = do not generate)

**LEXICON v13** also here: v1, v3: sveve -> svevet (NG), svevde.


**LEXICON v23** 

**LEXICON v14** where v4 is NG

**LEXICON v1** =  kaste


**LEXICON v2** = blåse, studere

**LEXICON v3** =  leve

**LEXICON v4** =  ro, bie


**LEXICON v1-s** =  undres

**LEXICON v2-s** =  føles, synes

**LEXICON v3-s** =  trives





## Conjugation sublexica

**LEXICON inf-prsptc** = 

**LEXICON regpres** = 

**LEXICON r-pres** = 

**LEXICON a-et-pret** = 

**LEXICON te-pret** = 

**LEXICON de-pret** = 

**LEXICON dde-pret** = 


**LEXICON prsptcsuff** = 



### Sublexica for irregular verbs 


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
 * **LEXICON DØLGE** 
 * **LEXICON DØ** 
 * **LEXICON EIE** 
 * **LEXICON ETE** 
 * **LEXICON FALLE** 
 * **LEXICON FARE** 
 * **LEXICON FINNE** 
 * **LEXICON FISE** 
 * **LEXICON FLY** 
 * **LEXICON LYGE**
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



# Continuation lexicons for abbreviations

## Lexica for adding tags and periods






## The sublexica

### Continuation lexicons for abbrs both with and witout final period


 * **LEXICON ab-noun   **

 * **LEXICON ab-adj   **

 * **LEXICON ab-adv   **

 * **LEXICON ab-num   **

### Lexicons without final period

 * **LEXICON ab-nodot-noun   **  The bulk



 * **LEXICON ab-nodot-adj   **

 * **LEXICON ab-nodot-adv   **

 * **LEXICON ab-nodot-num   **

### Lexicons with final period

 * **LEXICON ab-dot-noun   **  This is the lexicon for abbrs that must have a period.

 * **LEXICON ab-dot-adj   **  This is the lexicon for abbrs that must have a period.


 * **LEXICON ab-dot-adv   **  This is the lexicon for abbrs that must have a period.

 * **LEXICON ab-dot-num   **  This is the lexicon for abbrs that must have a period.

 * **LEXICON ab-dot-cc   **


 * **LEXICON ab-dot-verb   **



 * **LEXICON ab-dot-IVprfprc   **






 * **LEXICON DOT   ** - Adds the dot to dotted abbreviations.


# Propernoun morphology

FirstTag 

PROP 


PROP-surmal 

PROP-malfem 

... one lexicon for each combined tag,to split them.






















# Tags for numerals (number words)

## Basic tags
numtag

numtagsg


## Tags for special use

### Date
datetag

dateyearcase_nullsuff_w_dot_tag

dateyearcase_fullsuff_tag

### Clock
numclock

NUM-ARABICCASES

ID-ARABIC

 * **LEXICON ARABICLOOPORD** ordinals
ARABICLOOPORD

 * **LEXICON ACASETAG**  is for 1e+Det+Qnt+Sg+Det+Qnt:1e
ACASETAG

 * **LEXICON ARABICLOOPCOLL** collectives
ARABICLOOPCOLL

... and many more lexica

 * **LEXICON ARABICDELIMITER**  blank + 3 delim, what does the lg counc prefer?

 * **LEXICON ROMNUMTAG**





 * **LEXICON PROSENT** % and case suffix

 * **LEXICON POSTPROSENT** % and case suffix




# Sublexica for adjective roots

* a1  god         god         godt        gode
* a2  norsk       norsk       norsk       norske
* a3  ekte        ekte        ekte        ekte
* a4  oppskjørtet oppskjørtet oppskjørtet oppskjørtede/oppskjørtete
* a5  makaber     makaber     makabert    makabre
*     lunken      lunken      lunkent     lunkne
* aV  blå         blå         blått       blå





## Basic paradigms

a23


















### Sublexica

































# Bokmål noun morphology 

    ---------------------------------------------------
    Declension classes
    Main types, from Bokmålsordboka
    
    f1  bru         brua        bruer       bruene
    f2  pumpe       pumpa       pumper      pumpene
    m1  stol        stolen      stoler      stolene
        bakke       bakken      bakker      bakkene
        pumpe       pumpen      pumper      pumpene
    m2  lærer       læreren     lærere      lærerne
    m3  bever       beveren     bevere      beverne
                                bevre(r)    bevrene
    m4 longs longsen longs/longser longsene
    n1  slott       slottet     slott       slotta/slottene
    n2  eple        eplet       epler       epla/eplene
        salt        saltet      salter      salta/saltene
    n3  kontor      kontoret    kontor      kontora
                                kontorer    kontorene
        høve        høvet       høve/høver  høva/høvene
    n4  salt        saltet      salter      salta/saltene ??
    n5  middel      midlet      midler      midla/midlene ??
    n6 kammer kammeret kamre/kammer kamra/kamrene
    
    Subtypes, mainly from Finsk-norsk ordbok, also system-specific
    
    x  unclassified, to m1 by default
    mX indecl
    m1sg sg only
    m1pl pl only
    m1b dam
    m1b fe, komite
    m1V sko pl. sko
    m3V meter pl. meter
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
    f1X bok pl. bøker
    f1V mus, pl. mus
    fGLO glo, pl glør
    n1b rom pl. rom
    n1s sg only
    n2b program pl. programmer
    n2c kontor pl. kontor, kontorer
    n2s mørke, not pl.
    n3b lager def. lageret
    n3c fe, feet
    n4b faktum pl fakta
    FORUM forum, forumet, fora/forumer, foraene/forumene
    LEKSIKON leksikon, pl. leksika
    nMUSEUM museum, museet, museer
    nØYE



## Basic paradigms































#### Irregulars


























  +N+Fem+Sg+Def+Radical:datra    K ;
                     +N:         R ;


















































@NO CODE@ for nynorsk only.

@NO CODE@ for nynorsk only.
















# Symbol affixes

Noun_symbols_possibly_inflected 

Noun_symbols_never_inflected 

SYMBOL_connector 

SYMBOL_NO_suff 

# Morphophonological rules for Bokmål

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-nob/blob/main/src/fst/phonology.twolc) 

## Sets and definitions

### Alphabet

We declare both the a-å letters and all other possible letters.
 * **a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å** 
 * **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý þ ñ ð ß ç**
 * **A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Æ Ø Å**
 * **Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã Ý þ Ñ Ð**
 * **'** This is the apostrophe
 * **l7:l** This **l** not deleted by **t**


### Boundary symbols

Morpheme boundaries and escaped quotes - do not delete in twolc,
they will be converted to zero/the real thing at a later stage.

 * **%#**
 * **%>**
 * **%<**
 * **%\|»**
 * **%\|«**
 * **%[%<%]**
 * **%[%>%]**

### Morphophonological triggers

These symbols cause the twolc rules to work.

#### Triggers for nominal rules
 * **X1:0** = Epenthetic vowel moden:modne
 * **X2:0** = ...
 * **X3:0** = Plural r deletion -er, -ene
 * **X4:0** = dumm:dum Delete m
 * **X5:0** = um deletion, faktum:fakta
 * **X6:0** = t:d weakening, oppskjørtet:oppskjørtede

#### Trigers for verbal rules
 * **Q1:0** = Passive
 * **Q2:0** = ...
 * **Q3:0** = Verb vowel and geminate deltion kalte, fylte

#### Triggers for common rules (both for N and V)
 * **Z1:0** = o:ø, a:e Umlaut
 * **Z2:0** = protects vowel

#### Nynorsk trigger
 * **%^NYNAG:0 ;** Trigger for Nynorsk dictionary forms.






### Sets

 * **Vow = a e i o u y æ ø å ;**
 * **Cns = b c d f g h j k l m n p q r s t v w x z ;**
 * **LNR = l n r ;**
 * **Dummy = X1 X2 X3 X4 X5 X6 Q1 Q2 Q3 Z1 Z2 %^NYNAG ;**

## Rule section

This section shows the twolc rules and the tests used to check whether they work




### Umlaut

**Umlaut Rule**  for *bok : bøker* etc. It shifts the vowels *u, o, a, å* to *y, ø, e, e*, respectively when **Z1** is found after the stem.



### Vowel deletions rules

**Epenthetic Deletion Rule**  is actually 3 rules in one: 1) it deletes -e- in *moden : modne* etc, 2) it deletes the stem -e in *hare + -er* and 3) it delets suffix -e in *ærlig + est > ærligst*

*Tests:* (star denotes negativ test, test that is supposed to fail)
* *søsterX1>a*
* *teaterX1>et*
* *teat0r0>et*
* *modenX1>e*
* *mod0n0>e*
* *reparere>Q3te*
* *reparer0>0te*
* ★*modenX1>e* (is not standard language)
* ★*moden0>e* (is not standard language)
* *hare>er*
* *har0>er*
* *viktig>est*
* *viktig>0st*
* *presentere%>Q3t*
* *presenter0>0t*

**Delete foreign vowel Rule**  for deleting final a or o in words like *kollega : kolleger*. Trigger symbol to the right is **X2**.

*Tests:*
* *kollegaX2>er*
* *kolleg00>er*



### Consonant deletion

**Consonant shortening before deletion Rule**  

*Tests:*
* *sikkerX1>e*
* *sik00r0>e*
* *trusselX1>er*
* *trus00l0>er*


**Geminate deletion in front of -t and -d Rule** deletes: 1) before **Q3 and d or t** (*kaller:kalte*) 2) before passive **Q1 t** (*lykkes:lyktes*) and 3) before epenthetic **-e-** and **l, n** or **r** (*sikker:sikre*)

*Tests:*
* *kalle>Q3te*
* *kal00>0te*
* *lykk0esQ1*
* *lyk0tes0*
* *all>Q3t*
* *al0>0t*
* *bygge>Q3de*
* *byg00>0de*





**Delete r Rule** deletes **r** in plural *-er* to get *-er + -ne* = plural *-ene* 

**Delete m Rule** for *kam:kammen*, here we delete the second m when word-final.  




**um Deletion 1 Rule** (um Deletion 2 is now part of the *Delete m Rule*)

*Tests:*
* *museumX5>er*
* *muse000>er*



**t weakening Rule**  

*Tests:*
* *oppskjørtetX6>e*
* *oppskjørted0>e*

**Double t deletion Rule**  

*Tests:*
* *svart>t*
* *svart>0*



### Insertion rules

**Insert t in passives Rule**  



### Compound rule



*Tests:*
* *grammatikk##kontroll*
* *grammatik000kontroll*



### Clitics

**Clitic after s-final Rule**  for changing the so-called *genitive -s* to **'** for s-final stems: *huss -> hus'*





### Nynorsk dictionary rules

**Change -er stem to -ar in Nynorsk**  

This rule is for dictionary use only. The idea is to be able to click on words in a Nynorsk text and get translation to North Sámi. Therefore, the Bokmål analyser is able to give an analysis to Nynorsk words as well. The Nynorsk-only forms are removed from all other transducers than the `-dict` transducer.


* *a*
* *b*

Test to have an error
* ★*a* (is not standard language)
* ★*b* (is not standard language)
# File containing abbreviations for Norwegian Bokmål 



Abbreviation-nob 

##            Intransitive abbreviations           

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




#              Transitive abbreviations           

TRAB 

dot% noStb.db
Abbreviations that never induce sentence boundaries
The file is too large and should be shrinked



# Norwegian Bokmål verb stems

This file documents the Bokmål verb stem file [stems/verbs.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/verbs.lexc).

## Overview of the declension classes

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
    v13 v1 or v3
    v1-s passive v1 verbs
    v2-s passive v2 verbs
    v3-s passive v3 verbs
   Strong verbs have verb-specific lexica


## The entries


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
# Preopositions

LEXICON p gives tag +Pr


LEXICON Preposition  list (appr 90 prepositions)


# Bokmål propernouns

LEXICON ProperNoun-nob-nocomp contains some acronyms


LEXICON ProperNoun-nob contains the list of 2200 or so names. The rest come from common files.



# Pronoun stems


LEXICON Pronoun 

LEXICON Personal 

LEXICON Reflexive 

LEXICON Reciprocal 

LEXICON Interrogative 

LEXICON Possessive 

LEXICON Other_Pronouns 

# Bokmål interjections

LEXICON ij adds the tag **+Interj**

LEXICON Interjection lists *folkens, heisann, pokker* and some 60 more interjections.





# Numerals (number words)


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

# Bokmål conjunctions


conj for the tag +CC

Conjunction  både, og, ..



# Norwegian Bokmål Adjectives

This file documents the Bokmål noun stem file [stems/adjectives.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/adjectives.lexc).

## Overview of the declension classes

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









# Bokmål adverbs

LEXICON adv  adds the tag +Adv

LEXICON dt  also ads +Adv  perhaps unify, perhaps not.

Adverb lists some 600 Norwegian adverbs, including MWE such as "i live"

# Bokmål noun lexicon 

This file documents the Bokmål noun stem file [stems/nouns.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/stems/nouns.lexc).

## Overview of the declension classes

    ----------------------------------------------------
    Main types, from Bokmålsordboka
   
    f1 bru brua bruer bruene
    f2 pumpe pumpa pumper pumpene
    m1 stol stolen stoler stolene
    bakke bakken bakker bakkene
    pumpe pumpen pumper pumpene
    m2 lærer læreren lærere lærerne
    m3 bever beveren bevere beverne
    bevre(r) bevrene
    m4 longs longsen longs/longser longsene
    n1 slott slottet slott slotta/slottene
    n2 eple eplet epler epla/eplene
    salt saltet salter salta/saltene
    n3 kontor kontoret kontor kontora
                       kontorer kontorene
    høve høvet høve/høver høva/høvene
    n4 salt saltet salter salta/saltene ??
    n5 middel midlet midler midla/midlene ??
    n6 kammer kammeret kamre/kammer kamra/kamrene
   
   Subtypes
   
    mx unclassified, to m1 by default
    mX indecl
    m1sg sg only
    m1pl pl only
    m1b dam
    m1b fe, komité
    m1V sko pl. sko
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







# Bokmål subjunctions

LEXICON Subjunction

LEXICON subj gives tag +CS



# Nynorsk stems 
for tolerant dictionary reading

LEXICON Prnyn 

LEXICON Advnyn 

LEXICON Anyn 

LEXICON Vnyn 


LEXICON Propnyn 

LEXICON Pronnyn 

LEXICON nnnb 

LEXICON Nynorsk  her kjem alle orda











# Norwegian Bokmål morphological analyser                      
this documents the symbols and intro lexicon of **Norwegian Bokmål**.


 **Multichar_Symbols** 

Here we declare the **tags** and all other multicharacter symbols.


## Grammatical tags

### Part of speech

 - **+N +A +Adv +V** = Open parts of speech
 - **+CS +CC +Interj +Pcle +Pr +IM** = Closed POS (IM = **å**)
 - **+Pers +Dem +Interr +Refl +Recipr +Rel +Qnt** 

### Subtags

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



### Other tags

 * **+CLB +PUNCT +HYPH +LEFT +RIGHT**
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


## Morphophonology

### Triggers

 * **X1 X2 X3 X4 X5 X6** = Nominal stems
 * **Q1 Q2 Q3** = Verbal stems
 * **Z1 Z2** = Both verbal and nominal stems
 * **%^NYNAG** =  Nynorsk agens lærar / lærer

### Special symbols

 * **l7** =  always l
 * **+Use/Circ** = circular string

### Derivation

 * **+Der/AAdv** = Adjectives are also adverbs
 * **+Der/NomAct** = verb +ing
 * **+Der1** = derivation position
 * **+Der** = mark derivation

### Normativity and other usage tags

 * **+Err/Orth**    For speller use
 * **+Err/Hyph** 
 * **+Err/Lex** 
 * **+Err/SpaceCmp** 
 * **+Err/MissingSpace** 
 * **+Use/NG** 
 * **+Use/-Spell** 
 * **+Use/-PLX** 
 * **+Use/SpellNoSugg** 


## Other tags
 * **+ABBR** 
 * **+ACR** 
 * **+Arab** 
 * **+Attr** 
 * **+Coll** 
 * **+Dyn** 
 * **+MWE** 
 * **+Num** 
 * **+Rom** 


## Paradigm generation

 * **+v1** 
 * **+v2** 


###  Tags for abbreviation handling

 * **+Gram/IAbbr** 
 * **+Gram/TAbbr** 
 * **+Gram/TNumAbbr** 
 * **+Gram/NumNoAbbr** 

###  Semantic tags

### Semtags

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



## Preprocessing

 * **+Use/PMatch** 
 * **+Use/-PMatch** 

## Symbols that need to be escaped on the lower side (towards twolc):
 * **»7**:  Literal »
 * **«7**:  Literal «
```
 %[%>%] - Literal >
 %[%<%] - Literal <
```



## Compounding

 * +Cmp/Hyph - 
 * +CmpNP/None - 
 * +CmpNP/First - 



## Language codes

 * +OLang/SME - North Sámi
 * +OLang/SMJ - Lule Sámi
 * +OLang/SMA - South Sámi
 * +OLang/FIN - Finnish
 * +OLang/SWE - Swedish
 * +OLang/NOB - Norw. bokmål
 * +OLang/NNO - Norw. nynorsk
 * +OLang/ENG - English
 * +OLang/RUS - Russian
 * +OLang/UND - Undefined



## Flag diacritics

### Flags for ErrOrth

 * @C.ErrOrth@ - 
 * @D.ErrOrth.ON@ - 
 * @P.ErrOrth.ON@ - 
 * @R.ErrOrth.ON@ - 

### Flags for compounding

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


###  Flags for governing initial capital

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.


|   Flag | Comment
| --- | --- 
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.


### Flags for preprocessing

 * @P.Pmatch.Backtrack@ - 
 * @PMATCH_BACKTRACK@ - 

## Basic lexica, pointing to the other lexicon files

### LEXICON Root
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
 * +Err/Orth: Nynorsk ; Accepts nno forms, does not generate, changed from Use/NG to have speller work.


## Other lexica

### LEXICON AdjectivePrefix pointing to:
 * kjempe AdjectiveRoot ; - 
 * super AdjectiveRoot ; - 
 * AdjectiveRoot ; - 

### LEXICON Abbreviation pointing to:
 * Abbreviation-nob ; - 
 * Abbreviation-smi ; - 

### LEXICON ProperNoun pointing to: 
 * @U.CmpHyph.TRUE@ ProperNoun-nob-nocomp ; =  Lexicon for NOB short names - always require hyphen
 * @U.CmpHyph.TRUE@ ProperNoun-smi-nocomp ; =  Lexicon for short names - always require hyphen
 * ProperNoun-smi ; =  SMI proper nouns
 * ProperNoun-nob ; =  contains the full nob name list


## Sublexica for NounRoot

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



## Clitics

### K pointing nouns here to get "genitive" -s
 * **+Clt:%>s # ;** 
 * **# ;** 




We describe here how abbreviations are in Norwegian Bokmål are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 



  B O K M Å L   N O R W E G I A N   G R A M M A R   C H E C K E R


























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



### Grammarchecker sets


































