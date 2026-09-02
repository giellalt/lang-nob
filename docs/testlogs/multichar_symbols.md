# Multichar_Symbols tests for root.lexc

* 245 declarations found (details in footer).

## Lexc entries in `root.lexc`

No missing multichars found.

## Lexc entries in `stems/nouns.lexc`

No missing multichars found.

## Lexc entries in `stems/adjectives.lexc`

No missing multichars found.

## Lexc entries in `stems/nob-propernouns.lexc`

No missing multichars found.

## Lexc entries in `stems/verbs.lexc`

No missing multichars found.

## Lexc entries in `stems/numerals.lexc`

No missing multichars found.

## Lexc entries in `stems/pronouns.lexc`

No missing multichars found.

## Lexc entries in `affixes/adjectives.lexc`

No missing multichars found.

## Lexc entries in `affixes/nouns.lexc`

No missing multichars found.

## Lexc entries in `affixes/propernouns.lexc`

No missing multichars found.

## Lexc entries in `affixes/symbols.lexc`

No missing multichars found.

## Lexc entries in `affixes/verbs.lexc`

No missing multichars found.


## Configuration and statistics

* symbols found in declarations: ` +Symbol, +Gram/IAbbr, +Nom, +CmpNP/First, +MIDDLE, +HYPH, +Prs, +MWE, +OLang/ENG, +CC, @P.ErrOrth.ON@, +Sem/Org_Prod-audio, +CS, +Imp, +Use/PMatch, +Sem/Build, +Num, +Sem/Obj-el, +Sem/Org_Prod-vis, +ACR, @P.NeedNoun.ON@, +Use/-TTS–, %[%<%], +Nynorsk, +Span, +Sem/Event, @D.ErrOrth.ON@, +V, +Sem/Edu, +Err/Hyph, +Sem/Prod-vis, +Sem/Org, +Acc, +RIGHT, +Sem/Food-med, @U.number.one@, +MWESplit, +Pr, +Sem/Sur, +LEFT, +Err/Lex, +OLang/UND, @C.ErrOrth@, +Sem/State-sick, @D.CmpPref.TRUE@, @P.Pmatch.Backtrack@, +Sem/Measr, +Ord, +CLBfinal, @D.CmpLast.TRUE@, @U.number.eight@, +IM, +1, @D.NeedNoun.ON@, @P.number.seven@, +MF, +Qst, +Prop, +Use/SpellNoSugg, +Dyn, +Sem/Mal, @P.number.four@, @P.number.eight@, +v4, +Qnt, +Der1, @U.number.four@, +Sem/Hum, +Use/-TTS, +Sem/Sign, +OLang/SME, @P.CmpOnly.TRUE@, +Pers, +CmpNP/All, +Arab, @P.number.ten@, +Pron, X6, +Use/-Spell, +Sem/Domain, +Use/-PMatch, +v3, +Sem/Obj-ling, +CmpNP/Last, +v2, +Gram/NumNoAbbr, +Indef, +Sem/Atr, +Sem/Txt, «7, +CmpNP/None, +Use/-PLX, @P.number.three@, +Sem/Substnc, +Superl, @P.CmpPref.FALSE@, +Use/MT, +Cmp/e, +Pl1, +Cmp/null, @P.number.nine@, +Neu, +Prdt, +OLang/NNO, @%-, @U.number.five@, +Sem/Curr, +Sem/Tool-it, +PrfPrc, +X, l7, +Sem/Money, +Err/MissingSpace, +Sg1, +CmpNP/Pref, +Clt, @P.number.six@, +Sem/Rule, +Cmp, +PUNCT, +Use/-GC, +Inf, +OLang/RUS, +Pos, +Sem/Cat, +Attr, X1, @U.Cap.Opt@, +Use/NG, X4, +Interj, +Sem/Mat, @U.CmpNone.FALSE@, @D.CmpOnly.FALSE@, »7, +Pl, +Refl, +Sem/Year, +Sg3, +Comp, +OLang/SMJ, +OLang/HUN, @P.CmpFrst.FALSE@, @P.Pmatch.Loc@, +Prt, +Sem/Obj, +Sem/Route, +Sem/Veh, +Sem/Edu_Hum, X5, +Dem, +Ill, @R.ErrOrth.ON@, +Ind, +OLang/SMA, @P.number.two@, +PrsPrc, %[%>%], +Recipr, +Sem/State, +Det, +Sem/Time, @P.number.one@, +Rel, +N, %^NYNAG, +Adv, +Use/GC, +Sem/Group_Hum, +Gen, +Der/NomAct, +OLang/SWE, +Intens, +ABBR, @U.number.six@, +Der, +Sg2, +Use/Circ, +Ex/V, +Fem, +Pcle, e7, +Gram/TAbbr, @U.Cap.Obl@, +Sem/Domain_Hum, @U.number.two@, @%–, @C.NeedNoun@, +Pass, +Cmp/Hyph, +Cmp/s, +Use/TTS, +Rom, +Sem/Lang, @U.number.seven@, +Sem/Dummytag, +Radical, +OLang/FIN, +3, @P.number.five@, +Sg, +Sem/Amount, Q1, +ING, +Msc, +Pl3, +Sem/Date, +Poss, +CmpNP/Only, +Sem/Plc, +Indcl, +A, +Def, Z2, +Err/Orth, @U.number.zero@, +Gram/TNumAbbr, +Sem/Time-clock, Q2, @U.number.nine@, @D.CmpNone.TRUE@, +CmpNP/Suff, +Sem/Ani, +Sem/ID, +Sem/Fem, +Sem/Part, +OLang/NOB, +Err/SpaceCmp, +Sem/Build-room, @U.CmpHyph.TRUE@, X3, +Use/-TTS-, @U.number.three@, +Pl2, +Dat, +Interr, +Der/AAdv, +Coll, @/, X2, +CLB, +2, Q3, Z1, +v1 `
* `config.json` prettyprinted:
```json
{
    "adjectives": {
        "exclusions": [
            "(A_F\u00c5|A_SM\u00c5|AmountCont)"
        ],
        "lemmatags": [
            "+A+Pos+Msc+Sg+Indef"
        ],
        "lexcfile": ".../stems/adjectives.lexc"
    },
    "analyser": ".../analyser-gt-norm.hfstol",
    "generator": ".../generator-gt-norm.hfstol",
    "lexcroot": ".../root.lexc",
    "nouns": {
        "exclusions": [
            "(2_letter|3_letter | indeclm |indeclf | K )"
        ],
        "lemmatags": [
            "+N+Msc+Sg+Indef",
            "+N+Msc+Pl+Indef",
            "+N+Fem+Sg+Indef",
            "+N+Fem+Pl+Indef",
            "+N+Neu+Sg+Indef",
            "+N+Neu+Pl+Indef"
        ],
        "lexcfile": ".../stems/nouns.lexc"
    },
    "otherlexcs": [
        ".../stems/numerals.lexc",
        ".../stems/pronouns.lexc",
        ".../affixes/adjectives.lexc",
        ".../affixes/nouns.lexc",
        ".../affixes/propernouns.lexc",
        ".../affixes/symbols.lexc",
        ".../affixes/verbs.lexc"
    ],
    "propernouns": {
        "exclusions": [
            "( R | PROPADJ_a1-org )"
        ],
        "lemmatags": [
            "+N+Prop",
            "+N+Prop+Pl",
            "+N+Prop+ACR+Msc+Sg+Indef"
        ],
        "lexcfile": ".../stems/nob-propernouns.lexc"
    },
    "verbs": {
        "lemmatags": [
            "+V+Inf"
        ],
        "lexcfile": ".../stems/verbs.lexc"
    }
}
```
