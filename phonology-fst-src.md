# Morphophonological rules for Bokmål

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-nob/blob/main/src/fst/phonology.twolc) 

## Sets and definitions

### Alphabet

We declare both the a-å letters and all other possible letters.
 * **a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å** 
 * **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý þ ñ ð ß ç**
 * **A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Æ Ø Å**
 * **Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã Ý þ Ñ Ð**
 * **'** This is the apostrophe
 * **l7:l** This **l** not deleted by **t**


### Boundary symbols

Morpheme boundaries and escaped quotes - do not delete in twolc,
they will be converted to zero/the real thing at a later stage.

 * **%#**
 * **%>**
 * **%<**
 * **%\|»**
 * **%\|«**
 * **%[%<%]**
 * **%[%>%]**

### Morphophonological triggers

These symbols cause the twolc rules to work.

#### Triggers for nominal rules
 * **X1:0** = Epenthetic vowel moden:modne
 * **X2:0** = ...
 * **X3:0** = Plural r deletion -er, -ene
 * **X4:0** = dumm:dum Delete m
 * **X5:0** = um deletion, faktum:fakta
 * **X6:0** = t:d weakening, oppskjørtet:oppskjørtede

#### Trigers for verbal rules
 * **Q1:0** = Passive
 * **Q2:0** = ...
 * **Q3:0** = Verb vowel and geminate deltion kalte, fylte

#### Triggers for common rules (both for N and V)
 * **Z1:0** = o:ø, a:e Umlaut
 * **Z2:0** = protects vowel

#### Nynorsk trigger
 * **%^NYNAG:0 ;** Trigger for Nynorsk dictionary forms.






### Sets

 * **Vow = a e i o u y æ ø å ;**
 * **Cns = b c d f g h j k l m n p q r s t v w x z ;**
 * **LNR = l n r ;**
 * **Dummy = X1 X2 X3 X4 X5 X6 Q1 Q2 Q3 Z1 Z2 %^NYNAG ;**

## Rule section

This section shows the twolc rules and the tests used to check whether they work




### Umlaut

**Umlaut Rule**  for *bok : bøker* etc. It shifts the vowels *u, o, a, å* to *y, ø, e, e*, respectively when **Z1** is found after the stem.



### Vowel deletions rules

**Epenthetic Deletion Rule**  is actually 3 rules in one: 1) it deletes -e- in *moden : modne* etc, 2) it deletes the stem -e in *hare + -er* and 3) it delets suffix -e in *ærlig + est > ærligst*

*Tests:* (star denotes negativ test, test that is supposed to fail)
* *søsterX1>a*
* *teaterX1>et*
* *teat0r0>et*
* *modenX1>e*
* *mod0n0>e*
* *reparere>Q3te*
* *reparer0>0te*
* ★*modenX1>e* (is not standard language)
* ★*moden0>e* (is not standard language)
* *hare>er*
* *har0>er*
* *viktig>est*
* *viktig>0st*
* *presentere%>Q3t*
* *presenter0>0t*

**Delete foreign vowel Rule**  for deleting final a or o in words like *kollega : kolleger*. Trigger symbol to the right is **X2**.

*Tests:*
* *kollegaX2>er*
* *kolleg00>er*



### Consonant deletion

**Consonant shortening before deletion Rule**  

*Tests:*
* *sikkerX1>e*
* *sik00r0>e*
* *trusselX1>er*
* *trus00l0>er*


**Geminate deletion in front of -t and -d Rule** deletes: 1) before **Q3 and d or t** (*kaller:kalte*) 2) before passive **Q1 t** (*lykkes:lyktes*) and 3) before epenthetic **-e-** and **l, n** or **r** (*sikker:sikre*)

*Tests:*
* *kalle>Q3te*
* *kal00>0te*
* *lykk0esQ1*
* *lyk0tes0*
* *all>Q3t*
* *al0>0t*
* *bygge>Q3de*
* *byg00>0de*





**Delete r Rule** deletes **r** in plural *-er* to get *-er + -ne* = plural *-ene* 

**Delete m Rule** for *kam:kammen*, here we delete the second m when word-final.  




**um Deletion 1 Rule** (um Deletion 2 is now part of the *Delete m Rule*)

*Tests:*
* *museumX5>er*
* *muse000>er*



**t weakening Rule**  

*Tests:*
* *oppskjørtetX6>e*
* *oppskjørted0>e*

**Double t deletion Rule**  

*Tests:*
* *svart>t*
* *svart>0*



### Insertion rules

**Insert t in passives Rule**  



### Compound rule



*Tests:*
* *grammatikk##kontroll*
* *grammatik000kontroll*



### Clitics

**Clitic after s-final Rule**  for changing the so-called *genitive -s* to **'** for s-final stems: *huss -> hus'*





### Nynorsk dictionary rules

**Change -er stem to -ar in Nynorsk**  

This rule is for dictionary use only. The idea is to be able to click on words in a Nynorsk text and get translation to North Sámi. Therefore, the Bokmål analyser is able to give an analysis to Nynorsk words as well. The Nynorsk-only forms are removed from all other transducers than the `-dict` transducer.


* *a*
* *b*

Test to have an error
* ★*a* (is not standard language)
* ★*b* (is not standard language)
