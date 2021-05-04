# Bokmål propernouns

LEXICON ProperNoun-nob-nocomp contains some acronyms


LEXICON ProperNoun-nob contains the list of 2200 or so names. The rest come from common files.








This file is copied from the common __giella-shared__ directory
and ''shall not'' be edited in the __langs__ directory.


!!!General notes

The entries are tagged for language, to satisfy the needs of the
synthetic speech project.

!!!Language-specific notes
!!This file (smi-propernouns.lexc) when applied to sme


This file was originally written for sme, and is copied directly to
the langs/sme catalogue without modification.

Documenting (parts of) the lexicon structure for sme:

|| Final syll.  || stressed    || unstressed
| final X+i/j   |  PROP (V+j) |i PROP (C+i)
| other final V |  PROP‡      | PROP

 ‡) Also -i- without a preceeding long vowel, like in __PROP__.



!!This file (smi-propernouns.lexc) when applied to sma, smj and smn.

For sma, smj and smn, there is a script, {{src/scripts/smi-sma-conversion.pl}}
changing the lexicon names from sme-style to sma/smj/smn-style. The resulting
file is {{src/fst/stems/smi-sma-propernouns.lexc}}, with the content
of this file following the text ''Dump from SMI''. This is governed in
''src/fst/Makefile.am''


!!Modifications for sma
__MAKI__ er for finske i-finale navn hvor sørsamisk og lulesamisk følger ulike
mønster. PIPPi i smj, PROP i sme og sma. 02.06.15:i PROP er nå PROP også i smj -Sandra
Illativ i sma: - mãki  -> mäkan eller mäkijasse
               - niemi -> neaman
               - buertie - buartan --> buertiejasse (rørossamisk)
               - Stuehkie - Stuahkan - Stuehkese (Stuehkiejasse) ("Stockholm")
niemi er grei, meni PROP ogi PROP er usikre.

!!Modifications for smn

!!SMJ:
All y-final PROP have to go to an PROP lexicon as y-final words
have to go to PROP in smj, but not in sma or sme

----

The beginning of this file (''smi-propernouns.lexc'') looks as follows
(and thereafter 31000 similar lines follow):

 * __LEXICON ProperNoun-smi-nocomp __ Propernouns: no compounding without hyph. Add also 
 A-ha+OLang/NOB:A-ha PROP-org ;  \\
 ARS% Reasearch+MWE+CmpNP/First+OLang/UND:ARS% Reasearch PROP-org ;  \\
 Ap+OLang/UND:Ap PROP-org ;  \\


 * __LEXICON ProperNoun-smi __ Propernouns
 Aabakken+OLang/NOB:Aa^bakken PROP-sur ;  \\
 Aabel+OLang/NOB:Aabel PROP-sur ;  \\
 Aabenraa+OLang/NOB:Aabenraa PROP-sur ;  \\
 Frykman+OLang/NOB:Frykman PROP-sur ;  \\
 Husserl+OLang/NOB:Husserl PROP-sur ;  \\




