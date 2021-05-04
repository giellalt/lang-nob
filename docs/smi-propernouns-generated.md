


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
| final X+i/j   |  DUBAI (V+j) | PIPPI (C+i)
| other final V |  NYSTØ‡      | ACCRA

 ‡) Also -i- without a preceeding long vowel, like in __DUBAI__.



!!This file (smi-propernouns.lexc) when applied to sma, smj and smn.

For sma, smj and smn, there is a script, {{src/scripts/smi-sma-conversion.pl}}
changing the lexicon names from sme-style to sma/smj/smn-style. The resulting
file is {{src/fst/stems/smi-sma-propernouns.lexc}}, with the content
of this file following the text ''Dump from SMI''. This is governed in
''src/fst/Makefile.am''


!!Modifications for sma
__MAKI__ er for finske i-finale navn hvor sørsamisk og lulesamisk følger ulike
mønster. PIPPi i smj, ACCRA i sme og sma. 02.06.15: MAKI er nå ACCRA også i smj -Sandra
Illativ i sma: - mãki  -> mäkan eller mäkijasse
               - niemi -> neaman
               - buertie - buartan --> buertiejasse (rørossamisk)
               - Stuehkie - Stuahkan - Stuehkese (Stuehkiejasse) ("Stockholm")
niemi er grei, men MAKI og PIPPI er usikre.

!!Modifications for smn

!!SMJ:
All y-final ACCRA have to go to an ACCRA-Y lexicon as y-final words
have to go to NYSTØ in smj, but not in sma or sme

----

The beginning of this file (''smi-propernouns.lexc'') looks as follows
(and thereafter 31000 similar lines follow):

 * __LEXICON ProperNoun-smi-nocomp __ Propernouns: no compounding without hyph. Add also +CmpNP/None
 A-ha+CmpNP/None+OLang/NOB:A-ha ACCRA-org ;  \\
 ARS% Reasearch+MWE+CmpNP/First+OLang/UND:ARS% Reasearch9 BERN-org ;  \\
 Ap+CmpNP/None+OLang/UND:Ap9 BERN-org ;  \\


 * __LEXICON ProperNoun-smi __ Propernouns
 Aabakken+OLang/NOB:Aa^bakken9 LONDON-sur ;  \\
 Aabel+OLang/NOB:Aabel LONDON-sur ;  \\
 Aabenraa+OLang/NOB:Aabenraa NYSTØ-sur ;  \\
 Frykman+OLang/NOB:Frykman9 LONDON-sur ;  \\
ERVASTI?
 Husserl+OLang/NOB:Husserl LONDON-sur ;  \\




