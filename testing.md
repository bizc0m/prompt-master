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

## FOOTER (fusionné, seulement si tâche dev active)
```
Itération N/21 — GIT: OK|COMMIT RECOMMANDÉ|— — TEST: PASS|FAIL|—
1-5 suggestions courtes | 6. réponse libre
```
`GIT: COMMIT RECOMMANDÉ` si fichiers modifiés sans commit depuis 5 prompts.
Absent sur une réponse qui n'est pas une tâche dev (simple question).
