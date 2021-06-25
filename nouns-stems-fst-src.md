# Bokmål noun morphology 

    ---------------------------------------------------
    Declension classes
    Main types, from Bokmålsordboka
    
    f1  bru         brua        bruer           bruene
    f2  pumpe       pumpa       pumper          pumpene
    f3  søster      søstera     søstre/søstrer  søstrene
    m1  stol        stolen      stoler          stolene
        bakke       bakken      bakker          bakkene
        pumpe       pumpen      pumper          pumpene
    m2  lærer       læreren     lærere          lærerne
    m3  bever       beveren     bevere          beverne
                                bevrer          bevrene
                                bevre           bevrene
    m4  longs       longsen     longs/longser   longsene
    n1  slott       slottet     slott           slotta/slottene
    n2  eple        eplet       epler           epla/eplene
        salt        saltet      salter          salta/saltene
    n3  kontor      kontoret    kontor/kontorer kontora/kontorene
    n4  kriterium   kriteriet   kriterier       kriteria/kriteriene
    
    Subtypes, mainly from Finsk-norsk ordbok, also system-specific
    
    mx  unclassified, to m1 by default
    mX indecl
    m1sg sg only
    m1pl pl only
    m1b dam
    m1b fe, komite
    m1V sko pl. sko, skoa/skoene
    m1Vb byte, pl. byte/byter, bytene
    m1Vc glipp, pl. glipp, glippene
    m3V meter pl. meter
    m3b finger pl. fingrer/fingre
    m3c forelder pl. foreldre
    ma alliert, alierte, allierte, allierte
    KOLLEGA kollegaer, kolleger
    KONTO kontoer, konti
    RADIUS radien/radiusen, radier, radiene
    BROR brødre
    FAR fedre
    MANN menn
    mD gårde, garde, dage  (av gårde)
    fD tide (i tide)
    nD live (i live)
    DATTER døtre
    f1b skam
    f1X bok, pl. bøker
    f1V mus, pl. mus
    fGLO glo, pl. glør
    f3b lever. def. levra
    n1b rom, def. rommet
    n1c søsken, søskenet, søsken, søskena/søsknene
    n1n1b publikum, def. publikumet/publikummet
    n1s sg only
    n2m medlem, pl. medlemmer
    n2s mørke, not pl.
    n3m program, pl. program/programmer
    n3b hinder,   hinderet/hindret,     hinder/hindre,      hindra/hindrene
    n3c middel,   middelet/midlet       middel/midler       midla/midlene
    n3d lager,    lageret,              lager/lagre,        lagra/lagrene
    n3e pulver,   pulveret,             pulver/pulvere,     pulvera/pulverne
    n3f beger,    begeret,              beger/begre,        begra/begerne
    n3g alter,    alteret/altret,       alter/altere/altre, altera/altra/altrene
    n3h tema,     temaet,               tema/temaer,        temaene
    n3i rabalder, rabalderet/rabaldret, rabalder/rabaldre,  rabaldra/rabaldrene
    n4b faktum,   faktumet,             fakta,              faktaene
    n4c nøytrum, nøytrumet/nøytret, nøytra/nøytrer, nøytraene/nøytra/nøytrene
    FORUM forum, forumet, fora/forumer, foraene/forumene
    LEKSIKON leksikon, pl. leksika
    nMUSEUM museum, museet, museer
    nØYE


## The lexica themselves

LEXICON FinalNoun is a separate lexicon to point to. For now it contains only *-skap*.


LEXICON NounRoot is the lexicon pointed to from `root.lexc` It points to
 Noun ;
 HyphNouns ;

LEXICON HyphNouns  contains forms only in used in first part of compounds, like *barne*.  TODO: Kanskje desse ikkje bör bli lista.

LEXICON ShortNounRoot 
The lexicon points to two lexica which are kept separate in order not to
allow them in compounding (rusle = rus + le)
 2_letter ;
 3_letter ;

LEXICON 2_letter is stems with two lettes.

LEXICON 3_letter  is stems with 3 letters


LEXICON Noun  here come the long list of stems (tens of thousands)





