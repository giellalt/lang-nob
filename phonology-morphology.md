# Morphophonological rules for Bokmål


## Sets and definitions

### Alphabet

 * **a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å**
 * **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý þ ñ ð ß ç**
 * **A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Æ Ø Å**
 * **Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã Ý þ Ñ Ð**
 * **'**
 * **l7:l** This one not deleted by t


### Boundary symbols

Morpheme boundaries and escaped quotes - leave as is,
they will be converted to zero/the real thing at a later stage.

 * **%#**
 * **%>**
 * **%<**
 * **%\|»**
 * **%\|«**
 * **%[%<%]**
 * **%[%>%]**

### Morphophonological triggers

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

#### Nynorsk
 * **%^NYNAG:0 ;** Trigger for Nynorsk dictionary forms.






### Sets
 * **Vow = a e i o u y æ ø å ;**
 * **Cns = b c d f g h j k l m n p q r s t v w x z ;**
 * **LNR = l n r ;**
 * **Dummy = X1 X2 X3 X4 X5 X6 Q1 Q2 Q3 Z1 Z2 %^NYNAG ;**

## Rule section




### Nynorsk dictionary rules

**Change -er stem to -ar in Nynorsk**  

This rule is for dictionary use only.



### Umlaut

**Umlaut Rule**  


### Vowel deletions rules

**Epenthetic Deletion Rule**  

##### Tests:
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

**Delete foreign vowel Rule**  

##### Tests:
* *kollegaX2>er*
* *kolleg00>er*



### Consonant deletion

**Consonant shortening before deletion Rule**  

##### Tests:
* *sikkerX1>e*
* *sik00r0>e*


**Geminate deletion in front of -t and -d Rule**  

##### Tests:
* *kalle>Q3te*
* *kal00>0te*
* *lykk0esQ1*
* *lyk0tes0*
* *all>Q3t*
* *al0>0t*
* *bygge>Q3de*
* *byg00>0de*





**Delete r Rule**  

**Delete m Rule**  




**um Deletion 1 Rule** (um Deletion 2 is now part of the *Delete m Rule*)

##### Tests:
* *museumX5>er*
* *muse000>er*



**t weakening Rule**  

##### Tests:
* *oppskjørtetX6>e*
* *oppskjørted0>e*

**Double t deletion Rule**  

##### Tests:
* *svart>t*
* *svart>0*



### Insertion rules

**Insert t in passives Rule**  



### Compound rule



##### Tests:
* *grammatikk##kontroll*
* *grammatik000kontroll*



### Clitics

**Clitic after s-final Rule**  

Test to have an error
* ★*a* (is not standard language)
* ★*b* (is not standard language)
