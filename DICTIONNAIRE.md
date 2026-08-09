# DICTIONNAIRE PROMPT MASTER

Objectif : réduire les tokens sans perdre le sens. Ce dictionnaire sert aux prompts compacts, aux handoffs multi-LLM et aux modules projet.

## Règles d'usage

- [DICT-001] Utiliser une abréviation seulement si elle est définie ici ou dans le contexte projet.
- [DICT-002] Ne pas compacter les preuves, chemins, noms de fichiers, commandes, erreurs ou sources.
- [DICT-003] Déplier l'abréviation au premier usage si le destinataire n'a pas ce dictionnaire.
- [DICT-004] Préférer la clarté à la compression quand une décision, un risque ou une action irréversible est en jeu.
- [DICT-005] Les codes de règles `[DOM-NNN]` ne remplacent pas les références projet `PREFIX-CODE3`.

## Concepts Core

| Code | Sens |
|---|---|
| VST | Vérité > Sécurité > Traçabilité |
| RSI | Réutilisation > Simplicité > Vitesse |
| NI | Ne rien inventer |
| SRC | Source vérifiée |
| HYP | Hypothèse explicite |
| BLK | Blocage réel |
| OKR | Objectif / résultat attendu |
| SCOPE | Périmètre strict |

## Modes

| Code | Sens |
|---|---|
| NORM | Mode normal |
| DEV | Mode développement |
| STRICT | Mode DEV strict |
| STB | Stable |
| DEVCH | Canal Dev |
| EXP | Expérimental |
| SDE | Stable / Dev / Exp |

## Workflow DEV

| Code | Sens |
|---|---|
| DST | Début de session technique |
| GST | Git status |
| ENV | Vérification environnement |
| IMP | Implémentation |
| TST | Tests réels |
| REG | Régression |
| DOC | Documentation |
| RST | Restore / reprise |
| END | Fin de cycle DEV |
| SRM | Session Memory |

## Git

| Code | Sens |
|---|---|
| A | Commit local validé |
| B | Push remote |
| AAAAB | 4 commits locaux puis 1 push |
| AHEAD | Commits locaux non poussés |
| RBK | Rollback possible |
| ATOM | Commit atomique |

## Modules

| Code | Sens |
|---|---|
| #DEVSTART | Initialiser tâche DEV |
| #COUNT | Incrémenter compteur + seuils |
| #DOCG | Documentation Git/GitHub |
| #RESTORE | Paquet de reprise |
| #ENDDEV | Clôture cycle DEV |
| #KM | Fiche connaissance |
| #FEAT | Feature cadrée |
| #BUG | Bugfix |
| #AUDIT | Audit sans modification |
| #SYNC | Synchronisation |

## Références

| Code | Sens |
|---|---|
| REF3 | Référence projet 3 lettres base 26 |
| PFX | Préfixe projet 2 à 5 lettres |
| CODE3 | Code `AAA` à `ZZZ` |
| IDX | Index de références |
| MIG | Migration documentée |

## Documentation Projet

| Code | Sens |
|---|---|
| MEM | MEMORY.md |
| STATE | STATE.md |
| UX | UX.md |
| FEAT | Features.md |
| TODO | todo.md |
| REGR | REGRESSION.md |
| OSS | OPEN_SOURCE.md |
| SETUP | SETUP.md |
| REL | RELEASES.md |
| CHAT | CHAT.md |
| RESTORE | RESTORE.md |
| SESSION | SESSION.md |

## Qualité

| Code | Sens |
|---|---|
| PASS | Test réussi avec preuve |
| FAIL | Test échoué avec preuve |
| NT | Non testé |
| E2E | Vérification utilisateur de bout en bout |
| GUI | Surface graphique réelle |
| CLI | Interface terminal |
| PROD | Production / usage réel |
| SAFE | Action sûre et réversible |
| RISK | Risque à signaler |

## Exemple compact

Version longue :

```text
Vérifie le dépôt Git, crée le suivi de session, implémente la documentation, teste réellement, puis commit local. Push seulement au palier AAAAB.
```

Version compacte :

```text
#DEVSTART + GST + SESSION → DOC + TST → A ; B seulement si AAAAB.
```


## Ultra-concis

Objectif : réduire une consigne à mots / verbes / opérateurs, sans perdre l'action.

- [DICT-006] Utiliser l'ultra-concis seulement entre agents/LLM qui connaissent ce dictionnaire.
- [DICT-007] Structure : `VERBE OBJET -> PREUVE -> ÉTAT`.
- [DICT-008] Garder les chemins, sources, erreurs, commandes et noms exacts non compressés.
- [DICT-009] Remplacer les phrases longues par verbes d'action : `verif`, `lis`, `maj`, `sync`, `test`, `commit`, `push`, `doc`, `log`, `stop`.
- [DICT-010] Si risque ou ambiguïté : sortir du mode ultra-concis et écrire clairement.

## Verbes courts

| Code | Sens |
|---|---|
| verif | vérifier |
| lis | lire |
| scan | rechercher / inspecter |
| maj | mettre à jour |
| sync | synchroniser |
| doc | documenter |
| log | journaliser |
| test | tester |
| fix | corriger |
| build | construire / compiler |
| run | lancer |
| diff | vérifier les changements |
| commit | créer commit local |
| push | pousser remote |
| stop | arrêter et demander |
| keep | conserver |
| skip | ignorer volontairement |
| link | fournir lien |
| cite | citer source |

## Syntaxe ultra-concise

| Forme | Sens |
|---|---|
| `A -> B` | faire A puis B |
| `A + B` | faire A et B |
| `A ? B : C` | si A alors B sinon C |
| `!A` | ne pas faire A |
| `A*` | obligatoire |
| `A~` | optionnel |
| `A@PATH` | action A sur chemin PATH |
| `A#REF` | action A sur référence REF |
| `A[preuve]` | action avec preuve attendue |

## Exemples ultra-concis

Long :

```text
Vérifie l'état Git, lis le fichier de session, mets à jour la documentation, teste réellement, commit local, puis pousse seulement si le cycle AAAAB arrive au B.
```

Ultra-concis :

```text
verif GST + lis SESSION -> maj DOC -> test[preuve] -> commit A ; push si AAAAB=B.
```

Long :

```text
Si l'information est incertaine, arrête-toi et pose une seule question ciblée.
```

Ultra-concis :

```text
HYP? stop + 1Q.
```
