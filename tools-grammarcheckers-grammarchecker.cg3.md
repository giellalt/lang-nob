
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
Typical usage: ... (*1 N BARRIER NOT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

* Miscellaneous sets

* Border sets and their complements

* Syntactic sets

These were the set types.

### Grammarchecker sets

# Rule section

## Speller rules

## NP internal agreement

msyn-agr-adjmsc-adjneu

msyn-agr-adjneu-adjmsc

msyn-agr-detneu-detfem

msyn-agr-detneu-detmsc

msyn-det-msc-neu

## Quantifier phrases

## Predicative gender agreement

msyn-pred-adjmsc-adjneu

msyn-pred-adjneu-adjmsc

## Case errors

## Finite verb

## Infinitive

## og/å

* * *
<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-nob/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>