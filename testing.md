# RÈGLES PROJET — tests + gestion de session longue

## COMPTE RENDU DE TEST (format fixe, obligatoire si applicable)
```
TEST
✓/✗ Build
✓/✗ Lint
✓/✗ Unit
✓/✗ Integration
✓/✗ Launch (app lancée réellement)
✓/✗ Feature (fonction testée manuellement)
✓/✗ Regression (entrées REGRESSION.md rejouées)
✓/✗ Link (lien/rendu vérifié accessible)

PASS | FAIL

Preuves : commandes exécutées, logs, URL, capture si utile.
```
Ne jamais déclarer PASS sans preuve réelle. Si un test est impossible
(dépendance externe non vérifiable) : le dire, ne pas présumer succès
(cf. règle qualité #1 dans versioning.md).

## COMPTEUR DE SESSION (un seul, à paliers)
Compter les échanges dans une session de travail active sur un même
projet (tâche dev, pas simple question — voir CLAUDE.md racine).

- [COUNT-001] **15** : audit léger — poids du projet, libs redondantes/inutiles,
  purge code/sources morts.
- [COUNT-002] **18** : prévenir que le seuil de dérive approche.
- [COUNT-003] **21** : résumé de reprise (≤100 lignes : objectif, état, décisions,
  fichiers modifiés, commits, TODO restant, blocages, prochaine étape),
  puis suggérer nouveau chat.

Signaux de dérive déclenchant avant 21 si présents : changement de sujet
non lié au projet, boucle de correction détectée.


## COMPTEUR PERSISTANT

Le compteur est à la charge de l'assistant.

- [COUNT-004] Au début d'une tâche DEV : créer ou mettre à jour `SESSION.md`.
- [COUNT-005] À chaque réponse DEV : incrémenter `prompt_count`.
- [COUNT-006] Si l'écriture est impossible : afficher `[COUNT NON PERSISTÉ]`.
- [COUNT-007] À 15 / 18 / 21 / 25 / 30 : appliquer les seuils définis ci-dessus.
- [COUNT-008] À la fin d'un cycle DEV : reporter compteur, tests, état Git et prochaine action dans `CHAT.md` ou `RESTORE.md` si ces fichiers existent.

## FOOTER (fusionné, seulement si tâche dev active)
```
Itération N/21 — GIT: OK|COMMIT RECOMMANDÉ|— — TEST: PASS|FAIL|—
1-5 suggestions courtes | 6. réponse libre
```
`GIT: COMMIT RECOMMANDÉ` si fichiers modifiés sans commit depuis 5 prompts.
Absent sur une réponse qui n'est pas une tâche dev (simple question).

## FOOTER STRICT

Si le Mode DEV strict est explicitement actif, remplacer le footer DEV normal
par ce footer obligatoire :

```
📊 XX/30 🟢🟡🔴 | vX.XX
Con : Excellent | Bon | Moyen | Faible
GIT : OK | COMMIT RECOMMANDÉ | —
TEST : PASS | FAIL | —
Lien : URL | indisponible
GO | STOP
```

Si une valeur est inconnue ou non applicable : `—` ou `indisponible`.


## CADENCE GIT

- [GIT-001] Commit local après changement validé et vérifié.
- [GIT-002] Push automatique au 5e commit Git validé sur le projet.
- [GIT-003] Commits 1 à 4 : rester local et afficher `GIT : COMMIT LOCAL`.
- [GIT-004] Commit 5 : pousser vers le remote si aucun secret, conflit, réseau bloqué ou risque Stable.
- [GIT-005] Si le push échoue : garder les commits locaux, noter le blocage dans `SESSION.md` / `CHAT.md`.

CADENCE GIT AAAAB :
- [GIT-006] `A` = commit local validé, sans push.
- [GIT-007] `B` = push vers le remote.
- [GIT-008] Cycle : `A A A A B`, puis recommencer.
- [GIT-009] Ne pas interpréter comme `A A B A` ni comme push à chaque commit.
- [GIT-010] Au 5e événement Git validé du cycle : pousser les commits locaux accumulés.
- [GIT-011] Après `B`, remettre le compteur Git du cycle à 0.
- [GIT-012] Bloquer `B` seulement si secret détecté, conflit, réseau impossible, branche Stable sensible ou demande utilisateur contraire.


## RÉFÉRENCES BASE 26

Les références projet utilisent un code 3 lettres : `AAA` -> `AAB` -> `AAZ` -> `ABA`.

- [REF-001] Format recommandé : `PREFIX-CODE3`.
- [REF-002] Exemple : `NCT-AAA`, `NCT-AAB`.
- [REF-003] Indexer dans `REF.MD` ou équivalent.
- [REF-004] Une référence attribuée reste stable.


## NUMÉROTATION DES RÈGLES

- [RULE-001] Toute règle durable ajoutée au Prompt Master reçoit un identifiant `[DOM-NNN]`.
- [RULE-002] Exemple : `[GIT-001]`, `[COUNT-001]`, `[REF-001]`.
- [RULE-003] Ne pas réutiliser un identifiant ; déprécier si besoin.
- [RULE-004] Les objets/projets gardent la référence `PREFIX-CODE3`, séparée des règles.
