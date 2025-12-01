
# The grammarchecker disambiguator for Norwegian Bokmål

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

## Delimiters and sets

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

## Rule section

### Giellatekno early rules

**NotAbbr** removes abbreviations whenever alternatives

**AbbrBeforePara** removes CLB before CLB

**Nynorsk** removes all *+Nynorsk* forms (they are in use only for the dictionary interface, and that does not use disambiguation).

**aa**

**aaIM** selects +IM for *å*

#### Numerals

* Rule for adding <vdic> to verbs denoting verbal actions like: ... dadjá Aili Kestkitalo.

#### Compounds

## Mostly OBT Rules

The bulk of the file contains rules from the original OBT file.

## Giellatekno late rules

### Neuter sg pl

### Numerals

### Pronouns

###  Det rules

###  V and not N

###  Prepositions

###  Late rules, Gt

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grc-disambiguator.cg3](https://github.com/giellalt/lang-nob/blob/main/tools/grammarcheckers/grc-disambiguator.cg3)</small>
