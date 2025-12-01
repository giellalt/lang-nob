
#  Bokmål Norwegian Grammar Checker

This file contains two parts: **Definitions** and **rules**

# Definition section

## Delimiters 

 DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>";

## Grammatical tags

Here we declare all grammatical tags

### Parts of speech tags

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

### Sets for POS sub-categories

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

### Boundary tags
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

### Sets for Semantic tags

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

### Sets for Morphosyntactic properties

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

## Syntactic tags

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

### Initials

**INITIAL** = small letters, *CAP-INITIAL** = capital letters

## Sets

- LIST hj-V = "være" "ville" "skulle" "måtte" "kunne" "ha" "få" "burde" "bli" ;
- LIST hj-hvd-V = "være" "ha" "få" "bli" ;
- LIST hj-tv-V = "ha" "få" ;

- LIST hj-V-iv = ("bli" Inf) ("bli" PrfPrc) ("ha" Inf) ("ha" PrfPrc) ("være" Inf) ("være" PrfPrc) ("få" Inf) ("få" PrfPrc) ("skulle" Inf) ("skulle" PrfPrc) ("kunne" Inf) ("kunne" PrfPrc) ("ville" Inf) ("ville" PrfPrc) ("måtte" Inf) ("måtte" PrfPrc) ("burde" Inf) ("burde" PrfPrc) ;

## Sets of tags

### Word or not

- LIST WORD = N A Adv V Pron CS CC Po Pr Interj Pcle Num ABBR ACR ? ;

- SET REALWORD = WORD - Num - Ord ;
- SET REALWORD-NOTABBR = WORD - Num - Ord - ABBR ;
- SET WORD-NOTDE = WORD - ("de") ;

### Noun sets

### Verb sets

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

### Pronoun sets

- LIST DEM-SG = (Pron Dem Sg Nom);
- LIST DEM-PL = (Pron Dem Pl Nom);
- SET NOT-DEM = WORD - Dem ;
- LIST SGPRON = (Pron Sg1) (Pron Sg2) (Pron Sg3) (Pron Sg) ;
- LIST PLPRON = (Pron Pl1) (Pron Pl2) (Pron Pl3) (Pron Pl) ;
- LIST QUANT-PRON = "mange" ;, This set is for choosing between Adv and Pron Indef.

### Numeral sets 

### Adjectival sets and their complements

- SET NOT-A = WORD - A ;
- SET NOT-A-COMMA = WORD - A - COMMA ;
- SET NOT-A-PCLE = WORD - A - Pcle ;
- SET NOT-A-ADV = WORD - A - Adv ;
- SET NOT-A-ETC = WORD - A - Adv - Pcle - COMMA - (PUNCT LEFT) - (PUNCT RIGHT) - Sem/Year - Sem/ID ;

### Adverbial sets and their complements
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

### Introduce finite clauses.

- LIST TIME-ADVL = "da" "før" ;
- LIST TIME-ADV = (Adv Sem/Time) ;

### Coordinators

- SET CRD = @CNP OR COMMA OR ("/") OR ("-") ; AFTER LCRD vs. GCRD disambiguation
- LIST GRADE-ADV = "helt" "svært" "litt" ;

## Sets of elements with common syntactic behaviour

### Sets for verbs

- LIST NOT-REAL-V = PrsPrc ;
- SET REAL-V = V - NOT-REAL-V ;
- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.
- SET MAIN-V = V - FAUXV ;

All active verbs with a TV tag, including V:
- LIST V-TRANS = (V TV) ;

### NP sets defined according to their morphosyntactic features

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

### Miscellaneous sets

- SET NOT-NUM = WORD - Num ;
- SET CARDINALS = Num - Ord ;
- SET NOT-CC = WORD - CC ;
- SET NOT-PCLE = WORD - Pcle ;
- LIST CONTRA = "men" ; In lean muitalan, muhto dál muitalan.
- LIST PROSEANTA = "prosent" "%" ;
- SET REAL-CLB = CLB - COMMA ;
- SET NOT-INITIAL-CC = WORD - INITIAL - CC ;

### Border sets and their complements

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

### Syntactic sets

- SET NON-APP = ALLSYNTAG - (@APP);

These were the set types.

### Grammarchecker sets

- The tag syntax is as follows: 
- **ruletype - object - is_now - should_be
- Example: *&msyn-agr-adjmsc-adjneu* is a morphosyntactic agreement rule where a Msc adjective should be Neu

There are 20 or so different rule tags, see the rule section below.

## For ADDRELATION rules (perhaps not in use)
- TEMPLATE nextWordCrossSent = (-1 (*)); =  Adding mark to word that find the reference word to the left
- TEMPLATE previousWordCrossSent = (1 (*)); =  and vice versa

# Rule section

## Speller rules

Speller suggestions rule – add &SUGGESTWF to any spelling suggestion
that we actually want to suggest to the user.

**Speller rule:** Add *typo* to misspelled words 
The simplest is to just add it to all spelled words:

**Speller rule:** Do not mark misspelled words in quotes
But perhaps you want to only suggest spellings of words that are not inside "quotes":

## NP internal agreement rules

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

### Definite adjectives

## Quantifier phrases

**Agreement rule:** Indef after quantifier. (msyn-qucompl-def-indef). Context: *Vi har mange bøkene/bøker.*

**Agreement rule:** Pl instead of Sg after quantifier. (msyn-qucompl-sg-pl). Context: *Vi har mange ulike utfordring*

**Comparative rule:** Quantor in superlative: *de flere/fleste ulike kulturene*

## Predicative gender agreement

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

## Case errors

Case rules so far: Nominative pronouns should be accusative 

**Agreement rule:** The context is P-complement.  (msyn-pron-nom-acc). Context: *Vi snakker om du.*

## Finite verb errors

**Verb rule:** Infinitive and no finite form in the sentence (msyn-v-inf-pres). Context: *Jeg like/liker peanøtter.*

## Infinitive

**Verb rule:** Verb error: Present tense should be infinitive (msyn-v-pres-inf). Context: *Jeg vil skriver et brev.*

## Adverb errors

## Word order errors

### V3 -> V2 in main clause

### V2 to V3 in embedded clauses

## og/å errors

### og/også

### The *og* -> *å* rules 

**Realword rule:** og should be å real-og-aa. Context: *Det er ikke til og holde ut.*

**Realword rule:** og should be aa between Ind and Inf (real-og-aa). Context: *Vi prøver og gå.*

### The *å* -> *og* rules 

**Realword rule:** å should be og between nouns (real-aa-og). Context: *Det var Trond å Kari.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Context: *Vi må lese å skrive lyrikk.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Not: *Det er ikke så lett som man skulle tro å skrive lyrikk.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Context: *Vi vil hoppe å/og sprette.*

**Realword rule:** å should be og between similar verbforms except 2nd V = obj (real-aa-og). Context: *Vi hopper å/og spretter.*

## Punctuation rules
Simple punctuation rules showing how to change the lemma in the suggestions:

**Quotation mark rule:** Use correct quotation mark. 

**Ellipsis rule:** Ellipsis … for ... (use-ellipsis)

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-nob/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>
