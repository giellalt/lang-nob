
# Norwegian Bokmål morphological analyser                      
this documents the symbols and intro lexicon of **Norwegian Bokmål**.


 **Multichar_Symbols** 

Here we declare the **tags** and all other multicharacter symbols.


## Grammatical tags

### Part of speech

 - **+N +A +Adv +V** Open parts of speech
 - **+CS +CC +Interj +Pcle +Pr +IM** Closed POS (IM = **å**)
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
 * **+Cmp+** 
 * **+CmpS+** 
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

 * **X1 X2 X3 X4 X5 X6** = Nominal
 * **Q1 Q2 Q3** = 
 * **Z1 Z2** = 
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


# Adjectives

    -------------------------
    a1 god god godt gode
    a2 billig billig billig billige
    a3 ekte ekte ekte ekte
    a4 oppskjørtet oppskjørtet oppskjørtet oppskjørtede/oppskjørtete
    a5 makaber makaber makabert makabre
    a5 lunken lunken lunkent lunkne
    aV blå blå blått blå



AdjectiveRoot 












# Bokmål adverbs

LEXICON adv  adds the tag +Adv

LEXICON dt  also ads +Adv  perhaps unify, perhaps not.

Adverb lists some 600 Norwegian adverbs, including MWE such as "i live"

# Bokmål conjunctions


conj for the tag +CC

Conjunction  både, og, ..



# Bokmål interjections

LEXICON ij adds the tag **+Interj**

LEXICON Interjection lists *folkens, heisann, pokker* and some 60 more interjections.




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


# Bokmål propernouns

LEXICON ProperNoun-nob-nocomp contains some acronyms


LEXICON ProperNoun-nob contains the list of 2200 or so names. The rest come from common files.



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
    MUSEUM museum, museet, museer




## Basic paradigms































#### Irregulars


























  +N+Fem+Sg+Def+Radical:datra    K ;
                     +N:         R ;

















































@NO CODE@ for nynorsk only.

@NO CODE@ for nynorsk only.















# Bokmål noun lexicon 

    ----------------------------------------------------
    Declension classes
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


LEXICON FinalNoun 


LEXICON NounRoot 

LEXICON HyphNouns  TODO: Kanskje desse ikkje bör bli lista.

LEXICON ShortNounRoot 
These are kept separate in order not to
allow them in compounding (rusle = rus + le)


LEXICON 2_letter 

LEXICON 3_letter 


LEXICON Noun  here come the stems










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










# Morphophonological rules for Bokmål


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

**Umlaut Rule**  for *bok : bøker* etc.



### Vowel deletions rules

**Epenthetic Deletion Rule**  for deleting -e- in *moden : modne* etc, in *hare + -er* and in *ærlig + est > ærligst*

*Tests:*
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

**Delete foreign vowel Rule**  for deleting final a or o in words like *kollega : kolleger*. Trigger is **X2**.

*Tests:*
* *kollegaX2>er*
* *kolleg00>er*



### Consonant deletion

**Consonant shortening before deletion Rule**  

*Tests:*
* *sikkerX1>e*
* *sik00r0>e*


**Geminate deletion in front of -t and -d Rule**  

*Tests:*
* *kalle>Q3te*
* *kal00>0te*
* *lykk0esQ1*
* *lyk0tes0*
* *all>Q3t*
* *al0>0t*
* *bygge>Q3de*
* *byg00>0de*





**Delete r Rule**  

**Delete m Rule**  




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
# Preopositions

LEXICON p gives tag +Pr


LEXICON Preposition  list (appr 90 prepositions)


# Pronoun stems


LEXICON Pronoun 

LEXICON Personal 

LEXICON Reflexive 

LEXICON Reciprocal 

LEXICON Interrogative 

LEXICON Possessive 

LEXICON Other_Pronouns 

# Bokmål subjunctions

LEXICON Subjunction

LEXICON subj gives tag +CS



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



# Verb stems

    ------------------------------------
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


LEXICON VerbRoot



