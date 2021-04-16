
# Norwegian Bokmål morphological analyser                      
this documents the symbols and intro lexicon of **Norwegian Bokmål**.


 **Multichar_Symbols ** 

Here come the **tags**.


## Grammatical tags

### Part of speech

 - ** +N +A +Adv +V        ** 
 - ** +CS +CC +Interj +Pcle +Pr +IM    ** 
 - ** +Pers +Dem +Interr +Refl +Recipr +Rel +Qnt ** 

### Subtags

 * **+ING									** = ing-derivation
 * **+Indef +Def +Poss +Indcl				** = 
 * **+Sg +Pl								** = 
 * **+Sg1 +Sg2 +Sg3 +Pl1 +Pl2 +Pl3			** = 
 * **+Pron +Nom +Acc +Dat +Det				** = 
 * **+Msc +Fem +Neu +MF						** = 
 * **+Pos +Comp +Superl 					** = 
 * **+Clt									** = 
 * **+Dat									** = 
 * **+Pass +Ind +Prs +Prt +Imp				** = 
 * **+Inf +PrsPrc +PrfPrc					** = 
 * **+Interj +Intens						** = 
 * **+Prop 								** = 
 * **+Qnt**  quantifier noen, begge



### Other tags

 * **+CLB +PUNCT +HYPH +LEFT +RIGHT**
 * **+CLBfinal**  Sentence final abbreviated expression ending in full stop, so that the full stop is ambiguous

 * **+Cmp+** 
 * **+CmpS+** 
 * +Symbol = independent symbols in the text stream, like £, €, ©



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

Todo: Document these

 * **X1 X2 X3 X4 X5 X6 X7 X8 X9** 
 * **Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9** 
 * **Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9** 
 * **Z1 Z2 Z3 Z4 Z5 Z6 Z7 Z8 Z9** 

 * **l7**  always l

 * **%^NYNAG**  Nynorsk agens lærar / lærer

 * +Use/Circ  circular string

 * +Der/AAdv  Adjectives are also adverbs
 * +Der/NomAct  verb +ing
 * +Der1 
 * **+Der** 

Normativity and other usage tags

 * **+Err/Orth**    For speller use
 * **+Err/Hyph		** 
 * **+Err/Lex		** 
 * **+Err/SpaceCmp	** 
 * **+Err/MissingSpace** 

 * **+Use/NG			** 
 * **+Use/-Spell		** 
 * **+Use/-PLX		** 
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

 * **+v1	** 
 * **+v2	** 


###  Tags for abbreviation handling


 * **+Gram/IAbbr	** 
 * **+Gram/TAbbr	** 
 * **+Gram/TNumAbbr** 
 * **+Gram/NumNoAbbr** 

###  Semantic tags

### Semtags

 * **+Sem/Amount		** 
 * **+Sem/Ani		** 
 * **+Sem/Atr		** 
 * **+Sem/Build		** 
 * **+Sem/Build-room	** 
 * **+Sem/Cat		** 
 * **+Sem/Curr		** 
 * **+Sem/Date		** 
 * **+Sem/Domain		** 
 * __+Sem/Domain_Hum	      __ 
 * **+Sem/Dummytag	** 
 * __+Sem/Edu_Hum	      __ 
 * **+Sem/Event		** 
 * **+Sem/Fem		** 
 * **+Sem/Food-med	** 
 * __+Sem/Group_Hum	      __ 
 * **+Sem/Hum		** 
 * **+Sem/ID			** 
 * **+Sem/Lang		** 
 * **+Sem/Mal		** 
 * **+Sem/Mat		** 
 * **+Sem/Measr		** 
 * **+Sem/Money		** 
 * **+Sem/Obj  		** 
 * **+Sem/Obj-el		** 
 * **+Sem/Obj-ling	** 
 * **+Sem/Org		** 
 * __+Sem/Org_Prod-audio   __ 
 * __+Sem/Org_Prod-vis     __ 
 * **+Sem/Part		** 
 * **+Sem/Plc		** 
 * **+Sem/Prod-vis	** 
 * **+Sem/Route		** 
 * **+Sem/Rule		** 
 * **+Sem/Sign		** 
 * **+Sem/State		** 
 * **+Sem/State-sick	** 
 * **+Sem/Substnc	** 
 * **+Sem/Sur   		** 
 * **+Sem/Time		** 
 * **+Sem/Time-clock	** 
 * **+Sem/Tool-it	** 
 * **+Sem/Txt		** 
 * **+Sem/Veh		** 
 * **+Sem/Year		** 



## Preprocessing

 * **+Use/PMatch** 
 * **+Use/-PMatch** 

## Symbols that need to be escaped on the lower side (towards twolc):
* **»7**:  Literal »
* **«7**:  Literal «
```
  %[%>%]  - Literal >
  %[%<%]  - Literal <
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

# Basic lexica, pointing to the other lexicon files

 * LEXICON Root 
 *  FinalNoun ;   for -skap etc. that is affix rather than compound
 *  ShortNounRoot ;   2- and 3-letter words
 *  NounRoot ;		   The rest
 *  ProperNoun ;	  
 *  AdjectivePrefix ;  
 *  VerbRoot ;		  
 *  Adverb ;		  
 *  Subjunction ;	  
 *  Conjunction ;	  
 *  Preposition ;	  
 *  Interjection ;	  
 *  Pronoun ;		  
 *  Numeral ;		  
 *  Punctuation ;	  
 *  Symbols     ;	  
 *  Abbreviation ;	  
 *  Acronym-smi ;	  
 *  +Use/NG: Nynorsk ;         Accepts nno forms, does not generate

 * LEXICON AdjectivePrefix - 
 * kjempe AdjectiveRoot ; - 
 * super AdjectiveRoot ; - 
 * AdjectiveRoot ; - 

 * LEXICON Abbreviation - 
 * Abbreviation-nob ; - 
 * Abbreviation-smi ; - 

 * **LEXICON ProperNoun**
Lexicon for NOB short names - always require hyphen
Lexicon for short names - always require hyphen
SMI proper nouns
contains the full nob name list


## Sublexica for NounRoot

This list for reference:

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
|  	 | 			   | 			 | 			   | 
|  a1  | god         | god         | godt        | gode
|  a2  | norsk       | norsk       | norsk       | norske
|  a3  | ekte        | ekte        | ekte        | ekte
|  a4  | oppskjørtet | oppskjørtet | oppskjørtet | oppskjørtede/oppskjørtete
|  a5  | makaber     | makaber     | makabert    | makabre
|      | lunken      | lunken      | lunkent     | lunkne
|  	 | 			   | 			 | 			   | 
|  v1  | kaste       | kaster      | kasta       | kasta
|      |             |             | kastet      | kastet
|  v2  | lyse        | lyser       | lyste       | lyst
|  v3  | leve        | lever       | levde       | levd
|  v4  | nå          | når         | nådde       | nådd
|  v4  | bie         | bier        | bidde       | bidd



Clitics

 * **LEXICON K** 
 * **+Clt:%>s # ;** 
 * **# ;** 

