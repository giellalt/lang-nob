
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

## Morphophonology

### Triggers

* **X1 X2 X3 X4 X5 X6** = Nominal stems
* **Q1 Q2 Q3** = Verbal stems
* **Z1 Z2** = Both verbal and nominal stems
* **%^NYNAG** =  Nynorsk agens lærar / lærer

### Special symbols

* **e7** =  always e (ide - ideen)
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
* **+v3** 

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

## Language codes

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

### Flags for preprocessing

* @P.Pmatch.Loc@ - 
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
* Nynorsk ; Accepts nno forms, does not generate, changed from Use/NG to have speller work.

## Other lexica

### LEXICON AdjectivePrefix pointing to:
* kjempe AdjectiveRoot ; - 
* super AdjectiveRoot ; - 
* AdjectiveRoot ; - 

### LEXICON Abbreviation pointing to:
* Abbreviation-nob ; - 
* Abbreviation-smi ; - 

### LEXICON ProperNoun pointing to: 
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
* **+Clt:%>s ENDLEX ;** 
* **ENDLEX ;** 

# Lexicon ENDLEX
And this is the ENDLEX of everything:
```
@D.CmpOnly.FALSE@@D.CmpPref.TRUE@@D.NeedNoun.ON@ # ;
```
The `@D.CmpOnly.FALSE@` flag diacritic is ued to disallow words tagged
with +CmpNP/Only to end here.
The `@D.NeedNoun.ON@` flag diacritic is used to block illegal compounds.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-nob/blob/main/src/fst/morphology/root.lexc)</small>
