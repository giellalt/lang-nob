

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

* * *

<small>This (part of) documentation was generated from [src/cg3/nob-functions.cg3](https://github.com/giellalt/lang-nob/blob/main/src/cg3/nob-functions.cg3)</small>
