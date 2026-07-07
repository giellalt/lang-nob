# Lemma-tests for *nouns* in ...`nouns.lexc`


## Lemma statistics
* 42826 lemmas
* 100.0 % success

## Settings used

```json
{
    "adjectives": {
        "exclusions": [
            "(A_F\u00c5|A_SM\u00c5|AmountCont)"
        ],
        "lemmatags": [
            "+A+Pos+Msc+Sg+Indef"
        ],
        "lexcfile": ".../adjectives.lexc"
    },
    "analyser": ".../analyser-gt-norm.hfstol",
    "generator": ".../generator-gt-norm.hfstol",
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
        "lexcfile": ".../nouns.lexc"
    },
    "propernouns": {
        "exclusions": [
            "( R | PROPADJ_a1-org )"
        ],
        "lemmatags": [
            "+N+Prop",
            "+N+Prop+Pl",
            "+N+Prop+ACR+Msc+Sg+Indef"
        ],
        "lexcfile": ".../nob-propernouns.lexc"
    },
    "verbs": {
        "lemmatags": [
            "+V+Inf"
        ],
        "lexcfile": ".../verbs.lexc"
    }
}
```
