
# Norwegian Bokmål morphological analyser                      !
INTRODUCTION TO MORPHOLOGICAL ANALYSER OF Norwegian Bokmål LANGUAGE.


 * Multichar_Symbols 


## Part of speech


 * **+CLBfinal**  Sentence final abbreviated expression ending in full stop, so that the full stop is ambiguous

 * +Symbol = independent symbols in the text stream, like £, €, ©






NDS analyser tags




## Morphophonology

Todo: Document these




 +Use/Circ  circular string

 +Der/AAdv  Adjectives are also adverbs
 +Der/NomAct  verb +ing
 +Der1 

Normativity and other usage tags




## Paradigm generation



###  Tags for abbreviation handling



###  Semantic tags




## Preprocessing


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
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
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
|  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.


### Flags for preprocessing

 * @P.Pmatch.Backtrack@ - 
 * @PMATCH_BACKTRACK@ - 

Basic lexica, pointing to the other lexicon files

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








