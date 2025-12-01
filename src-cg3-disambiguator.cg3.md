
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

###  Rules with weights
**minweight** selects reading with lowest weight.

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-nob/blob/main/src/cg3/disambiguator.cg3)</small>
