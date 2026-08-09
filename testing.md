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

- **15** : audit léger — poids du projet, libs redondantes/inutiles,
  purge code/sources morts.
- **18** : prévenir que le seuil de dérive approche.
- **21** : résumé de reprise (≤100 lignes : objectif, état, décisions,
  fichiers modifiés, commits, TODO restant, blocages, prochaine étape),
  puis suggérer nouveau chat.

Signaux de dérive déclenchant avant 21 si présents : changement de sujet
non lié au projet, boucle de correction détectée.


## COMPTEUR PERSISTANT

Le compteur est à la charge de l'assistant.

- Au début d'une tâche DEV : créer ou mettre à jour `SESSION.md`.
- À chaque réponse DEV : incrémenter `prompt_count`.
- Si l'écriture est impossible : afficher `[COUNT NON PERSISTÉ]`.
- À 15 / 18 / 21 / 25 / 30 : appliquer les seuils définis ci-dessus.
- À la fin d'un cycle DEV : reporter compteur, tests, état Git et prochaine action dans `CHAT.md` ou `RESTORE.md` si ces fichiers existent.

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

- Commit local après changement validé et vérifié.
- Push automatique au 5e commit Git validé sur le projet.
- Commits 1 à 4 : rester local et afficher `GIT : COMMIT LOCAL`.
- Commit 5 : pousser vers le remote si aucun secret, conflit, réseau bloqué ou risque Stable.
- Si le push échoue : garder les commits locaux, noter le blocage dans `SESSION.md` / `CHAT.md`.

CADENCE GIT AAAAB :
- `A` = commit local validé, sans push.
- `B` = push vers le remote.
- Cycle : `A A A A B`, puis recommencer.
- Ne pas interpréter comme `A A B A` ni comme push à chaque commit.
- Au 5e événement Git validé du cycle : pousser les commits locaux accumulés.
- Après `B`, remettre le compteur Git du cycle à 0.
- Bloquer `B` seulement si secret détecté, conflit, réseau impossible, branche Stable sensible ou demande utilisateur contraire.


## RÉFÉRENCES BASE 26

Les références projet utilisent un code 3 lettres : `AAA` -> `AAB` -> `AAZ` -> `ABA`.

- Format recommandé : `PREFIX-CODE3`.
- Exemple : `NCT-AAA`, `NCT-AAB`.
- Indexer dans `REF.MD` ou équivalent.
- Une référence attribuée reste stable.


## NUMÉROTATION DES RÈGLES

- Toute règle durable ajoutée au Prompt Master reçoit un identifiant `[DOM-NNN]`.
- Exemple : `[GIT-001]`, `[COUNT-001]`, `[REF-001]`.
- Ne pas réutiliser un identifiant ; déprécier si besoin.
- Les objets/projets gardent la référence `PREFIX-CODE3`, séparée des règles.
